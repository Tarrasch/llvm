; ModuleID = 'makedent.o'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.hashheader = type { i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i8], [13 x i8], i8, i8, i8, [228 x i16], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [128 x i8], [100 x [11 x i8]], [100 x i32], [100 x i32], i16 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.strchartype = type { i8*, i8*, i8* }
%struct.dent = type { %struct.dent*, i8*, [1 x i64] }

@hashheader = external global %struct.hashheader
@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [51 x i8] c"\0D\0AWord '%s' too long at line %d of %s, truncated\0D\0A\00", align 1
@.str1 = private unnamed_addr constant [85 x i8] c"/home/arka3/repos/test-suite/MultiSource/Benchmarks/MiBench/office-ispell/makedent.c\00", align 1
@.str2 = private unnamed_addr constant [42 x i8] c"\0D\0AWord '%s' contains illegal characters\0D\0A\00", align 1
@.str3 = private unnamed_addr constant [42 x i8] c"\0D\0ACouldn't allocate space for word '%s'\0D\0A\00", align 1
@.str4 = private unnamed_addr constant [38 x i8] c"\0D\0AIllegal affix flag character '%c'\0D\0A\00", align 1
@defdupchar = external global i32
@laststringch = external global i32
@strtosichar.out = internal global [184 x i8] zeroinitializer, align 16
@ichartosstr.out = internal global [184 x i8] zeroinitializer, align 16
@printichar.out = internal global [11 x i8] zeroinitializer, align 1
@chartypes = external global %struct.strchartype*
@.str5 = private unnamed_addr constant [4 x i8] c"tex\00", align 1
@has_marker = internal global i32 0, align 4
@.str6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

define i32 @makedent(i8* %lbuf, i32 %lbuflen, %struct.dent* %d) nounwind uwtable {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.dent*, align 8
  %ibuf = alloca [120 x i8], align 16
  %ip = alloca i8*, align 8
  %p = alloca i8*, align 8
  %bit = alloca i32, align 4
  %len = alloca i32, align 4
  store i8* %lbuf, i8** %2, align 8
  store i32 %lbuflen, i32* %3, align 4
  store %struct.dent* %d, %struct.dent** %4, align 8
  %5 = load i8** %2, align 8
  %6 = call i64 @strlen(i8* %5) nounwind readonly
  %7 = sub i64 %6, 1
  %8 = trunc i64 %7 to i32
  store i32 %8, i32* %len, align 4
  %9 = load i32* %len, align 4
  %10 = sext i32 %9 to i64
  %11 = load i8** %2, align 8
  %12 = getelementptr inbounds i8* %11, i64 %10
  %13 = load i8* %12
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 10
  br i1 %15, label %16, label %21

; <label>:16                                      ; preds = %0
  %17 = load i32* %len, align 4
  %18 = sext i32 %17 to i64
  %19 = load i8** %2, align 8
  %20 = getelementptr inbounds i8* %19, i64 %18
  store i8 0, i8* %20
  br label %21

; <label>:21                                      ; preds = %16, %0
  %22 = load %struct.dent** %4, align 8
  %23 = getelementptr inbounds %struct.dent* %22, i32 0, i32 0
  store %struct.dent* null, %struct.dent** %23, align 8
  %24 = load %struct.dent** %4, align 8
  %25 = getelementptr inbounds %struct.dent* %24, i32 0, i32 2
  %26 = getelementptr inbounds [1 x i64]* %25, i32 0, i64 0
  store i64 0, i64* %26, align 8
  %27 = load %struct.dent** %4, align 8
  %28 = getelementptr inbounds %struct.dent* %27, i32 0, i32 2
  %29 = getelementptr inbounds [1 x i64]* %28, i32 0, i32 0
  %30 = bitcast i64* %29 to i8*
  call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 8, i32 1, i1 false)
  %31 = load %struct.dent** %4, align 8
  %32 = getelementptr inbounds %struct.dent* %31, i32 0, i32 2
  %33 = getelementptr inbounds [1 x i64]* %32, i32 0, i64 0
  %34 = load i64* %33, align 8
  %35 = or i64 %34, 67108864
  store i64 %35, i64* %33, align 8
  %36 = load %struct.dent** %4, align 8
  %37 = getelementptr inbounds %struct.dent* %36, i32 0, i32 2
  %38 = getelementptr inbounds [1 x i64]* %37, i32 0, i64 0
  %39 = load i64* %38, align 8
  %40 = and i64 %39, -134217729
  store i64 %40, i64* %38, align 8
  %41 = load i8** %2, align 8
  %42 = load i8* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 19), align 1
  %43 = sext i8 %42 to i32
  %44 = call i8* @index(i8* %41, i32 %43) nounwind readonly
  store i8* %44, i8** %p, align 8
  %45 = load i8** %p, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %49

; <label>:47                                      ; preds = %21
  %48 = load i8** %p, align 8
  store i8 0, i8* %48
  br label %49

; <label>:49                                      ; preds = %47, %21
  %50 = getelementptr inbounds [120 x i8]* %ibuf, i32 0, i32 0
  %51 = load i8** %2, align 8
  %52 = call i32 @strtoichar(i8* %50, i8* %51, i32 100, i32 1)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %60, label %54

; <label>:54                                      ; preds = %49
  %55 = load i8** %2, align 8
  %56 = getelementptr inbounds [120 x i8]* %ibuf, i32 0, i32 0
  %57 = load i32* %3, align 4
  %58 = call i32 @ichartostr(i8* %55, i8* %56, i32 %57, i32 1)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

; <label>:60                                      ; preds = %54, %49
  %61 = load %struct._IO_FILE** @stderr, align 8
  %62 = load i8** %2, align 8
  %63 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %61, i8* getelementptr inbounds ([51 x i8]* @.str, i32 0, i32 0), i8* %62, i32 158, i8* getelementptr inbounds ([85 x i8]* @.str1, i32 0, i32 0))
  store i32 -1, i32* %1
  br label %209

; <label>:64                                      ; preds = %54
  %65 = getelementptr inbounds [120 x i8]* %ibuf, i32 0, i32 0
  store i8* %65, i8** %ip, align 8
  br label %66

; <label>:66                                      ; preds = %101, %64
  %67 = load i8** %ip, align 8
  %68 = load i8* %67
  %69 = zext i8 %68 to i32
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %104

; <label>:71                                      ; preds = %66
  %72 = load i8** %ip, align 8
  %73 = load i8* %72
  %74 = zext i8 %73 to i64
  %75 = getelementptr inbounds [228 x i8]* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 23), i32 0, i64 %74
  %76 = load i8* %75, align 1
  %77 = icmp ne i8 %76, 0
  br i1 %77, label %100, label %78

; <label>:78                                      ; preds = %71
  %79 = load i8** %ip, align 8
  %80 = load i8* %79
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds [228 x i8]* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 26), i32 0, i64 %81
  %83 = load i8* %82, align 1
  %84 = icmp ne i8 %83, 0
  br i1 %84, label %85, label %95

; <label>:85                                      ; preds = %78
  %86 = load i8** %ip, align 8
  %87 = getelementptr inbounds [120 x i8]* %ibuf, i32 0, i32 0
  %88 = icmp eq i8* %86, %87
  br i1 %88, label %95, label %89

; <label>:89                                      ; preds = %85
  %90 = load i8** %ip, align 8
  %91 = getelementptr inbounds i8* %90, i64 1
  %92 = load i8* %91
  %93 = zext i8 %92 to i32
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %99

; <label>:95                                      ; preds = %89, %85, %78
  %96 = load %struct._IO_FILE** @stderr, align 8
  %97 = load i8** %2, align 8
  %98 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %96, i8* getelementptr inbounds ([42 x i8]* @.str2, i32 0, i32 0), i8* %97)
  store i32 -1, i32* %1
  br label %209

; <label>:99                                      ; preds = %89
  br label %100

; <label>:100                                     ; preds = %99, %71
  br label %101

; <label>:101                                     ; preds = %100
  %102 = load i8** %ip, align 8
  %103 = getelementptr inbounds i8* %102, i32 1
  store i8* %103, i8** %ip, align 8
  br label %66

; <label>:104                                     ; preds = %66
  %105 = load i8** %2, align 8
  %106 = call i64 @strlen(i8* %105) nounwind readonly
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %len, align 4
  %108 = getelementptr inbounds [120 x i8]* %ibuf, i32 0, i32 0
  %109 = call i64 @whatcap(i8* %108)
  %110 = load %struct.dent** %4, align 8
  %111 = getelementptr inbounds %struct.dent* %110, i32 0, i32 2
  %112 = getelementptr inbounds [1 x i64]* %111, i32 0, i64 0
  %113 = load i64* %112, align 8
  %114 = or i64 %113, %109
  store i64 %114, i64* %112, align 8
  %115 = load i32* %len, align 4
  %116 = icmp sgt i32 %115, 99
  br i1 %116, label %117, label %121

; <label>:117                                     ; preds = %104
  %118 = load %struct._IO_FILE** @stderr, align 8
  %119 = load i8** %2, align 8
  %120 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %118, i8* getelementptr inbounds ([51 x i8]* @.str, i32 0, i32 0), i8* %119, i32 188, i8* getelementptr inbounds ([85 x i8]* @.str1, i32 0, i32 0))
  store i32 -1, i32* %1
  br label %209

; <label>:121                                     ; preds = %104
  %122 = load i32* %len, align 4
  %123 = add i32 %122, 1
  %124 = call i8* @mymalloc(i32 %123)
  %125 = load %struct.dent** %4, align 8
  %126 = getelementptr inbounds %struct.dent* %125, i32 0, i32 1
  store i8* %124, i8** %126, align 8
  %127 = load %struct.dent** %4, align 8
  %128 = getelementptr inbounds %struct.dent* %127, i32 0, i32 1
  %129 = load i8** %128, align 8
  %130 = icmp eq i8* %129, null
  br i1 %130, label %131, label %135

; <label>:131                                     ; preds = %121
  %132 = load %struct._IO_FILE** @stderr, align 8
  %133 = load i8** %2, align 8
  %134 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %132, i8* getelementptr inbounds ([42 x i8]* @.str3, i32 0, i32 0), i8* %133)
  store i32 -1, i32* %1
  br label %209

; <label>:135                                     ; preds = %121
  %136 = load %struct.dent** %4, align 8
  %137 = getelementptr inbounds %struct.dent* %136, i32 0, i32 1
  %138 = load i8** %137, align 8
  %139 = load i8** %2, align 8
  %140 = call i8* @strcpy(i8* %138, i8* %139) nounwind
  %141 = load %struct.dent** %4, align 8
  %142 = getelementptr inbounds %struct.dent* %141, i32 0, i32 2
  %143 = getelementptr inbounds [1 x i64]* %142, i32 0, i64 0
  %144 = load i64* %143, align 8
  %145 = and i64 %144, 805306368
  %146 = icmp ne i64 %145, 805306368
  br i1 %146, label %147, label %151

; <label>:147                                     ; preds = %135
  %148 = load %struct.dent** %4, align 8
  %149 = getelementptr inbounds %struct.dent* %148, i32 0, i32 1
  %150 = load i8** %149, align 8
  call void @chupcase(i8* %150)
  br label %151

; <label>:151                                     ; preds = %147, %135
  %152 = load i8** %p, align 8
  %153 = icmp eq i8* %152, null
  br i1 %153, label %154, label %155

; <label>:154                                     ; preds = %151
  store i32 0, i32* %1
  br label %209

; <label>:155                                     ; preds = %151
  %156 = load i8** %p, align 8
  %157 = getelementptr inbounds i8* %156, i32 1
  store i8* %157, i8** %p, align 8
  br label %158

; <label>:158                                     ; preds = %207, %155
  %159 = load i8** %p, align 8
  %160 = load i8* %159
  %161 = sext i8 %160 to i32
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %168

; <label>:163                                     ; preds = %158
  %164 = load i8** %p, align 8
  %165 = load i8* %164
  %166 = sext i8 %165 to i32
  %167 = icmp ne i32 %166, 10
  br label %168

; <label>:168                                     ; preds = %163, %158
  %169 = phi i1 [ false, %158 ], [ %167, %163 ]
  br i1 %169, label %170, label %208

; <label>:170                                     ; preds = %168
  %171 = load i8** %p, align 8
  %172 = load i8* %171
  %173 = zext i8 %172 to i32
  %174 = sub nsw i32 %173, 65
  store i32 %174, i32* %bit, align 4
  %175 = load i32* %bit, align 4
  %176 = icmp sge i32 %175, 0
  br i1 %176, label %177, label %189

; <label>:177                                     ; preds = %170
  %178 = load i32* %bit, align 4
  %179 = icmp sle i32 %178, 26
  br i1 %179, label %180, label %189

; <label>:180                                     ; preds = %177
  %181 = load i32* %bit, align 4
  %182 = zext i32 %181 to i64
  %183 = shl i64 1, %182
  %184 = load %struct.dent** %4, align 8
  %185 = getelementptr inbounds %struct.dent* %184, i32 0, i32 2
  %186 = getelementptr inbounds [1 x i64]* %185, i32 0, i64 0
  %187 = load i64* %186, align 8
  %188 = or i64 %187, %183
  store i64 %188, i64* %186, align 8
  br label %195

; <label>:189                                     ; preds = %177, %170
  %190 = load %struct._IO_FILE** @stderr, align 8
  %191 = load i8** %p, align 8
  %192 = load i8* %191
  %193 = zext i8 %192 to i32
  %194 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %190, i8* getelementptr inbounds ([38 x i8]* @.str4, i32 0, i32 0), i32 %193)
  br label %195

; <label>:195                                     ; preds = %189, %180
  %196 = load i8** %p, align 8
  %197 = getelementptr inbounds i8* %196, i32 1
  store i8* %197, i8** %p, align 8
  %198 = load i8** %p, align 8
  %199 = load i8* %198
  %200 = sext i8 %199 to i32
  %201 = load i8* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 19), align 1
  %202 = sext i8 %201 to i32
  %203 = icmp eq i32 %200, %202
  br i1 %203, label %204, label %207

; <label>:204                                     ; preds = %195
  %205 = load i8** %p, align 8
  %206 = getelementptr inbounds i8* %205, i32 1
  store i8* %206, i8** %p, align 8
  br label %207

; <label>:207                                     ; preds = %204, %195
  br label %158

; <label>:208                                     ; preds = %168
  store i32 0, i32* %1
  br label %209

; <label>:209                                     ; preds = %208, %154, %131, %117, %95, %60
  %210 = load i32* %1
  ret i32 %210
}

declare i64 @strlen(i8*) nounwind readonly

declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) nounwind

declare i8* @index(i8*, i32) nounwind readonly

define i32 @strtoichar(i8* %out, i8* %in, i32 %outlen, i32 %canonical) nounwind uwtable {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %len = alloca i32, align 4
  store i8* %out, i8** %1, align 8
  store i8* %in, i8** %2, align 8
  store i32 %outlen, i32* %3, align 4
  store i32 %canonical, i32* %4, align 4
  %5 = load i32* %3, align 4
  %6 = sext i32 %5 to i64
  %7 = udiv i64 %6, 1
  %8 = trunc i64 %7 to i32
  store i32 %8, i32* %3, align 4
  br label %9

; <label>:9                                       ; preds = %55, %0
  %10 = load i32* %3, align 4
  %11 = add nsw i32 %10, -1
  store i32 %11, i32* %3, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %18

; <label>:13                                      ; preds = %9
  %14 = load i8** %2, align 8
  %15 = load i8* %14
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 0
  br label %18

; <label>:18                                      ; preds = %13, %9
  %19 = phi i1 [ false, %9 ], [ %17, %13 ]
  br i1 %19, label %20, label %60

; <label>:20                                      ; preds = %18
  store i32 1, i32* %len, align 4
  %21 = load i8** %2, align 8
  %22 = load i8* %21
  %23 = zext i8 %22 to i64
  %24 = getelementptr inbounds [128 x i8]* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 27), i32 0, i64 %23
  %25 = load i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %38

; <label>:28                                      ; preds = %20
  %29 = load i8** %2, align 8
  %30 = load i32* %4, align 4
  %31 = call i32 (...)* bitcast (i32 (i8*, i32)* @stringcharlen to i32 (...)*)(i8* %29, i32 %30)
  store i32 %31, i32* %len, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %34

; <label>:33                                      ; preds = %28
  br label %35

; <label>:34                                      ; preds = %28
  store i32 1, i32* %len, align 4
  br label %35

; <label>:35                                      ; preds = %34, %33
  %36 = phi i32 [ 1, %33 ], [ 0, %34 ]
  %37 = icmp ne i32 %36, 0
  br label %38

; <label>:38                                      ; preds = %35, %20
  %39 = phi i1 [ false, %20 ], [ %37, %35 ]
  br i1 %39, label %40, label %46

; <label>:40                                      ; preds = %38
  %41 = load i32* @laststringch, align 4
  %42 = add i32 128, %41
  %43 = trunc i32 %42 to i8
  %44 = load i8** %1, align 8
  %45 = getelementptr inbounds i8* %44, i32 1
  store i8* %45, i8** %1, align 8
  store i8 %43, i8* %44
  br label %54

; <label>:46                                      ; preds = %38
  %47 = load i8** %2, align 8
  %48 = load i8* %47
  %49 = sext i8 %48 to i32
  %50 = and i32 %49, 127
  %51 = trunc i32 %50 to i8
  %52 = load i8** %1, align 8
  %53 = getelementptr inbounds i8* %52, i32 1
  store i8* %53, i8** %1, align 8
  store i8 %51, i8* %52
  br label %54

; <label>:54                                      ; preds = %46, %40
  br label %55

; <label>:55                                      ; preds = %54
  %56 = load i32* %len, align 4
  %57 = load i8** %2, align 8
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds i8* %57, i64 %58
  store i8* %59, i8** %2, align 8
  br label %9

; <label>:60                                      ; preds = %18
  %61 = load i8** %1, align 8
  store i8 0, i8* %61
  %62 = load i32* %3, align 4
  %63 = icmp sle i32 %62, 0
  %64 = zext i1 %63 to i32
  ret i32 %64
}

define i32 @ichartostr(i8* %out, i8* %in, i32 %outlen, i32 %canonical) nounwind uwtable {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %ch = alloca i32, align 4
  %i = alloca i32, align 4
  %scharp = alloca i8*, align 8
  store i8* %out, i8** %1, align 8
  store i8* %in, i8** %2, align 8
  store i32 %outlen, i32* %3, align 4
  store i32 %canonical, i32* %4, align 4
  br label %5

; <label>:5                                       ; preds = %71, %0
  %6 = load i32* %3, align 4
  %7 = add nsw i32 %6, -1
  store i32 %7, i32* %3, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %15

; <label>:9                                       ; preds = %5
  %10 = load i8** %2, align 8
  %11 = getelementptr inbounds i8* %10, i32 1
  store i8* %11, i8** %2, align 8
  %12 = load i8* %10
  %13 = zext i8 %12 to i32
  store i32 %13, i32* %ch, align 4
  %14 = icmp ne i32 %13, 0
  br label %15

; <label>:15                                      ; preds = %9, %5
  %16 = phi i1 [ false, %5 ], [ %14, %9 ]
  br i1 %16, label %17, label %72

; <label>:17                                      ; preds = %15
  %18 = load i32* %ch, align 4
  %19 = icmp slt i32 %18, 128
  br i1 %19, label %20, label %25

; <label>:20                                      ; preds = %17
  %21 = load i32* %ch, align 4
  %22 = trunc i32 %21 to i8
  %23 = load i8** %1, align 8
  %24 = getelementptr inbounds i8* %23, i32 1
  store i8* %24, i8** %1, align 8
  store i8 %22, i8* %23
  br label %71

; <label>:25                                      ; preds = %17
  %26 = load i32* %ch, align 4
  %27 = sub nsw i32 %26, 128
  store i32 %27, i32* %ch, align 4
  %28 = load i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %54, label %30

; <label>:30                                      ; preds = %25
  %31 = load i32* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 12), align 4
  store i32 %31, i32* %i, align 4
  br label %32

; <label>:32                                      ; preds = %52, %30
  %33 = load i32* %i, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %i, align 4
  %35 = icmp sge i32 %34, 0
  br i1 %35, label %36, label %53

; <label>:36                                      ; preds = %32
  %37 = load i32* %i, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [100 x i32]* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 30), i32 0, i64 %38
  %40 = load i32* %39, align 4
  %41 = load i32* @defdupchar, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %52

; <label>:43                                      ; preds = %36
  %44 = load i32* %i, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [100 x i32]* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 29), i32 0, i64 %45
  %47 = load i32* %46, align 4
  %48 = load i32* %ch, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %52

; <label>:50                                      ; preds = %43
  %51 = load i32* %i, align 4
  store i32 %51, i32* %ch, align 4
  br label %53

; <label>:52                                      ; preds = %43, %36
  br label %32

; <label>:53                                      ; preds = %50, %32
  br label %54

; <label>:54                                      ; preds = %53, %25
  %55 = load i32* %ch, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds [100 x [11 x i8]]* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 28), i32 0, i64 %56
  %58 = getelementptr inbounds [11 x i8]* %57, i32 0, i32 0
  store i8* %58, i8** %scharp, align 8
  br label %59

; <label>:59                                      ; preds = %67, %54
  %60 = load i8** %scharp, align 8
  %61 = getelementptr inbounds i8* %60, i32 1
  store i8* %61, i8** %scharp, align 8
  %62 = load i8* %60
  %63 = load i8** %1, align 8
  %64 = getelementptr inbounds i8* %63, i32 1
  store i8* %64, i8** %1, align 8
  store i8 %62, i8* %63
  %65 = sext i8 %62 to i32
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

; <label>:67                                      ; preds = %59
  br label %59

; <label>:68                                      ; preds = %59
  %69 = load i8** %1, align 8
  %70 = getelementptr inbounds i8* %69, i32 -1
  store i8* %70, i8** %1, align 8
  br label %71

; <label>:71                                      ; preds = %68, %20
  br label %5

; <label>:72                                      ; preds = %15
  %73 = load i8** %1, align 8
  store i8 0, i8* %73
  %74 = load i32* %3, align 4
  %75 = icmp sle i32 %74, 0
  %76 = zext i1 %75 to i32
  ret i32 %76
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...)

define i64 @whatcap(i8* %word) nounwind uwtable {
  %1 = alloca i64, align 8
  %2 = alloca i8*, align 8
  %p = alloca i8*, align 8
  store i8* %word, i8** %2, align 8
  %3 = load i8** %2, align 8
  store i8* %3, i8** %p, align 8
  br label %4

; <label>:4                                       ; preds = %17, %0
  %5 = load i8** %p, align 8
  %6 = load i8* %5
  %7 = icmp ne i8 %6, 0
  br i1 %7, label %8, label %20

; <label>:8                                       ; preds = %4
  %9 = load i8** %p, align 8
  %10 = load i8* %9
  %11 = zext i8 %10 to i64
  %12 = getelementptr inbounds [228 x i8]* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 25), i32 0, i64 %11
  %13 = load i8* %12, align 1
  %14 = icmp ne i8 %13, 0
  br i1 %14, label %15, label %16

; <label>:15                                      ; preds = %8
  br label %20

; <label>:16                                      ; preds = %8
  br label %17

; <label>:17                                      ; preds = %16
  %18 = load i8** %p, align 8
  %19 = getelementptr inbounds i8* %18, i32 1
  store i8* %19, i8** %p, align 8
  br label %4

; <label>:20                                      ; preds = %15, %4
  %21 = load i8** %p, align 8
  %22 = load i8* %21
  %23 = zext i8 %22 to i32
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

; <label>:25                                      ; preds = %20
  store i64 268435456, i64* %1
  br label %79

; <label>:26                                      ; preds = %20
  br label %27

; <label>:27                                      ; preds = %40, %26
  %28 = load i8** %p, align 8
  %29 = load i8* %28
  %30 = icmp ne i8 %29, 0
  br i1 %30, label %31, label %43

; <label>:31                                      ; preds = %27
  %32 = load i8** %p, align 8
  %33 = load i8* %32
  %34 = zext i8 %33 to i64
  %35 = getelementptr inbounds [228 x i8]* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 24), i32 0, i64 %34
  %36 = load i8* %35, align 1
  %37 = icmp ne i8 %36, 0
  br i1 %37, label %38, label %39

; <label>:38                                      ; preds = %31
  br label %43

; <label>:39                                      ; preds = %31
  br label %40

; <label>:40                                      ; preds = %39
  %41 = load i8** %p, align 8
  %42 = getelementptr inbounds i8* %41, i32 1
  store i8* %42, i8** %p, align 8
  br label %27

; <label>:43                                      ; preds = %38, %27
  %44 = load i8** %p, align 8
  %45 = load i8* %44
  %46 = zext i8 %45 to i32
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %78

; <label>:48                                      ; preds = %43
  %49 = load i8** %2, align 8
  %50 = getelementptr inbounds i8* %49, i64 0
  %51 = load i8* %50
  %52 = zext i8 %51 to i64
  %53 = getelementptr inbounds [228 x i8]* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 24), i32 0, i64 %52
  %54 = load i8* %53, align 1
  %55 = icmp ne i8 %54, 0
  br i1 %55, label %56, label %77

; <label>:56                                      ; preds = %48
  %57 = load i8** %2, align 8
  %58 = getelementptr inbounds i8* %57, i64 1
  store i8* %58, i8** %p, align 8
  br label %59

; <label>:59                                      ; preds = %73, %56
  %60 = load i8** %p, align 8
  %61 = load i8* %60
  %62 = zext i8 %61 to i32
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %76

; <label>:64                                      ; preds = %59
  %65 = load i8** %p, align 8
  %66 = load i8* %65
  %67 = zext i8 %66 to i64
  %68 = getelementptr inbounds [228 x i8]* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 24), i32 0, i64 %67
  %69 = load i8* %68, align 1
  %70 = icmp ne i8 %69, 0
  br i1 %70, label %71, label %72

; <label>:71                                      ; preds = %64
  store i64 805306368, i64* %1
  br label %79

; <label>:72                                      ; preds = %64
  br label %73

; <label>:73                                      ; preds = %72
  %74 = load i8** %p, align 8
  %75 = getelementptr inbounds i8* %74, i32 1
  store i8* %75, i8** %p, align 8
  br label %59

; <label>:76                                      ; preds = %59
  store i64 536870912, i64* %1
  br label %79

; <label>:77                                      ; preds = %48
  store i64 0, i64* %1
  br label %79

; <label>:78                                      ; preds = %43
  store i64 805306368, i64* %1
  br label %79

; <label>:79                                      ; preds = %78, %77, %76, %71, %25
  %80 = load i64* %1
  ret i64 %80
}

declare i8* @mymalloc(i32)

declare i8* @strcpy(i8*, i8*) nounwind

define void @chupcase(i8* %s) nounwind uwtable {
  %1 = alloca i8*, align 8
  %is = alloca i8*, align 8
  store i8* %s, i8** %1, align 8
  %2 = load i8** %1, align 8
  %3 = call i8* @strtosichar(i8* %2, i32 1)
  store i8* %3, i8** %is, align 8
  %4 = load i8** %is, align 8
  call void (...)* bitcast (void (i8*)* @upcase to void (...)*)(i8* %4)
  %5 = load i8** %1, align 8
  %6 = load i8** %is, align 8
  %7 = load i8** %1, align 8
  %8 = call i64 @strlen(i8* %7) nounwind readonly
  %9 = add i64 %8, 1
  %10 = trunc i64 %9 to i32
  %11 = call i32 @ichartostr(i8* %5, i8* %6, i32 %10, i32 1)
  ret void
}

define i32 @addvheader(%struct.dent* %dp) nounwind uwtable {
  %1 = alloca i32, align 4
  %2 = alloca %struct.dent*, align 8
  %tdent = alloca %struct.dent*, align 8
  store %struct.dent* %dp, %struct.dent** %2, align 8
  %3 = call i8* @mymalloc(i32 24)
  %4 = bitcast i8* %3 to %struct.dent*
  store %struct.dent* %4, %struct.dent** %tdent, align 8
  %5 = load %struct.dent** %tdent, align 8
  %6 = icmp eq %struct.dent* %5, null
  br i1 %6, label %7, label %13

; <label>:7                                       ; preds = %0
  %8 = load %struct._IO_FILE** @stderr, align 8
  %9 = load %struct.dent** %2, align 8
  %10 = getelementptr inbounds %struct.dent* %9, i32 0, i32 1
  %11 = load i8** %10, align 8
  %12 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([42 x i8]* @.str3, i32 0, i32 0), i8* %11)
  store i32 -1, i32* %1
  br label %74

; <label>:13                                      ; preds = %0
  %14 = load %struct.dent** %tdent, align 8
  %15 = load %struct.dent** %2, align 8
  %16 = bitcast %struct.dent* %14 to i8*
  %17 = bitcast %struct.dent* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 24, i32 8, i1 false)
  %18 = load %struct.dent** %tdent, align 8
  %19 = getelementptr inbounds %struct.dent* %18, i32 0, i32 2
  %20 = getelementptr inbounds [1 x i64]* %19, i32 0, i64 0
  %21 = load i64* %20, align 8
  %22 = and i64 %21, 805306368
  %23 = icmp ne i64 %22, 805306368
  br i1 %23, label %24, label %27

; <label>:24                                      ; preds = %13
  %25 = load %struct.dent** %tdent, align 8
  %26 = getelementptr inbounds %struct.dent* %25, i32 0, i32 1
  store i8* null, i8** %26, align 8
  br label %57

; <label>:27                                      ; preds = %13
  %28 = load %struct.dent** %tdent, align 8
  %29 = getelementptr inbounds %struct.dent* %28, i32 0, i32 1
  %30 = load i8** %29, align 8
  %31 = call i64 @strlen(i8* %30) nounwind readonly
  %32 = trunc i64 %31 to i32
  %33 = add i32 %32, 1
  %34 = call i8* @mymalloc(i32 %33)
  %35 = load %struct.dent** %tdent, align 8
  %36 = getelementptr inbounds %struct.dent* %35, i32 0, i32 1
  store i8* %34, i8** %36, align 8
  %37 = load %struct.dent** %tdent, align 8
  %38 = getelementptr inbounds %struct.dent* %37, i32 0, i32 1
  %39 = load i8** %38, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %49

; <label>:41                                      ; preds = %27
  %42 = load %struct._IO_FILE** @stderr, align 8
  %43 = load %struct.dent** %2, align 8
  %44 = getelementptr inbounds %struct.dent* %43, i32 0, i32 1
  %45 = load i8** %44, align 8
  %46 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([42 x i8]* @.str3, i32 0, i32 0), i8* %45)
  %47 = load %struct.dent** %tdent, align 8
  %48 = bitcast %struct.dent* %47 to i8*
  call void @myfree(i8* %48)
  store i32 -1, i32* %1
  br label %74

; <label>:49                                      ; preds = %27
  %50 = load %struct.dent** %tdent, align 8
  %51 = getelementptr inbounds %struct.dent* %50, i32 0, i32 1
  %52 = load i8** %51, align 8
  %53 = load %struct.dent** %2, align 8
  %54 = getelementptr inbounds %struct.dent* %53, i32 0, i32 1
  %55 = load i8** %54, align 8
  %56 = call i8* @strcpy(i8* %52, i8* %55) nounwind
  br label %57

; <label>:57                                      ; preds = %49, %24
  %58 = load %struct.dent** %2, align 8
  %59 = getelementptr inbounds %struct.dent* %58, i32 0, i32 1
  %60 = load i8** %59, align 8
  call void @chupcase(i8* %60)
  %61 = load %struct.dent** %tdent, align 8
  %62 = load %struct.dent** %2, align 8
  %63 = getelementptr inbounds %struct.dent* %62, i32 0, i32 0
  store %struct.dent* %61, %struct.dent** %63, align 8
  %64 = load %struct.dent** %2, align 8
  %65 = getelementptr inbounds %struct.dent* %64, i32 0, i32 2
  %66 = getelementptr inbounds [1 x i64]* %65, i32 0, i64 0
  %67 = load i64* %66, align 8
  %68 = and i64 %67, -805306369
  store i64 %68, i64* %66, align 8
  %69 = load %struct.dent** %2, align 8
  %70 = getelementptr inbounds %struct.dent* %69, i32 0, i32 2
  %71 = getelementptr inbounds [1 x i64]* %70, i32 0, i64 0
  %72 = load i64* %71, align 8
  %73 = or i64 %72, 1342177280
  store i64 %73, i64* %71, align 8
  store i32 0, i32* %1
  br label %74

; <label>:74                                      ; preds = %57, %41, %7
  %75 = load i32* %1
  ret i32 %75
}

declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) nounwind

declare void @myfree(i8*)

define i32 @combinecaps(%struct.dent* %hdrp, %struct.dent* %newp) nounwind uwtable {
  %1 = alloca i32, align 4
  %2 = alloca %struct.dent*, align 8
  %3 = alloca %struct.dent*, align 8
  %oldp = alloca %struct.dent*, align 8
  %tdent = alloca %struct.dent*, align 8
  %retval = alloca i32, align 4
  store %struct.dent* %hdrp, %struct.dent** %2, align 8
  store %struct.dent* %newp, %struct.dent** %3, align 8
  store i32 0, i32* %retval, align 4
  %4 = load %struct.dent** %2, align 8
  store %struct.dent* %4, %struct.dent** %oldp, align 8
  %5 = load %struct.dent** %oldp, align 8
  %6 = getelementptr inbounds %struct.dent* %5, i32 0, i32 2
  %7 = getelementptr inbounds [1 x i64]* %6, i32 0, i64 0
  %8 = load i64* %7, align 8
  %9 = and i64 %8, 1879048192
  %10 = icmp eq i64 %9, 1342177280
  br i1 %10, label %11, label %32

; <label>:11                                      ; preds = %0
  br label %12

; <label>:12                                      ; preds = %30, %11
  %13 = load %struct.dent** %oldp, align 8
  %14 = getelementptr inbounds %struct.dent* %13, i32 0, i32 2
  %15 = getelementptr inbounds [1 x i64]* %14, i32 0, i64 0
  %16 = load i64* %15, align 8
  %17 = and i64 %16, 1073741824
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %31

; <label>:19                                      ; preds = %12
  %20 = load %struct.dent** %oldp, align 8
  %21 = getelementptr inbounds %struct.dent* %20, i32 0, i32 0
  %22 = load %struct.dent** %21, align 8
  store %struct.dent* %22, %struct.dent** %oldp, align 8
  %23 = load %struct.dent** %2, align 8
  %24 = load %struct.dent** %oldp, align 8
  %25 = load %struct.dent** %3, align 8
  %26 = call i32 @combine_two_entries(%struct.dent* %23, %struct.dent* %24, %struct.dent* %25)
  store i32 %26, i32* %retval, align 4
  %27 = load i32* %retval, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

; <label>:29                                      ; preds = %19
  br label %31

; <label>:30                                      ; preds = %19
  br label %12

; <label>:31                                      ; preds = %29, %12
  br label %37

; <label>:32                                      ; preds = %0
  %33 = load %struct.dent** %2, align 8
  %34 = load %struct.dent** %oldp, align 8
  %35 = load %struct.dent** %3, align 8
  %36 = call i32 @combine_two_entries(%struct.dent* %33, %struct.dent* %34, %struct.dent* %35)
  store i32 %36, i32* %retval, align 4
  br label %37

; <label>:37                                      ; preds = %32, %31
  %38 = load i32* %retval, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %113

; <label>:40                                      ; preds = %37
  %41 = load %struct.dent** %2, align 8
  %42 = load %struct.dent** %oldp, align 8
  %43 = load %struct.dent** %3, align 8
  call void @forcevheader(%struct.dent* %41, %struct.dent* %42, %struct.dent* %43)
  %44 = call i8* @mymalloc(i32 24)
  %45 = bitcast i8* %44 to %struct.dent*
  store %struct.dent* %45, %struct.dent** %tdent, align 8
  %46 = load %struct.dent** %tdent, align 8
  %47 = icmp eq %struct.dent* %46, null
  br i1 %47, label %48, label %54

; <label>:48                                      ; preds = %40
  %49 = load %struct._IO_FILE** @stderr, align 8
  %50 = load %struct.dent** %3, align 8
  %51 = getelementptr inbounds %struct.dent* %50, i32 0, i32 1
  %52 = load i8** %51, align 8
  %53 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %49, i8* getelementptr inbounds ([42 x i8]* @.str3, i32 0, i32 0), i8* %52)
  store i32 -1, i32* %1
  br label %115

; <label>:54                                      ; preds = %40
  %55 = load %struct.dent** %tdent, align 8
  %56 = load %struct.dent** %3, align 8
  %57 = bitcast %struct.dent* %55 to i8*
  %58 = bitcast %struct.dent* %56 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %57, i8* %58, i64 24, i32 8, i1 false)
  %59 = load %struct.dent** %2, align 8
  %60 = getelementptr inbounds %struct.dent* %59, i32 0, i32 0
  %61 = load %struct.dent** %60, align 8
  %62 = load %struct.dent** %tdent, align 8
  %63 = getelementptr inbounds %struct.dent* %62, i32 0, i32 0
  store %struct.dent* %61, %struct.dent** %63, align 8
  %64 = load %struct.dent** %tdent, align 8
  %65 = load %struct.dent** %2, align 8
  %66 = getelementptr inbounds %struct.dent* %65, i32 0, i32 0
  store %struct.dent* %64, %struct.dent** %66, align 8
  %67 = load %struct.dent** %2, align 8
  %68 = getelementptr inbounds %struct.dent* %67, i32 0, i32 2
  %69 = getelementptr inbounds [1 x i64]* %68, i32 0, i64 0
  %70 = load i64* %69, align 8
  %71 = and i64 %70, 1073741824
  %72 = load %struct.dent** %tdent, align 8
  %73 = getelementptr inbounds %struct.dent* %72, i32 0, i32 2
  %74 = getelementptr inbounds [1 x i64]* %73, i32 0, i64 0
  %75 = load i64* %74, align 8
  %76 = or i64 %75, %71
  store i64 %76, i64* %74, align 8
  %77 = load %struct.dent** %2, align 8
  %78 = getelementptr inbounds %struct.dent* %77, i32 0, i32 2
  %79 = getelementptr inbounds [1 x i64]* %78, i32 0, i64 0
  %80 = load i64* %79, align 8
  %81 = or i64 %80, 1073741824
  store i64 %81, i64* %79, align 8
  %82 = load %struct.dent** %2, align 8
  %83 = load %struct.dent** %3, align 8
  call void @combineaffixes(%struct.dent* %82, %struct.dent* %83)
  %84 = load %struct.dent** %3, align 8
  %85 = getelementptr inbounds %struct.dent* %84, i32 0, i32 2
  %86 = getelementptr inbounds [1 x i64]* %85, i32 0, i64 0
  %87 = load i64* %86, align 8
  %88 = and i64 %87, 134217728
  %89 = load %struct.dent** %2, align 8
  %90 = getelementptr inbounds %struct.dent* %89, i32 0, i32 2
  %91 = getelementptr inbounds [1 x i64]* %90, i32 0, i64 0
  %92 = load i64* %91, align 8
  %93 = or i64 %92, %88
  store i64 %93, i64* %91, align 8
  %94 = load %struct.dent** %3, align 8
  %95 = getelementptr inbounds %struct.dent* %94, i32 0, i32 2
  %96 = getelementptr inbounds [1 x i64]* %95, i32 0, i64 0
  %97 = load i64* %96, align 8
  %98 = and i64 %97, 805306368
  %99 = icmp eq i64 %98, 805306368
  br i1 %99, label %100, label %106

; <label>:100                                     ; preds = %54
  %101 = load %struct.dent** %3, align 8
  %102 = getelementptr inbounds %struct.dent* %101, i32 0, i32 1
  %103 = load i8** %102, align 8
  %104 = load %struct.dent** %tdent, align 8
  %105 = getelementptr inbounds %struct.dent* %104, i32 0, i32 1
  store i8* %103, i8** %105, align 8
  br label %112

; <label>:106                                     ; preds = %54
  %107 = load %struct.dent** %tdent, align 8
  %108 = getelementptr inbounds %struct.dent* %107, i32 0, i32 1
  store i8* null, i8** %108, align 8
  %109 = load %struct.dent** %3, align 8
  %110 = getelementptr inbounds %struct.dent* %109, i32 0, i32 1
  %111 = load i8** %110, align 8
  call void @myfree(i8* %111)
  br label %112

; <label>:112                                     ; preds = %106, %100
  br label %113

; <label>:113                                     ; preds = %112, %37
  %114 = load i32* %retval, align 4
  store i32 %114, i32* %1
  br label %115

; <label>:115                                     ; preds = %113, %48
  %116 = load i32* %1
  ret i32 %116
}

define internal i32 @combine_two_entries(%struct.dent* %hdrp, %struct.dent* %oldp, %struct.dent* %newp) nounwind uwtable {
  %1 = alloca i32, align 4
  %2 = alloca %struct.dent*, align 8
  %3 = alloca %struct.dent*, align 8
  %4 = alloca %struct.dent*, align 8
  store %struct.dent* %hdrp, %struct.dent** %2, align 8
  store %struct.dent* %oldp, %struct.dent** %3, align 8
  store %struct.dent* %newp, %struct.dent** %4, align 8
  %5 = load %struct.dent** %3, align 8
  %6 = load %struct.dent** %4, align 8
  %7 = call i32 @acoversb(%struct.dent* %5, %struct.dent* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %35

; <label>:9                                       ; preds = %0
  %10 = load %struct.dent** %3, align 8
  %11 = load %struct.dent** %4, align 8
  call void @combineaffixes(%struct.dent* %10, %struct.dent* %11)
  %12 = load %struct.dent** %4, align 8
  %13 = getelementptr inbounds %struct.dent* %12, i32 0, i32 2
  %14 = getelementptr inbounds [1 x i64]* %13, i32 0, i64 0
  %15 = load i64* %14, align 8
  %16 = and i64 %15, 134217728
  %17 = load %struct.dent** %3, align 8
  %18 = getelementptr inbounds %struct.dent* %17, i32 0, i32 2
  %19 = getelementptr inbounds [1 x i64]* %18, i32 0, i64 0
  %20 = load i64* %19, align 8
  %21 = or i64 %20, %16
  store i64 %21, i64* %19, align 8
  %22 = load %struct.dent** %4, align 8
  %23 = getelementptr inbounds %struct.dent* %22, i32 0, i32 2
  %24 = getelementptr inbounds [1 x i64]* %23, i32 0, i64 0
  %25 = load i64* %24, align 8
  %26 = and i64 %25, 134217728
  %27 = load %struct.dent** %2, align 8
  %28 = getelementptr inbounds %struct.dent* %27, i32 0, i32 2
  %29 = getelementptr inbounds [1 x i64]* %28, i32 0, i64 0
  %30 = load i64* %29, align 8
  %31 = or i64 %30, %26
  store i64 %31, i64* %29, align 8
  %32 = load %struct.dent** %4, align 8
  %33 = getelementptr inbounds %struct.dent* %32, i32 0, i32 1
  %34 = load i8** %33, align 8
  call void @myfree(i8* %34)
  store i32 1, i32* %1
  br label %111

; <label>:35                                      ; preds = %0
  %36 = load %struct.dent** %4, align 8
  %37 = load %struct.dent** %3, align 8
  %38 = call i32 @acoversb(%struct.dent* %36, %struct.dent* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %110

; <label>:40                                      ; preds = %35
  %41 = load %struct.dent** %4, align 8
  %42 = load %struct.dent** %3, align 8
  call void @combineaffixes(%struct.dent* %41, %struct.dent* %42)
  %43 = load %struct.dent** %3, align 8
  %44 = getelementptr inbounds %struct.dent* %43, i32 0, i32 2
  %45 = getelementptr inbounds [1 x i64]* %44, i32 0, i64 0
  %46 = load i64* %45, align 8
  %47 = and i64 %46, 1207959552
  %48 = load %struct.dent** %4, align 8
  %49 = getelementptr inbounds %struct.dent* %48, i32 0, i32 2
  %50 = getelementptr inbounds [1 x i64]* %49, i32 0, i64 0
  %51 = load i64* %50, align 8
  %52 = or i64 %51, %47
  store i64 %52, i64* %50, align 8
  %53 = load %struct.dent** %4, align 8
  %54 = getelementptr inbounds %struct.dent* %53, i32 0, i32 2
  %55 = getelementptr inbounds [1 x i64]* %54, i32 0, i64 0
  %56 = load i64* %55, align 8
  %57 = and i64 %56, 134217728
  %58 = load %struct.dent** %2, align 8
  %59 = getelementptr inbounds %struct.dent* %58, i32 0, i32 2
  %60 = getelementptr inbounds [1 x i64]* %59, i32 0, i64 0
  %61 = load i64* %60, align 8
  %62 = or i64 %61, %57
  store i64 %62, i64* %60, align 8
  %63 = load %struct.dent** %3, align 8
  %64 = getelementptr inbounds %struct.dent* %63, i32 0, i32 0
  %65 = load %struct.dent** %64, align 8
  %66 = load %struct.dent** %4, align 8
  %67 = getelementptr inbounds %struct.dent* %66, i32 0, i32 0
  store %struct.dent* %65, %struct.dent** %67, align 8
  %68 = load %struct.dent** %3, align 8
  %69 = getelementptr inbounds %struct.dent* %68, i32 0, i32 1
  %70 = load i8** %69, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %80

; <label>:72                                      ; preds = %40
  %73 = load %struct.dent** %3, align 8
  %74 = getelementptr inbounds %struct.dent* %73, i32 0, i32 1
  %75 = load i8** %74, align 8
  %76 = load %struct.dent** %4, align 8
  %77 = getelementptr inbounds %struct.dent* %76, i32 0, i32 1
  %78 = load i8** %77, align 8
  %79 = call i8* @strcpy(i8* %75, i8* %78) nounwind
  br label %80

; <label>:80                                      ; preds = %72, %40
  %81 = load %struct.dent** %4, align 8
  %82 = getelementptr inbounds %struct.dent* %81, i32 0, i32 1
  %83 = load i8** %82, align 8
  call void @myfree(i8* %83)
  %84 = load %struct.dent** %3, align 8
  %85 = getelementptr inbounds %struct.dent* %84, i32 0, i32 1
  %86 = load i8** %85, align 8
  %87 = load %struct.dent** %4, align 8
  %88 = getelementptr inbounds %struct.dent* %87, i32 0, i32 1
  store i8* %86, i8** %88, align 8
  %89 = load %struct.dent** %3, align 8
  %90 = load %struct.dent** %4, align 8
  %91 = bitcast %struct.dent* %89 to i8*
  %92 = bitcast %struct.dent* %90 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %91, i8* %92, i64 24, i32 8, i1 false)
  %93 = load %struct.dent** %4, align 8
  %94 = getelementptr inbounds %struct.dent* %93, i32 0, i32 2
  %95 = getelementptr inbounds [1 x i64]* %94, i32 0, i64 0
  %96 = load i64* %95, align 8
  %97 = and i64 %96, 805306368
  %98 = icmp eq i64 %97, 805306368
  br i1 %98, label %99, label %109

; <label>:99                                      ; preds = %80
  %100 = load %struct.dent** %2, align 8
  %101 = getelementptr inbounds %struct.dent* %100, i32 0, i32 2
  %102 = getelementptr inbounds [1 x i64]* %101, i32 0, i64 0
  %103 = load i64* %102, align 8
  %104 = and i64 %103, 1879048192
  %105 = icmp ne i64 %104, 1342177280
  br i1 %105, label %106, label %109

; <label>:106                                     ; preds = %99
  %107 = load %struct.dent** %2, align 8
  %108 = call i32 (...)* bitcast (i32 (%struct.dent*)* @addvheader to i32 (...)*)(%struct.dent* %107)
  br label %109

; <label>:109                                     ; preds = %106, %99, %80
  store i32 1, i32* %1
  br label %111

; <label>:110                                     ; preds = %35
  store i32 0, i32* %1
  br label %111

; <label>:111                                     ; preds = %110, %109, %9
  %112 = load i32* %1
  ret i32 %112
}

define internal void @forcevheader(%struct.dent* %hdrp, %struct.dent* %oldp, %struct.dent* %newp) nounwind uwtable {
  %1 = alloca %struct.dent*, align 8
  %2 = alloca %struct.dent*, align 8
  %3 = alloca %struct.dent*, align 8
  store %struct.dent* %hdrp, %struct.dent** %1, align 8
  store %struct.dent* %oldp, %struct.dent** %2, align 8
  store %struct.dent* %newp, %struct.dent** %3, align 8
  %4 = load %struct.dent** %1, align 8
  %5 = getelementptr inbounds %struct.dent* %4, i32 0, i32 2
  %6 = getelementptr inbounds [1 x i64]* %5, i32 0, i64 0
  %7 = load i64* %6, align 8
  %8 = and i64 %7, 1879048192
  %9 = icmp eq i64 %8, 268435456
  br i1 %9, label %10, label %23

; <label>:10                                      ; preds = %0
  %11 = load %struct.dent** %2, align 8
  %12 = getelementptr inbounds %struct.dent* %11, i32 0, i32 2
  %13 = getelementptr inbounds [1 x i64]* %12, i32 0, i64 0
  %14 = load i64* %13, align 8
  %15 = load %struct.dent** %3, align 8
  %16 = getelementptr inbounds %struct.dent* %15, i32 0, i32 2
  %17 = getelementptr inbounds [1 x i64]* %16, i32 0, i64 0
  %18 = load i64* %17, align 8
  %19 = xor i64 %14, %18
  %20 = and i64 %19, 134217728
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

; <label>:22                                      ; preds = %10
  br label %34

; <label>:23                                      ; preds = %10, %0
  %24 = load %struct.dent** %1, align 8
  %25 = getelementptr inbounds %struct.dent* %24, i32 0, i32 2
  %26 = getelementptr inbounds [1 x i64]* %25, i32 0, i64 0
  %27 = load i64* %26, align 8
  %28 = and i64 %27, 1879048192
  %29 = icmp ne i64 %28, 1342177280
  br i1 %29, label %30, label %33

; <label>:30                                      ; preds = %23
  %31 = load %struct.dent** %1, align 8
  %32 = call i32 (...)* bitcast (i32 (%struct.dent*)* @addvheader to i32 (...)*)(%struct.dent* %31)
  br label %33

; <label>:33                                      ; preds = %30, %23
  br label %34

; <label>:34                                      ; preds = %33, %22
  ret void
}

define internal void @combineaffixes(%struct.dent* %ent1, %struct.dent* %ent2) nounwind uwtable {
  %1 = alloca %struct.dent*, align 8
  %2 = alloca %struct.dent*, align 8
  store %struct.dent* %ent1, %struct.dent** %1, align 8
  store %struct.dent* %ent2, %struct.dent** %2, align 8
  %3 = load %struct.dent** %2, align 8
  %4 = getelementptr inbounds %struct.dent* %3, i32 0, i32 2
  %5 = getelementptr inbounds [1 x i64]* %4, i32 0, i64 0
  %6 = load i64* %5, align 8
  %7 = and i64 %6, -2080374785
  %8 = load %struct.dent** %1, align 8
  %9 = getelementptr inbounds %struct.dent* %8, i32 0, i32 2
  %10 = getelementptr inbounds [1 x i64]* %9, i32 0, i64 0
  %11 = load i64* %10, align 8
  %12 = or i64 %11, %7
  store i64 %12, i64* %10, align 8
  ret void
}

define void @upcase(i8* %s) nounwind uwtable {
  %1 = alloca i8*, align 8
  store i8* %s, i8** %1, align 8
  br label %2

; <label>:2                                       ; preds = %6, %0
  %3 = load i8** %1, align 8
  %4 = load i8* %3
  %5 = icmp ne i8 %4, 0
  br i1 %5, label %6, label %15

; <label>:6                                       ; preds = %2
  %7 = load i8** %1, align 8
  %8 = load i8* %7
  %9 = zext i8 %8 to i64
  %10 = getelementptr inbounds [228 x i8]* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 22), i32 0, i64 %9
  %11 = load i8* %10, align 1
  %12 = load i8** %1, align 8
  store i8 %11, i8* %12
  %13 = load i8** %1, align 8
  %14 = getelementptr inbounds i8* %13, i32 1
  store i8* %14, i8** %1, align 8
  br label %2

; <label>:15                                      ; preds = %2
  ret void
}

define void @lowcase(i8* %s) nounwind uwtable {
  %1 = alloca i8*, align 8
  store i8* %s, i8** %1, align 8
  br label %2

; <label>:2                                       ; preds = %6, %0
  %3 = load i8** %1, align 8
  %4 = load i8* %3
  %5 = icmp ne i8 %4, 0
  br i1 %5, label %6, label %15

; <label>:6                                       ; preds = %2
  %7 = load i8** %1, align 8
  %8 = load i8* %7
  %9 = zext i8 %8 to i64
  %10 = getelementptr inbounds [228 x i8]* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 21), i32 0, i64 %9
  %11 = load i8* %10, align 1
  %12 = load i8** %1, align 8
  store i8 %11, i8* %12
  %13 = load i8** %1, align 8
  %14 = getelementptr inbounds i8* %13, i32 1
  store i8* %14, i8** %1, align 8
  br label %2

; <label>:15                                      ; preds = %2
  ret void
}

define i8* @strtosichar(i8* %in, i32 %canonical) nounwind uwtable {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  store i8* %in, i8** %1, align 8
  store i32 %canonical, i32* %2, align 4
  %3 = load i8** %1, align 8
  %4 = load i32* %2, align 4
  %5 = call i32 (...)* bitcast (i32 (i8*, i8*, i32, i32)* @strtoichar to i32 (...)*)(i8* getelementptr inbounds ([184 x i8]* @strtosichar.out, i32 0, i32 0), i8* %3, i32 184, i32 %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %11

; <label>:7                                       ; preds = %0
  %8 = load %struct._IO_FILE** @stderr, align 8
  %9 = load i8** %1, align 8
  %10 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([51 x i8]* @.str, i32 0, i32 0), i8* %9, i32 944, i8* getelementptr inbounds ([85 x i8]* @.str1, i32 0, i32 0))
  br label %11

; <label>:11                                      ; preds = %7, %0
  ret i8* getelementptr inbounds ([184 x i8]* @strtosichar.out, i32 0, i32 0)
}

define void @toutent(%struct._IO_FILE* %toutfile, %struct.dent* %hent, i32 %onlykeep) nounwind uwtable {
  %1 = alloca %struct._IO_FILE*, align 8
  %2 = alloca %struct.dent*, align 8
  %3 = alloca i32, align 4
  %cent = alloca %struct.dent*, align 8
  %wbuf = alloca [120 x i8], align 16
  store %struct._IO_FILE* %toutfile, %struct._IO_FILE** %1, align 8
  store %struct.dent* %hent, %struct.dent** %2, align 8
  store i32 %onlykeep, i32* %3, align 4
  %4 = load %struct.dent** %2, align 8
  store %struct.dent* %4, %struct.dent** %cent, align 8
  %5 = getelementptr inbounds [120 x i8]* %wbuf, i32 0, i32 0
  %6 = load %struct.dent** %cent, align 8
  %7 = getelementptr inbounds %struct.dent* %6, i32 0, i32 1
  %8 = load i8** %7, align 8
  %9 = call i32 @strtoichar(i8* %5, i8* %8, i32 100, i32 1)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

; <label>:11                                      ; preds = %0
  %12 = load %struct._IO_FILE** @stderr, align 8
  %13 = load %struct.dent** %cent, align 8
  %14 = getelementptr inbounds %struct.dent* %13, i32 0, i32 1
  %15 = load i8** %14, align 8
  %16 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([51 x i8]* @.str, i32 0, i32 0), i8* %15, i32 700, i8* getelementptr inbounds ([85 x i8]* @.str1, i32 0, i32 0))
  br label %17

; <label>:17                                      ; preds = %11, %0
  br label %18

; <label>:18                                      ; preds = %89, %17
  %19 = load i32* %3, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

; <label>:21                                      ; preds = %18
  %22 = load %struct.dent** %cent, align 8
  %23 = getelementptr inbounds %struct.dent* %22, i32 0, i32 2
  %24 = getelementptr inbounds [1 x i64]* %23, i32 0, i64 0
  %25 = load i64* %24, align 8
  %26 = and i64 %25, 134217728
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %77

; <label>:28                                      ; preds = %21, %18
  %29 = load %struct.dent** %cent, align 8
  %30 = getelementptr inbounds %struct.dent* %29, i32 0, i32 2
  %31 = getelementptr inbounds [1 x i64]* %30, i32 0, i64 0
  %32 = load i64* %31, align 8
  %33 = and i64 %32, 805306368
  switch i64 %33, label %76 [
    i64 0, label %34
    i64 268435456, label %40
    i64 536870912, label %58
    i64 805306368, label %70
  ]

; <label>:34                                      ; preds = %28
  %35 = getelementptr inbounds [120 x i8]* %wbuf, i32 0, i32 0
  call void (...)* bitcast (void (i8*)* @lowcase to void (...)*)(i8* %35)
  %36 = load %struct._IO_FILE** %1, align 8
  %37 = getelementptr inbounds [120 x i8]* %wbuf, i32 0, i32 0
  %38 = call i8* @ichartosstr(i8* %37, i32 1)
  %39 = load %struct.dent** %cent, align 8
  call void @toutword(%struct._IO_FILE* %36, i8* %38, %struct.dent* %39)
  br label %76

; <label>:40                                      ; preds = %28
  %41 = load %struct.dent** %cent, align 8
  %42 = getelementptr inbounds %struct.dent* %41, i32 0, i32 2
  %43 = getelementptr inbounds [1 x i64]* %42, i32 0, i64 0
  %44 = load i64* %43, align 8
  %45 = and i64 %44, 1073741824
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %51, label %47

; <label>:47                                      ; preds = %40
  %48 = load %struct.dent** %cent, align 8
  %49 = load %struct.dent** %2, align 8
  %50 = icmp ne %struct.dent* %48, %49
  br i1 %50, label %51, label %57

; <label>:51                                      ; preds = %47, %40
  %52 = getelementptr inbounds [120 x i8]* %wbuf, i32 0, i32 0
  call void (...)* bitcast (void (i8*)* @upcase to void (...)*)(i8* %52)
  %53 = load %struct._IO_FILE** %1, align 8
  %54 = getelementptr inbounds [120 x i8]* %wbuf, i32 0, i32 0
  %55 = call i8* @ichartosstr(i8* %54, i32 1)
  %56 = load %struct.dent** %cent, align 8
  call void @toutword(%struct._IO_FILE* %53, i8* %55, %struct.dent* %56)
  br label %57

; <label>:57                                      ; preds = %51, %47
  br label %76

; <label>:58                                      ; preds = %28
  %59 = getelementptr inbounds [120 x i8]* %wbuf, i32 0, i32 0
  call void (...)* bitcast (void (i8*)* @lowcase to void (...)*)(i8* %59)
  %60 = getelementptr inbounds [120 x i8]* %wbuf, i32 0, i64 0
  %61 = load i8* %60, align 1
  %62 = zext i8 %61 to i64
  %63 = getelementptr inbounds [228 x i8]* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 22), i32 0, i64 %62
  %64 = load i8* %63, align 1
  %65 = getelementptr inbounds [120 x i8]* %wbuf, i32 0, i64 0
  store i8 %64, i8* %65, align 1
  %66 = load %struct._IO_FILE** %1, align 8
  %67 = getelementptr inbounds [120 x i8]* %wbuf, i32 0, i32 0
  %68 = call i8* @ichartosstr(i8* %67, i32 1)
  %69 = load %struct.dent** %cent, align 8
  call void @toutword(%struct._IO_FILE* %66, i8* %68, %struct.dent* %69)
  br label %76

; <label>:70                                      ; preds = %28
  %71 = load %struct._IO_FILE** %1, align 8
  %72 = load %struct.dent** %cent, align 8
  %73 = getelementptr inbounds %struct.dent* %72, i32 0, i32 1
  %74 = load i8** %73, align 8
  %75 = load %struct.dent** %cent, align 8
  call void @toutword(%struct._IO_FILE* %71, i8* %74, %struct.dent* %75)
  br label %76

; <label>:76                                      ; preds = %70, %58, %57, %34, %28
  br label %77

; <label>:77                                      ; preds = %76, %21
  %78 = load %struct.dent** %cent, align 8
  %79 = getelementptr inbounds %struct.dent* %78, i32 0, i32 2
  %80 = getelementptr inbounds [1 x i64]* %79, i32 0, i64 0
  %81 = load i64* %80, align 8
  %82 = and i64 %81, 1073741824
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

; <label>:84                                      ; preds = %77
  %85 = load %struct.dent** %cent, align 8
  %86 = getelementptr inbounds %struct.dent* %85, i32 0, i32 0
  %87 = load %struct.dent** %86, align 8
  store %struct.dent* %87, %struct.dent** %cent, align 8
  br label %89

; <label>:88                                      ; preds = %77
  br label %90

; <label>:89                                      ; preds = %84
  br label %18

; <label>:90                                      ; preds = %88
  ret void
}

define internal void @toutword(%struct._IO_FILE* %toutfile, i8* %word, %struct.dent* %cent) nounwind uwtable {
  %1 = alloca %struct._IO_FILE*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca %struct.dent*, align 8
  %bit = alloca i32, align 4
  store %struct._IO_FILE* %toutfile, %struct._IO_FILE** %1, align 8
  store i8* %word, i8** %2, align 8
  store %struct.dent* %cent, %struct.dent** %3, align 8
  store i32 0, i32* @has_marker, align 4
  %4 = load %struct._IO_FILE** %1, align 8
  %5 = load i8** %2, align 8
  %6 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([3 x i8]* @.str6, i32 0, i32 0), i8* %5)
  store i32 0, i32* %bit, align 4
  br label %7

; <label>:7                                       ; preds = %25, %0
  %8 = load i32* %bit, align 4
  %9 = icmp slt i32 %8, 26
  br i1 %9, label %10, label %28

; <label>:10                                      ; preds = %7
  %11 = load %struct.dent** %3, align 8
  %12 = getelementptr inbounds %struct.dent* %11, i32 0, i32 2
  %13 = getelementptr inbounds [1 x i64]* %12, i32 0, i64 0
  %14 = load i64* %13, align 8
  %15 = load i32* %bit, align 4
  %16 = zext i32 %15 to i64
  %17 = shl i64 1, %16
  %18 = and i64 %14, %17
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

; <label>:20                                      ; preds = %10
  %21 = load %struct._IO_FILE** %1, align 8
  %22 = load i32* %bit, align 4
  %23 = add nsw i32 %22, 65
  call void @flagout(%struct._IO_FILE* %21, i32 %23)
  br label %24

; <label>:24                                      ; preds = %20, %10
  br label %25

; <label>:25                                      ; preds = %24
  %26 = load i32* %bit, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %bit, align 4
  br label %7

; <label>:28                                      ; preds = %7
  %29 = load %struct._IO_FILE** %1, align 8
  %30 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([2 x i8]* @.str7, i32 0, i32 0))
  ret void
}

define i8* @ichartosstr(i8* %in, i32 %canonical) nounwind uwtable {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  store i8* %in, i8** %1, align 8
  store i32 %canonical, i32* %2, align 4
  %3 = load i8** %1, align 8
  %4 = load i32* %2, align 4
  %5 = call i32 (...)* bitcast (i32 (i8*, i8*, i32, i32)* @ichartostr to i32 (...)*)(i8* getelementptr inbounds ([184 x i8]* @ichartosstr.out, i32 0, i32 0), i8* %3, i32 184, i32 %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %10

; <label>:7                                       ; preds = %0
  %8 = load %struct._IO_FILE** @stderr, align 8
  %9 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([51 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([184 x i8]* @ichartosstr.out, i32 0, i32 0), i32 958, i8* getelementptr inbounds ([85 x i8]* @.str1, i32 0, i32 0))
  br label %10

; <label>:10                                      ; preds = %7, %0
  ret i8* getelementptr inbounds ([184 x i8]* @ichartosstr.out, i32 0, i32 0)
}

define i32 @stringcharlen(i8* %bufp, i32 %canonical) nounwind uwtable {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %bufcur = alloca i8*, align 8
  %stringcur = alloca i8*, align 8
  %stringno = alloca i32, align 4
  %lowstringno = alloca i32, align 4
  %highstringno = alloca i32, align 4
  %dupwanted = alloca i32, align 4
  store i8* %bufp, i8** %2, align 8
  store i32 %canonical, i32* %3, align 4
  store i32 0, i32* %lowstringno, align 4
  %4 = load i32* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 12), align 4
  %5 = sub nsw i32 %4, 1
  store i32 %5, i32* %highstringno, align 4
  %6 = load i32* %3, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

; <label>:8                                       ; preds = %0
  br label %11

; <label>:9                                       ; preds = %0
  %10 = load i32* @defdupchar, align 4
  br label %11

; <label>:11                                      ; preds = %9, %8
  %12 = phi i32 [ 0, %8 ], [ %10, %9 ]
  store i32 %12, i32* %dupwanted, align 4
  br label %13

; <label>:13                                      ; preds = %118, %11
  %14 = load i32* %lowstringno, align 4
  %15 = load i32* %highstringno, align 4
  %16 = icmp sle i32 %14, %15
  br i1 %16, label %17, label %119

; <label>:17                                      ; preds = %13
  %18 = load i32* %lowstringno, align 4
  %19 = load i32* %highstringno, align 4
  %20 = add nsw i32 %18, %19
  %21 = ashr i32 %20, 1
  store i32 %21, i32* %stringno, align 4
  %22 = load i32* %stringno, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [100 x [11 x i8]]* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 28), i32 0, i64 %23
  %25 = getelementptr inbounds [11 x i8]* %24, i32 0, i64 0
  store i8* %25, i8** %stringcur, align 8
  %26 = load i8** %2, align 8
  store i8* %26, i8** %bufcur, align 8
  br label %27

; <label>:27                                      ; preds = %43, %17
  %28 = load i8** %stringcur, align 8
  %29 = load i8* %28
  %30 = icmp ne i8 %29, 0
  br i1 %30, label %31, label %46

; <label>:31                                      ; preds = %27
  %32 = load i8** %bufcur, align 8
  %33 = getelementptr inbounds i8* %32, i32 1
  store i8* %33, i8** %bufcur, align 8
  %34 = load i8* %32
  %35 = sext i8 %34 to i32
  %36 = load i8** %stringcur, align 8
  %37 = load i8* %36
  %38 = sext i8 %37 to i32
  %39 = xor i32 %35, %38
  %40 = and i32 %39, 127
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

; <label>:42                                      ; preds = %31
  br label %46

; <label>:43                                      ; preds = %31
  %44 = load i8** %stringcur, align 8
  %45 = getelementptr inbounds i8* %44, i32 1
  store i8* %45, i8** %stringcur, align 8
  br label %27

; <label>:46                                      ; preds = %42, %27
  %47 = load i8** %stringcur, align 8
  %48 = load i8* %47
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %76

; <label>:51                                      ; preds = %46
  %52 = load i32* %stringno, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [100 x i32]* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 30), i32 0, i64 %53
  %55 = load i32* %54, align 4
  %56 = load i32* %dupwanted, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %72

; <label>:58                                      ; preds = %51
  %59 = load i32* %stringno, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [100 x i32]* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 29), i32 0, i64 %60
  %62 = load i32* %61, align 4
  store i32 %62, i32* @laststringch, align 4
  %63 = load i8** %stringcur, align 8
  %64 = load i32* %stringno, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [100 x [11 x i8]]* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 28), i32 0, i64 %65
  %67 = getelementptr inbounds [11 x i8]* %66, i32 0, i64 0
  %68 = ptrtoint i8* %63 to i64
  %69 = ptrtoint i8* %67 to i64
  %70 = sub i64 %68, %69
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %1
  br label %120

; <label>:72                                      ; preds = %51
  %73 = load i8** %stringcur, align 8
  %74 = getelementptr inbounds i8* %73, i32 -1
  store i8* %74, i8** %stringcur, align 8
  br label %75

; <label>:75                                      ; preds = %72
  br label %76

; <label>:76                                      ; preds = %75, %46
  %77 = load i8** %bufcur, align 8
  %78 = getelementptr inbounds i8* %77, i32 -1
  store i8* %78, i8** %bufcur, align 8
  %79 = load i8* %78
  %80 = sext i8 %79 to i32
  %81 = and i32 %80, 127
  %82 = load i8** %stringcur, align 8
  %83 = load i8* %82
  %84 = sext i8 %83 to i32
  %85 = and i32 %84, 127
  %86 = icmp slt i32 %81, %85
  br i1 %86, label %87, label %90

; <label>:87                                      ; preds = %76
  %88 = load i32* %stringno, align 4
  %89 = sub nsw i32 %88, 1
  store i32 %89, i32* %highstringno, align 4
  br label %118

; <label>:90                                      ; preds = %76
  %91 = load i8** %bufcur, align 8
  %92 = load i8* %91
  %93 = sext i8 %92 to i32
  %94 = and i32 %93, 127
  %95 = load i8** %stringcur, align 8
  %96 = load i8* %95
  %97 = sext i8 %96 to i32
  %98 = and i32 %97, 127
  %99 = icmp sgt i32 %94, %98
  br i1 %99, label %100, label %103

; <label>:100                                     ; preds = %90
  %101 = load i32* %stringno, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %lowstringno, align 4
  br label %117

; <label>:103                                     ; preds = %90
  %104 = load i32* %dupwanted, align 4
  %105 = load i32* %stringno, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [100 x i32]* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 30), i32 0, i64 %106
  %108 = load i32* %107, align 4
  %109 = icmp slt i32 %104, %108
  br i1 %109, label %110, label %113

; <label>:110                                     ; preds = %103
  %111 = load i32* %stringno, align 4
  %112 = sub nsw i32 %111, 1
  store i32 %112, i32* %highstringno, align 4
  br label %116

; <label>:113                                     ; preds = %103
  %114 = load i32* %stringno, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %lowstringno, align 4
  br label %116

; <label>:116                                     ; preds = %113, %110
  br label %117

; <label>:117                                     ; preds = %116, %100
  br label %118

; <label>:118                                     ; preds = %117, %87
  br label %13

; <label>:119                                     ; preds = %13
  store i32 -1, i32* @laststringch, align 4
  store i32 0, i32* %1
  br label %120

; <label>:120                                     ; preds = %119, %58
  %121 = load i32* %1
  ret i32 %121
}

define i8* @printichar(i32 %in) nounwind uwtable {
  %1 = alloca i32, align 4
  store i32 %in, i32* %1, align 4
  %2 = load i32* %1, align 4
  %3 = icmp slt i32 %2, 128
  br i1 %3, label %4, label %7

; <label>:4                                       ; preds = %0
  %5 = load i32* %1, align 4
  %6 = trunc i32 %5 to i8
  store i8 %6, i8* getelementptr inbounds ([11 x i8]* @printichar.out, i32 0, i64 0), align 1
  store i8 0, i8* getelementptr inbounds ([11 x i8]* @printichar.out, i32 0, i64 1), align 1
  br label %14

; <label>:7                                       ; preds = %0
  %8 = load i32* %1, align 4
  %9 = sub i32 %8, 128
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds [100 x [11 x i8]]* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 28), i32 0, i64 %10
  %12 = getelementptr inbounds [11 x i8]* %11, i32 0, i32 0
  %13 = call i8* @strcpy(i8* getelementptr inbounds ([11 x i8]* @printichar.out, i32 0, i32 0), i8* %12) nounwind
  br label %14

; <label>:14                                      ; preds = %7, %4
  ret i8* getelementptr inbounds ([11 x i8]* @printichar.out, i32 0, i32 0)
}

define i32 @findfiletype(i8* %name, i32 %searchnames, i32* %deformatter) nounwind uwtable {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %cp = alloca i8*, align 8
  %cplen = alloca i32, align 4
  %i = alloca i32, align 4
  %len = alloca i32, align 4
  store i8* %name, i8** %2, align 8
  store i32 %searchnames, i32* %3, align 4
  store i32* %deformatter, i32** %4, align 8
  %5 = load i8** %2, align 8
  %6 = call i64 @strlen(i8* %5) nounwind readonly
  %7 = trunc i64 %6 to i32
  store i32 %7, i32* %len, align 4
  %8 = load i32* %3, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %46

; <label>:10                                      ; preds = %0
  store i32 0, i32* %i, align 4
  br label %11

; <label>:11                                      ; preds = %42, %10
  %12 = load i32* %i, align 4
  %13 = load i32* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 13), align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %45

; <label>:15                                      ; preds = %11
  %16 = load i8** %2, align 8
  %17 = load i32* %i, align 4
  %18 = sext i32 %17 to i64
  %19 = load %struct.strchartype** @chartypes, align 8
  %20 = getelementptr inbounds %struct.strchartype* %19, i64 %18
  %21 = getelementptr inbounds %struct.strchartype* %20, i32 0, i32 0
  %22 = load i8** %21, align 8
  %23 = call i32 @strcmp(i8* %16, i8* %22) nounwind readonly
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %41

; <label>:25                                      ; preds = %15
  %26 = load i32** %4, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %39

; <label>:28                                      ; preds = %25
  %29 = load i32* %i, align 4
  %30 = sext i32 %29 to i64
  %31 = load %struct.strchartype** @chartypes, align 8
  %32 = getelementptr inbounds %struct.strchartype* %31, i64 %30
  %33 = getelementptr inbounds %struct.strchartype* %32, i32 0, i32 1
  %34 = load i8** %33, align 8
  %35 = call i32 @strcmp(i8* %34, i8* getelementptr inbounds ([4 x i8]* @.str5, i32 0, i32 0)) nounwind readonly
  %36 = icmp eq i32 %35, 0
  %37 = zext i1 %36 to i32
  %38 = load i32** %4, align 8
  store i32 %37, i32* %38
  br label %39

; <label>:39                                      ; preds = %28, %25
  %40 = load i32* %i, align 4
  store i32 %40, i32* %1
  br label %108

; <label>:41                                      ; preds = %15
  br label %42

; <label>:42                                      ; preds = %41
  %43 = load i32* %i, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %i, align 4
  br label %11

; <label>:45                                      ; preds = %11
  br label %46

; <label>:46                                      ; preds = %45, %0
  store i32 0, i32* %i, align 4
  br label %47

; <label>:47                                      ; preds = %104, %46
  %48 = load i32* %i, align 4
  %49 = load i32* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 13), align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %107

; <label>:51                                      ; preds = %47
  %52 = load i32* %i, align 4
  %53 = sext i32 %52 to i64
  %54 = load %struct.strchartype** @chartypes, align 8
  %55 = getelementptr inbounds %struct.strchartype* %54, i64 %53
  %56 = getelementptr inbounds %struct.strchartype* %55, i32 0, i32 2
  %57 = load i8** %56, align 8
  store i8* %57, i8** %cp, align 8
  br label %58

; <label>:58                                      ; preds = %97, %51
  %59 = load i8** %cp, align 8
  %60 = load i8* %59
  %61 = sext i8 %60 to i32
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %103

; <label>:63                                      ; preds = %58
  %64 = load i8** %cp, align 8
  %65 = call i64 @strlen(i8* %64) nounwind readonly
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %cplen, align 4
  %67 = load i32* %len, align 4
  %68 = load i32* %cplen, align 4
  %69 = icmp sge i32 %67, %68
  br i1 %69, label %70, label %96

; <label>:70                                      ; preds = %63
  %71 = load i32* %len, align 4
  %72 = load i32* %cplen, align 4
  %73 = sub nsw i32 %71, %72
  %74 = sext i32 %73 to i64
  %75 = load i8** %2, align 8
  %76 = getelementptr inbounds i8* %75, i64 %74
  %77 = load i8** %cp, align 8
  %78 = call i32 @strcmp(i8* %76, i8* %77) nounwind readonly
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %96

; <label>:80                                      ; preds = %70
  %81 = load i32** %4, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %94

; <label>:83                                      ; preds = %80
  %84 = load i32* %i, align 4
  %85 = sext i32 %84 to i64
  %86 = load %struct.strchartype** @chartypes, align 8
  %87 = getelementptr inbounds %struct.strchartype* %86, i64 %85
  %88 = getelementptr inbounds %struct.strchartype* %87, i32 0, i32 1
  %89 = load i8** %88, align 8
  %90 = call i32 @strcmp(i8* %89, i8* getelementptr inbounds ([4 x i8]* @.str5, i32 0, i32 0)) nounwind readonly
  %91 = icmp eq i32 %90, 0
  %92 = zext i1 %91 to i32
  %93 = load i32** %4, align 8
  store i32 %92, i32* %93
  br label %94

; <label>:94                                      ; preds = %83, %80
  %95 = load i32* %i, align 4
  store i32 %95, i32* %1
  br label %108

; <label>:96                                      ; preds = %70, %63
  br label %97

; <label>:97                                      ; preds = %96
  %98 = load i32* %cplen, align 4
  %99 = add nsw i32 %98, 1
  %100 = load i8** %cp, align 8
  %101 = sext i32 %99 to i64
  %102 = getelementptr inbounds i8* %100, i64 %101
  store i8* %102, i8** %cp, align 8
  br label %58

; <label>:103                                     ; preds = %58
  br label %104

; <label>:104                                     ; preds = %103
  %105 = load i32* %i, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %i, align 4
  br label %47

; <label>:107                                     ; preds = %47
  store i32 -1, i32* %1
  br label %108

; <label>:108                                     ; preds = %107, %94, %39
  %109 = load i32* %1
  ret i32 %109
}

declare i32 @strcmp(i8*, i8*) nounwind readonly

define internal void @flagout(%struct._IO_FILE* %toutfile, i32 %flag) nounwind uwtable {
  %1 = alloca %struct._IO_FILE*, align 8
  %2 = alloca i32, align 4
  store %struct._IO_FILE* %toutfile, %struct._IO_FILE** %1, align 8
  store i32 %flag, i32* %2, align 4
  %3 = load i32* @has_marker, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %10, label %5

; <label>:5                                       ; preds = %0
  %6 = load i8* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 19), align 1
  %7 = sext i8 %6 to i32
  %8 = load %struct._IO_FILE** %1, align 8
  %9 = call i32 @_IO_putc(i32 %7, %struct._IO_FILE* %8)
  br label %10

; <label>:10                                      ; preds = %5, %0
  store i32 1, i32* @has_marker, align 4
  %11 = load i32* %2, align 4
  %12 = load %struct._IO_FILE** %1, align 8
  %13 = call i32 @_IO_putc(i32 %11, %struct._IO_FILE* %12)
  ret void
}

declare i32 @_IO_putc(i32, %struct._IO_FILE*)

define internal i32 @acoversb(%struct.dent* %enta, %struct.dent* %entb) nounwind uwtable {
  %1 = alloca i32, align 4
  %2 = alloca %struct.dent*, align 8
  %3 = alloca %struct.dent*, align 8
  %subset = alloca i32, align 4
  store %struct.dent* %enta, %struct.dent** %2, align 8
  store %struct.dent* %entb, %struct.dent** %3, align 8
  %4 = load %struct.dent** %3, align 8
  %5 = load %struct.dent** %2, align 8
  %6 = call i32 @issubset(%struct.dent* %4, %struct.dent* %5)
  store i32 %6, i32* %subset, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %29

; <label>:8                                       ; preds = %0
  %9 = load %struct.dent** %2, align 8
  %10 = getelementptr inbounds %struct.dent* %9, i32 0, i32 2
  %11 = getelementptr inbounds [1 x i64]* %10, i32 0, i64 0
  %12 = load i64* %11, align 8
  %13 = load %struct.dent** %3, align 8
  %14 = getelementptr inbounds %struct.dent* %13, i32 0, i32 2
  %15 = getelementptr inbounds [1 x i64]* %14, i32 0, i64 0
  %16 = load i64* %15, align 8
  %17 = xor i64 %12, %16
  %18 = and i64 %17, 134217728
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %28

; <label>:20                                      ; preds = %8
  %21 = load %struct.dent** %2, align 8
  %22 = getelementptr inbounds %struct.dent* %21, i32 0, i32 2
  %23 = getelementptr inbounds [1 x i64]* %22, i32 0, i64 0
  %24 = load i64* %23, align 8
  %25 = and i64 %24, 134217728
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28

; <label>:27                                      ; preds = %20
  store i32 0, i32* %1
  br label %101

; <label>:28                                      ; preds = %20, %8
  br label %43

; <label>:29                                      ; preds = %0
  %30 = load %struct.dent** %2, align 8
  %31 = getelementptr inbounds %struct.dent* %30, i32 0, i32 2
  %32 = getelementptr inbounds [1 x i64]* %31, i32 0, i64 0
  %33 = load i64* %32, align 8
  %34 = load %struct.dent** %3, align 8
  %35 = getelementptr inbounds %struct.dent* %34, i32 0, i32 2
  %36 = getelementptr inbounds [1 x i64]* %35, i32 0, i64 0
  %37 = load i64* %36, align 8
  %38 = xor i64 %33, %37
  %39 = and i64 %38, 134217728
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

; <label>:41                                      ; preds = %29
  store i32 0, i32* %1
  br label %101

; <label>:42                                      ; preds = %29
  br label %43

; <label>:43                                      ; preds = %42, %28
  %44 = load %struct.dent** %2, align 8
  %45 = getelementptr inbounds %struct.dent* %44, i32 0, i32 2
  %46 = getelementptr inbounds [1 x i64]* %45, i32 0, i64 0
  %47 = load i64* %46, align 8
  %48 = load %struct.dent** %3, align 8
  %49 = getelementptr inbounds %struct.dent* %48, i32 0, i32 2
  %50 = getelementptr inbounds [1 x i64]* %49, i32 0, i64 0
  %51 = load i64* %50, align 8
  %52 = xor i64 %47, %51
  %53 = and i64 %52, 805306368
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %73

; <label>:55                                      ; preds = %43
  %56 = load %struct.dent** %2, align 8
  %57 = getelementptr inbounds %struct.dent* %56, i32 0, i32 2
  %58 = getelementptr inbounds [1 x i64]* %57, i32 0, i64 0
  %59 = load i64* %58, align 8
  %60 = and i64 %59, 805306368
  %61 = icmp ne i64 %60, 805306368
  br i1 %61, label %71, label %62

; <label>:62                                      ; preds = %55
  %63 = load %struct.dent** %2, align 8
  %64 = getelementptr inbounds %struct.dent* %63, i32 0, i32 1
  %65 = load i8** %64, align 8
  %66 = load %struct.dent** %3, align 8
  %67 = getelementptr inbounds %struct.dent* %66, i32 0, i32 1
  %68 = load i8** %67, align 8
  %69 = call i32 @strcmp(i8* %65, i8* %68) nounwind readonly
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %72

; <label>:71                                      ; preds = %62, %55
  store i32 1, i32* %1
  br label %101

; <label>:72                                      ; preds = %62
  store i32 0, i32* %1
  br label %101

; <label>:73                                      ; preds = %43
  %74 = load i32* %subset, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %77

; <label>:76                                      ; preds = %73
  store i32 0, i32* %1
  br label %101

; <label>:77                                      ; preds = %73
  %78 = load %struct.dent** %3, align 8
  %79 = getelementptr inbounds %struct.dent* %78, i32 0, i32 2
  %80 = getelementptr inbounds [1 x i64]* %79, i32 0, i64 0
  %81 = load i64* %80, align 8
  %82 = and i64 %81, 805306368
  %83 = icmp eq i64 %82, 268435456
  br i1 %83, label %84, label %85

; <label>:84                                      ; preds = %77
  store i32 1, i32* %1
  br label %101

; <label>:85                                      ; preds = %77
  %86 = load %struct.dent** %2, align 8
  %87 = getelementptr inbounds %struct.dent* %86, i32 0, i32 2
  %88 = getelementptr inbounds [1 x i64]* %87, i32 0, i64 0
  %89 = load i64* %88, align 8
  %90 = and i64 %89, 805306368
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %100

; <label>:92                                      ; preds = %85
  %93 = load %struct.dent** %3, align 8
  %94 = getelementptr inbounds %struct.dent* %93, i32 0, i32 2
  %95 = getelementptr inbounds [1 x i64]* %94, i32 0, i64 0
  %96 = load i64* %95, align 8
  %97 = and i64 %96, 805306368
  %98 = icmp eq i64 %97, 536870912
  br i1 %98, label %99, label %100

; <label>:99                                      ; preds = %92
  store i32 1, i32* %1
  br label %101

; <label>:100                                     ; preds = %92, %85
  store i32 0, i32* %1
  br label %101

; <label>:101                                     ; preds = %100, %99, %84, %76, %72, %71, %41, %27
  %102 = load i32* %1
  ret i32 %102
}

define internal i32 @issubset(%struct.dent* %ent1, %struct.dent* %ent2) nounwind uwtable {
  %1 = alloca i32, align 4
  %2 = alloca %struct.dent*, align 8
  %3 = alloca %struct.dent*, align 8
  store %struct.dent* %ent1, %struct.dent** %2, align 8
  store %struct.dent* %ent2, %struct.dent** %3, align 8
  %4 = load %struct.dent** %2, align 8
  %5 = getelementptr inbounds %struct.dent* %4, i32 0, i32 2
  %6 = getelementptr inbounds [1 x i64]* %5, i32 0, i64 0
  %7 = load i64* %6, align 8
  %8 = load %struct.dent** %3, align 8
  %9 = getelementptr inbounds %struct.dent* %8, i32 0, i32 2
  %10 = getelementptr inbounds [1 x i64]* %9, i32 0, i64 0
  %11 = load i64* %10, align 8
  %12 = and i64 %7, %11
  %13 = load %struct.dent** %2, align 8
  %14 = getelementptr inbounds %struct.dent* %13, i32 0, i32 2
  %15 = getelementptr inbounds [1 x i64]* %14, i32 0, i64 0
  %16 = load i64* %15, align 8
  %17 = xor i64 %12, %16
  %18 = and i64 %17, -2080374785
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

; <label>:20                                      ; preds = %0
  store i32 0, i32* %1
  br label %22

; <label>:21                                      ; preds = %0
  store i32 1, i32* %1
  br label %22

; <label>:22                                      ; preds = %21, %20
  %23 = load i32* %1
  ret i32 %23
}
