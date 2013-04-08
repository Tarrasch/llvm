; ModuleID = 'hash.o'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.hashheader = type { i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i8], [13 x i8], i8, i8, i8, [228 x i16], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [128 x i8], [100 x [11 x i8]], [100 x i32], [100 x i32], i16 }

@hashheader = external global %struct.hashheader

define i32 @hash(i8* %s, i32 %hashtblsize) nounwind uwtable {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %h = alloca i64, align 8
  %i = alloca i32, align 4
  store i8* %s, i8** %1, align 8
  store i32 %hashtblsize, i32* %2, align 4
  store i64 0, i64* %h, align 8
  store i32 4, i32* %i, align 4
  br label %3

; <label>:3                                       ; preds = %14, %0
  %4 = load i32* %i, align 4
  %5 = add nsw i32 %4, -1
  store i32 %5, i32* %i, align 4
  %6 = icmp ne i32 %4, 0
  br i1 %6, label %7, label %12

; <label>:7                                       ; preds = %3
  %8 = load i8** %1, align 8
  %9 = load i8* %8
  %10 = zext i8 %9 to i32
  %11 = icmp ne i32 %10, 0
  br label %12

; <label>:12                                      ; preds = %7, %3
  %13 = phi i1 [ false, %3 ], [ %11, %7 ]
  br i1 %13, label %14, label %25

; <label>:14                                      ; preds = %12
  %15 = load i64* %h, align 8
  %16 = shl i64 %15, 8
  %17 = load i8** %1, align 8
  %18 = getelementptr inbounds i8* %17, i32 1
  store i8* %18, i8** %1, align 8
  %19 = load i8* %17
  %20 = zext i8 %19 to i64
  %21 = getelementptr inbounds [228 x i8]* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 22), i32 0, i64 %20
  %22 = load i8* %21, align 1
  %23 = zext i8 %22 to i64
  %24 = or i64 %16, %23
  store i64 %24, i64* %h, align 8
  br label %3

; <label>:25                                      ; preds = %12
  br label %26

; <label>:26                                      ; preds = %31, %25
  %27 = load i8** %1, align 8
  %28 = load i8* %27
  %29 = zext i8 %28 to i32
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %47

; <label>:31                                      ; preds = %26
  %32 = load i64* %h, align 8
  %33 = shl i64 %32, 5
  %34 = load i64* %h, align 8
  %35 = ashr i64 %34, 27
  %36 = and i64 %35, 31
  %37 = or i64 %33, %36
  store i64 %37, i64* %h, align 8
  %38 = load i8** %1, align 8
  %39 = getelementptr inbounds i8* %38, i32 1
  store i8* %39, i8** %1, align 8
  %40 = load i8* %38
  %41 = zext i8 %40 to i64
  %42 = getelementptr inbounds [228 x i8]* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 22), i32 0, i64 %41
  %43 = load i8* %42, align 1
  %44 = zext i8 %43 to i64
  %45 = load i64* %h, align 8
  %46 = xor i64 %45, %44
  store i64 %46, i64* %h, align 8
  br label %26

; <label>:47                                      ; preds = %26
  %48 = load i64* %h, align 8
  %49 = load i32* %2, align 4
  %50 = sext i32 %49 to i64
  %51 = urem i64 %48, %50
  %52 = trunc i64 %51 to i32
  ret i32 %52
}
