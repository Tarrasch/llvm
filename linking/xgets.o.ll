; ModuleID = 'xgets.o'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@xgets.Include_File = internal global i8* getelementptr inbounds ([15 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [15 x i8] c"&Include_File&\00", align 1
@xgets.Include_Len = internal global i32 0, align 4
@xgets.F = internal global [6 x %struct._IO_FILE*] zeroinitializer, align 16
@xgets.current_F = internal global %struct._IO_FILE** getelementptr inbounds ([6 x %struct._IO_FILE*]* @xgets.F, i32 0, i32 0), align 8
@.str1 = private unnamed_addr constant [15 x i8] c"INCLUDE_STRING\00", align 1
@incfileflag = external global i32
@.str2 = private unnamed_addr constant [2 x i8] c"r\00", align 1

define i8* @xgets(i8* %str, i32 %size, %struct._IO_FILE* %stream) nounwind uwtable {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct._IO_FILE*, align 8
  %s = alloca i8*, align 8
  %c = alloca i32, align 4
  %env_variable = alloca i8*, align 8
  %file_name = alloca i8*, align 8
  %f = alloca %struct._IO_FILE*, align 8
  store i8* %str, i8** %2, align 8
  store i32 %size, i32* %3, align 4
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %4, align 8
  %5 = load i8** %2, align 8
  store i8* %5, i8** %s, align 8
  %6 = load i32* @xgets.Include_Len, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %19

; <label>:8                                       ; preds = %0
  %9 = call i8* @getenv(i8* getelementptr inbounds ([15 x i8]* @.str1, i32 0, i32 0)) nounwind
  store i8* %9, i8** %env_variable, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %13

; <label>:11                                      ; preds = %8
  %12 = load i8** %env_variable, align 8
  store i8* %12, i8** @xgets.Include_File, align 8
  br label %13

; <label>:13                                      ; preds = %11, %8
  %14 = load i8** @xgets.Include_File, align 8
  %15 = call i64 @strlen(i8* %14) nounwind readonly
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* @xgets.Include_Len, align 4
  %17 = load %struct._IO_FILE** %4, align 8
  %18 = load %struct._IO_FILE*** @xgets.current_F, align 8
  store %struct._IO_FILE* %17, %struct._IO_FILE** %18
  br label %19

; <label>:19                                      ; preds = %13, %0
  br label %20

; <label>:20                                      ; preds = %101, %65, %42, %19
  store i32 0, i32* %c, align 4
  %21 = load i8** %s, align 8
  %22 = load i8** %2, align 8
  %23 = ptrtoint i8* %21 to i64
  %24 = ptrtoint i8* %22 to i64
  %25 = sub i64 %23, %24
  %26 = add nsw i64 %25, 1
  %27 = load i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = icmp slt i64 %26, %28
  br i1 %29, label %30, label %44

; <label>:30                                      ; preds = %20
  %31 = load %struct._IO_FILE*** @xgets.current_F, align 8
  %32 = load %struct._IO_FILE** %31
  %33 = call i32 @_IO_getc(%struct._IO_FILE* %32)
  store i32 %33, i32* %c, align 4
  %34 = icmp ne i32 %33, -1
  br i1 %34, label %35, label %44

; <label>:35                                      ; preds = %30
  %36 = load i32* %c, align 4
  %37 = trunc i32 %36 to i8
  %38 = load i8** %s, align 8
  %39 = getelementptr inbounds i8* %38, i32 1
  store i8* %39, i8** %s, align 8
  store i8 %37, i8* %38
  %40 = load i32* %c, align 4
  %41 = icmp ne i32 %40, 10
  br i1 %41, label %42, label %43

; <label>:42                                      ; preds = %35
  br label %20

; <label>:43                                      ; preds = %35
  br label %44

; <label>:44                                      ; preds = %43, %30, %20
  %45 = load i8** %s, align 8
  store i8 0, i8* %45
  %46 = load i32* %c, align 4
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %48, label %68

; <label>:48                                      ; preds = %44
  %49 = load %struct._IO_FILE*** @xgets.current_F, align 8
  %50 = icmp eq %struct._IO_FILE** %49, getelementptr inbounds ([6 x %struct._IO_FILE*]* @xgets.F, i32 0, i32 0)
  br i1 %50, label %51, label %57

; <label>:51                                      ; preds = %48
  %52 = load i8** %s, align 8
  %53 = load i8** %2, align 8
  %54 = icmp eq i8* %52, %53
  br i1 %54, label %55, label %56

; <label>:55                                      ; preds = %51
  store i8* null, i8** %1
  br label %106

; <label>:56                                      ; preds = %51
  br label %67

; <label>:57                                      ; preds = %48
  %58 = load %struct._IO_FILE*** @xgets.current_F, align 8
  %59 = getelementptr inbounds %struct._IO_FILE** %58, i32 -1
  store %struct._IO_FILE** %59, %struct._IO_FILE*** @xgets.current_F, align 8
  %60 = load %struct._IO_FILE** %58
  %61 = call i32 @fclose(%struct._IO_FILE* %60)
  %62 = load i8** %s, align 8
  %63 = load i8** %2, align 8
  %64 = icmp eq i8* %62, %63
  br i1 %64, label %65, label %66

; <label>:65                                      ; preds = %57
  br label %20

; <label>:66                                      ; preds = %57
  br label %67

; <label>:67                                      ; preds = %66, %56
  br label %68

; <label>:68                                      ; preds = %67, %44
  %69 = load i32* @incfileflag, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %103

; <label>:71                                      ; preds = %68
  %72 = load i8** %2, align 8
  %73 = load i8** @xgets.Include_File, align 8
  %74 = load i32* @xgets.Include_Len, align 4
  %75 = zext i32 %74 to i64
  %76 = call i32 @strncmp(i8* %72, i8* %73, i64 %75) nounwind readonly
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %103

; <label>:78                                      ; preds = %71
  %79 = load i8** %2, align 8
  %80 = load i32* @xgets.Include_Len, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8* %79, i64 %81
  store i8* %82, i8** %file_name, align 8
  %83 = load %struct._IO_FILE*** @xgets.current_F, align 8
  %84 = ptrtoint %struct._IO_FILE** %83 to i64
  %85 = sub i64 %84, ptrtoint ([6 x %struct._IO_FILE*]* @xgets.F to i64)
  %86 = sdiv exact i64 %85, 8
  %87 = icmp slt i64 %86, 5
  br i1 %87, label %88, label %101

; <label>:88                                      ; preds = %78
  %89 = load i8** %file_name, align 8
  %90 = call i64 @strlen(i8* %89) nounwind readonly
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %101

; <label>:92                                      ; preds = %88
  %93 = load i8** %file_name, align 8
  %94 = call %struct._IO_FILE* @fopen(i8* %93, i8* getelementptr inbounds ([2 x i8]* @.str2, i32 0, i32 0))
  store %struct._IO_FILE* %94, %struct._IO_FILE** %f, align 8
  %95 = icmp ne %struct._IO_FILE* %94, null
  br i1 %95, label %96, label %100

; <label>:96                                      ; preds = %92
  %97 = load %struct._IO_FILE** %f, align 8
  %98 = load %struct._IO_FILE*** @xgets.current_F, align 8
  %99 = getelementptr inbounds %struct._IO_FILE** %98, i32 1
  store %struct._IO_FILE** %99, %struct._IO_FILE*** @xgets.current_F, align 8
  store %struct._IO_FILE* %97, %struct._IO_FILE** %99
  br label %100

; <label>:100                                     ; preds = %96, %92
  br label %101

; <label>:101                                     ; preds = %100, %88, %78
  %102 = load i8** %2, align 8
  store i8* %102, i8** %s, align 8
  br label %20

; <label>:103                                     ; preds = %71, %68
  br label %104

; <label>:104                                     ; preds = %103
  %105 = load i8** %2, align 8
  store i8* %105, i8** %1
  br label %106

; <label>:106                                     ; preds = %104, %55
  %107 = load i8** %1
  ret i8* %107
}

declare i8* @getenv(i8*) nounwind

declare i64 @strlen(i8*) nounwind readonly

declare i32 @_IO_getc(%struct._IO_FILE*)

declare i32 @fclose(%struct._IO_FILE*)

declare i32 @strncmp(i8*, i8*, i64) nounwind readonly

declare %struct._IO_FILE* @fopen(i8*, i8*)
