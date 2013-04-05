#!/bin/zsh
PARAMSS=('-bounds-no-optimize' '-bounds-no-optimize-more' '')
FILES=(office-ispell/ispell.c security-rijndael/aesxam.c telecomm-gsm/toast.c)
PREFIX='/home/arka3/repos/test-suite/MultiSource/Benchmarks/MiBench/'

for PARAMS in $PARAMSS
do
  for FILE in $FILES
  do
    FILE="$PREFIX$FILE"
    echo $FILE
    clang -c -emit-llvm -o - $FILE | opt -load build/Debug+Asserts/lib/LLVMHello.so -mem2reg -bounds -bounds-checking-single-trap-2 $PARAMS > temp
    cat temp | llvm-dis
    time cat temp | lli
    exit 1
  done
done
