; ModuleID = 'temp'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._QITEM = type { i32, i32, i32, %struct._QITEM* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._NODE = type { i32, i32 }

@qHead = global %struct._QITEM* null, align 8
@g_qCount = global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@stdout = external global %struct._IO_FILE*
@stderr = external global %struct._IO_FILE*
@.str1 = private unnamed_addr constant [16 x i8] c"Out of memory.\0A\00", align 1
@ch = common global i32 0, align 4
@rgnNodes = common global [100 x %struct._NODE] zeroinitializer, align 16
@.str2 = private unnamed_addr constant [54 x i8] c"Shortest path is 0 in cost. Just stay where you are.\0A\00", align 1
@iNode = common global i32 0, align 4
@iDist = common global i32 0, align 4
@iPrev = common global i32 0, align 4
@i = common global i32 0, align 4
@AdjMatrix = common global [100 x [100 x i32]] zeroinitializer, align 16
@iCost = common global i32 0, align 4
@.str3 = private unnamed_addr constant [30 x i8] c"Shortest path is %d in cost. \00", align 1
@.str4 = private unnamed_addr constant [10 x i8] c"Path is: \00", align 1
@.str5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str6 = private unnamed_addr constant [28 x i8] c"Usage: dijkstra <filename>\0A\00", align 1
@.str7 = private unnamed_addr constant [41 x i8] c"Only supports matrix size is #define'd.\0A\00", align 1
@.str8 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str9 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

define void @print_path(%struct._NODE* %rgnNodes, i32 %chNode) nounwind uwtable {
  %1 = sext i32 %chNode to i64
  %2 = getelementptr inbounds %struct._NODE* %rgnNodes, i64 %1
  %3 = getelementptr inbounds %struct._NODE* %2, i32 0, i32 1
  %4 = load i32* %3, align 4
  %5 = icmp ne i32 %4, 9999
  br i1 %5, label %6, label %11

; <label>:6                                       ; preds = %0
  %7 = sext i32 %chNode to i64
  %8 = getelementptr inbounds %struct._NODE* %rgnNodes, i64 %7
  %9 = getelementptr inbounds %struct._NODE* %8, i32 0, i32 1
  %10 = load i32* %9, align 4
  call void @print_path(%struct._NODE* %rgnNodes, i32 %10)
  br label %11

; <label>:11                                      ; preds = %6, %0
  %12 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str, i32 0, i32 0), i32 %chNode)
  %13 = load %struct._IO_FILE** @stdout, align 8
  %14 = call i32 @fflush(%struct._IO_FILE* %13)
  ret void
}

declare i32 @printf(i8*, ...)

declare i32 @fflush(%struct._IO_FILE*)

define void @enqueue(i32 %iNode, i32 %iDist, i32 %iPrev) nounwind uwtable {
  %1 = call noalias i8* @malloc(i64 24) nounwind
  %2 = bitcast i8* %1 to %struct._QITEM*
  %3 = load %struct._QITEM** @qHead, align 8
  %4 = icmp ne %struct._QITEM* %2, null
  br i1 %4, label %8, label %5

; <label>:5                                       ; preds = %0
  %6 = load %struct._IO_FILE** @stderr, align 8
  %7 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([16 x i8]* @.str1, i32 0, i32 0))
  call void @exit(i32 1) noreturn nounwind
  unreachable

; <label>:8                                       ; preds = %0
  %9 = getelementptr inbounds %struct._QITEM* %2, i32 0, i32 0
  store i32 %iNode, i32* %9, align 4
  %10 = getelementptr inbounds %struct._QITEM* %2, i32 0, i32 1
  store i32 %iDist, i32* %10, align 4
  %11 = getelementptr inbounds %struct._QITEM* %2, i32 0, i32 2
  store i32 %iPrev, i32* %11, align 4
  %12 = getelementptr inbounds %struct._QITEM* %2, i32 0, i32 3
  store %struct._QITEM* null, %struct._QITEM** %12, align 8
  %13 = icmp ne %struct._QITEM* %3, null
  br i1 %13, label %15, label %14

; <label>:14                                      ; preds = %8
  store %struct._QITEM* %2, %struct._QITEM** @qHead, align 8
  br label %25

; <label>:15                                      ; preds = %8
  br label %16

; <label>:16                                      ; preds = %20, %15
  %qLast.0 = phi %struct._QITEM* [ %3, %15 ], [ %22, %20 ]
  %17 = getelementptr inbounds %struct._QITEM* %qLast.0, i32 0, i32 3
  %18 = load %struct._QITEM** %17, align 8
  %19 = icmp ne %struct._QITEM* %18, null
  br i1 %19, label %20, label %23

; <label>:20                                      ; preds = %16
  %21 = getelementptr inbounds %struct._QITEM* %qLast.0, i32 0, i32 3
  %22 = load %struct._QITEM** %21, align 8
  br label %16

; <label>:23                                      ; preds = %16
  %24 = getelementptr inbounds %struct._QITEM* %qLast.0, i32 0, i32 3
  store %struct._QITEM* %2, %struct._QITEM** %24, align 8
  br label %25

; <label>:25                                      ; preds = %23, %14
  %26 = load i32* @g_qCount, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* @g_qCount, align 4
  ret void
}

declare noalias i8* @malloc(i64) nounwind

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...)

declare void @exit(i32) noreturn nounwind

define void @dequeue(i32* %piNode, i32* %piDist, i32* %piPrev) nounwind uwtable {
  %1 = load %struct._QITEM** @qHead, align 8
  %2 = load %struct._QITEM** @qHead, align 8
  %3 = icmp ne %struct._QITEM* %2, null
  br i1 %3, label %4, label %20

; <label>:4                                       ; preds = %0
  %5 = load %struct._QITEM** @qHead, align 8
  %6 = getelementptr inbounds %struct._QITEM* %5, i32 0, i32 0
  %7 = load i32* %6, align 4
  store i32 %7, i32* %piNode
  %8 = load %struct._QITEM** @qHead, align 8
  %9 = getelementptr inbounds %struct._QITEM* %8, i32 0, i32 1
  %10 = load i32* %9, align 4
  store i32 %10, i32* %piDist
  %11 = load %struct._QITEM** @qHead, align 8
  %12 = getelementptr inbounds %struct._QITEM* %11, i32 0, i32 2
  %13 = load i32* %12, align 4
  store i32 %13, i32* %piPrev
  %14 = load %struct._QITEM** @qHead, align 8
  %15 = getelementptr inbounds %struct._QITEM* %14, i32 0, i32 3
  %16 = load %struct._QITEM** %15, align 8
  store %struct._QITEM* %16, %struct._QITEM** @qHead, align 8
  %17 = bitcast %struct._QITEM* %1 to i8*
  call void @free(i8* %17) nounwind
  %18 = load i32* @g_qCount, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* @g_qCount, align 4
  br label %20

; <label>:20                                      ; preds = %4, %0
  ret void
}

declare void @free(i8*) nounwind

define i32 @qcount() nounwind uwtable {
  %1 = load i32* @g_qCount, align 4
  ret i32 %1
}

define i32 @dijkstra(i32 %chStart, i32 %chEnd) nounwind uwtable {
  store i32 0, i32* @ch, align 4
  br label %1

; <label>:1                                       ; preds = %13, %0
  %2 = load i32* @ch, align 4
  %3 = icmp slt i32 %2, 100
  br i1 %3, label %4, label %16

; <label>:4                                       ; preds = %1
  %5 = load i32* @ch, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [100 x %struct._NODE]* @rgnNodes, i32 0, i64 %6
  %8 = getelementptr inbounds %struct._NODE* %7, i32 0, i32 0
  store i32 9999, i32* %8, align 4
  %9 = load i32* @ch, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [100 x %struct._NODE]* @rgnNodes, i32 0, i64 %10
  %12 = getelementptr inbounds %struct._NODE* %11, i32 0, i32 1
  store i32 9999, i32* %12, align 4
  br label %13

; <label>:13                                      ; preds = %4
  %14 = load i32* @ch, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* @ch, align 4
  br label %1

; <label>:16                                      ; preds = %1
  %17 = icmp eq i32 %chStart, %chEnd
  br i1 %17, label %18, label %20

; <label>:18                                      ; preds = %16
  %19 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([54 x i8]* @.str2, i32 0, i32 0))
  br label %92

; <label>:20                                      ; preds = %16
  %21 = sext i32 %chStart to i64
  %22 = getelementptr inbounds [100 x %struct._NODE]* @rgnNodes, i32 0, i64 %21
  %23 = getelementptr inbounds %struct._NODE* %22, i32 0, i32 0
  store i32 0, i32* %23, align 4
  %24 = sext i32 %chStart to i64
  %25 = getelementptr inbounds [100 x %struct._NODE]* @rgnNodes, i32 0, i64 %24
  %26 = getelementptr inbounds %struct._NODE* %25, i32 0, i32 1
  store i32 9999, i32* %26, align 4
  call void @enqueue(i32 %chStart, i32 0, i32 9999)
  br label %27

; <label>:27                                      ; preds = %83, %20
  %28 = call i32 @qcount()
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %84

; <label>:30                                      ; preds = %27
  call void @dequeue(i32* @iNode, i32* @iDist, i32* @iPrev)
  store i32 0, i32* @i, align 4
  br label %31

; <label>:31                                      ; preds = %80, %30
  %32 = load i32* @i, align 4
  %33 = icmp slt i32 %32, 100
  br i1 %33, label %34, label %83

; <label>:34                                      ; preds = %31
  %35 = load i32* @i, align 4
  %36 = sext i32 %35 to i64
  %37 = load i32* @iNode, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [100 x [100 x i32]]* @AdjMatrix, i32 0, i64 %38
  %40 = getelementptr inbounds [100 x i32]* %39, i32 0, i64 %36
  %41 = load i32* %40, align 4
  store i32 %41, i32* @iCost, align 4
  %42 = icmp ne i32 %41, 9999
  br i1 %42, label %43, label %79

; <label>:43                                      ; preds = %34
  %44 = load i32* @i, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [100 x %struct._NODE]* @rgnNodes, i32 0, i64 %45
  %47 = getelementptr inbounds %struct._NODE* %46, i32 0, i32 0
  %48 = load i32* %47, align 4
  %49 = icmp eq i32 9999, %48
  br i1 %49, label %60, label %50

; <label>:50                                      ; preds = %43
  %51 = load i32* @i, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [100 x %struct._NODE]* @rgnNodes, i32 0, i64 %52
  %54 = getelementptr inbounds %struct._NODE* %53, i32 0, i32 0
  %55 = load i32* %54, align 4
  %56 = load i32* @iCost, align 4
  %57 = load i32* @iDist, align 4
  %58 = add nsw i32 %56, %57
  %59 = icmp sgt i32 %55, %58
  br i1 %59, label %60, label %78

; <label>:60                                      ; preds = %50, %43
  %61 = load i32* @iDist, align 4
  %62 = load i32* @iCost, align 4
  %63 = add nsw i32 %61, %62
  %64 = load i32* @i, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [100 x %struct._NODE]* @rgnNodes, i32 0, i64 %65
  %67 = getelementptr inbounds %struct._NODE* %66, i32 0, i32 0
  store i32 %63, i32* %67, align 4
  %68 = load i32* @iNode, align 4
  %69 = load i32* @i, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [100 x %struct._NODE]* @rgnNodes, i32 0, i64 %70
  %72 = getelementptr inbounds %struct._NODE* %71, i32 0, i32 1
  store i32 %68, i32* %72, align 4
  %73 = load i32* @i, align 4
  %74 = load i32* @iDist, align 4
  %75 = load i32* @iCost, align 4
  %76 = add nsw i32 %74, %75
  %77 = load i32* @iNode, align 4
  call void @enqueue(i32 %73, i32 %76, i32 %77)
  br label %78

; <label>:78                                      ; preds = %60, %50
  br label %79

; <label>:79                                      ; preds = %78, %34
  br label %80

; <label>:80                                      ; preds = %79
  %81 = load i32* @i, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* @i, align 4
  br label %31

; <label>:83                                      ; preds = %31
  br label %27

; <label>:84                                      ; preds = %27
  %85 = sext i32 %chEnd to i64
  %86 = getelementptr inbounds [100 x %struct._NODE]* @rgnNodes, i32 0, i64 %85
  %87 = getelementptr inbounds %struct._NODE* %86, i32 0, i32 0
  %88 = load i32* %87, align 4
  %89 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([30 x i8]* @.str3, i32 0, i32 0), i32 %88)
  %90 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str4, i32 0, i32 0))
  call void @print_path(%struct._NODE* getelementptr inbounds ([100 x %struct._NODE]* @rgnNodes, i32 0, i32 0), i32 %chEnd)
  %91 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str5, i32 0, i32 0))
  br label %92

; <label>:92                                      ; preds = %84, %18
  ret i32 undef
}

define i32 @main(i32 %argc, i8** %argv) nounwind uwtable {
  %k = alloca i32, align 4
  %1 = icmp slt i32 %argc, 2
  br i1 %1, label %2, label %7

; <label>:2                                       ; preds = %0
  %3 = load %struct._IO_FILE** @stderr, align 8
  %4 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([28 x i8]* @.str6, i32 0, i32 0))
  %5 = load %struct._IO_FILE** @stderr, align 8
  %6 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([41 x i8]* @.str7, i32 0, i32 0))
  br label %7

; <label>:7                                       ; preds = %2, %0
  %8 = getelementptr inbounds i8** %argv, i64 1
  %9 = load i8** %8
  %10 = call %struct._IO_FILE* @fopen(i8* %9, i8* getelementptr inbounds ([2 x i8]* @.str8, i32 0, i32 0))
  br label %11

; <label>:11                                      ; preds = %26, %7
  %i.0 = phi i32 [ 0, %7 ], [ %27, %26 ]
  %12 = icmp slt i32 %i.0, 100
  br i1 %12, label %13, label %28

; <label>:13                                      ; preds = %11
  br label %14

; <label>:14                                      ; preds = %23, %13
  %j.0 = phi i32 [ 0, %13 ], [ %24, %23 ]
  %15 = icmp slt i32 %j.0, 100
  br i1 %15, label %16, label %25

; <label>:16                                      ; preds = %14
  %17 = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([3 x i8]* @.str9, i32 0, i32 0), i32* %k)
  %18 = load i32* %k, align 4
  %19 = sext i32 %j.0 to i64
  %20 = sext i32 %i.0 to i64
  %21 = getelementptr inbounds [100 x [100 x i32]]* @AdjMatrix, i32 0, i64 %20
  %22 = getelementptr inbounds [100 x i32]* %21, i32 0, i64 %19
  store i32 %18, i32* %22, align 4
  br label %23

; <label>:23                                      ; preds = %16
  %24 = add nsw i32 %j.0, 1
  br label %14

; <label>:25                                      ; preds = %14
  br label %26

; <label>:26                                      ; preds = %25
  %27 = add nsw i32 %i.0, 1
  br label %11

; <label>:28                                      ; preds = %11
  br label %29

; <label>:29                                      ; preds = %34, %28
  %i.1 = phi i32 [ 0, %28 ], [ %35, %34 ]
  %j.1 = phi i32 [ 50, %28 ], [ %36, %34 ]
  %30 = icmp slt i32 %i.1, 100
  br i1 %30, label %31, label %37

; <label>:31                                      ; preds = %29
  %32 = srem i32 %j.1, 100
  %33 = call i32 @dijkstra(i32 %i.1, i32 %32)
  br label %34

; <label>:34                                      ; preds = %31
  %35 = add nsw i32 %i.1, 1
  %36 = add nsw i32 %32, 1
  br label %29

; <label>:37                                      ; preds = %29
  call void @exit(i32 0) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  ret i32 0
}

declare %struct._IO_FILE* @fopen(i8*, i8*)

declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...)
