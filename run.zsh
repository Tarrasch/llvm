#!/bin/zsh
PARAMSS=('xxx' "-bounds -bounds-no-optimize" '-bounds')

FOLDERS=(network-dijkstra office-ispell security-rijndael telecomm-gsm automotive-susan)
CPPFLAGSS=('' '-Dconst=' '' '-DSTUPID_COMPILER -DNeedFunctionPrototypes=1 -DSASR' '')
RUN_OPTIONSS=('$CD/input.dat'
              '-a -d $CD/americanmed+ < $CD/large.txt'
              '$CD/output_large.enc bajs.dec e 1234567890abcdeffedcba09876543211234567890abcdeffedcba0987654321'
              '-fps -c $CD/large.au > bajs'
              '$CD/input_large.pgm bajs.pgm -s')
FILES=(network-dijkstra/dijkstra.c office-ispell/ispell.c security-rijndael/aesxam.c telecomm-gsm/toast.c)

PREFIX='/home/arka3/repos/test-suite/MultiSource/Benchmarks/MiBench/'
TOOLS="/home/arka3/repos/llvm2/build/Debug+Asserts/bin"

cd runs

for i in {1..5}
do
  for PARAMS in $PARAMSS
  do
    ORIGFOLDER=$FOLDERS[i]
    OUT=out
    FOLDER="$PREFIX$ORIGFOLDER"
    CD=$FOLDER
    CPPFLAGS=${(e)CPPFLAGSS[i]}
    RUN_OPTIONS=${(e)RUN_OPTIONSS[i]}

    eval "clang $CPPFLAGS -c -w -emit-llvm $FOLDER/*.c"
    $TOOLS/llvm-link *.o > $OUT.o
    # cp dijkstra.o $OUT.o
    echo "Compiling ..."
    banner $i
    banner $PARAMS
    echo $PARAMS
    if [[ "$PARAMS" = 'xxx' ]]
    then
      eval "$TOOLS/opt $OUT.o -mem2reg > $OUT.o.opt"
    else
      eval "$TOOLS/opt $OUT.o -load ../build/lib/LLVMHello.so -mem2reg $PARAMS > $OUT.o.opt"
    fi
    echo "Binarizing ..."
    $TOOLS/llc $OUT.o.opt -o a.s
    gcc -lm a.s
    # llvm-ld-3.0 -native $OUT.o.opt
    echo "Running ..."
    STATFILE="stat-${ORIGFOLDER}${PARAMS/ /}"
    echo $STATFILE
    # /usr/bin/time --output=$STATFILE lli $OUT.o.opt $RUN_OPTIONS
    toexec="./a.out $RUN_OPTIONS"
    eval $toexec
    eval /usr/bin/time --append --output=$STATFILE --format="%e" $toexec
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
