#!/bin/zsh
PARAMSS=('-bounds-no-optimize-more' "-bounds -bounds-no-optimize" '-bounds')
PREFIX='/home/arka3/repos/test-suite/MultiSource/Benchmarks/MiBench/'
FOLDERS=(network-dijkstra office-ispell security-rijndael telecomm-gsm)
CPPFLAGSS=('' '-Dconst=' '' '')
RUN_OPTIONSS=('$CD/input.dat' '-a -d $CD/americanmed+ < $CD/large.txt' '' '')
FILES=(network-dijkstra/dijkstra.c office-ispell/ispell.c security-rijndael/aesxam.c telecomm-gsm/toast.c)
TOOLS="/home/arka3/repos/llvm2/build/Debug+Asserts/bin"

cd runs

for PARAMS in $PARAMSS
do
  for i in {1..2}
  do
    ORIGFOLDER=$FOLDERS[i]
    OUT=out
    FOLDER="$PREFIX$ORIGFOLDER"
    CD=$FOLDER
    CPPFLAGS=${(e)CPPFLAGSS[i]}
    RUN_OPTIONS=${(e)RUN_OPTIONSS[i]}

    clang $CPPFLAGS -c -w -emit-llvm $FOLDER/*.c
    $TOOLS/llvm-link *.o > $OUT.o
    # cp dijkstra.o $OUT.o
    echo "Compiling ..."
    eval "$TOOLS/opt $OUT.o -load ../build/lib/LLVMHello.so -mem2reg $PARAMS > $OUT.o.opt"
    # cp $OUT.o $OUT.o.opt
    echo "Binarizing ..."
    $TOOLS/llc $OUT.o.opt -o a.s
    gcc a.s
    # llvm-ld-3.0 -native $OUT.o.opt
    echo "Running ..."
    STATFILE="stat-${ORIGFOLDER}${PARAMS}"
    # /usr/bin/time --output=$STATFILE lli $OUT.o.opt $RUN_OPTIONS
    /usr/bin/time --output=$STATFILE ./a.out $RUN_OPTIONS
    rm a.out
    rm *.o*

    # FILE="$PREFIX$FILE"
    # echo $FILE
    # cat temp | llvm-dis
  done
done

exit 1
FILES=(network-dijkstra/dijkstra.c office-ispell/ispell.c security-rijndael/aesxam.c telecomm-gsm/toast.c)

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
