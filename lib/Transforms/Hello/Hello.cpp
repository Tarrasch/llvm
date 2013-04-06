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
#include "llvm/Transforms/Utils/SimplifyIndVar.h"
#include "llvm/Transforms/Utils/SimplifyIndVar.h"
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

static cl::opt<bool> DontOptimize("bounds-no-optimize",
                                  cl::desc("Don't do any optimizations"));

static cl::opt<bool> DontOptimizeMore("bounds-no-optimize-more",
                                  cl::desc("Don't do any extra optimizations"));

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

    void dump() const {
      if(isUpper)
        cout << "i <= " << bound->getValue() << "\n";
      else
        cout << bound->getValue() << " <= i\n";
      cout << bound->getValue() << (isUpper ? " > " : " < ") << " ";
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
    void addChecks(Value *Ptr, Instruction *Inst);
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

void vec_union(vector < CheckPoint > & cps, const CheckSet &s, bool do_create) {
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
    if(!subsumed && do_create) {
      CheckPoint copy(c_prime->second);
      copy.point = NULL;
      cps.push_back(copy);
    }
  }
}


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
    if (!C->getZExtValue()) {
      return;
    } else {
      Cmp = NULL; // unconditional branch
    }
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
    Cmp = Builder->CreateICmpSLE(c.bound, c.name);
    /* errs() << "Syntesiezing ubound\n"; */
  } else {
    Cmp = Builder->CreateICmpSLT(c.name, c.bound);
    /* errs() << "Syntesiezing lbound\n"; */
  }
  emitBranchToTrap(Cmp);

  ++ChecksAdded;
  return true;
}

Value* backtrace(Value *Offset,
                 APInt &minn,
                 APInt &maxx);
Value* backtrace2(Value *Offset,
                 APInt &minn,
                 APInt &maxx) {
  if(DontOptimizeMore){
    return Offset;
  } else {
    return backtrace(Offset, minn, maxx);
  }
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
      return backtrace2(other, minn, maxx);
    }
    else if(i->getOpcode() == Instruction::Sub){
      if(other == lhs) {
        minn += c;
        maxx += c;
        return backtrace2(other, minn, maxx);
      } else {
        minn -= c;
        maxx -= c;
        swap(minn, maxx);
        return backtrace2(other, minn, maxx);
      }
    }

    else if(i->getOpcode() == Instruction::Mul){
      if(c.slt(0)) {
        swap(minn, maxx);
      }
      minn = (minn+c-1).sdiv(c);
      maxx = maxx.sdiv(c);
      return backtrace2(other, minn, maxx);
    }
  } else if(PM(SExtInst)) {
    Value *v = i->getOperand(0);
    IntegerType *t = dyn_cast<IntegerType>(v->getType());
    minn = minn.sextOrTrunc(t->getBitWidth());
    maxx = maxx.sextOrTrunc(t->getBitWidth());

    return backtrace2(v, minn, maxx);
  }
  return Offset;
}

void BoundsChecking::addChecks(Value *Ptr, Instruction *Inst) {
  //uint64_t NeededSize = TD->getTypeStoreSize(InstVal->getType());
  //errs() << "Instrument " << *Ptr << " for " << Twine(NeededSize)
  //            << " bytes\n";

  Value *Size  ;
  Value *Offset;


  bool success=false;
  if (GEPOperator *GEP = DontOptimizeMore || DontOptimize ? NULL : dyn_cast<GEPOperator>(Ptr)) {
    int n = GEP->getNumOperands();
    Offset = GEP->getOperand(n-1);
    Type *IntTy = Offset->getType();
    Type *type = GEP->getPointerOperandType();
#undef PM
#define PM(class, in, out) class *out = dyn_cast<class>(in)
    if(PM(PointerType, type, pt)){
      if(PM(ArrayType, pt->getElementType(), at)){
        success= true;
        Size = dyn_cast_or_null<ConstantInt>(ConstantInt::get(IntTy, at->getNumElements()));
        assert(at->getNumElements() > 0);
        if(PM(GEPOperator, GEP->getOperand(0), GEP2)){
          addChecks(GEP2, Inst);
        }
      }
    }

  } 
  if(!success){
    /* cout << "Used fallback!\n"; */
    SizeOffsetEvalType SizeOffset = ObjSizeEval->compute(Ptr);

    if (!ObjSizeEval->bothKnown(SizeOffset)) {
      /* errs() << "Both are not known .." << "\n"; */
      ++ChecksUnable;
      return;
    }
    Size   = SizeOffset.first;
    Offset = SizeOffset.second;
  }



  ConstantInt *SizeCI = dyn_cast<ConstantInt>(Size);
  if (SizeCI && SizeCI->getValue() == 0) {
    //TODO: add more extensive checks
    return;
  }
  if (!SizeCI || SizeCI->getValue().slt(0)) {
    //TODO: add more extensive checks
    return;
  }
  ConstantInt *OffsetCI = dyn_cast<ConstantInt>(Offset);
  if (OffsetCI && OffsetCI->getValue() == 0) {
    //TODO: add more extensive checks
    return;
  }

  /* cout << "\n*****************************\n"; */
  /* Inst -> getParent() ->dump(); */
  /* Size -> dump(); */
  /* SizeCI -> dump(); */
  /* Offset -> dump(); */
  /* Ptr->dump(); */
  /* Ptr->getType()->dump(); */
  /* Inst->dump(); */
  /* cout << "\n*****************************\n"; */

  if(PM(PointerType, Ptr->getType(), pt)){
    if(PM(PointerType, pt, pt2)){
      return;
    }
  }


  Type *IntTy = Offset->getType();
  APInt minn = dyn_cast_or_null<ConstantInt>(ConstantInt::get(IntTy, 0))->getValue();
  APInt maxx = SizeCI->getValue();
  /* Offset = backtrace(Offset, minn, maxx); */
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
      addChecks(LI->getPointerOperand(), Inst);
    } else if (StoreInst *SI = dyn_cast<StoreInst>(Inst)) {
      addChecks(SI->getPointerOperand(), Inst);
    } else if (AtomicCmpXchgInst *AI = dyn_cast<AtomicCmpXchgInst>(Inst)) {
      addChecks(AI->getPointerOperand(), Inst);
    } else if (AtomicRMWInst *AI = dyn_cast<AtomicRMWInst>(Inst)) {
      addChecks(AI->getPointerOperand(), Inst);
    } else {
      llvm_unreachable("unknown Instruction type");
    }
  }
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
    //BB->dump();

    CheckSet c_in;
    bool first = true;
    tr_succ(prit, BB) {
      if(first) { first=false; c_in = c_out[*prit]; }
      else c_in = cp_intersect(c_in, c_out[*prit]);
    }
    vec_union(cps, c_in, false);
    /* tr(c, cps) { */
    /*   tr(c_prime, c_in) { */
    /*     if(subsumes(c_prime->second, *c)){ */
    /*       cout << "Removed in redundancyElimination\n"; */
    /*       c->bound = c_prime->second.bound; */
    /*       break; */
    /*     } */
    /*   } */
    /* } */
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
          cps.erase(c);
          c--;
          break;
        }
      }
    }
  }
}

set < Value*> incVisited;
Value *incRes;

bool isIncDec(Value* curr_val, Loop* l, bool is_inc);

Value* isDec(Value* curr_val, Loop* l) {
  incVisited.clear();
  incRes = NULL;
  if(!isIncDec(curr_val, l, false)) incRes = NULL;
  return incRes;
}

Value* isInc(Value* curr_val, Loop* l) {
  incVisited.clear();
  incRes = NULL;
  if(!isIncDec(curr_val, l, true)) incRes = NULL;
  return incRes;
}

bool isIncDec(Value* curr_val, Loop* l, bool is_inc) {
  if(incVisited.count((curr_val))) return true;
  incVisited.insert(curr_val);
#define PMa(Class) Class *i = dyn_cast<Class>( curr_val)
#define recurse(val) isIncDec(val, l, is_inc)
  if(PMa(BinaryOperator)){
    Value *lhs = i->getOperand(0);
    Value *rhs = i->getOperand(1);

    ConstantInt *constant;
    Value *var;
    if(( constant = dyn_cast<ConstantInt>(lhs) )){
      var = rhs;
    } else if(( constant = dyn_cast<ConstantInt>(rhs) )){
      var = lhs;
    } else {
      return false;
    }

    const APInt & c= constant->getValue();
    if(i->getOpcode() == Instruction::Add){
      if(is_inc ? c.sge(0) : c.sle(0))
        return recurse(var);
    } else if(i->getOpcode() == Instruction::Sub){
      if(var == lhs) {
        if(!is_inc ? c.sge(0) : c.sle(0))
          return recurse(var);
      } else {
        return false;
      }
    } else if(i->getOpcode() == Instruction::Mul){
      if(is_inc && c.sge(1))
        return recurse(var);
    } else if(i->getOpcode() == Instruction::SDiv || i->getOpcode() == Instruction::UDiv){
      if(!is_inc && c.sge(1))
        return recurse(var);
    }
  }
  if(PMa(PHINode)){
    for(unsigned j=0; j < i->getNumIncomingValues(); ++j){
      Value *new_val = i->getIncomingValue(j);
      if(l->isLoopInvariant(new_val)) {
        assert(incRes == NULL);
        incRes = new_val;
      }
      else if(!recurse(new_val)) {
        return false;
      }
    }
    return true;
  }

  return false;
}

/// Return the compare guarding the loop latch, or NULL for unrecognized tests.
static ICmpInst *getLoopTest(Loop *L) {
  assert(L->getExitingBlock() && "expected loop exit");

  BasicBlock *LatchBlock = L->getLoopLatch();
  // Don't bother with LFTR if the loop is not properly simplified.
  if (!LatchBlock)
    return 0;

  BranchInst *BI = dyn_cast<BranchInst>(L->getExitingBlock()->getTerminator());
  assert(BI && "expected exit branch");

  return dyn_cast<ICmpInst>(BI->getCondition());
}

CheckPoint* canHoist(const CheckPoint &a, Loop* l, PHINode* canon) {
#define myreturn(rv) do { typeof(rv) rv_ = (rv);cp->name = rv_; if(rv_) return cp;} while(0)
  CheckPoint *cp = new CheckPoint(NULL, a.bound, a.isUpper, NULL);
  if(canon && a.name == canon) {
    if(a.isUpper) {
      if(ICmpInst* test = getLoopTest(l)) {
        if(test->getOperand(0) == a.name) {
          if(test->getSignedPredicate() == CmpInst::ICMP_SLT){
            Type *IntTy = a.bound->getType();
            cp->bound = dyn_cast_or_null<ConstantInt>(ConstantInt::get(IntTy, a.bound->getValue() + 1));
            myreturn(test->getOperand(1));
          }
          if(test->getSignedPredicate() == CmpInst::ICMP_SLE){
            myreturn(test->getOperand(1));
          }
        }
      }
    }
    else {
      Type *IntTy = a.name->getType();
      myreturn(dyn_cast_or_null<ConstantInt>(ConstantInt::get(IntTy, 0)));
    }
  }
  if(l->isLoopInvariant(a.name)) {
    myreturn(a.name);
  }
  if(a.isUpper) {
    myreturn(isDec(a.name, l));
  } else {
    myreturn(isInc(a.name, l));
  }
  return NULL;
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


void BoundsChecking::loopHoist(Loop* loop, DominatorTree &dt) {
  const vector < Loop* > & subs = loop->getSubLoops();
  tr(sub, subs) {
    if((*sub)->getLoopDepth() == loop->getLoopDepth() + 1) {
      loopHoist(*sub, dt);
    }
  }

  PHINode* canon = loop->getCanonicalInductionVariable();
  map< BasicBlock*, CheckSet > C;
  tr_block(bit, *loop) {
    BasicBlock *BB = *bit;
    vector < CheckPoint > &cps = checkpoints[BB];
    
    tr(it, cps) {
      if(canHoist(*it, loop, canon)) {
        C[BB][it->getCT()] = *it;
      }
    }
  }
  bool change = true;
  while(change) {
    /* cout << "ScoobyDoo\n"; */
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

          vec_union(cps, prop, true);
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
        if(CheckPoint *cp = canHoist(*it, loop, canon)) {
          C[it->getCT()] = *cp;
          cps.erase(it);
          it--;
        }
      }
      BasicBlock* before = loop->getLoopPredecessor();
      vec_union(checkpoints[before], C, true);
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

  if(!DontOptimize) {
    localElimination(F);
    globalElimination(F);
  }

  bool MadeChange = false;
  tr(it, checkpoints) {
    tr(it2, it->second) {
      CheckPoint c = *it2;
      /* it->first->dump(); */
      /* c.point->getParent()->dump(); */
      /* assert(it->first == c.point->getParent()); */
      if(c.point == NULL) {
        c.point = it->first->getFirstNonPHI();
        if(Instruction *ins = dyn_cast<Instruction>(c.name)){
          assert(ins->getParent() != it->first);
        }
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
