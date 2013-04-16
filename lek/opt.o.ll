; ModuleID = 'opt.o'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"array[%d]=%d\0A\00", align 1

define i32 @main() nounwind uwtable {
  br label %trap
                                                  ; No predecessors!
  %array = alloca [10 x i32], align 16
  br label %2

; <label>:2                                       ; preds = %12, %1
  %i.0 = phi i32 [ 0, %1 ], [ %13, %12 ]
  %3 = icmp slt i32 %i.0, 11
  br i1 %3, label %4, label %14

; <label>:4                                       ; preds = %2
  %5 = sext i32 %i.0 to i64
  %6 = getelementptr inbounds [10 x i32]* %array, i32 0, i64 %5
  store i32 0, i32* %6, align 4
  %7 = call i32 @rand() nounwind
  %8 = srem i32 %7, 10
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %4
  br label %11

; <label>:11                                      ; preds = %10, %4
  br label %12

; <label>:12                                      ; preds = %11
  %13 = add nsw i32 %i.0, 1
  br label %2

; <label>:14                                      ; preds = %2
  %15 = sext i32 5 to i64
  %16 = getelementptr inbounds [10 x i32]* %array, i32 0, i64 %15
  %17 = load i32* %16, align 4
  %18 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([14 x i8]* @.str, i32 0, i32 0), i32 5, i32 %17)
  ret i32 0

trap:                                             ; preds = %0
  call void @llvm.trap() noreturn nounwind
  unreachable
}

declare i32 @rand() nounwind

declare i32 @printf(i8*, ...)

declare void @llvm.trap() noreturn nounwind
