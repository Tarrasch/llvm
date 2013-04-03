#include "llvm/IRBuilder.h"
#include "llvm/Intrinsics.h"
#include "llvm/Pass.h"
#include "llvm/ADT/Statistic.h"
#include "llvm/Analysis/MemoryBuiltins.h"
#include "llvm/Analysis/LoopInfo.h"
#include "llvm/Support/CFG.h"
#include "llvm/Support/CommandLine.h"
#include "llvm/Support/Debug.h"
#include "llvm/Support/InstIterator.h"
#include "llvm/Support/TargetFolder.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/DataLayout.h"
#include "llvm/Target/TargetLibraryInfo.h"
#include "llvm/Transforms/Instrumentation.h"
using namespace llvm;

#define cout errs()
#define all(c) (c).begin(), (c).end()

#define tr(it, c) \
  for (typeof((c).begin()) it = (c).begin(); it != (c).end(); it++)
#define tr_block(it, c) \
  for (typeof((c).block_begin()) it = (c).block_begin(); it != (c).block_end(); it++)
#define tr_pred(it, c) \
  for (typeof(pred_begin(c)) it = pred_begin(c); it != pred_end(c);it++)
#define tr_succ(it, c) \
  for (typeof(succ_begin(c)) it = succ_begin(c); it != succ_end(c);it++)
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

/* template <class InputIterator1, class InputIterator2, */
/*           class OutputIterator, class Compare> */
/*   OutputIterator set_union (InputIterator1 first1, InputIterator1 last1, */
/*                             InputIterator2 first2, InputIterator2 last2, */
/*                             OutputIterator result, Compare comp); */

/* bool compare */

#define CheckType pair < Value*, bool >
#define CheckSet map< CheckType, CheckPoint >

namespace {
  struct CheckPoint {
    public:
    Value* name;
    ConstantInt* bound;
    bool isUpper;
    Instruction *point;

    CheckPoint(Value* n, ConstantInt* b, bool i, Instruction* p)
      : name(n), bound(b), isUpper(i), point(p) {}

    CheckPoint(const CheckPoint &c)
      : name(c.name), bound(c.bound), isUpper(c.isUpper), point(c.point) {}

    CheckPoint()
      : name(NULL), bound(NULL), isUpper(false), point(NULL) {}

    void dump() {
      cout << bound->getValue() << (isUpper ? "(<)" : "(>)") << " ";
      name->dump();
    }

    int getIndex() const {
      BasicBlock *bb = point->getParent();
      int i = 0;
      tr(it, *bb){
        if(&(*it) == point) return i;
        i++;
      }
      assert(false);
    }

    CheckType getCT(){ return CheckType(name, isUpper); }

    bool operator==(const CheckPoint& other) const {
      return name == other.name
          && bound == other.bound
          && isUpper == other.isUpper;
    }

    static bool positionComparator(const CheckPoint &one, const CheckPoint& other) {
      return one.getIndex() < other.getIndex();
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
      AU.addRequired<LoopInfo>();
      AU.addRequired<TargetLibraryInfo>();
      AU.addRequired<DominatorTree>();
    }

    map< BasicBlock*, vector< CheckPoint > > checkpoints;

    CheckSet c_gen(BasicBlock *BB) {
      vector < CheckPoint > cps = checkpoints[BB];
      CheckSet cs;
      tr(it, cps) {
        cs[it->getCT()] = *it;
      }
      return cs;
    }

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
    bool synthesize(CheckPoint c);

    // Passes
    void localElimination(Function &F);
    void globalElimination(Function &F);
      void redundancyCreation(Function &F);
      void redundancyElimination(Function &F);
      void loopRemovals(Function &F);
        void loopHoist(Loop* loop, DominatorTree &dt);
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

/* void dump(CheckType ct) { */
/*   ct.first.dump(); */
/*   cout << "(" + ct.second */
/* } */

void cs_dump(CheckSet cs) {
  cout << "cs_dump:\n";
  tr(it, cs) {
    it->second.dump();
  }
  cout << "\n";
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
  checkpoints[BB].push_back(CheckPoint(Offset, maxCI, true, Inst));
  /* errs() << "Adding ubound\n"; */
  if (!OffsetCI || OffsetCI->getValue().slt(0)) {
    checkpoints[BB].push_back(CheckPoint(Offset, minCI, false, Inst));
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

bool same_types(const CheckPoint &c1, const CheckPoint &c2) {
  if(c1.name != c2.name) return false;
  if(c1.isUpper != c2.isUpper) return false;
  return true;
}

// Example: arg1@(i < 100) subsumes arg2@(i < 200)
// also:    arg1@(i < 100) subsumes arg2@(i < 100)
//
// subsumes((i < 100), (i < 200)) ==> true
bool subsumes(const CheckPoint &a, const CheckPoint &b) {
  if(!same_types(a, b)) return false;
  return ( a.isUpper && (a.bound->getValue().sle(b.bound->getValue())))
      || (!a.isUpper && (a.bound->getValue().sge(b.bound->getValue())));
}

CheckSet cp_union(CheckSet a, const CheckSet &b) {
  tr(it, b){
    CheckType ct = it->first;
    if(a.count(ct)) {
      if(subsumes(it->second, a[ct])){
        a[ct] = it->second;
      }
    }
    else {
      a[ct] = it->second;
    }
  }
  return a;
}

CheckSet cp_intersect(CheckSet &a, CheckSet &b) {
  CheckSet r;
  tr(it, a){
    CheckType ct = it->first;
    if(b.count(ct)) {
      if(subsumes(b[ct], it->second)){
        r[ct] = b[ct];
      } else {
        r[ct] = a[ct];
      }
    }
  }
  return r;
}

void BoundsChecking::localElimination(Function &F) {
  tr(it,F) {
    /* errs() << "ytterssta\n"; */
    /* it->dump(); */
    BasicBlock *BB = &(*it);
    sort(all(checkpoints[BB]), &CheckPoint::positionComparator);
    tr(i,checkpoints[BB]) {
      /* errs() << "\t"; */
      /* i->point->dump(); */
      assert(&(*it) == i->point->getParent());
      for (typeof(i) j = checkpoints[BB].begin(); j != i; j++) {
        /* errs() << "\t\t"; */
        /* j->point->dump(); */
        assert(&(*it) == j->point->getParent());
        CheckPoint &a = *j;
        CheckPoint &b = *i;
        if(same_types(a, b)) {
          /* errs () << "About to remove \n"; */
          if(subsumes(b, a)) {
            a.bound = b.bound;
          }
          checkpoints[BB].erase(i);
          i--;
          break;
        }
      }
    }
  }
}

vector < CheckPoint > forward(vector < CheckPoint > arg) {
  return arg;
}

void BoundsChecking::globalElimination(Function &F) {
  redundancyCreation(F);
  redundancyElimination(F);
  loopRemovals(F);
}

void BoundsChecking::redundancyCreation(Function &F) {
  map< BasicBlock*, CheckSet > c_out;
  bool change = true;
  while(change) {
    change = false;
    tr(it, F) {
      BasicBlock *BB = &(*it);
      CheckSet c_in;
      bool first = true;
      tr_succ(prit, BB) {
        if(first) { first=false; c_in = c_out[*prit]; }
        else c_in = cp_intersect(c_in, c_out[*prit]);
      }
      CheckSet new_c_out = cp_union(c_gen(BB), c_in);
      change |= c_out[BB] != new_c_out;
      c_out[BB] = new_c_out;
    }
  }

  tr(it, F) {
    BasicBlock *BB = &(*it);
    vector < CheckPoint > &cps = checkpoints[BB];
    CheckSet c_in;
    bool first = true;
    tr_succ(prit, BB) {
      if(first) { first=false; c_in = c_out[*prit]; }
      else c_in = cp_intersect(c_in, c_out[*prit]);
    }
    tr(c, cps) {
      tr(c_prime, c_in) {
        if(subsumes(c_prime->second, *c)){
          cout << "Removed in redundancyElimination\n";
          c->bound = c_prime->second.bound;
          break;
        }
      }
    }
  }
}


void BoundsChecking::redundancyElimination(Function &F) {
  map< BasicBlock*, CheckSet > c_out;
  bool change = true;
  while(change) {
    change = false;
    tr(it, F) {
      BasicBlock *BB = &(*it);
      CheckSet c_in;
      bool first = true;
      tr_pred(prit, BB) {
        if(first) { first=false; c_in = c_out[*prit]; }
        else c_in = cp_intersect(c_in, c_out[*prit]);
      }
      CheckSet new_c_out = cp_union(c_gen(BB), c_in);
      change |= c_out[BB] != new_c_out;
      c_out[BB] = new_c_out;
    }
  }

  tr(it, F) {
    BasicBlock *BB = &(*it);
    vector < CheckPoint > &cps = checkpoints[BB];
    CheckSet c_in;
    bool first = true;
    /* BB->dump(); */
    tr_pred(prit, BB) {
      if(first) { first=false; c_in = c_out[*prit]; }
      else c_in = cp_intersect(c_in, c_out[*prit]);
      /* cs_dump(c_out[*prit]); */
    }
    /* cs_dump(c_in); */
    tr(c, cps) {
      tr(c_prime, c_in) {
        cout << "\n\n";
        /* c_prime->second.dump(); */
        /* c->dump(); */
        if(subsumes(c_prime->second, *c)){
          cout << "Removed in redundancyElimination\n";
          cps.erase(c);
          c--;
          break;
        }
      }
    }
  }
}

Value* isDec(Value*a, Value*o, Loop* l) {
  return NULL;
}

Value* isInc(Value*a, Value*o, Loop* l) {
#define PMa(Class) Class *i = dyn_cast<Class>(a)
  if(PMa(BinaryOperator)){
    Value *lhs = i->getOperand(0);
    Value *rhs = i->getOperand(1);

    ConstantInt *constant;
    Value *other;
    if(( constant = dyn_cast<ConstantInt>(lhs) )){
      other = rhs;
    } else if(( constant = dyn_cast<ConstantInt>(rhs) )){
      other = lhs;
    } else {
      return NULL;
    }

    const APInt & c= constant->getValue();
    if(i->getOpcode() == Instruction::Add){
      cout << "Testtest\n";
      c.dump();
      cout << c.sge(0);
      if(c.sge(0))
        return isInc(other, o, l);
    } else if(i->getOpcode() == Instruction::Sub){
      return NULL;
      if(other == lhs) {
        return isInc(other, o, l);
      } else {
        return isInc(other, o, l);
      }
    }
  }
  if(PMa(PHINode)){
    Value* r=NULL;
    for(unsigned j=0; j<i->getNumIncomingValues(); ++j){
      Value *b = i->getIncomingValue(j);
      if(l->isLoopInvariant(b)) {
        r = b;
        continue;
      }
      if(a==o)
        continue;
      if(isInc(b,o,l))
        continue;
      return NULL;
    }
    return r;
  }

  return NULL;
}


Value* canHoist(const CheckPoint &a, Loop* l) {
  if(l->isLoopInvariant(a.name)) {
    return a.name;
  }
  if(a.isUpper) {
    return isDec(a.name, a.name, l);
  } else {
    return isInc(a.name, a.name, l);
  }
}

bool dominatesExits(BasicBlock* BB, DominatorTree &dt, Loop* l) {
  SmallVector<BasicBlock *, 4> ExitBlocks;
  l->getExitBlocks(ExitBlocks);
  tr(exit, ExitBlocks) {
    if(!dt.dominates(BB, *exit))
      return false;
  }
  return true;
}

bool isExit(BasicBlock* BB, Loop* l) {
  SmallVector<BasicBlock *, 4> ExitBlocks;
  l->getExitBlocks(ExitBlocks);
  tr(exit, ExitBlocks) {
    if(*exit == BB)
      return true;
  }
  return false;
}

bool isDominatorBlock(BasicBlock* BB, DominatorTree &dt, Loop* l) {
  bool run=false;
  tr_succ(s, BB) {
    if(isExit(*s, l))
      continue;
    if(s->getUniquePredecessor()) {
      if(!dominatesExits(*s,dt,l)) {
        run = true;
      }
    } else {
      return false;
    }
  }
  return run;
}

void vec_union(vector < CheckPoint > & cps, const CheckSet &s) {
  tr(c_prime, s) {
    bool subsumed = false;
    tr(c, cps) {
      if(same_types(c_prime->second, *c)){
        if(subsumes(c_prime->second, *c)){
          c->bound = c_prime->second.bound;
        }
        subsumed = true;
        break;
      }
    }
    if(!subsumed) {
      CheckPoint copy(c_prime->second);
      copy.point = NULL;
      cps.push_back(copy);
    }
  }
}

void BoundsChecking::loopHoist(Loop* loop, DominatorTree &dt) {
  cout << "Entered loopHoist\n";
  const vector < Loop* > & subs = loop->getSubLoops();
  tr(sub, subs) {
    if((*sub)->getLoopDepth() == loop->getLoopDepth() + 1) {
      loopHoist(*sub, dt);
    }
  }

  map< BasicBlock*, CheckSet > C;
  tr_block(bit, *loop) {
    BasicBlock *BB = *bit;
    vector < CheckPoint > &cps = checkpoints[BB];
    
    tr(it, cps) {
      if(canHoist(*it, loop)) {
        C[BB][it->getCT()] = *it;
      }
    }
  }
  bool change = true;
  while(change) {
    cout << "ScoobyDoo\n";
    change = false;
    tr_block(it, *loop) {
      BasicBlock *BB = *it;
      vector < CheckPoint > &cps = checkpoints[BB];
      if(isDominatorBlock(BB, dt, loop)) {
        CheckSet prop;
        bool first = true;
        tr_succ(prit, BB) {
          if(isExit(*prit, loop))
            continue;
          if(first) { first=false; prop = C[*prit]; }
          else prop = cp_intersect(prop, C[*prit]);
        }
        if(!prop.empty()) {
          change = true;

          vec_union(cps, prop);
          tr_succ(prit, BB) {
            if(isExit(*prit, loop))
              continue;
            vector < CheckPoint > &S = checkpoints[*prit];

            tr(i, S) {
              tr(c_prime, prop) {
                if(c_prime->second == *i) {
                  C[*prit].erase(i->getCT());
                  S.erase(i);
                  i--;
                }
              }
            }
          }
        }
      }
    }
  }

  //Step 3
  tr_block(it, *loop) {
    BasicBlock *BB = *it;
    vector < CheckPoint > &cps = checkpoints[BB];
    if(dominatesExits(BB, dt, loop)) {
      CheckSet C;
      tr(it, cps) {
        if(Value *b = canHoist(*it, loop)) {
          C[it->getCT()] = CheckPoint(b, it->bound, it->isUpper, NULL);
          cps.erase(it);
          it--;
        }
      }
      BasicBlock* before = loop->getLoopPredecessor();
      vec_union(checkpoints[before], C);
    }
  }
}

void BoundsChecking::loopRemovals(Function &F) {
  LoopInfo &li = getAnalysis<LoopInfo>();
  DominatorTree &dt = getAnalysis<DominatorTree>();
  
  tr(loop, li) {
    /* cout << "tr(loop)\n"; */
    /* cout << (*loop)->getLoopDepth() << "\n"; */
    if((*loop)->getLoopDepth() == 1) {
      loopHoist(*loop, dt);

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
  globalElimination(F);

  bool MadeChange = false;
  tr(it, checkpoints) {
    tr(it2, it->second) {
      CheckPoint c = *it2;
      /* it->first->dump(); */
      /* c.point->getParent()->dump(); */
      /* assert(it->first == c.point->getParent()); */
      if(c.point == NULL) {
        c.point = it->first->getFirstNonPHI();
      }
      assert(c.point);
      Builder->SetInsertPoint(c.point);
      MadeChange |= synthesize(c);
    }
  }
  return MadeChange;
}

FunctionPass *llvm::createBoundsCheckingPass(unsigned Penalty) {
  return new BoundsChecking(Penalty);
}

static RegisterPass<BoundsChecking> Z("bounds", "Hello World Pass (with getAnalysisUsage implemented)");
