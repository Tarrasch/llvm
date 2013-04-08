; ModuleID = 'dump.o'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.hashheader = type { i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i8], [13 x i8], i8, i8, i8, [228 x i16], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [128 x i8], [100 x [11 x i8]], [100 x i32], [100 x i32], i16 }
%struct.flagent = type { i8*, i8*, i16, i16, i16, i16, i16, [228 x i8] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@hashheader = external global %struct.hashheader
@.str = private unnamed_addr constant [16 x i8] c"flagmarker \5C%c\0A\00", align 1
@.str1 = private unnamed_addr constant [19 x i8] c"flagmarker \5C%3.3o\0A\00", align 1
@.str2 = private unnamed_addr constant [15 x i8] c"flagmarker %c\0A\00", align 1
@numpflags = external global i32
@.str3 = private unnamed_addr constant [10 x i8] c"prefixes\0A\00", align 1
@pflaglist = external global %struct.flagent*
@numsflags = external global i32
@.str4 = private unnamed_addr constant [10 x i8] c"suffixes\0A\00", align 1
@sflaglist = external global %struct.flagent*
@.str5 = private unnamed_addr constant [14 x i8] c"  flag %s%c: \00", align 1
@.str6 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str7 = private unnamed_addr constant [2 x i8] c" \00", align 1
@stdout = external global %struct._IO_FILE*
@.str8 = private unnamed_addr constant [4 x i8] c"\09> \00", align 1
@.str9 = private unnamed_addr constant [5 x i8] c"-%s,\00", align 1
@.str10 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str11 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str12 = private unnamed_addr constant [3 x i8] c"[^\00", align 1
@.str13 = private unnamed_addr constant [6 x i8] c"%c-%c\00", align 1

define void @dumpmode() nounwind uwtable {
  %1 = load i8* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 19), align 1
  %2 = sext i8 %1 to i32
  %3 = icmp eq i32 %2, 92
  br i1 %3, label %28, label %4

; <label>:4                                       ; preds = %0
  %5 = load i8* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 19), align 1
  %6 = sext i8 %5 to i32
  %7 = icmp eq i32 %6, 35
  br i1 %7, label %28, label %8

; <label>:8                                       ; preds = %4
  %9 = load i8* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 19), align 1
  %10 = sext i8 %9 to i32
  %11 = icmp eq i32 %10, 62
  br i1 %11, label %28, label %12

; <label>:12                                      ; preds = %8
  %13 = load i8* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 19), align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 58
  br i1 %15, label %28, label %16

; <label>:16                                      ; preds = %12
  %17 = load i8* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 19), align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 45
  br i1 %19, label %28, label %20

; <label>:20                                      ; preds = %16
  %21 = load i8* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 19), align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 44
  br i1 %23, label %28, label %24

; <label>:24                                      ; preds = %20
  %25 = load i8* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 19), align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 91
  br i1 %27, label %28, label %32

; <label>:28                                      ; preds = %24, %20, %16, %12, %8, %4, %0
  %29 = load i8* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 19), align 1
  %30 = sext i8 %29 to i32
  %31 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([16 x i8]* @.str, i32 0, i32 0), i32 %30)
  br label %50

; <label>:32                                      ; preds = %24
  %33 = load i8* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 19), align 1
  %34 = sext i8 %33 to i32
  %35 = icmp slt i32 %34, 32
  br i1 %35, label %40, label %36

; <label>:36                                      ; preds = %32
  %37 = load i8* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 19), align 1
  %38 = sext i8 %37 to i32
  %39 = icmp sge i32 %38, 127
  br i1 %39, label %40, label %45

; <label>:40                                      ; preds = %36, %32
  %41 = load i8* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 19), align 1
  %42 = sext i8 %41 to i32
  %43 = and i32 %42, 255
  %44 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([19 x i8]* @.str1, i32 0, i32 0), i32 %43)
  br label %49

; <label>:45                                      ; preds = %36
  %46 = load i8* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 19), align 1
  %47 = sext i8 %46 to i32
  %48 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @.str2, i32 0, i32 0), i32 %47)
  br label %49

; <label>:49                                      ; preds = %45, %40
  br label %50

; <label>:50                                      ; preds = %49, %28
  %51 = load i32* @numpflags, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

; <label>:53                                      ; preds = %50
  %54 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str3, i32 0, i32 0))
  %55 = load %struct.flagent** @pflaglist, align 8
  %56 = load i32* @numpflags, align 4
  call void @tbldump(%struct.flagent* %55, i32 %56)
  br label %57

; <label>:57                                      ; preds = %53, %50
  %58 = load i32* @numsflags, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

; <label>:60                                      ; preds = %57
  %61 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str4, i32 0, i32 0))
  %62 = load %struct.flagent** @sflaglist, align 8
  %63 = load i32* @numsflags, align 4
  call void @tbldump(%struct.flagent* %62, i32 %63)
  br label %64

; <label>:64                                      ; preds = %60, %57
  ret void
}

declare i32 @printf(i8*, ...)

define internal void @tbldump(%struct.flagent* %flagp, i32 %numflags) nounwind uwtable {
  %1 = alloca %struct.flagent*, align 8
  %2 = alloca i32, align 4
  store %struct.flagent* %flagp, %struct.flagent** %1, align 8
  store i32 %numflags, i32* %2, align 4
  br label %3

; <label>:3                                       ; preds = %7, %0
  %4 = load i32* %2, align 4
  %5 = add nsw i32 %4, -1
  store i32 %5, i32* %2, align 4
  %6 = icmp sge i32 %5, 0
  br i1 %6, label %7, label %10

; <label>:7                                       ; preds = %3
  %8 = load %struct.flagent** %1, align 8
  %9 = getelementptr inbounds %struct.flagent* %8, i32 1
  store %struct.flagent* %9, %struct.flagent** %1, align 8
  call void @entdump(%struct.flagent* %8)
  br label %3

; <label>:10                                      ; preds = %3
  ret void
}

define internal void @entdump(%struct.flagent* %flagp) nounwind uwtable {
  %1 = alloca %struct.flagent*, align 8
  %cond = alloca i32, align 4
  store %struct.flagent* %flagp, %struct.flagent** %1, align 8
  %2 = load %struct.flagent** %1, align 8
  %3 = getelementptr inbounds %struct.flagent* %2, i32 0, i32 6
  %4 = load i16* %3, align 2
  %5 = sext i16 %4 to i32
  %6 = and i32 %5, 1
  %7 = icmp ne i32 %6, 0
  %8 = select i1 %7, i8* getelementptr inbounds ([2 x i8]* @.str6, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str7, i32 0, i32 0)
  %9 = load %struct.flagent** %1, align 8
  %10 = getelementptr inbounds %struct.flagent* %9, i32 0, i32 2
  %11 = load i16* %10, align 2
  %12 = sext i16 %11 to i32
  %13 = add nsw i32 %12, 65
  %14 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([14 x i8]* @.str5, i32 0, i32 0), i8* %8, i32 %13)
  store i32 0, i32* %cond, align 4
  br label %15

; <label>:15                                      ; preds = %39, %0
  %16 = load i32* %cond, align 4
  %17 = load %struct.flagent** %1, align 8
  %18 = getelementptr inbounds %struct.flagent* %17, i32 0, i32 5
  %19 = load i16* %18, align 2
  %20 = sext i16 %19 to i32
  %21 = icmp slt i32 %16, %20
  br i1 %21, label %22, label %42

; <label>:22                                      ; preds = %15
  %23 = load %struct.flagent** %1, align 8
  %24 = getelementptr inbounds %struct.flagent* %23, i32 0, i32 7
  %25 = getelementptr inbounds [228 x i8]* %24, i32 0, i32 0
  %26 = load i32* %cond, align 4
  %27 = shl i32 1, %26
  call void @setdump(i8* %25, i32 %27)
  %28 = load i32* %cond, align 4
  %29 = load %struct.flagent** %1, align 8
  %30 = getelementptr inbounds %struct.flagent* %29, i32 0, i32 5
  %31 = load i16* %30, align 2
  %32 = sext i16 %31 to i32
  %33 = sub nsw i32 %32, 1
  %34 = icmp slt i32 %28, %33
  br i1 %34, label %35, label %38

; <label>:35                                      ; preds = %22
  %36 = load %struct._IO_FILE** @stdout, align 8
  %37 = call i32 @_IO_putc(i32 32, %struct._IO_FILE* %36)
  br label %38

; <label>:38                                      ; preds = %35, %22
  br label %39

; <label>:39                                      ; preds = %38
  %40 = load i32* %cond, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %cond, align 4
  br label %15

; <label>:42                                      ; preds = %15
  %43 = load i32* %cond, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %48

; <label>:45                                      ; preds = %42
  %46 = load %struct._IO_FILE** @stdout, align 8
  %47 = call i32 @_IO_putc(i32 46, %struct._IO_FILE* %46)
  br label %48

; <label>:48                                      ; preds = %45, %42
  %49 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str8, i32 0, i32 0))
  %50 = load %struct._IO_FILE** @stdout, align 8
  %51 = call i32 @_IO_putc(i32 9, %struct._IO_FILE* %50)
  %52 = load %struct.flagent** %1, align 8
  %53 = getelementptr inbounds %struct.flagent* %52, i32 0, i32 3
  %54 = load i16* %53, align 2
  %55 = icmp ne i16 %54, 0
  br i1 %55, label %56, label %62

; <label>:56                                      ; preds = %48
  %57 = load %struct.flagent** %1, align 8
  %58 = getelementptr inbounds %struct.flagent* %57, i32 0, i32 0
  %59 = load i8** %58, align 8
  %60 = call i8* @ichartosstr(i8* %59, i32 1)
  %61 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([5 x i8]* @.str9, i32 0, i32 0), i8* %60)
  br label %62

; <label>:62                                      ; preds = %56, %48
  %63 = load %struct.flagent** %1, align 8
  %64 = getelementptr inbounds %struct.flagent* %63, i32 0, i32 4
  %65 = load i16* %64, align 2
  %66 = sext i16 %65 to i32
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

; <label>:68                                      ; preds = %62
  %69 = load %struct.flagent** %1, align 8
  %70 = getelementptr inbounds %struct.flagent* %69, i32 0, i32 1
  %71 = load i8** %70, align 8
  %72 = call i8* @ichartosstr(i8* %71, i32 1)
  br label %74

; <label>:73                                      ; preds = %62
  br label %74

; <label>:74                                      ; preds = %73, %68
  %75 = phi i8* [ %72, %68 ], [ getelementptr inbounds ([2 x i8]* @.str11, i32 0, i32 0), %73 ]
  %76 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str10, i32 0, i32 0), i8* %75)
  ret void
}

define internal void @setdump(i8* %setp, i32 %mask) nounwind uwtable {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %cnum = alloca i32, align 4
  %firstnz = alloca i32, align 4
  %numnz = alloca i32, align 4
  store i8* %setp, i8** %1, align 8
  store i32 %mask, i32* %2, align 4
  store i32 0, i32* %numnz, align 4
  store i32 0, i32* %firstnz, align 4
  store i32 128, i32* %cnum, align 4
  br label %3

; <label>:3                                       ; preds = %21, %0
  %4 = load i32* %cnum, align 4
  %5 = add nsw i32 %4, -1
  store i32 %5, i32* %cnum, align 4
  %6 = icmp sge i32 %5, 0
  br i1 %6, label %7, label %22

; <label>:7                                       ; preds = %3
  %8 = load i32* %cnum, align 4
  %9 = sext i32 %8 to i64
  %10 = load i8** %1, align 8
  %11 = getelementptr inbounds i8* %10, i64 %9
  %12 = load i8* %11
  %13 = sext i8 %12 to i32
  %14 = load i32* %2, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

; <label>:17                                      ; preds = %7
  %18 = load i32* %numnz, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %numnz, align 4
  %20 = load i32* %cnum, align 4
  store i32 %20, i32* %firstnz, align 4
  br label %21

; <label>:21                                      ; preds = %17, %7
  br label %3

; <label>:22                                      ; preds = %3
  %23 = load i32* %numnz, align 4
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %29

; <label>:25                                      ; preds = %22
  %26 = load i32* %firstnz, align 4
  %27 = load %struct._IO_FILE** @stdout, align 8
  %28 = call i32 @_IO_putc(i32 %26, %struct._IO_FILE* %27)
  br label %54

; <label>:29                                      ; preds = %22
  %30 = load i32* %numnz, align 4
  %31 = icmp eq i32 %30, 128
  br i1 %31, label %32, label %35

; <label>:32                                      ; preds = %29
  %33 = load %struct._IO_FILE** @stdout, align 8
  %34 = call i32 @_IO_putc(i32 46, %struct._IO_FILE* %33)
  br label %53

; <label>:35                                      ; preds = %29
  %36 = load i32* %numnz, align 4
  %37 = icmp sgt i32 %36, 64
  br i1 %37, label %38, label %44

; <label>:38                                      ; preds = %35
  %39 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([3 x i8]* @.str12, i32 0, i32 0))
  %40 = load i8** %1, align 8
  %41 = load i32* %2, align 4
  call void @subsetdump(i8* %40, i32 %41, i32 0)
  %42 = load %struct._IO_FILE** @stdout, align 8
  %43 = call i32 @_IO_putc(i32 93, %struct._IO_FILE* %42)
  br label %52

; <label>:44                                      ; preds = %35
  %45 = load %struct._IO_FILE** @stdout, align 8
  %46 = call i32 @_IO_putc(i32 91, %struct._IO_FILE* %45)
  %47 = load i8** %1, align 8
  %48 = load i32* %2, align 4
  %49 = load i32* %2, align 4
  call void @subsetdump(i8* %47, i32 %48, i32 %49)
  %50 = load %struct._IO_FILE** @stdout, align 8
  %51 = call i32 @_IO_putc(i32 93, %struct._IO_FILE* %50)
  br label %52

; <label>:52                                      ; preds = %44, %38
  br label %53

; <label>:53                                      ; preds = %52, %32
  br label %54

; <label>:54                                      ; preds = %53, %25
  ret void
}

declare i32 @_IO_putc(i32, %struct._IO_FILE*)

declare i8* @ichartosstr(i8*, i32)

define internal void @subsetdump(i8* %setp, i32 %mask, i32 %dumpval) nounwind uwtable {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %cnum = alloca i32, align 4
  %rangestart = alloca i32, align 4
  store i8* %setp, i8** %1, align 8
  store i32 %mask, i32* %2, align 4
  store i32 %dumpval, i32* %3, align 4
  store i32 0, i32* %cnum, align 4
  br label %4

; <label>:4                                       ; preds = %71, %0
  %5 = load i32* %cnum, align 4
  %6 = icmp slt i32 %5, 128
  br i1 %6, label %7, label %76

; <label>:7                                       ; preds = %4
  %8 = load i8** %1, align 8
  %9 = load i8* %8
  %10 = sext i8 %9 to i32
  %11 = load i32* %3, align 4
  %12 = xor i32 %10, %11
  %13 = load i32* %2, align 4
  %14 = and i32 %12, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %70

; <label>:16                                      ; preds = %7
  %17 = load i32* %cnum, align 4
  store i32 %17, i32* %rangestart, align 4
  br label %18

; <label>:18                                      ; preds = %32, %16
  %19 = load i32* %cnum, align 4
  %20 = icmp slt i32 %19, 128
  br i1 %20, label %21, label %37

; <label>:21                                      ; preds = %18
  %22 = load i8** %1, align 8
  %23 = load i8* %22
  %24 = sext i8 %23 to i32
  %25 = load i32* %3, align 4
  %26 = xor i32 %24, %25
  %27 = load i32* %2, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

; <label>:30                                      ; preds = %21
  br label %37

; <label>:31                                      ; preds = %21
  br label %32

; <label>:32                                      ; preds = %31
  %33 = load i8** %1, align 8
  %34 = getelementptr inbounds i8* %33, i32 1
  store i8* %34, i8** %1, align 8
  %35 = load i32* %cnum, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %cnum, align 4
  br label %18

; <label>:37                                      ; preds = %30, %18
  %38 = load i32* %cnum, align 4
  %39 = load i32* %rangestart, align 4
  %40 = add nsw i32 %39, 1
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %42, label %46

; <label>:42                                      ; preds = %37
  %43 = load i32* %rangestart, align 4
  %44 = load %struct._IO_FILE** @stdout, align 8
  %45 = call i32 @_IO_putc(i32 %43, %struct._IO_FILE* %44)
  br label %69

; <label>:46                                      ; preds = %37
  %47 = load i32* %cnum, align 4
  %48 = load i32* %rangestart, align 4
  %49 = add nsw i32 %48, 3
  %50 = icmp sle i32 %47, %49
  br i1 %50, label %51, label %63

; <label>:51                                      ; preds = %46
  br label %52

; <label>:52                                      ; preds = %56, %51
  %53 = load i32* %rangestart, align 4
  %54 = load i32* %cnum, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %62

; <label>:56                                      ; preds = %52
  %57 = load i32* %rangestart, align 4
  %58 = load %struct._IO_FILE** @stdout, align 8
  %59 = call i32 @_IO_putc(i32 %57, %struct._IO_FILE* %58)
  %60 = load i32* %rangestart, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %rangestart, align 4
  br label %52

; <label>:62                                      ; preds = %52
  br label %68

; <label>:63                                      ; preds = %46
  %64 = load i32* %rangestart, align 4
  %65 = load i32* %cnum, align 4
  %66 = sub nsw i32 %65, 1
  %67 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([6 x i8]* @.str13, i32 0, i32 0), i32 %64, i32 %66)
  br label %68

; <label>:68                                      ; preds = %63, %62
  br label %69

; <label>:69                                      ; preds = %68, %42
  br label %70

; <label>:70                                      ; preds = %69, %7
  br label %71

; <label>:71                                      ; preds = %70
  %72 = load i8** %1, align 8
  %73 = getelementptr inbounds i8* %72, i32 1
  store i8* %73, i8** %1, align 8
  %74 = load i32* %cnum, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %cnum, align 4
  br label %4

; <label>:76                                      ; preds = %4
  ret void
}
