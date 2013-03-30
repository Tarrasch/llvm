#include "llvm/IRBuilder.h"
#include "llvm/Intrinsics.h"
#include "llvm/Pass.h"
#include "llvm/ADT/Statistic.h"
#include "llvm/Analysis/MemoryBuiltins.h"
#include "llvm/Support/CommandLine.h"
#include "llvm/Support/Debug.h"
#include "llvm/Support/InstIterator.h"
#include "llvm/Support/TargetFolder.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/DataLayout.h"
#include "llvm/Target/TargetLibraryInfo.h"
#include "llvm/Transforms/Instrumentation.h"
using namespace llvm;

#define tr(it, c) \
  for (typeof((c).begin()) it = (c).begin(); it != (c).end(); it++)
#define tr_lu(it, c, key) \
  for (typeof((c).lower_bound(key)) it = (c).lower_bound(key); it != (c).upper_bound(key); it++)
#include <map>
using namespace std;

static cl::opt<bool> SingleTrapBB("bounds-checking-single-trap-2",
                                  cl::desc("Use one trap block per function"));

static cl::opt<bool> TrapDontCheckConstants("apa",
                                  cl::desc("Kolla om constant"));

STATISTIC(ChecksAdded, "Bounds checks added");
STATISTIC(ChecksSkipped, "Bounds checks skipped");
STATISTIC(ChecksUnable, "Bounds checks unable to add");

typedef IRBuilder<true, TargetFolder> BuilderTy;

namespace {
  struct CheckPoint {
    Value* name;
    ConstantInt* bound;
    bool isUpper;
    Instruction *point;

    CheckPoint(Value* n, ConstantInt* b, bool i, Instruction* p) 
      : name(n), bound(b), isUpper(i), point(p) {}

    int getIndex() {
      BasicBlock *bb = point->getParent();
      int i = 0;
      tr(it, *bb){
        if(&(*it) == point) return i;
        i++;
      }
      assert(false);
    }
  };

  struct BoundsChecking : public FunctionPass {
    static char ID;

    BoundsChecking(unsigned _Penalty = 5) : FunctionPass(ID), Penalty(_Penalty){
      initializeBoundsCheckingPass(*PassRegistry::getPassRegistry());
    }

    virtual bool runOnFunction(Function &F);

    virtual void getAnalysisUsage(AnalysisUsage &AU) const {
      AU.addRequired<DataLayout>();
      AU.addRequired<TargetLibraryInfo>();
    }

    multimap< BasicBlock*, CheckPoint > checkpoints;

  private:
    const DataLayout *TD;
    const TargetLibraryInfo *TLI;
    ObjectSizeOffsetEvaluator *ObjSizeEval;
    BuilderTy *Builder;
    Instruction *Inst;
    BasicBlock *TrapBB;
    unsigned Penalty;

    BasicBlock *getTrapBB();
    void emitBranchToTrap(Value *Cmp = 0);
    bool computeAllocSize(Value *Ptr, APInt &Offset, Value* &OffsetValue,
                          APInt &Size, Value* &SizeValue);
    void addChecks(Value *Ptr, Value* InstVal, Instruction *Inst);
    void addAllChecks(Function &F);
    void localElimination(Function &F);
    bool synthesize(CheckPoint c);
 };
}

char BoundsChecking::ID = 0;
/* INITIALIZE_PASS(BoundsChecking, "bounds-checking2", "Run-time bounds checking", */
/*                 false, false) */


/// getTrapBB - create a basic block that traps. All overflowing conditions
/// branch to this block. There's only one trap block per function.
BasicBlock *BoundsChecking::getTrapBB() {
  if (TrapBB && SingleTrapBB)
    return TrapBB;

  Function *Fn = Inst->getParent()->getParent();
  BasicBlock::iterator PrevInsertPoint = Builder->GetInsertPoint();
  TrapBB = BasicBlock::Create(Fn->getContext(), "trap", Fn);
  Builder->SetInsertPoint(TrapBB);

  llvm::Value *F = Intrinsic::getDeclaration(Fn->getParent(), Intrinsic::trap);
  CallInst *TrapCall = Builder->CreateCall(F);
  TrapCall->setDoesNotReturn();
  TrapCall->setDoesNotThrow();
  TrapCall->setDebugLoc(Inst->getDebugLoc());
  Builder->CreateUnreachable();

  Builder->SetInsertPoint(PrevInsertPoint);
  return TrapBB;
}


/// emitBranchToTrap - emit a branch instruction to a trap block.
/// If Cmp is non-null, perform a jump only if its value evaluates to true.
void BoundsChecking::emitBranchToTrap(Value *Cmp) {
  // check if the comparison is always false
  ConstantInt *C = dyn_cast_or_null<ConstantInt>(Cmp);
  if (C && !TrapDontCheckConstants) {
    errs() << "Skipping check" << "\n";
    ++ChecksSkipped;
    if (!C->getZExtValue())
      return;
    else
      Cmp = NULL; // unconditional branch
  }

  Instruction *Inst = Builder->GetInsertPoint();
  BasicBlock *OldBB = Inst->getParent();
  BasicBlock *Cont = OldBB->splitBasicBlock(Inst);
  OldBB->getTerminator()->eraseFromParent();

  if (Cmp)
    BranchInst::Create(getTrapBB(), Cont, Cmp, OldBB);
  else
    BranchInst::Create(getTrapBB(), OldBB);
}

bool BoundsChecking::synthesize(CheckPoint c) {

  // three checks are required to ensure safety:
  // . Offset >= 0  (since the offset is given from the base ptr)
  // . Size >= Offset  (unsigned)
  // . Size - Offset >= NeededSize  (unsigned)
  //
  // optimization: if Size >= 0 (signed), skip 1st check
  // FIXME: add NSW/NUW here?  -- we dont care if the subtraction overflows
  Value *Cmp;
  if(c.isUpper) {
    // TODO: check edge cases
    Cmp = Builder->CreateICmpULT(c.bound, c.name);
    /* errs() << "Syntesiezing ubound\n"; */
  } else {
    Cmp = Builder->CreateICmpULT(c.name, c.bound);
    /* errs() << "Syntesiezing lbound\n"; */
  }
  emitBranchToTrap(Cmp);

  ++ChecksAdded;
  return true;
}

Value* backtrace(Value *Offset,
                 APInt &minn,
                 APInt &maxx) {
#define PM(Class) Class *i = dyn_cast<Class>(Offset)
  if(PM(BinaryOperator)){
    Value *lhs = i->getOperand(0);
    Value *rhs = i->getOperand(1);

    ConstantInt *constant;
    Value *other;
    if(( constant = dyn_cast<ConstantInt>(lhs) )){
      other = rhs;
    } else if(( constant = dyn_cast<ConstantInt>(rhs) )){
      other = lhs;
    } else {
      return Offset;
    }

    const APInt & c= constant->getValue();
    if(i->getOpcode() == Instruction::Add){
      minn -= c;
      maxx -= c;
      return backtrace(other, minn, maxx);
    }
    else if(i->getOpcode() == Instruction::Sub){
      if(other == lhs) {
        minn += c;
        maxx += c;
        return backtrace(other, minn, maxx);
      } else {
        minn -= c;
        maxx -= c;
        swap(minn, maxx);
        return backtrace(other, minn, maxx);
      }
    }

    else if(i->getOpcode() == Instruction::Mul){
      if(c.slt(0)) {
        swap(minn, maxx);
      }
      minn = (minn+c-1).sdiv(c);
      maxx = maxx.sdiv(c);
      return backtrace(other, minn, maxx);
    }
  } else if(PM(SExtInst)) {
    Value *v = i->getOperand(0);
    IntegerType *t = dyn_cast<IntegerType>(v->getType());
    minn = minn.sextOrTrunc(t->getBitWidth());
    maxx = maxx.sextOrTrunc(t->getBitWidth());

    return backtrace(v, minn, maxx);
  }
  return Offset;
}

void BoundsChecking::addChecks(Value *Ptr, Value* InstVal, Instruction *Inst) {
  //uint64_t NeededSize = TD->getTypeStoreSize(InstVal->getType());
  //errs() << "Instrument " << *Ptr << " for " << Twine(NeededSize)
  //            << " bytes\n";

  SizeOffsetEvalType SizeOffset = ObjSizeEval->compute(Ptr);

  if (!ObjSizeEval->bothKnown(SizeOffset)) {
    errs() << "No, both are known .." << "\n";
    ++ChecksUnable;
    return;
  }

  Value *Size   = SizeOffset.first;
  Value *Offset = SizeOffset.second;

  ConstantInt *SizeCI = dyn_cast<ConstantInt>(Size);
  ConstantInt *OffsetCI = dyn_cast<ConstantInt>(Offset);
  if (OffsetCI && OffsetCI->getValue() == 0) {
    //TODO: add more extensive checks
    return;
  }

  Type *IntTy = Offset->getType();
  APInt minn = dyn_cast_or_null<ConstantInt>(ConstantInt::get(IntTy, 0))->getValue();
  APInt maxx = SizeCI->getValue();
  Offset = backtrace(Offset, minn, maxx);
  IntTy = Offset->getType();
  ConstantInt *minCI = dyn_cast_or_null<ConstantInt>(ConstantInt::get(IntTy, minn));
  ConstantInt *maxCI = dyn_cast_or_null<ConstantInt>(ConstantInt::get(IntTy, maxx));

  //Value *NeededSizeVal = ConstantInt::get(IntTy, NeededSize);
  BasicBlock *BB = Inst->getParent();
  /* checkpoints[BB].add(new CheckPoint(Offset, Size - NeededSizeVal, True, Inst)); */
  checkpoints.insert(make_pair(BB,CheckPoint(Offset, maxCI, true, Inst)));
  /* errs() << "Adding ubound\n"; */
  if (!OffsetCI || OffsetCI->getValue().slt(0)) {
    checkpoints.insert(make_pair(BB,CheckPoint(Offset, minCI, false, Inst)));
    /* errs() << "Adding lbound\n"; */
  }
}

void BoundsChecking::addAllChecks(Function &F) {
  std::vector<Instruction*> WorkList;
  for (inst_iterator i = inst_begin(F), e = inst_end(F); i != e; ++i) {
    Instruction *I = &*i;
    if (isa<LoadInst>(I) || isa<StoreInst>(I) || isa<AtomicCmpXchgInst>(I) ||
        isa<AtomicRMWInst>(I))
        WorkList.push_back(I);
  }

  for (std::vector<Instruction*>::iterator i = WorkList.begin(),
       e = WorkList.end(); i != e; ++i) {
    Inst = *i;

    if (LoadInst *LI = dyn_cast<LoadInst>(Inst)) {
      addChecks(LI->getPointerOperand(), LI, Inst);
    } else if (StoreInst *SI = dyn_cast<StoreInst>(Inst)) {
      addChecks(SI->getPointerOperand(), SI, Inst);
    } else if (AtomicCmpXchgInst *AI = dyn_cast<AtomicCmpXchgInst>(Inst)) {
      addChecks(AI->getPointerOperand(), AI, Inst);
    } else if (AtomicRMWInst *AI = dyn_cast<AtomicRMWInst>(Inst)) {
      addChecks(AI->getPointerOperand(), AI, Inst);
    } else {
      llvm_unreachable("unknown Instruction type");
    }
  }
}

void BoundsChecking::localElimination(Function &F) {
  tr(it,F) {
    tr_lu(i,checkpoints,&*it) {
      for (typeof(i) j = checkpoints.lower_bound(&*it); j != i; j++) {
        CheckPoint a = i->second;
        CheckPoint b = j->second;
        if(a.name == b.name) {
          if(a.isUpper == b.isUpper) {
            bool i_is_before_j = a.getIndex() < b.getIndex();
            typeof(i) prev = i_is_before_j ? i : j;
            typeof(i) next = i_is_before_j ? j : i;
            a = prev->second;
            b = next->second;
            if(( a.isUpper && (a.bound->getValue().sge(b.bound->getValue())))
            || (!a.isUpper && (a.bound->getValue().sle(b.bound->getValue())))) {
              prev->second.bound = b.bound;
              checkpoints.erase(next);
              break;
            } else {
              checkpoints.erase(next);
              break;
            }
          }
        }
      }
    }
  }
}

bool BoundsChecking::runOnFunction(Function &F) {
  TD = &getAnalysis<DataLayout>();
  TLI = &getAnalysis<TargetLibraryInfo>();

  TrapBB = 0;
  BuilderTy TheBuilder(F.getContext(), TargetFolder(TD));
  Builder = &TheBuilder;
  ObjectSizeOffsetEvaluator TheObjSizeEval(TD, TLI, F.getContext());
  ObjSizeEval = &TheObjSizeEval;

  // check HANDLE_MEMORY_INST in include/llvm/Instruction.def for memory
  // touching instructions
  addAllChecks(F);

  localElimination(F);

  bool MadeChange = false;
  for (typeof(checkpoints.begin()) it=checkpoints.begin(); it!=checkpoints.end(); ++it) {
    CheckPoint c = it->second;
    Builder->SetInsertPoint(c.point);
    MadeChange |= synthesize(c);
  }
  return MadeChange;
}

FunctionPass *llvm::createBoundsCheckingPass(unsigned Penalty) {
  return new BoundsChecking(Penalty);
}

static RegisterPass<BoundsChecking> Z("bounds", "Hello World Pass (with getAnalysisUsage implemented)");
