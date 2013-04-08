; ModuleID = 'tree.o'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.dent = type { %struct.dent*, i8*, [1 x i64] }
%struct.hashheader = type { i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i8], [13 x i8], i8, i8, i8, [228 x i16], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [128 x i8], [100 x [11 x i8]], [100 x i32], [100 x i32], i16 }

@.str = private unnamed_addr constant [9 x i8] c"WORDLIST\00", align 1
@.str1 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@personaldict = internal global [4096 x i8] zeroinitializer, align 16
@.str2 = private unnamed_addr constant [9 x i8] c".ispell_\00", align 1
@dictf = internal global %struct._IO_FILE* null, align 8
@.str3 = private unnamed_addr constant [6 x i8] c"words\00", align 1
@.str4 = private unnamed_addr constant [8 x i8] c"%s/%s%s\00", align 1
@.str5 = private unnamed_addr constant [3 x i8] c"./\00", align 1
@.str6 = private unnamed_addr constant [4 x i8] c"../\00", align 1
@.str7 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str8 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@stderr = external global %struct._IO_FILE*
@.str9 = private unnamed_addr constant [16 x i8] c"Can't open %s\0D\0A\00", align 1
@.str10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@lflag = external global i32
@aflag = external global i32
@.str11 = private unnamed_addr constant [50 x i8] c"Warning: Cannot update personal dictionary (%s)\0D\0A\00", align 1
@cantexpand = internal global i32 0, align 4
@hcount = internal global i32 0, align 4
@pershsize = internal global i32 0, align 4
@pershtab = internal global %struct.dent* null, align 8
@goodsizes = internal global [4 x i32] [i32 53, i32 223, i32 907, i32 3631], align 16
@.str12 = private unnamed_addr constant [43 x i8] c"Ran out of space for personal dictionary\0D\0A\00", align 1
@.str13 = private unnamed_addr constant [48 x i8] c"Continuing anyway (with reduced performance).\0D\0A\00", align 1
@newwords = internal global i32 0, align 4
@.str14 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str15 = private unnamed_addr constant [18 x i8] c"Can't create %s\0D\0A\00", align 1
@hashtbl = external global %struct.dent*
@hashsize = external global i32
@hashstrings = external global i8*
@hashheader = external global %struct.hashheader
@.str16 = private unnamed_addr constant [51 x i8] c"\0D\0AWord '%s' too long at line %d of %s, truncated\0D\0A\00", align 1
@.str17 = private unnamed_addr constant [81 x i8] c"/home/arka3/repos/test-suite/MultiSource/Benchmarks/MiBench/office-ispell/tree.c\00", align 1
@.str18 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1

define void @treeinit(i8* %p, i8* %LibDict) nounwind uwtable {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %abspath = alloca i32, align 4
  %h = alloca i8*, align 8
  %seconddict = alloca [4096 x i8], align 16
  %secondf = alloca %struct._IO_FILE*, align 8
  store i8* %p, i8** %1, align 8
  store i8* %LibDict, i8** %2, align 8
  %3 = load i8** %1, align 8
  %4 = icmp eq i8* %3, null
  br i1 %4, label %5, label %7

; <label>:5                                       ; preds = %0
  %6 = call i8* @getenv(i8* getelementptr inbounds ([9 x i8]* @.str, i32 0, i32 0)) nounwind
  store i8* %6, i8** %1, align 8
  br label %7

; <label>:7                                       ; preds = %5, %0
  %8 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8]* @.str1, i32 0, i32 0)) nounwind
  store i8* %8, i8** %h, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %7
  br label %165

; <label>:11                                      ; preds = %7
  %12 = load i8** %1, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %87

; <label>:14                                      ; preds = %11
  %15 = load i8** %2, align 8
  %16 = call %struct._IO_FILE* @trydict(i8* getelementptr inbounds ([4096 x i8]* @personaldict, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([9 x i8]* @.str2, i32 0, i32 0), i8* %15)
  store %struct._IO_FILE* %16, %struct._IO_FILE** @dictf, align 8
  %17 = getelementptr inbounds [4096 x i8]* %seconddict, i32 0, i32 0
  %18 = load i8** %h, align 8
  %19 = load i8** %2, align 8
  %20 = call %struct._IO_FILE* @trydict(i8* %17, i8* %18, i8* getelementptr inbounds ([9 x i8]* @.str2, i32 0, i32 0), i8* %19)
  store %struct._IO_FILE* %20, %struct._IO_FILE** %secondf, align 8
  %21 = load %struct._IO_FILE** @dictf, align 8
  %22 = icmp eq %struct._IO_FILE* %21, null
  br i1 %22, label %23, label %31

; <label>:23                                      ; preds = %14
  %24 = load %struct._IO_FILE** %secondf, align 8
  %25 = icmp eq %struct._IO_FILE* %24, null
  br i1 %25, label %26, label %31

; <label>:26                                      ; preds = %23
  %27 = call %struct._IO_FILE* @trydict(i8* getelementptr inbounds ([4096 x i8]* @personaldict, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([9 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str3, i32 0, i32 0))
  store %struct._IO_FILE* %27, %struct._IO_FILE** @dictf, align 8
  %28 = getelementptr inbounds [4096 x i8]* %seconddict, i32 0, i32 0
  %29 = load i8** %h, align 8
  %30 = call %struct._IO_FILE* @trydict(i8* %28, i8* %29, i8* getelementptr inbounds ([9 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str3, i32 0, i32 0))
  store %struct._IO_FILE* %30, %struct._IO_FILE** %secondf, align 8
  br label %31

; <label>:31                                      ; preds = %26, %23, %14
  %32 = load %struct._IO_FILE** @dictf, align 8
  %33 = icmp eq %struct._IO_FILE* %32, null
  br i1 %33, label %34, label %44

; <label>:34                                      ; preds = %31
  %35 = load %struct._IO_FILE** %secondf, align 8
  %36 = icmp eq %struct._IO_FILE* %35, null
  br i1 %36, label %37, label %44

; <label>:37                                      ; preds = %34
  %38 = load i8** %2, align 8
  %39 = call %struct._IO_FILE* @trydict(i8* getelementptr inbounds ([4096 x i8]* @personaldict, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([9 x i8]* @.str2, i32 0, i32 0), i8* %38)
  store %struct._IO_FILE* %39, %struct._IO_FILE** @dictf, align 8
  %40 = getelementptr inbounds [4096 x i8]* %seconddict, i32 0, i32 0
  %41 = load i8** %h, align 8
  %42 = load i8** %2, align 8
  %43 = call %struct._IO_FILE* @trydict(i8* %40, i8* %41, i8* getelementptr inbounds ([9 x i8]* @.str2, i32 0, i32 0), i8* %42)
  store %struct._IO_FILE* %43, %struct._IO_FILE** %secondf, align 8
  br label %44

; <label>:44                                      ; preds = %37, %34, %31
  %45 = load %struct._IO_FILE** @dictf, align 8
  %46 = icmp eq %struct._IO_FILE* %45, null
  br i1 %46, label %47, label %55

; <label>:47                                      ; preds = %44
  %48 = load %struct._IO_FILE** %secondf, align 8
  %49 = icmp eq %struct._IO_FILE* %48, null
  br i1 %49, label %50, label %55

; <label>:50                                      ; preds = %47
  %51 = call %struct._IO_FILE* @trydict(i8* getelementptr inbounds ([4096 x i8]* @personaldict, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([9 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str3, i32 0, i32 0))
  store %struct._IO_FILE* %51, %struct._IO_FILE** @dictf, align 8
  %52 = getelementptr inbounds [4096 x i8]* %seconddict, i32 0, i32 0
  %53 = load i8** %h, align 8
  %54 = call %struct._IO_FILE* @trydict(i8* %52, i8* %53, i8* getelementptr inbounds ([9 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str3, i32 0, i32 0))
  store %struct._IO_FILE* %54, %struct._IO_FILE** %secondf, align 8
  br label %55

; <label>:55                                      ; preds = %50, %47, %44
  %56 = load i8* getelementptr inbounds ([4096 x i8]* @personaldict, i32 0, i64 0), align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %72

; <label>:59                                      ; preds = %55
  %60 = getelementptr inbounds [4096 x i8]* %seconddict, i32 0, i64 0
  %61 = load i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

; <label>:64                                      ; preds = %59
  %65 = getelementptr inbounds [4096 x i8]* %seconddict, i32 0, i32 0
  %66 = call i8* @strcpy(i8* getelementptr inbounds ([4096 x i8]* @personaldict, i32 0, i32 0), i8* %65) nounwind
  br label %71

; <label>:67                                      ; preds = %59
  %68 = load i8** %h, align 8
  %69 = load i8** %2, align 8
  %70 = call i32 (i8*, i8*, ...)* @sprintf(i8* getelementptr inbounds ([4096 x i8]* @personaldict, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str4, i32 0, i32 0), i8* %68, i8* getelementptr inbounds ([9 x i8]* @.str2, i32 0, i32 0), i8* %69) nounwind
  br label %71

; <label>:71                                      ; preds = %67, %64
  br label %72

; <label>:72                                      ; preds = %71, %55
  %73 = load %struct._IO_FILE** @dictf, align 8
  %74 = icmp ne %struct._IO_FILE* %73, null
  br i1 %74, label %75, label %79

; <label>:75                                      ; preds = %72
  %76 = load %struct._IO_FILE** @dictf, align 8
  call void @treeload(%struct._IO_FILE* %76)
  %77 = load %struct._IO_FILE** @dictf, align 8
  %78 = call i32 @fclose(%struct._IO_FILE* %77)
  br label %79

; <label>:79                                      ; preds = %75, %72
  %80 = load %struct._IO_FILE** %secondf, align 8
  %81 = icmp ne %struct._IO_FILE* %80, null
  br i1 %81, label %82, label %86

; <label>:82                                      ; preds = %79
  %83 = load %struct._IO_FILE** %secondf, align 8
  call void @treeload(%struct._IO_FILE* %83)
  %84 = load %struct._IO_FILE** %secondf, align 8
  %85 = call i32 @fclose(%struct._IO_FILE* %84)
  br label %86

; <label>:86                                      ; preds = %82, %79
  br label %148

; <label>:87                                      ; preds = %11
  %88 = load i8** %1, align 8
  %89 = load i8* %88
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 47
  br i1 %91, label %100, label %92

; <label>:92                                      ; preds = %87
  %93 = load i8** %1, align 8
  %94 = call i32 @strncmp(i8* %93, i8* getelementptr inbounds ([3 x i8]* @.str5, i32 0, i32 0), i64 2) nounwind readonly
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %100, label %96

; <label>:96                                      ; preds = %92
  %97 = load i8** %1, align 8
  %98 = call i32 @strncmp(i8* %97, i8* getelementptr inbounds ([4 x i8]* @.str6, i32 0, i32 0), i64 3) nounwind readonly
  %99 = icmp eq i32 %98, 0
  br label %100

; <label>:100                                     ; preds = %96, %92, %87
  %101 = phi i1 [ true, %92 ], [ true, %87 ], [ %99, %96 ]
  %102 = zext i1 %101 to i32
  store i32 %102, i32* %abspath, align 4
  %103 = load i32* %abspath, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %115

; <label>:105                                     ; preds = %100
  %106 = load i8** %1, align 8
  %107 = call i8* @strcpy(i8* getelementptr inbounds ([4096 x i8]* @personaldict, i32 0, i32 0), i8* %106) nounwind
  %108 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([4096 x i8]* @personaldict, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str7, i32 0, i32 0))
  store %struct._IO_FILE* %108, %struct._IO_FILE** @dictf, align 8
  %109 = icmp ne %struct._IO_FILE* %108, null
  br i1 %109, label %110, label %114

; <label>:110                                     ; preds = %105
  %111 = load %struct._IO_FILE** @dictf, align 8
  call void @treeload(%struct._IO_FILE* %111)
  %112 = load %struct._IO_FILE** @dictf, align 8
  %113 = call i32 @fclose(%struct._IO_FILE* %112)
  br label %114

; <label>:114                                     ; preds = %110, %105
  br label %147

; <label>:115                                     ; preds = %100
  %116 = load i8** %1, align 8
  %117 = call i8* @strcpy(i8* getelementptr inbounds ([4096 x i8]* @personaldict, i32 0, i32 0), i8* %116) nounwind
  %118 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([4096 x i8]* @personaldict, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str7, i32 0, i32 0))
  store %struct._IO_FILE* %118, %struct._IO_FILE** @dictf, align 8
  %119 = icmp ne %struct._IO_FILE* %118, null
  br i1 %119, label %120, label %124

; <label>:120                                     ; preds = %115
  %121 = load %struct._IO_FILE** @dictf, align 8
  call void @treeload(%struct._IO_FILE* %121)
  %122 = load %struct._IO_FILE** @dictf, align 8
  %123 = call i32 @fclose(%struct._IO_FILE* %122)
  br label %139

; <label>:124                                     ; preds = %115
  %125 = load i32* %abspath, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %138, label %127

; <label>:127                                     ; preds = %124
  %128 = load i8** %h, align 8
  %129 = load i8** %1, align 8
  %130 = call i32 (i8*, i8*, ...)* @sprintf(i8* getelementptr inbounds ([4096 x i8]* @personaldict, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str8, i32 0, i32 0), i8* %128, i8* %129) nounwind
  %131 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([4096 x i8]* @personaldict, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str7, i32 0, i32 0))
  store %struct._IO_FILE* %131, %struct._IO_FILE** @dictf, align 8
  %132 = icmp ne %struct._IO_FILE* %131, null
  br i1 %132, label %133, label %137

; <label>:133                                     ; preds = %127
  %134 = load %struct._IO_FILE** @dictf, align 8
  call void @treeload(%struct._IO_FILE* %134)
  %135 = load %struct._IO_FILE** @dictf, align 8
  %136 = call i32 @fclose(%struct._IO_FILE* %135)
  br label %137

; <label>:137                                     ; preds = %133, %127
  br label %138

; <label>:138                                     ; preds = %137, %124
  br label %139

; <label>:139                                     ; preds = %138, %120
  %140 = load %struct._IO_FILE** @dictf, align 8
  %141 = icmp eq %struct._IO_FILE* %140, null
  br i1 %141, label %142, label %146

; <label>:142                                     ; preds = %139
  %143 = load %struct._IO_FILE** @stderr, align 8
  %144 = load i8** %1, align 8
  %145 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %143, i8* getelementptr inbounds ([16 x i8]* @.str9, i32 0, i32 0), i8* %144)
  call void @perror(i8* getelementptr inbounds ([1 x i8]* @.str10, i32 0, i32 0))
  br label %165

; <label>:146                                     ; preds = %139
  br label %147

; <label>:147                                     ; preds = %146, %114
  br label %148

; <label>:148                                     ; preds = %147, %86
  %149 = load i32* @lflag, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %165, label %151

; <label>:151                                     ; preds = %148
  %152 = load i32* @aflag, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %165, label %154

; <label>:154                                     ; preds = %151
  %155 = call i32 (...)* @access(i8* getelementptr inbounds ([4096 x i8]* @personaldict, i32 0, i32 0), i32 2)
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %157, label %165

; <label>:157                                     ; preds = %154
  %158 = call i32* @__errno_location() nounwind readnone
  %159 = load i32* %158
  %160 = icmp ne i32 %159, 2
  br i1 %160, label %161, label %165

; <label>:161                                     ; preds = %157
  %162 = load %struct._IO_FILE** @stderr, align 8
  %163 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %162, i8* getelementptr inbounds ([50 x i8]* @.str11, i32 0, i32 0), i8* getelementptr inbounds ([4096 x i8]* @personaldict, i32 0, i32 0))
  %164 = call i32 (...)* @sleep(i32 2)
  br label %165

; <label>:165                                     ; preds = %161, %157, %154, %151, %148, %142, %10
  ret void
}

declare i8* @getenv(i8*) nounwind

define internal %struct._IO_FILE* @trydict(i8* %filename, i8* %home, i8* %prefix, i8* %suffix) nounwind uwtable {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %dictf = alloca %struct._IO_FILE*, align 8
  store i8* %filename, i8** %1, align 8
  store i8* %home, i8** %2, align 8
  store i8* %prefix, i8** %3, align 8
  store i8* %suffix, i8** %4, align 8
  %5 = load i8** %2, align 8
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %12

; <label>:7                                       ; preds = %0
  %8 = load i8** %1, align 8
  %9 = load i8** %3, align 8
  %10 = load i8** %4, align 8
  %11 = call i32 (i8*, i8*, ...)* @sprintf(i8* %8, i8* getelementptr inbounds ([5 x i8]* @.str18, i32 0, i32 0), i8* %9, i8* %10) nounwind
  br label %18

; <label>:12                                      ; preds = %0
  %13 = load i8** %1, align 8
  %14 = load i8** %2, align 8
  %15 = load i8** %3, align 8
  %16 = load i8** %4, align 8
  %17 = call i32 (i8*, i8*, ...)* @sprintf(i8* %13, i8* getelementptr inbounds ([8 x i8]* @.str4, i32 0, i32 0), i8* %14, i8* %15, i8* %16) nounwind
  br label %18

; <label>:18                                      ; preds = %12, %7
  %19 = load i8** %1, align 8
  %20 = call %struct._IO_FILE* @fopen(i8* %19, i8* getelementptr inbounds ([2 x i8]* @.str7, i32 0, i32 0))
  store %struct._IO_FILE* %20, %struct._IO_FILE** %dictf, align 8
  %21 = load %struct._IO_FILE** %dictf, align 8
  %22 = icmp eq %struct._IO_FILE* %21, null
  br i1 %22, label %23, label %26

; <label>:23                                      ; preds = %18
  %24 = load i8** %1, align 8
  %25 = getelementptr inbounds i8* %24, i64 0
  store i8 0, i8* %25
  br label %26

; <label>:26                                      ; preds = %23, %18
  %27 = load %struct._IO_FILE** %dictf, align 8
  ret %struct._IO_FILE* %27
}

declare i8* @strcpy(i8*, i8*) nounwind

declare i32 @sprintf(i8*, i8*, ...) nounwind

define internal void @treeload(%struct._IO_FILE* %loadfile) nounwind uwtable {
  %1 = alloca %struct._IO_FILE*, align 8
  %buf = alloca [8192 x i8], align 16
  store %struct._IO_FILE* %loadfile, %struct._IO_FILE** %1, align 8
  br label %2

; <label>:2                                       ; preds = %7, %0
  %3 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i32 0
  %4 = load %struct._IO_FILE** %1, align 8
  %5 = call i8* @fgets(i8* %3, i32 8192, %struct._IO_FILE* %4)
  %6 = icmp ne i8* %5, null
  br i1 %6, label %7, label %9

; <label>:7                                       ; preds = %2
  %8 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i32 0
  call void @treeinsert(i8* %8, i32 8192, i32 1)
  br label %2

; <label>:9                                       ; preds = %2
  store i32 0, i32* @newwords, align 4
  ret void
}

declare i32 @fclose(%struct._IO_FILE*)

declare i32 @strncmp(i8*, i8*, i64) nounwind readonly

declare %struct._IO_FILE* @fopen(i8*, i8*)

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...)

declare void @perror(i8*)

declare i32 @access(...)

declare i32* @__errno_location() nounwind readnone

declare i32 @sleep(...)

define void @treeinsert(i8* %word, i32 %wordlen, i32 %keep) nounwind uwtable {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %i = alloca i32, align 4
  %wordent = alloca %struct.dent, align 8
  %dp = alloca %struct.dent*, align 8
  %olddp = alloca %struct.dent*, align 8
  %newdp = alloca %struct.dent*, align 8
  %oldhtab = alloca %struct.dent*, align 8
  %oldhsize = alloca i32, align 4
  %nword = alloca [120 x i8], align 16
  %isvariant = alloca i32, align 4
  store i8* %word, i8** %1, align 8
  store i32 %wordlen, i32* %2, align 4
  store i32 %keep, i32* %3, align 4
  %4 = load i32* @cantexpand, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %146, label %6

; <label>:6                                       ; preds = %0
  %7 = load i32* @hcount, align 4
  %8 = mul nsw i32 %7, 100
  %9 = sdiv i32 %8, 70
  %10 = load i32* @pershsize, align 4
  %11 = icmp sge i32 %9, %10
  br i1 %11, label %12, label %146

; <label>:12                                      ; preds = %6
  %13 = load i32* @pershsize, align 4
  store i32 %13, i32* %oldhsize, align 4
  %14 = load %struct.dent** @pershtab, align 8
  store %struct.dent* %14, %struct.dent** %oldhtab, align 8
  store i32 0, i32* %i, align 4
  br label %15

; <label>:15                                      ; preds = %28, %12
  %16 = load i32* %i, align 4
  %17 = sext i32 %16 to i64
  %18 = icmp ult i64 %17, 4
  br i1 %18, label %19, label %31

; <label>:19                                      ; preds = %15
  %20 = load i32* %i, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [4 x i32]* @goodsizes, i32 0, i64 %21
  %23 = load i32* %22, align 4
  %24 = load i32* @pershsize, align 4
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %26, label %27

; <label>:26                                      ; preds = %19
  br label %31

; <label>:27                                      ; preds = %19
  br label %28

; <label>:28                                      ; preds = %27
  %29 = load i32* %i, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %i, align 4
  br label %15

; <label>:31                                      ; preds = %26, %15
  %32 = load i32* %i, align 4
  %33 = sext i32 %32 to i64
  %34 = icmp uge i64 %33, 4
  br i1 %34, label %35, label %40

; <label>:35                                      ; preds = %31
  %36 = load i32* @pershsize, align 4
  %37 = add nsw i32 %36, 1
  %38 = load i32* @pershsize, align 4
  %39 = add nsw i32 %38, %37
  store i32 %39, i32* @pershsize, align 4
  br label %45

; <label>:40                                      ; preds = %31
  %41 = load i32* %i, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [4 x i32]* @goodsizes, i32 0, i64 %42
  %44 = load i32* %43, align 4
  store i32 %44, i32* @pershsize, align 4
  br label %45

; <label>:45                                      ; preds = %40, %35
  %46 = load i32* @pershsize, align 4
  %47 = zext i32 %46 to i64
  %48 = call noalias i8* @calloc(i64 %47, i64 24) nounwind
  %49 = bitcast i8* %48 to %struct.dent*
  store %struct.dent* %49, %struct.dent** @pershtab, align 8
  %50 = load %struct.dent** @pershtab, align 8
  %51 = icmp eq %struct.dent* %50, null
  br i1 %51, label %52, label %63

; <label>:52                                      ; preds = %45
  %53 = load %struct._IO_FILE** @stderr, align 8
  %54 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %53, i8* getelementptr inbounds ([43 x i8]* @.str12, i32 0, i32 0))
  %55 = load %struct.dent** %oldhtab, align 8
  %56 = icmp eq %struct.dent* %55, null
  br i1 %56, label %57, label %58

; <label>:57                                      ; preds = %52
  call void @exit(i32 1) noreturn nounwind
  unreachable

; <label>:58                                      ; preds = %52
  %59 = load %struct._IO_FILE** @stderr, align 8
  %60 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %59, i8* getelementptr inbounds ([48 x i8]* @.str13, i32 0, i32 0))
  store i32 1, i32* @cantexpand, align 4
  %61 = load i32* %oldhsize, align 4
  store i32 %61, i32* @pershsize, align 4
  %62 = load %struct.dent** %oldhtab, align 8
  store %struct.dent* %62, %struct.dent** @pershtab, align 8
  store i32 1, i32* @newwords, align 4
  br label %145

; <label>:63                                      ; preds = %45
  store i32 0, i32* %i, align 4
  br label %64

; <label>:64                                      ; preds = %135, %63
  %65 = load i32* %i, align 4
  %66 = load i32* %oldhsize, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %138

; <label>:68                                      ; preds = %64
  %69 = load i32* %i, align 4
  %70 = sext i32 %69 to i64
  %71 = load %struct.dent** %oldhtab, align 8
  %72 = getelementptr inbounds %struct.dent* %71, i64 %70
  store %struct.dent* %72, %struct.dent** %dp, align 8
  %73 = load %struct.dent** %dp, align 8
  %74 = getelementptr inbounds %struct.dent* %73, i32 0, i32 2
  %75 = getelementptr inbounds [1 x i64]* %74, i32 0, i64 0
  %76 = load i64* %75, align 8
  %77 = and i64 %76, 67108864
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %134

; <label>:79                                      ; preds = %68
  %80 = load %struct.dent** %dp, align 8
  %81 = call %struct.dent* @tinsert(%struct.dent* %80)
  store %struct.dent* %81, %struct.dent** %newdp, align 8
  %82 = load %struct.dent** %dp, align 8
  %83 = getelementptr inbounds %struct.dent* %82, i32 0, i32 2
  %84 = getelementptr inbounds [1 x i64]* %83, i32 0, i64 0
  %85 = load i64* %84, align 8
  %86 = and i64 %85, 1073741824
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %isvariant, align 4
  %88 = load %struct.dent** %dp, align 8
  %89 = getelementptr inbounds %struct.dent* %88, i32 0, i32 0
  %90 = load %struct.dent** %89, align 8
  store %struct.dent* %90, %struct.dent** %dp, align 8
  br label %91

; <label>:91                                      ; preds = %132, %79
  %92 = load %struct.dent** %dp, align 8
  %93 = icmp ne %struct.dent* %92, null
  br i1 %93, label %94, label %133

; <label>:94                                      ; preds = %91
  %95 = load i32* %isvariant, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %117

; <label>:97                                      ; preds = %94
  %98 = load %struct.dent** %dp, align 8
  %99 = getelementptr inbounds %struct.dent* %98, i32 0, i32 2
  %100 = getelementptr inbounds [1 x i64]* %99, i32 0, i64 0
  %101 = load i64* %100, align 8
  %102 = and i64 %101, 1073741824
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %isvariant, align 4
  %104 = load %struct.dent** %newdp, align 8
  %105 = getelementptr inbounds %struct.dent* %104, i32 0, i32 0
  %106 = load %struct.dent** %105, align 8
  store %struct.dent* %106, %struct.dent** %olddp, align 8
  %107 = load %struct.dent** %dp, align 8
  %108 = load %struct.dent** %newdp, align 8
  %109 = getelementptr inbounds %struct.dent* %108, i32 0, i32 0
  store %struct.dent* %107, %struct.dent** %109, align 8
  %110 = load %struct.dent** %dp, align 8
  store %struct.dent* %110, %struct.dent** %newdp, align 8
  %111 = load %struct.dent** %dp, align 8
  %112 = getelementptr inbounds %struct.dent* %111, i32 0, i32 0
  %113 = load %struct.dent** %112, align 8
  store %struct.dent* %113, %struct.dent** %dp, align 8
  %114 = load %struct.dent** %olddp, align 8
  %115 = load %struct.dent** %newdp, align 8
  %116 = getelementptr inbounds %struct.dent* %115, i32 0, i32 0
  store %struct.dent* %114, %struct.dent** %116, align 8
  br label %132

; <label>:117                                     ; preds = %94
  %118 = load %struct.dent** %dp, align 8
  %119 = getelementptr inbounds %struct.dent* %118, i32 0, i32 2
  %120 = getelementptr inbounds [1 x i64]* %119, i32 0, i64 0
  %121 = load i64* %120, align 8
  %122 = and i64 %121, 1073741824
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %isvariant, align 4
  %124 = load %struct.dent** %dp, align 8
  %125 = call %struct.dent* @tinsert(%struct.dent* %124)
  store %struct.dent* %125, %struct.dent** %newdp, align 8
  %126 = load %struct.dent** %dp, align 8
  store %struct.dent* %126, %struct.dent** %olddp, align 8
  %127 = load %struct.dent** %dp, align 8
  %128 = getelementptr inbounds %struct.dent* %127, i32 0, i32 0
  %129 = load %struct.dent** %128, align 8
  store %struct.dent* %129, %struct.dent** %dp, align 8
  %130 = load %struct.dent** %olddp, align 8
  %131 = bitcast %struct.dent* %130 to i8*
  call void @free(i8* %131) nounwind
  br label %132

; <label>:132                                     ; preds = %117, %97
  br label %91

; <label>:133                                     ; preds = %91
  br label %134

; <label>:134                                     ; preds = %133, %68
  br label %135

; <label>:135                                     ; preds = %134
  %136 = load i32* %i, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %i, align 4
  br label %64

; <label>:138                                     ; preds = %64
  %139 = load %struct.dent** %oldhtab, align 8
  %140 = icmp ne %struct.dent* %139, null
  br i1 %140, label %141, label %144

; <label>:141                                     ; preds = %138
  %142 = load %struct.dent** %oldhtab, align 8
  %143 = bitcast %struct.dent* %142 to i8*
  call void @free(i8* %143) nounwind
  br label %144

; <label>:144                                     ; preds = %141, %138
  br label %145

; <label>:145                                     ; preds = %144, %58
  br label %146

; <label>:146                                     ; preds = %145, %6, %0
  %147 = load i8** %1, align 8
  %148 = load i32* %2, align 4
  %149 = call i32 @makedent(i8* %147, i32 %148, %struct.dent* %wordent)
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %151, label %152

; <label>:151                                     ; preds = %146
  br label %192

; <label>:152                                     ; preds = %146
  %153 = load i32* %3, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %160

; <label>:155                                     ; preds = %152
  %156 = getelementptr inbounds %struct.dent* %wordent, i32 0, i32 2
  %157 = getelementptr inbounds [1 x i64]* %156, i32 0, i64 0
  %158 = load i64* %157, align 8
  %159 = or i64 %158, 134217728
  store i64 %159, i64* %157, align 8
  br label %160

; <label>:160                                     ; preds = %155, %152
  %161 = getelementptr inbounds [120 x i8]* %nword, i32 0, i32 0
  %162 = load i8** %1, align 8
  %163 = call i32 @strtoichar(i8* %161, i8* %162, i32 120, i32 1)
  %164 = getelementptr inbounds [120 x i8]* %nword, i32 0, i32 0
  call void @upcase(i8* %164)
  %165 = getelementptr inbounds [120 x i8]* %nword, i32 0, i32 0
  %166 = call %struct.dent* @lookup(i8* %165, i32 1)
  store %struct.dent* %166, %struct.dent** %dp, align 8
  %167 = icmp ne %struct.dent* %166, null
  br i1 %167, label %168, label %176

; <label>:168                                     ; preds = %160
  %169 = load %struct.dent** %dp, align 8
  %170 = call i32 @combinecaps(%struct.dent* %169, %struct.dent* %wordent)
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %172, label %175

; <label>:172                                     ; preds = %168
  %173 = getelementptr inbounds %struct.dent* %wordent, i32 0, i32 1
  %174 = load i8** %173, align 8
  call void @free(i8* %174) nounwind
  br label %192

; <label>:175                                     ; preds = %168
  br label %188

; <label>:176                                     ; preds = %160
  %177 = call %struct.dent* @tinsert(%struct.dent* %wordent)
  store %struct.dent* %177, %struct.dent** %dp, align 8
  %178 = load %struct.dent** %dp, align 8
  %179 = getelementptr inbounds %struct.dent* %178, i32 0, i32 2
  %180 = getelementptr inbounds [1 x i64]* %179, i32 0, i64 0
  %181 = load i64* %180, align 8
  %182 = and i64 %181, 805306368
  %183 = icmp eq i64 %182, 805306368
  br i1 %183, label %184, label %187

; <label>:184                                     ; preds = %176
  %185 = load %struct.dent** %dp, align 8
  %186 = call i32 @addvheader(%struct.dent* %185)
  br label %187

; <label>:187                                     ; preds = %184, %176
  br label %188

; <label>:188                                     ; preds = %187, %175
  %189 = load i32* %3, align 4
  %190 = load i32* @newwords, align 4
  %191 = or i32 %190, %189
  store i32 %191, i32* @newwords, align 4
  br label %192

; <label>:192                                     ; preds = %188, %172, %151
  ret void
}

declare noalias i8* @calloc(i64, i64) nounwind

declare void @exit(i32) noreturn nounwind

define internal %struct.dent* @tinsert(%struct.dent* %proto) nounwind uwtable {
  %1 = alloca %struct.dent*, align 8
  %iword = alloca [120 x i8], align 16
  %hcode = alloca i32, align 4
  %hp = alloca %struct.dent*, align 8
  %php = alloca %struct.dent*, align 8
  store %struct.dent* %proto, %struct.dent** %1, align 8
  %2 = getelementptr inbounds [120 x i8]* %iword, i32 0, i32 0
  %3 = load %struct.dent** %1, align 8
  %4 = getelementptr inbounds %struct.dent* %3, i32 0, i32 1
  %5 = load i8** %4, align 8
  %6 = call i32 @strtoichar(i8* %2, i8* %5, i32 120, i32 1)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %14

; <label>:8                                       ; preds = %0
  %9 = load %struct._IO_FILE** @stderr, align 8
  %10 = load %struct.dent** %1, align 8
  %11 = getelementptr inbounds %struct.dent* %10, i32 0, i32 1
  %12 = load i8** %11, align 8
  %13 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([51 x i8]* @.str16, i32 0, i32 0), i8* %12, i32 449, i8* getelementptr inbounds ([81 x i8]* @.str17, i32 0, i32 0))
  br label %14

; <label>:14                                      ; preds = %8, %0
  %15 = getelementptr inbounds [120 x i8]* %iword, i32 0, i32 0
  %16 = load i32* @pershsize, align 4
  %17 = call i32 @hash(i8* %15, i32 %16)
  store i32 %17, i32* %hcode, align 4
  store %struct.dent* null, %struct.dent** %php, align 8
  %18 = load i32* %hcode, align 4
  %19 = sext i32 %18 to i64
  %20 = load %struct.dent** @pershtab, align 8
  %21 = getelementptr inbounds %struct.dent* %20, i64 %19
  store %struct.dent* %21, %struct.dent** %hp, align 8
  %22 = load %struct.dent** %hp, align 8
  %23 = getelementptr inbounds %struct.dent* %22, i32 0, i32 2
  %24 = getelementptr inbounds [1 x i64]* %23, i32 0, i64 0
  %25 = load i64* %24, align 8
  %26 = and i64 %25, 67108864
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %46

; <label>:28                                      ; preds = %14
  br label %29

; <label>:29                                      ; preds = %32, %28
  %30 = load %struct.dent** %hp, align 8
  %31 = icmp ne %struct.dent* %30, null
  br i1 %31, label %32, label %37

; <label>:32                                      ; preds = %29
  %33 = load %struct.dent** %hp, align 8
  store %struct.dent* %33, %struct.dent** %php, align 8
  %34 = load %struct.dent** %hp, align 8
  %35 = getelementptr inbounds %struct.dent* %34, i32 0, i32 0
  %36 = load %struct.dent** %35, align 8
  store %struct.dent* %36, %struct.dent** %hp, align 8
  br label %29

; <label>:37                                      ; preds = %29
  %38 = call noalias i8* @calloc(i64 1, i64 24) nounwind
  %39 = bitcast i8* %38 to %struct.dent*
  store %struct.dent* %39, %struct.dent** %hp, align 8
  %40 = load %struct.dent** %hp, align 8
  %41 = icmp eq %struct.dent* %40, null
  br i1 %41, label %42, label %45

; <label>:42                                      ; preds = %37
  %43 = load %struct._IO_FILE** @stderr, align 8
  %44 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %43, i8* getelementptr inbounds ([43 x i8]* @.str12, i32 0, i32 0))
  call void @exit(i32 1) noreturn nounwind
  unreachable

; <label>:45                                      ; preds = %37
  br label %46

; <label>:46                                      ; preds = %45, %14
  %47 = load %struct.dent** %hp, align 8
  %48 = load %struct.dent** %1, align 8
  %49 = bitcast %struct.dent* %47 to i8*
  %50 = bitcast %struct.dent* %48 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %49, i8* %50, i64 24, i32 8, i1 false)
  %51 = load %struct.dent** %php, align 8
  %52 = icmp ne %struct.dent* %51, null
  br i1 %52, label %53, label %57

; <label>:53                                      ; preds = %46
  %54 = load %struct.dent** %hp, align 8
  %55 = load %struct.dent** %php, align 8
  %56 = getelementptr inbounds %struct.dent* %55, i32 0, i32 0
  store %struct.dent* %54, %struct.dent** %56, align 8
  br label %57

; <label>:57                                      ; preds = %53, %46
  %58 = load %struct.dent** %hp, align 8
  %59 = getelementptr inbounds %struct.dent* %58, i32 0, i32 0
  store %struct.dent* null, %struct.dent** %59, align 8
  %60 = load %struct.dent** %hp, align 8
  ret %struct.dent* %60
}

declare void @free(i8*) nounwind

declare i32 @makedent(i8*, i32, %struct.dent*)

declare i32 @strtoichar(i8*, i8*, i32, i32)

declare void @upcase(i8*)

declare %struct.dent* @lookup(i8*, i32)

declare i32 @combinecaps(%struct.dent*, %struct.dent*)

declare i32 @addvheader(%struct.dent*)

define %struct.dent* @treelookup(i8* %word) nounwind uwtable {
  %1 = alloca %struct.dent*, align 8
  %2 = alloca i8*, align 8
  %hcode = alloca i32, align 4
  %hp = alloca %struct.dent*, align 8
  %chword = alloca [120 x i8], align 16
  store i8* %word, i8** %2, align 8
  %3 = load i32* @pershsize, align 4
  %4 = icmp sle i32 %3, 0
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %0
  store %struct.dent* null, %struct.dent** %1
  br label %66

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds [120 x i8]* %chword, i32 0, i32 0
  %8 = load i8** %2, align 8
  %9 = call i32 @ichartostr(i8* %7, i8* %8, i32 120, i32 1)
  %10 = load i8** %2, align 8
  %11 = load i32* @pershsize, align 4
  %12 = call i32 @hash(i8* %10, i32 %11)
  store i32 %12, i32* %hcode, align 4
  %13 = load i32* %hcode, align 4
  %14 = sext i32 %13 to i64
  %15 = load %struct.dent** @pershtab, align 8
  %16 = getelementptr inbounds %struct.dent* %15, i64 %14
  store %struct.dent* %16, %struct.dent** %hp, align 8
  br label %17

; <label>:17                                      ; preds = %49, %6
  %18 = load %struct.dent** %hp, align 8
  %19 = icmp ne %struct.dent* %18, null
  br i1 %19, label %20, label %27

; <label>:20                                      ; preds = %17
  %21 = load %struct.dent** %hp, align 8
  %22 = getelementptr inbounds %struct.dent* %21, i32 0, i32 2
  %23 = getelementptr inbounds [1 x i64]* %22, i32 0, i64 0
  %24 = load i64* %23, align 8
  %25 = and i64 %24, 67108864
  %26 = icmp ne i64 %25, 0
  br label %27

; <label>:27                                      ; preds = %20, %17
  %28 = phi i1 [ false, %17 ], [ %26, %20 ]
  br i1 %28, label %29, label %53

; <label>:29                                      ; preds = %27
  %30 = getelementptr inbounds [120 x i8]* %chword, i32 0, i32 0
  %31 = load %struct.dent** %hp, align 8
  %32 = getelementptr inbounds %struct.dent* %31, i32 0, i32 1
  %33 = load i8** %32, align 8
  %34 = call i32 @strcmp(i8* %30, i8* %33) nounwind readonly
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

; <label>:36                                      ; preds = %29
  br label %53

; <label>:37                                      ; preds = %29
  br label %38

; <label>:38                                      ; preds = %45, %37
  %39 = load %struct.dent** %hp, align 8
  %40 = getelementptr inbounds %struct.dent* %39, i32 0, i32 2
  %41 = getelementptr inbounds [1 x i64]* %40, i32 0, i64 0
  %42 = load i64* %41, align 8
  %43 = and i64 %42, 1073741824
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

; <label>:45                                      ; preds = %38
  %46 = load %struct.dent** %hp, align 8
  %47 = getelementptr inbounds %struct.dent* %46, i32 0, i32 0
  %48 = load %struct.dent** %47, align 8
  store %struct.dent* %48, %struct.dent** %hp, align 8
  br label %38

; <label>:49                                      ; preds = %38
  %50 = load %struct.dent** %hp, align 8
  %51 = getelementptr inbounds %struct.dent* %50, i32 0, i32 0
  %52 = load %struct.dent** %51, align 8
  store %struct.dent* %52, %struct.dent** %hp, align 8
  br label %17

; <label>:53                                      ; preds = %36, %27
  %54 = load %struct.dent** %hp, align 8
  %55 = icmp ne %struct.dent* %54, null
  br i1 %55, label %56, label %65

; <label>:56                                      ; preds = %53
  %57 = load %struct.dent** %hp, align 8
  %58 = getelementptr inbounds %struct.dent* %57, i32 0, i32 2
  %59 = getelementptr inbounds [1 x i64]* %58, i32 0, i64 0
  %60 = load i64* %59, align 8
  %61 = and i64 %60, 67108864
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

; <label>:63                                      ; preds = %56
  %64 = load %struct.dent** %hp, align 8
  store %struct.dent* %64, %struct.dent** %1
  br label %66

; <label>:65                                      ; preds = %56, %53
  store %struct.dent* null, %struct.dent** %1
  br label %66

; <label>:66                                      ; preds = %65, %63, %5
  %67 = load %struct.dent** %1
  ret %struct.dent* %67
}

declare i32 @ichartostr(i8*, i8*, i32, i32)

declare i32 @hash(i8*, i32)

declare i32 @strcmp(i8*, i8*) nounwind readonly

define void @treeoutput() nounwind uwtable {
  %cent = alloca %struct.dent*, align 8
  %lent = alloca %struct.dent*, align 8
  %pdictsize = alloca i32, align 4
  %sortlist = alloca %struct.dent**, align 8
  %sortptr = alloca %struct.dent**, align 8
  %ehtab = alloca %struct.dent*, align 8
  %1 = load i32* @newwords, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %4

; <label>:3                                       ; preds = %0
  br label %296

; <label>:4                                       ; preds = %0
  %5 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([4096 x i8]* @personaldict, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str14, i32 0, i32 0))
  store %struct._IO_FILE* %5, %struct._IO_FILE** @dictf, align 8
  %6 = icmp eq %struct._IO_FILE* %5, null
  br i1 %6, label %7, label %10

; <label>:7                                       ; preds = %4
  %8 = load %struct._IO_FILE** @stderr, align 8
  %9 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([18 x i8]* @.str15, i32 0, i32 0), i8* getelementptr inbounds ([4096 x i8]* @personaldict, i32 0, i32 0))
  br label %296

; <label>:10                                      ; preds = %4
  store i32 0, i32* %pdictsize, align 4
  %11 = load i32* @hcount, align 4
  %12 = icmp sge i32 %11, 1000
  br i1 %12, label %13, label %14

; <label>:13                                      ; preds = %10
  store %struct.dent** null, %struct.dent*** %sortlist, align 8
  br label %103

; <label>:14                                      ; preds = %10
  %15 = load %struct.dent** @pershtab, align 8
  store %struct.dent* %15, %struct.dent** %cent, align 8
  %16 = load %struct.dent** @pershtab, align 8
  %17 = load i32* @pershsize, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.dent* %16, i64 %18
  store %struct.dent* %19, %struct.dent** %ehtab, align 8
  br label %20

; <label>:20                                      ; preds = %57, %14
  %21 = load %struct.dent** %cent, align 8
  %22 = load %struct.dent** %ehtab, align 8
  %23 = icmp ult %struct.dent* %21, %22
  br i1 %23, label %24, label %60

; <label>:24                                      ; preds = %20
  %25 = load %struct.dent** %cent, align 8
  store %struct.dent* %25, %struct.dent** %lent, align 8
  br label %26

; <label>:26                                      ; preds = %52, %24
  %27 = load %struct.dent** %lent, align 8
  %28 = icmp ne %struct.dent* %27, null
  br i1 %28, label %29, label %56

; <label>:29                                      ; preds = %26
  %30 = load %struct.dent** %lent, align 8
  %31 = getelementptr inbounds %struct.dent* %30, i32 0, i32 2
  %32 = getelementptr inbounds [1 x i64]* %31, i32 0, i64 0
  %33 = load i64* %32, align 8
  %34 = and i64 %33, 201326592
  %35 = icmp eq i64 %34, 201326592
  br i1 %35, label %36, label %39

; <label>:36                                      ; preds = %29
  %37 = load i32* %pdictsize, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %pdictsize, align 4
  br label %39

; <label>:39                                      ; preds = %36, %29
  br label %40

; <label>:40                                      ; preds = %47, %39
  %41 = load %struct.dent** %lent, align 8
  %42 = getelementptr inbounds %struct.dent* %41, i32 0, i32 2
  %43 = getelementptr inbounds [1 x i64]* %42, i32 0, i64 0
  %44 = load i64* %43, align 8
  %45 = and i64 %44, 1073741824
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

; <label>:47                                      ; preds = %40
  %48 = load %struct.dent** %lent, align 8
  %49 = getelementptr inbounds %struct.dent* %48, i32 0, i32 0
  %50 = load %struct.dent** %49, align 8
  store %struct.dent* %50, %struct.dent** %lent, align 8
  br label %40

; <label>:51                                      ; preds = %40
  br label %52

; <label>:52                                      ; preds = %51
  %53 = load %struct.dent** %lent, align 8
  %54 = getelementptr inbounds %struct.dent* %53, i32 0, i32 0
  %55 = load %struct.dent** %54, align 8
  store %struct.dent* %55, %struct.dent** %lent, align 8
  br label %26

; <label>:56                                      ; preds = %26
  br label %57

; <label>:57                                      ; preds = %56
  %58 = load %struct.dent** %cent, align 8
  %59 = getelementptr inbounds %struct.dent* %58, i32 1
  store %struct.dent* %59, %struct.dent** %cent, align 8
  br label %20

; <label>:60                                      ; preds = %20
  %61 = load %struct.dent** @hashtbl, align 8
  store %struct.dent* %61, %struct.dent** %cent, align 8
  %62 = load %struct.dent** @hashtbl, align 8
  %63 = load i32* @hashsize, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.dent* %62, i64 %64
  store %struct.dent* %65, %struct.dent** %ehtab, align 8
  br label %66

; <label>:66                                      ; preds = %94, %60
  %67 = load %struct.dent** %cent, align 8
  %68 = load %struct.dent** %ehtab, align 8
  %69 = icmp ult %struct.dent* %67, %68
  br i1 %69, label %70, label %97

; <label>:70                                      ; preds = %66
  %71 = load %struct.dent** %cent, align 8
  %72 = getelementptr inbounds %struct.dent* %71, i32 0, i32 2
  %73 = getelementptr inbounds [1 x i64]* %72, i32 0, i64 0
  %74 = load i64* %73, align 8
  %75 = and i64 %74, 201326592
  %76 = icmp eq i64 %75, 201326592
  br i1 %76, label %77, label %93

; <label>:77                                      ; preds = %70
  %78 = load %struct.dent** %cent, align 8
  %79 = getelementptr inbounds %struct.dent* %78, i32 0, i32 2
  %80 = getelementptr inbounds [1 x i64]* %79, i32 0, i64 0
  %81 = load i64* %80, align 8
  %82 = and i64 %81, 805306368
  %83 = icmp ne i64 %82, 805306368
  br i1 %83, label %84, label %92

; <label>:84                                      ; preds = %77
  %85 = load %struct.dent** %cent, align 8
  %86 = getelementptr inbounds %struct.dent* %85, i32 0, i32 1
  %87 = load i8** %86, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %92

; <label>:89                                      ; preds = %84
  %90 = load i32* %pdictsize, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %pdictsize, align 4
  br label %92

; <label>:92                                      ; preds = %89, %84, %77
  br label %93

; <label>:93                                      ; preds = %92, %70
  br label %94

; <label>:94                                      ; preds = %93
  %95 = load %struct.dent** %cent, align 8
  %96 = getelementptr inbounds %struct.dent* %95, i32 1
  store %struct.dent* %96, %struct.dent** %cent, align 8
  br label %66

; <label>:97                                      ; preds = %66
  %98 = load i32* %pdictsize, align 4
  %99 = sext i32 %98 to i64
  %100 = mul i64 %99, 24
  %101 = call noalias i8* @malloc(i64 %100) nounwind
  %102 = bitcast i8* %101 to %struct.dent**
  store %struct.dent** %102, %struct.dent*** %sortlist, align 8
  br label %103

; <label>:103                                     ; preds = %97, %13
  %104 = load %struct.dent*** %sortlist, align 8
  %105 = icmp eq %struct.dent** %104, null
  br i1 %105, label %106, label %190

; <label>:106                                     ; preds = %103
  %107 = load %struct.dent** @pershtab, align 8
  store %struct.dent* %107, %struct.dent** %cent, align 8
  %108 = load %struct.dent** @pershtab, align 8
  %109 = load i32* @pershsize, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.dent* %108, i64 %110
  store %struct.dent* %111, %struct.dent** %ehtab, align 8
  br label %112

; <label>:112                                     ; preds = %149, %106
  %113 = load %struct.dent** %cent, align 8
  %114 = load %struct.dent** %ehtab, align 8
  %115 = icmp ult %struct.dent* %113, %114
  br i1 %115, label %116, label %152

; <label>:116                                     ; preds = %112
  %117 = load %struct.dent** %cent, align 8
  store %struct.dent* %117, %struct.dent** %lent, align 8
  br label %118

; <label>:118                                     ; preds = %144, %116
  %119 = load %struct.dent** %lent, align 8
  %120 = icmp ne %struct.dent* %119, null
  br i1 %120, label %121, label %148

; <label>:121                                     ; preds = %118
  %122 = load %struct.dent** %lent, align 8
  %123 = getelementptr inbounds %struct.dent* %122, i32 0, i32 2
  %124 = getelementptr inbounds [1 x i64]* %123, i32 0, i64 0
  %125 = load i64* %124, align 8
  %126 = and i64 %125, 201326592
  %127 = icmp eq i64 %126, 201326592
  br i1 %127, label %128, label %143

; <label>:128                                     ; preds = %121
  %129 = load %struct._IO_FILE** @dictf, align 8
  %130 = load %struct.dent** %lent, align 8
  call void @toutent(%struct._IO_FILE* %129, %struct.dent* %130, i32 1)
  br label %131

; <label>:131                                     ; preds = %138, %128
  %132 = load %struct.dent** %lent, align 8
  %133 = getelementptr inbounds %struct.dent* %132, i32 0, i32 2
  %134 = getelementptr inbounds [1 x i64]* %133, i32 0, i64 0
  %135 = load i64* %134, align 8
  %136 = and i64 %135, 1073741824
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %142

; <label>:138                                     ; preds = %131
  %139 = load %struct.dent** %lent, align 8
  %140 = getelementptr inbounds %struct.dent* %139, i32 0, i32 0
  %141 = load %struct.dent** %140, align 8
  store %struct.dent* %141, %struct.dent** %lent, align 8
  br label %131

; <label>:142                                     ; preds = %131
  br label %143

; <label>:143                                     ; preds = %142, %121
  br label %144

; <label>:144                                     ; preds = %143
  %145 = load %struct.dent** %lent, align 8
  %146 = getelementptr inbounds %struct.dent* %145, i32 0, i32 0
  %147 = load %struct.dent** %146, align 8
  store %struct.dent* %147, %struct.dent** %lent, align 8
  br label %118

; <label>:148                                     ; preds = %118
  br label %149

; <label>:149                                     ; preds = %148
  %150 = load %struct.dent** %cent, align 8
  %151 = getelementptr inbounds %struct.dent* %150, i32 1
  store %struct.dent* %151, %struct.dent** %cent, align 8
  br label %112

; <label>:152                                     ; preds = %112
  %153 = load %struct.dent** @hashtbl, align 8
  store %struct.dent* %153, %struct.dent** %cent, align 8
  %154 = load %struct.dent** @hashtbl, align 8
  %155 = load i32* @hashsize, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.dent* %154, i64 %156
  store %struct.dent* %157, %struct.dent** %ehtab, align 8
  br label %158

; <label>:158                                     ; preds = %186, %152
  %159 = load %struct.dent** %cent, align 8
  %160 = load %struct.dent** %ehtab, align 8
  %161 = icmp ult %struct.dent* %159, %160
  br i1 %161, label %162, label %189

; <label>:162                                     ; preds = %158
  %163 = load %struct.dent** %cent, align 8
  %164 = getelementptr inbounds %struct.dent* %163, i32 0, i32 2
  %165 = getelementptr inbounds [1 x i64]* %164, i32 0, i64 0
  %166 = load i64* %165, align 8
  %167 = and i64 %166, 201326592
  %168 = icmp eq i64 %167, 201326592
  br i1 %168, label %169, label %185

; <label>:169                                     ; preds = %162
  %170 = load %struct.dent** %cent, align 8
  %171 = getelementptr inbounds %struct.dent* %170, i32 0, i32 2
  %172 = getelementptr inbounds [1 x i64]* %171, i32 0, i64 0
  %173 = load i64* %172, align 8
  %174 = and i64 %173, 805306368
  %175 = icmp ne i64 %174, 805306368
  br i1 %175, label %176, label %184

; <label>:176                                     ; preds = %169
  %177 = load %struct.dent** %cent, align 8
  %178 = getelementptr inbounds %struct.dent* %177, i32 0, i32 1
  %179 = load i8** %178, align 8
  %180 = icmp ne i8* %179, null
  br i1 %180, label %181, label %184

; <label>:181                                     ; preds = %176
  %182 = load %struct._IO_FILE** @dictf, align 8
  %183 = load %struct.dent** %cent, align 8
  call void @toutent(%struct._IO_FILE* %182, %struct.dent* %183, i32 1)
  br label %184

; <label>:184                                     ; preds = %181, %176, %169
  br label %185

; <label>:185                                     ; preds = %184, %162
  br label %186

; <label>:186                                     ; preds = %185
  %187 = load %struct.dent** %cent, align 8
  %188 = getelementptr inbounds %struct.dent* %187, i32 1
  store %struct.dent* %188, %struct.dent** %cent, align 8
  br label %158

; <label>:189                                     ; preds = %158
  br label %296

; <label>:190                                     ; preds = %103
  %191 = load %struct.dent*** %sortlist, align 8
  store %struct.dent** %191, %struct.dent*** %sortptr, align 8
  %192 = load %struct.dent** @pershtab, align 8
  store %struct.dent* %192, %struct.dent** %cent, align 8
  %193 = load %struct.dent** @pershtab, align 8
  %194 = load i32* @pershsize, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.dent* %193, i64 %195
  store %struct.dent* %196, %struct.dent** %ehtab, align 8
  br label %197

; <label>:197                                     ; preds = %235, %190
  %198 = load %struct.dent** %cent, align 8
  %199 = load %struct.dent** %ehtab, align 8
  %200 = icmp ult %struct.dent* %198, %199
  br i1 %200, label %201, label %238

; <label>:201                                     ; preds = %197
  %202 = load %struct.dent** %cent, align 8
  store %struct.dent* %202, %struct.dent** %lent, align 8
  br label %203

; <label>:203                                     ; preds = %230, %201
  %204 = load %struct.dent** %lent, align 8
  %205 = icmp ne %struct.dent* %204, null
  br i1 %205, label %206, label %234

; <label>:206                                     ; preds = %203
  %207 = load %struct.dent** %lent, align 8
  %208 = getelementptr inbounds %struct.dent* %207, i32 0, i32 2
  %209 = getelementptr inbounds [1 x i64]* %208, i32 0, i64 0
  %210 = load i64* %209, align 8
  %211 = and i64 %210, 201326592
  %212 = icmp eq i64 %211, 201326592
  br i1 %212, label %213, label %229

; <label>:213                                     ; preds = %206
  %214 = load %struct.dent** %lent, align 8
  %215 = load %struct.dent*** %sortptr, align 8
  %216 = getelementptr inbounds %struct.dent** %215, i32 1
  store %struct.dent** %216, %struct.dent*** %sortptr, align 8
  store %struct.dent* %214, %struct.dent** %215
  br label %217

; <label>:217                                     ; preds = %224, %213
  %218 = load %struct.dent** %lent, align 8
  %219 = getelementptr inbounds %struct.dent* %218, i32 0, i32 2
  %220 = getelementptr inbounds [1 x i64]* %219, i32 0, i64 0
  %221 = load i64* %220, align 8
  %222 = and i64 %221, 1073741824
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %228

; <label>:224                                     ; preds = %217
  %225 = load %struct.dent** %lent, align 8
  %226 = getelementptr inbounds %struct.dent* %225, i32 0, i32 0
  %227 = load %struct.dent** %226, align 8
  store %struct.dent* %227, %struct.dent** %lent, align 8
  br label %217

; <label>:228                                     ; preds = %217
  br label %229

; <label>:229                                     ; preds = %228, %206
  br label %230

; <label>:230                                     ; preds = %229
  %231 = load %struct.dent** %lent, align 8
  %232 = getelementptr inbounds %struct.dent* %231, i32 0, i32 0
  %233 = load %struct.dent** %232, align 8
  store %struct.dent* %233, %struct.dent** %lent, align 8
  br label %203

; <label>:234                                     ; preds = %203
  br label %235

; <label>:235                                     ; preds = %234
  %236 = load %struct.dent** %cent, align 8
  %237 = getelementptr inbounds %struct.dent* %236, i32 1
  store %struct.dent* %237, %struct.dent** %cent, align 8
  br label %197

; <label>:238                                     ; preds = %197
  %239 = load %struct.dent** @hashtbl, align 8
  store %struct.dent* %239, %struct.dent** %cent, align 8
  %240 = load %struct.dent** @hashtbl, align 8
  %241 = load i32* @hashsize, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.dent* %240, i64 %242
  store %struct.dent* %243, %struct.dent** %ehtab, align 8
  br label %244

; <label>:244                                     ; preds = %273, %238
  %245 = load %struct.dent** %cent, align 8
  %246 = load %struct.dent** %ehtab, align 8
  %247 = icmp ult %struct.dent* %245, %246
  br i1 %247, label %248, label %276

; <label>:248                                     ; preds = %244
  %249 = load %struct.dent** %cent, align 8
  %250 = getelementptr inbounds %struct.dent* %249, i32 0, i32 2
  %251 = getelementptr inbounds [1 x i64]* %250, i32 0, i64 0
  %252 = load i64* %251, align 8
  %253 = and i64 %252, 201326592
  %254 = icmp eq i64 %253, 201326592
  br i1 %254, label %255, label %272

; <label>:255                                     ; preds = %248
  %256 = load %struct.dent** %cent, align 8
  %257 = getelementptr inbounds %struct.dent* %256, i32 0, i32 2
  %258 = getelementptr inbounds [1 x i64]* %257, i32 0, i64 0
  %259 = load i64* %258, align 8
  %260 = and i64 %259, 805306368
  %261 = icmp ne i64 %260, 805306368
  br i1 %261, label %262, label %271

; <label>:262                                     ; preds = %255
  %263 = load %struct.dent** %cent, align 8
  %264 = getelementptr inbounds %struct.dent* %263, i32 0, i32 1
  %265 = load i8** %264, align 8
  %266 = icmp ne i8* %265, null
  br i1 %266, label %267, label %271

; <label>:267                                     ; preds = %262
  %268 = load %struct.dent** %cent, align 8
  %269 = load %struct.dent*** %sortptr, align 8
  %270 = getelementptr inbounds %struct.dent** %269, i32 1
  store %struct.dent** %270, %struct.dent*** %sortptr, align 8
  store %struct.dent* %268, %struct.dent** %269
  br label %271

; <label>:271                                     ; preds = %267, %262, %255
  br label %272

; <label>:272                                     ; preds = %271, %248
  br label %273

; <label>:273                                     ; preds = %272
  %274 = load %struct.dent** %cent, align 8
  %275 = getelementptr inbounds %struct.dent* %274, i32 1
  store %struct.dent* %275, %struct.dent** %cent, align 8
  br label %244

; <label>:276                                     ; preds = %244
  %277 = load %struct.dent*** %sortlist, align 8
  %278 = bitcast %struct.dent** %277 to i8*
  %279 = load i32* %pdictsize, align 4
  %280 = zext i32 %279 to i64
  call void @qsort(i8* %278, i64 %280, i64 8, i32 (i8*, i8*)* bitcast (i32 (%struct.dent**, %struct.dent**)* @pdictcmp to i32 (i8*, i8*)*))
  %281 = load %struct.dent*** %sortlist, align 8
  store %struct.dent** %281, %struct.dent*** %sortptr, align 8
  br label %282

; <label>:282                                     ; preds = %286, %276
  %283 = load i32* %pdictsize, align 4
  %284 = add nsw i32 %283, -1
  store i32 %284, i32* %pdictsize, align 4
  %285 = icmp sge i32 %284, 0
  br i1 %285, label %286, label %291

; <label>:286                                     ; preds = %282
  %287 = load %struct._IO_FILE** @dictf, align 8
  %288 = load %struct.dent*** %sortptr, align 8
  %289 = getelementptr inbounds %struct.dent** %288, i32 1
  store %struct.dent** %289, %struct.dent*** %sortptr, align 8
  %290 = load %struct.dent** %288
  call void @toutent(%struct._IO_FILE* %287, %struct.dent* %290, i32 1)
  br label %282

; <label>:291                                     ; preds = %282
  %292 = load %struct.dent*** %sortlist, align 8
  %293 = bitcast %struct.dent** %292 to i8*
  call void @free(i8* %293) nounwind
  store i32 0, i32* @newwords, align 4
  %294 = load %struct._IO_FILE** @dictf, align 8
  %295 = call i32 @fclose(%struct._IO_FILE* %294)
  br label %296

; <label>:296                                     ; preds = %291, %189, %7, %3
  ret void
}

declare noalias i8* @malloc(i64) nounwind

declare void @toutent(%struct._IO_FILE*, %struct.dent*, i32)

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)*)

define internal i32 @pdictcmp(%struct.dent** %enta, %struct.dent** %entb) nounwind uwtable {
  %1 = alloca %struct.dent**, align 8
  %2 = alloca %struct.dent**, align 8
  store %struct.dent** %enta, %struct.dent*** %1, align 8
  store %struct.dent** %entb, %struct.dent*** %2, align 8
  %3 = load %struct.dent*** %1, align 8
  %4 = load %struct.dent** %3
  %5 = getelementptr inbounds %struct.dent* %4, i32 0, i32 1
  %6 = load i8** %5, align 8
  %7 = load %struct.dent*** %2, align 8
  %8 = load %struct.dent** %7
  %9 = getelementptr inbounds %struct.dent* %8, i32 0, i32 1
  %10 = load i8** %9, align 8
  %11 = call i32 @casecmp(i8* %6, i8* %10, i32 1)
  ret i32 %11
}

define i8* @mymalloc(i32 %size) nounwind uwtable {
  %1 = alloca i32, align 4
  store i32 %size, i32* %1, align 4
  %2 = load i32* %1, align 4
  %3 = zext i32 %2 to i64
  %4 = call noalias i8* @malloc(i64 %3) nounwind
  ret i8* %4
}

define void @myfree(i8* %ptr) nounwind uwtable {
  %1 = alloca i8*, align 8
  store i8* %ptr, i8** %1, align 8
  %2 = load i8** @hashstrings, align 8
  %3 = icmp ne i8* %2, null
  br i1 %3, label %4, label %16

; <label>:4                                       ; preds = %0
  %5 = load i8** %1, align 8
  %6 = load i8** @hashstrings, align 8
  %7 = icmp uge i8* %5, %6
  br i1 %7, label %8, label %16

; <label>:8                                       ; preds = %4
  %9 = load i8** %1, align 8
  %10 = load i8** @hashstrings, align 8
  %11 = load i32* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 6), align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i8* %10, i64 %12
  %14 = icmp ule i8* %9, %13
  br i1 %14, label %15, label %16

; <label>:15                                      ; preds = %8
  br label %18

; <label>:16                                      ; preds = %8, %4, %0
  %17 = load i8** %1, align 8
  call void @free(i8* %17) nounwind
  br label %18

; <label>:18                                      ; preds = %16, %15
  ret void
}

declare i32 @casecmp(i8*, i8*, i32)

declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) nounwind

declare i8* @fgets(i8*, i32, %struct._IO_FILE*)
