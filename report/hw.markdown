% Course Project CS 6241
% Arash Rouhani (902951864) & Niklas Ulvinge (902951870)
%

# Problem description

Range checks in array indexing is important, on one side for developer
productivity, but it's also important for security. From a productivity
perspective, a programmer would like immediate feedback when doing an off by
one error, in this case the error will be found sooner or later and range
checking analysis can statically find errors of this kind during compile time.
From the security perspective, run-time range checking will prevent the
notorious buffer overflow attack. As a measure against the later, Java has
implemented this already but the feature have not yet made it to the standard
C programming language.

# Implementation

The product of this endeavour is not only an implementation of range checking,
but a highly optimized one using static code analysis. Our implementation can
both remove useless checks and also lessen the use of non-redundant checks.
Our implementation is based on Gupta's paper "A Fresh Look at Optimizing Array
Bound Checking". We've also taken his work somewhat further by utilizing SSA
properties of the IR.

In the very first step of our algorithm, we simply add all imaginable range
checks. That also involves tracing our way up the expression tree, after
tracing, we will found ourself reaching to either an array variable or a
constant expression. Note that this will alter the original range checking
inequalities, simplifying it in terms of the actual array variable or
completely evaluating it to true or false for constants. The idea is to in the
following steps eliminate or move/adjust the checks. Here is a complete list
of transformations we perform, most is already described in the paper but is
modified for our SSA perspective:

## Local Elimination

Local Elimination is done on a per basic block basis. Checks are only
eliminated and not moved. We remove any check that is subsumed by another
check of the same kind.

## Global Elimination

Global Elimination is elimination across basic blocks. This process contains
of three steps:

### Redundancy creation by modification

The idea of this step is to copy all possible checks from each block to each
blocks parent that does not change the semantics. The idea being that new
checks originating from different blocks will get melded down to a set of
necessary "common denominator" checks for all its dominated blocks.

This step is implemented with a VBE style analysis.

### Redundancy elimination

Now, with the "common denominators" in our hand, we can eliminate the checks
in the blocks we dominate that are redundant.

This step is implemented with a Available Expression style analysis.

### Optimizing loops

Part of the Global Elimination is to optimize loops and we are reminded of
demand driver analysis. For each loop (which might contain smaller loops
within) we perform the steps described below. The individual loop
optimizations happen in a *inner first* order.

#### Loop Modification

By careful inspection of a check, we might have an opportunity to hoist checks
towards blocks where the checks can be hoisted out of the loop. The block
hoisted to must dominate all loop exits.

This step is analogous to the redundancy creation step but only within the
scope of a loop.

#### Propagating checks out of the loop

Consider a basic block in a loop that dominates all exits. Such a block *will*
be executed whenever the loop is entered and so will also its checks. This
makes it possible to safely propagate checks within these blocks to before the
entrance of the loop. This will make the checks run only once rather than the
number of loop iterations. This idea should also motivate the previous step.

# Results

Programs     Original  Bounds, unoptimized  Bounds, optimized
--------     --------  -------------------  -----------------
susan        0.069772   0.07091              0.0705               
dijkstra     0.086015   0.08662              0.0855               
ispell       0.142857   0.14286              0.1429               
rijndael     0.118872   0.12030              0.1242               
gsm          0.310977   0.31045              0.3116               

# Discussion

The results are very unsatisfactory. We naturally hoped to see these two
properties:

  i.  Original should always be the fastest

  ii. The optimized bounds checking version should always be faster than the
      unoptimized.

# Special code cases

The code

    void f(int i) {
      int j = 2 * (i + 5);
      return arr[i] + arr[j];
    }

Will generate checks:

    void f(int i) {
      int j = 2 * (i + 5);
      -- MIN(arr) <= i <= MAX(arr)
      -- MIN(arr) <= j <= MAX(arr)
      return arr[i] + arr[j];
    }

Which our code will optimize to

    void f(int i) {
      int j = 2 * (i + 5);
      -- MIN(arr) <= i <= MAX(arr)/2 - 5
      return arr[i] + arr[j];
    }

Note that this is an **extension** over what the paper presents.

Now consider this code sample:

    #define M 2000
    #define N 2000
    #define K 200
    
    int a[M][N];
    int b[N][K];
    int res[M][K];

    void matrix_mul_a_times_b() {
      for(int i = 0; i < M; i++) {
        for(int k = 0; k < K; k++) {
          int sum = 0;
          for(int j = 0; j < N; j++) {
            sum += a[i][j] * b[j][k];
          }
          res[i][k] = sum;
        }
      }
    }

Will generate *no checks at all* thanks to the optimization mechanism
presented in the paper but also extended to handle multi-dimensional indexing.
Note that this is not a trivial extension. For instance a simple-minded
implementation only looking at the memory address will not work. Say

    int arr[10][10]; 
    arr[12][8]; -- Will be correctly handled
    arr[8][12]; -- Will not

However our implementation will check the first index and the second index
separately, giving an error on both the above lines. This is possible because
how clang emits nested GEPs operations.
