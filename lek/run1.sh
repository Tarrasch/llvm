bash -c "cd ../lib/Transforms/Hello && make"

clang -emit-llvm -c test_loop.c -o out.o
../Debug+Asserts/bin/opt out.o -o opt.o -load ../Debug+Asserts/lib/LLVMHello.so -mem2reg -bounds
../Debug+Asserts/bin/llc opt.o -o opt.s
gcc -lm opt.s
../Debug+Asserts/bin/llvm-dis opt.o
cat opt.o.ll
./a.out
../Debug+Asserts/bin/lli opt.o
../Debug+Asserts/bin/lli out.o
