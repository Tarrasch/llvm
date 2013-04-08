; ModuleID = 'term.o'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.termios = type { i32, i32, i32, i32, i8, [32 x i8], i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"COLUMNS\00", align 1
@co = external global i32
@.str1 = private unnamed_addr constant [6 x i8] c"LINES\00", align 1
@li = external global i32
@contextsize = external global i32
@stderr = external global %struct._IO_FILE*
@.str2 = private unnamed_addr constant [43 x i8] c"Screen too small:  need at least %d lines\0A\00", align 1
@.str3 = private unnamed_addr constant [42 x i8] c"Can't deal with non-interactive use yet.\0A\00", align 1
@osbuf = internal global %struct.termios zeroinitializer, align 4
@termchanged = internal global i32 0, align 4
@sbuf = internal global %struct.termios zeroinitializer, align 4
@uerasechar = external global i32
@ukillchar = external global i32
@oldint = internal global void (...)* null, align 8
@oldterm = internal global void (...)* null, align 8
@oldttin = internal global void (...)* null, align 8
@oldttou = internal global void (...)* null, align 8
@oldtstp = internal global void (...)* null, align 8
@tempfile = external global [4096 x i8]
@.str4 = private unnamed_addr constant [28 x i8] c"Couldn't fork, try later.\0D\0A\00", align 1
@.str5 = private unnamed_addr constant [30 x i8] c"\0A-- Type space to continue --\00", align 1
@stdout = external global %struct._IO_FILE*

define void @erase() nounwind uwtable {
  ret void
}

define void @move(i32 %row, i32 %col) nounwind uwtable {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %row, i32* %1, align 4
  store i32 %col, i32* %2, align 4
  ret void
}

define void @inverse() nounwind uwtable {
  ret void
}

define void @normal() nounwind uwtable {
  ret void
}

define void @backup() nounwind uwtable {
  ret void
}

define void @terminit() nounwind uwtable {
  %1 = call i8* @getenv(i8* getelementptr inbounds ([8 x i8]* @.str, i32 0, i32 0)) nounwind
  %2 = icmp ne i8* %1, null
  br i1 %2, label %3, label %6

; <label>:3                                       ; preds = %0
  %4 = call i8* @getenv(i8* getelementptr inbounds ([8 x i8]* @.str, i32 0, i32 0)) nounwind
  %5 = call i32 @atoi(i8* %4) nounwind readonly
  store i32 %5, i32* @co, align 4
  br label %6

; <label>:6                                       ; preds = %3, %0
  %7 = call i8* @getenv(i8* getelementptr inbounds ([6 x i8]* @.str1, i32 0, i32 0)) nounwind
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %12

; <label>:9                                       ; preds = %6
  %10 = call i8* @getenv(i8* getelementptr inbounds ([6 x i8]* @.str1, i32 0, i32 0)) nounwind
  %11 = call i32 @atoi(i8* %10) nounwind readonly
  store i32 %11, i32* @li, align 4
  br label %12

; <label>:12                                      ; preds = %9, %6
  %13 = load i32* @contextsize, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

; <label>:15                                      ; preds = %12
  %16 = load i32* @li, align 4
  %17 = mul nsw i32 %16, 10
  %18 = sdiv i32 %17, 100
  store i32 %18, i32* @contextsize, align 4
  br label %19

; <label>:19                                      ; preds = %15, %12
  %20 = load i32* @contextsize, align 4
  %21 = icmp sgt i32 %20, 10
  br i1 %21, label %22, label %23

; <label>:22                                      ; preds = %19
  store i32 10, i32* @contextsize, align 4
  br label %28

; <label>:23                                      ; preds = %19
  %24 = load i32* @contextsize, align 4
  %25 = icmp slt i32 %24, 2
  br i1 %25, label %26, label %27

; <label>:26                                      ; preds = %23
  store i32 2, i32* @contextsize, align 4
  br label %27

; <label>:27                                      ; preds = %26, %23
  br label %28

; <label>:28                                      ; preds = %27, %22
  %29 = load i32* @li, align 4
  %30 = load i32* @contextsize, align 4
  %31 = add nsw i32 %30, 8
  %32 = icmp slt i32 %29, %31
  br i1 %32, label %33, label %43

; <label>:33                                      ; preds = %28
  %34 = load i32* @contextsize, align 4
  %35 = icmp sgt i32 %34, 2
  br i1 %35, label %36, label %43

; <label>:36                                      ; preds = %33
  %37 = load i32* @li, align 4
  %38 = sub nsw i32 %37, 8
  store i32 %38, i32* @contextsize, align 4
  %39 = load i32* @contextsize, align 4
  %40 = icmp slt i32 %39, 2
  br i1 %40, label %41, label %42

; <label>:41                                      ; preds = %36
  store i32 2, i32* @contextsize, align 4
  br label %42

; <label>:42                                      ; preds = %41, %36
  br label %43

; <label>:43                                      ; preds = %42, %33, %28
  %44 = load i32* @li, align 4
  %45 = icmp slt i32 %44, 10
  br i1 %45, label %46, label %49

; <label>:46                                      ; preds = %43
  %47 = load %struct._IO_FILE** @stderr, align 8
  %48 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %47, i8* getelementptr inbounds ([43 x i8]* @.str2, i32 0, i32 0), i32 10)
  br label %49

; <label>:49                                      ; preds = %46, %43
  %50 = call i32 (...)* @isatty(i32 0)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

; <label>:52                                      ; preds = %49
  %53 = load %struct._IO_FILE** @stderr, align 8
  %54 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %53, i8* getelementptr inbounds ([42 x i8]* @.str3, i32 0, i32 0))
  call void @exit(i32 1) noreturn nounwind
  unreachable

; <label>:55                                      ; preds = %49
  %56 = call i32 @tcgetattr(i32 0, %struct.termios* @osbuf) nounwind
  store i32 1, i32* @termchanged, align 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.termios* @sbuf to i8*), i8* bitcast (%struct.termios* @osbuf to i8*), i64 60, i32 4, i1 false)
  %57 = load i32* getelementptr inbounds (%struct.termios* @sbuf, i32 0, i32 3), align 4
  %58 = and i32 %57, -107
  store i32 %58, i32* getelementptr inbounds (%struct.termios* @sbuf, i32 0, i32 3), align 4
  %59 = load i32* getelementptr inbounds (%struct.termios* @sbuf, i32 0, i32 1), align 4
  %60 = and i32 %59, -2
  store i32 %60, i32* getelementptr inbounds (%struct.termios* @sbuf, i32 0, i32 1), align 4
  %61 = load i32* getelementptr inbounds (%struct.termios* @sbuf, i32 0, i32 0), align 4
  %62 = and i32 %61, -449
  store i32 %62, i32* getelementptr inbounds (%struct.termios* @sbuf, i32 0, i32 0), align 4
  store i8 1, i8* getelementptr inbounds (%struct.termios* @sbuf, i32 0, i32 5, i64 6), align 1
  store i8 1, i8* getelementptr inbounds (%struct.termios* @sbuf, i32 0, i32 5, i64 5), align 1
  %63 = call i32 @tcsetattr(i32 0, i32 0, %struct.termios* @sbuf) nounwind
  %64 = load i8* getelementptr inbounds (%struct.termios* @osbuf, i32 0, i32 5, i64 2), align 1
  %65 = zext i8 %64 to i32
  store i32 %65, i32* @uerasechar, align 4
  %66 = load i8* getelementptr inbounds (%struct.termios* @osbuf, i32 0, i32 5, i64 3), align 1
  %67 = zext i8 %66 to i32
  store i32 %67, i32* @ukillchar, align 4
  %68 = call void (i32)* (i32, void (i32)*)* @signal(i32 2, void (i32)* inttoptr (i64 1 to void (i32)*)) nounwind
  %69 = bitcast void (i32)* %68 to void (...)*
  store void (...)* %69, void (...)** @oldint, align 8
  %70 = icmp ne void (...)* %69, inttoptr (i64 1 to void (...)*)
  br i1 %70, label %71, label %73

; <label>:71                                      ; preds = %55
  %72 = call void (i32)* (i32, void (i32)*)* @signal(i32 2, void (i32)* @done) nounwind
  br label %73

; <label>:73                                      ; preds = %71, %55
  %74 = call void (i32)* (i32, void (i32)*)* @signal(i32 15, void (i32)* inttoptr (i64 1 to void (i32)*)) nounwind
  %75 = bitcast void (i32)* %74 to void (...)*
  store void (...)* %75, void (...)** @oldterm, align 8
  %76 = icmp ne void (...)* %75, inttoptr (i64 1 to void (...)*)
  br i1 %76, label %77, label %79

; <label>:77                                      ; preds = %73
  %78 = call void (i32)* (i32, void (i32)*)* @signal(i32 15, void (i32)* @done) nounwind
  br label %79

; <label>:79                                      ; preds = %77, %73
  %80 = call void (i32)* (i32, void (i32)*)* @signal(i32 21, void (i32)* inttoptr (i64 1 to void (i32)*)) nounwind
  %81 = bitcast void (i32)* %80 to void (...)*
  store void (...)* %81, void (...)** @oldttin, align 8
  %82 = icmp ne void (...)* %81, inttoptr (i64 1 to void (...)*)
  br i1 %82, label %83, label %85

; <label>:83                                      ; preds = %79
  %84 = call void (i32)* (i32, void (i32)*)* @signal(i32 21, void (i32)* @onstop) nounwind
  br label %85

; <label>:85                                      ; preds = %83, %79
  %86 = call void (i32)* (i32, void (i32)*)* @signal(i32 22, void (i32)* inttoptr (i64 1 to void (i32)*)) nounwind
  %87 = bitcast void (i32)* %86 to void (...)*
  store void (...)* %87, void (...)** @oldttou, align 8
  %88 = icmp ne void (...)* %87, inttoptr (i64 1 to void (...)*)
  br i1 %88, label %89, label %91

; <label>:89                                      ; preds = %85
  %90 = call void (i32)* (i32, void (i32)*)* @signal(i32 22, void (i32)* @onstop) nounwind
  br label %91

; <label>:91                                      ; preds = %89, %85
  %92 = call void (i32)* (i32, void (i32)*)* @signal(i32 20, void (i32)* inttoptr (i64 1 to void (i32)*)) nounwind
  %93 = bitcast void (i32)* %92 to void (...)*
  store void (...)* %93, void (...)** @oldtstp, align 8
  %94 = icmp ne void (...)* %93, inttoptr (i64 1 to void (...)*)
  br i1 %94, label %95, label %97

; <label>:95                                      ; preds = %91
  %96 = call void (i32)* (i32, void (i32)*)* @signal(i32 20, void (i32)* @onstop) nounwind
  br label %97

; <label>:97                                      ; preds = %95, %91
  ret void
}

declare i8* @getenv(i8*) nounwind

declare i32 @atoi(i8*) nounwind readonly

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...)

declare i32 @isatty(...)

declare void @exit(i32) noreturn nounwind

declare i32 @tcgetattr(i32, %struct.termios*) nounwind

declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) nounwind

declare i32 @tcsetattr(i32, i32, %struct.termios*) nounwind

declare void (i32)* @signal(i32, void (i32)*) nounwind

define void @done(i32 %signo) nounwind uwtable {
  %1 = alloca i32, align 4
  store i32 %signo, i32* %1, align 4
  %2 = load i8* getelementptr inbounds ([4096 x i8]* @tempfile, i32 0, i64 0), align 1
  %3 = sext i8 %2 to i32
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %7

; <label>:5                                       ; preds = %0
  %6 = call i32 (...)* @unlink(i8* getelementptr inbounds ([4096 x i8]* @tempfile, i32 0, i32 0))
  br label %7

; <label>:7                                       ; preds = %5, %0
  %8 = load i32* @termchanged, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %7
  br label %11

; <label>:11                                      ; preds = %10, %7
  call void @exit(i32 0) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  ret void
}

define internal void @onstop(i32 %signo) nounwind uwtable {
  %1 = alloca i32, align 4
  store i32 %signo, i32* %1, align 4
  %2 = call i32 @tcsetattr(i32 0, i32 0, %struct.termios* @osbuf) nounwind
  %3 = load i32* %1, align 4
  %4 = call void (i32)* (i32, void (i32)*)* @signal(i32 %3, void (i32)* null) nounwind
  %5 = load i32* %1, align 4
  %6 = call i32 @kill(i32 0, i32 %5) nounwind
  %7 = load i32* %1, align 4
  %8 = call void (i32)* (i32, void (i32)*)* @signal(i32 %7, void (i32)* @onstop) nounwind
  %9 = call i32 @tcsetattr(i32 0, i32 0, %struct.termios* @sbuf) nounwind
  ret void
}

declare i32 @unlink(...)

define void @stop() nounwind uwtable {
  call void (...)* bitcast (void (i32)* @onstop to void (...)*)(i32 20)
  ret void
}

define i32 @shellescape(i8* %buf) nounwind uwtable {
  %1 = alloca i8*, align 8
  %argv = alloca [100 x i8*], align 16
  %cp = alloca i8*, align 8
  %i = alloca i32, align 4
  %termstat = alloca i32, align 4
  store i8* %buf, i8** %1, align 8
  %2 = load i8** %1, align 8
  store i8* %2, i8** %cp, align 8
  store i32 0, i32* %i, align 4
  br label %3

; <label>:3                                       ; preds = %64, %0
  %4 = load i8** %cp, align 8
  %5 = load i8* %4
  %6 = sext i8 %5 to i32
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %65

; <label>:8                                       ; preds = %3
  br label %9

; <label>:9                                       ; preds = %21, %8
  %10 = load i8** %cp, align 8
  %11 = load i8* %10
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 32
  br i1 %13, label %19, label %14

; <label>:14                                      ; preds = %9
  %15 = load i8** %cp, align 8
  %16 = load i8* %15
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 9
  br label %19

; <label>:19                                      ; preds = %14, %9
  %20 = phi i1 [ true, %9 ], [ %18, %14 ]
  br i1 %20, label %21, label %24

; <label>:21                                      ; preds = %19
  %22 = load i8** %cp, align 8
  %23 = getelementptr inbounds i8* %22, i32 1
  store i8* %23, i8** %cp, align 8
  br label %9

; <label>:24                                      ; preds = %19
  %25 = load i8** %cp, align 8
  %26 = load i8* %25
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

; <label>:29                                      ; preds = %24
  br label %65

; <label>:30                                      ; preds = %24
  %31 = load i8** %cp, align 8
  %32 = load i32* %i, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %i, align 4
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds [100 x i8*]* %argv, i32 0, i64 %34
  store i8* %31, i8** %35, align 8
  br label %36

; <label>:36                                      ; preds = %53, %30
  %37 = load i8** %cp, align 8
  %38 = load i8* %37
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %39, 32
  br i1 %40, label %41, label %51

; <label>:41                                      ; preds = %36
  %42 = load i8** %cp, align 8
  %43 = load i8* %42
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 9
  br i1 %45, label %46, label %51

; <label>:46                                      ; preds = %41
  %47 = load i8** %cp, align 8
  %48 = load i8* %47
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %49, 0
  br label %51

; <label>:51                                      ; preds = %46, %41, %36
  %52 = phi i1 [ false, %41 ], [ false, %36 ], [ %50, %46 ]
  br i1 %52, label %53, label %56

; <label>:53                                      ; preds = %51
  %54 = load i8** %cp, align 8
  %55 = getelementptr inbounds i8* %54, i32 1
  store i8* %55, i8** %cp, align 8
  br label %36

; <label>:56                                      ; preds = %51
  %57 = load i8** %cp, align 8
  %58 = load i8* %57
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

; <label>:61                                      ; preds = %56
  %62 = load i8** %cp, align 8
  %63 = getelementptr inbounds i8* %62, i32 1
  store i8* %63, i8** %cp, align 8
  store i8 0, i8* %62
  br label %64

; <label>:64                                      ; preds = %61, %56
  br label %3

; <label>:65                                      ; preds = %29, %3
  %66 = load i32* %i, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [100 x i8*]* %argv, i32 0, i64 %67
  store i8* null, i8** %68, align 8
  %69 = call i32 @tcsetattr(i32 0, i32 0, %struct.termios* @osbuf) nounwind
  %70 = load void (...)** @oldint, align 8
  %71 = bitcast void (...)* %70 to void (i32)*
  %72 = call void (i32)* (i32, void (i32)*)* @signal(i32 2, void (i32)* %71) nounwind
  %73 = load void (...)** @oldterm, align 8
  %74 = bitcast void (...)* %73 to void (i32)*
  %75 = call void (i32)* (i32, void (i32)*)* @signal(i32 15, void (i32)* %74) nounwind
  %76 = load void (...)** @oldttin, align 8
  %77 = bitcast void (...)* %76 to void (i32)*
  %78 = call void (i32)* (i32, void (i32)*)* @signal(i32 21, void (i32)* %77) nounwind
  %79 = load void (...)** @oldttou, align 8
  %80 = bitcast void (...)* %79 to void (i32)*
  %81 = call void (i32)* (i32, void (i32)*)* @signal(i32 22, void (i32)* %80) nounwind
  %82 = load void (...)** @oldtstp, align 8
  %83 = bitcast void (...)* %82 to void (i32)*
  %84 = call void (i32)* (i32, void (i32)*)* @signal(i32 20, void (i32)* %83) nounwind
  %85 = call i32 (...)* @fork()
  store i32 %85, i32* %i, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %92

; <label>:87                                      ; preds = %65
  %88 = getelementptr inbounds [100 x i8*]* %argv, i32 0, i64 0
  %89 = load i8** %88, align 8
  %90 = getelementptr inbounds [100 x i8*]* %argv, i32 0, i32 0
  %91 = call i32 (...)* @execvp(i8* %89, i8** %90)
  call void @_exit(i32 123) noreturn
  unreachable

; <label>:92                                      ; preds = %65
  %93 = load i32* %i, align 4
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %105

; <label>:95                                      ; preds = %92
  br label %96

; <label>:96                                      ; preds = %100, %95
  %97 = call i32 (...)* @wait(i32* %termstat)
  %98 = load i32* %i, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %101

; <label>:100                                     ; preds = %96
  br label %96

; <label>:101                                     ; preds = %96
  %102 = load i32* %termstat, align 4
  %103 = icmp eq i32 %102, 31488
  %104 = select i1 %103, i32 0, i32 -1
  store i32 %104, i32* %termstat, align 4
  br label %107

; <label>:105                                     ; preds = %92
  %106 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([28 x i8]* @.str4, i32 0, i32 0))
  store i32 -1, i32* %termstat, align 4
  br label %107

; <label>:107                                     ; preds = %105, %101
  br label %108

; <label>:108                                     ; preds = %107
  %109 = load void (...)** @oldint, align 8
  %110 = icmp ne void (...)* %109, inttoptr (i64 1 to void (...)*)
  br i1 %110, label %111, label %113

; <label>:111                                     ; preds = %108
  %112 = call void (i32)* (i32, void (i32)*)* @signal(i32 2, void (i32)* @done) nounwind
  br label %113

; <label>:113                                     ; preds = %111, %108
  %114 = load void (...)** @oldterm, align 8
  %115 = icmp ne void (...)* %114, inttoptr (i64 1 to void (...)*)
  br i1 %115, label %116, label %118

; <label>:116                                     ; preds = %113
  %117 = call void (i32)* (i32, void (i32)*)* @signal(i32 15, void (i32)* @done) nounwind
  br label %118

; <label>:118                                     ; preds = %116, %113
  %119 = load void (...)** @oldttin, align 8
  %120 = icmp ne void (...)* %119, inttoptr (i64 1 to void (...)*)
  br i1 %120, label %121, label %123

; <label>:121                                     ; preds = %118
  %122 = call void (i32)* (i32, void (i32)*)* @signal(i32 21, void (i32)* @onstop) nounwind
  br label %123

; <label>:123                                     ; preds = %121, %118
  %124 = load void (...)** @oldttou, align 8
  %125 = icmp ne void (...)* %124, inttoptr (i64 1 to void (...)*)
  br i1 %125, label %126, label %128

; <label>:126                                     ; preds = %123
  %127 = call void (i32)* (i32, void (i32)*)* @signal(i32 22, void (i32)* @onstop) nounwind
  br label %128

; <label>:128                                     ; preds = %126, %123
  %129 = load void (...)** @oldtstp, align 8
  %130 = icmp ne void (...)* %129, inttoptr (i64 1 to void (...)*)
  br i1 %130, label %131, label %133

; <label>:131                                     ; preds = %128
  %132 = call void (i32)* (i32, void (i32)*)* @signal(i32 20, void (i32)* @onstop) nounwind
  br label %133

; <label>:133                                     ; preds = %131, %128
  %134 = call i32 @tcsetattr(i32 0, i32 0, %struct.termios* @sbuf) nounwind
  %135 = load i32* %termstat, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %146

; <label>:137                                     ; preds = %133
  %138 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([30 x i8]* @.str5, i32 0, i32 0))
  %139 = load %struct._IO_FILE** @stdout, align 8
  %140 = call i32 @fflush(%struct._IO_FILE* %139)
  br label %141

; <label>:141                                     ; preds = %144, %137
  %142 = call i32 @getchar()
  %143 = icmp ne i32 %142, 32
  br i1 %143, label %144, label %145

; <label>:144                                     ; preds = %141
  br label %141

; <label>:145                                     ; preds = %141
  br label %146

; <label>:146                                     ; preds = %145, %133
  %147 = load i32* %termstat, align 4
  ret i32 %147
}

declare i32 @fork(...)

declare i32 @execvp(...)

declare void @_exit(i32) noreturn

declare i32 @wait(...)

declare i32 @printf(i8*, ...)

declare i32 @fflush(%struct._IO_FILE*)

declare i32 @getchar()

declare i32 @kill(i32, i32) nounwind
