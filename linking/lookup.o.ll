; ModuleID = 'lookup.o'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.hashheader = type { i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i8], [13 x i8], i8, i8, i8, [228 x i16], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [128 x i8], [100 x [11 x i8]], [100 x i32], [100 x i32], i16 }
%struct.dent = type { %struct.dent*, i8*, [1 x i64] }
%struct.flagent = type { i8*, i8*, i16, i16, i16, i16, i16, [228 x i8] }
%struct.flagptr = type { %union.ptr_union, i32 }
%union.ptr_union = type { %struct.flagptr* }
%struct.strchartype = type { i8*, i8*, i8* }

@inited = internal global i32 0, align 4
@hashname = external global [4096 x i8]
@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [16 x i8] c"Can't open %s\0D\0A\00", align 1
@hashheader = external global %struct.hashheader
@hashsize = external global i32
@.str1 = private unnamed_addr constant [32 x i8] c"Trouble reading hash table %s\0D\0A\00", align 1
@.str2 = private unnamed_addr constant [21 x i8] c"Null hash table %s\0D\0A\00", align 1
@.str3 = private unnamed_addr constant [54 x i8] c"Truncated hash table %s:  got %d bytes, expected %d\0D\0A\00", align 1
@.str4 = private unnamed_addr constant [63 x i8] c"Illegal format hash table %s - expected magic 0x%x, got 0x%x\0D\0A\00", align 1
@.str5 = private unnamed_addr constant [64 x i8] c"Illegal format hash table %s - expected magic2 0x%x, got 0x%x\0D\0A\00", align 1
@.str6 = private unnamed_addr constant [76 x i8] c"Hash table options don't agree with buildhash - 0x%x/%d/%d vs. 0x%x/%d/%d\0D\0A\00", align 1
@nodictflag = external global i32
@hashtbl = external global %struct.dent*
@.str7 = private unnamed_addr constant [41 x i8] c"Couldn't allocate space for hash table\0D\0A\00", align 1
@hashstrings = external global i8*
@numsflags = external global i32
@numpflags = external global i32
@sflaglist = external global %struct.flagent*
@pflaglist = external global %struct.flagent*
@.str8 = private unnamed_addr constant [28 x i8] c"Illegal format hash table\0D\0A\00", align 1
@sflagindex = external global [228 x %struct.flagptr]
@.str9 = private unnamed_addr constant [46 x i8] c"Couldn't allocate space for language tables\0D\0A\00", align 1
@pflagindex = external global [228 x %struct.flagptr]
@chartypes = external global %struct.strchartype*
@.str10 = private unnamed_addr constant [51 x i8] c"\0D\0AWord '%s' too long at line %d of %s, truncated\0D\0A\00", align 1
@.str11 = private unnamed_addr constant [83 x i8] c"/home/arka3/repos/test-suite/MultiSource/Benchmarks/MiBench/office-ispell/lookup.c\00", align 1

define i32 @linit() nounwind uwtable {
  %1 = alloca i32, align 4
  %hashfd = alloca i32, align 4
  %i = alloca i32, align 4
  %dp = alloca %struct.dent*, align 8
  %entry = alloca %struct.flagent*, align 8
  %ind = alloca %struct.flagptr*, align 8
  %nextchar = alloca i32, align 4
  %viazero = alloca i32, align 4
  %cp = alloca i8*, align 8
  %2 = load i32* @inited, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %5

; <label>:4                                       ; preds = %0
  store i32 0, i32* %1
  br label %683

; <label>:5                                       ; preds = %0
  %6 = call i32 (...)* @open(i8* getelementptr inbounds ([4096 x i8]* @hashname, i32 0, i32 0), i32 0)
  store i32 %6, i32* %hashfd, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %11

; <label>:8                                       ; preds = %5
  %9 = load %struct._IO_FILE** @stderr, align 8
  %10 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([16 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4096 x i8]* @hashname, i32 0, i32 0))
  store i32 -1, i32* %1
  br label %683

; <label>:11                                      ; preds = %5
  %12 = load i32* %hashfd, align 4
  %13 = call i32 (...)* @read(i32 %12, i8* bitcast (%struct.hashheader* @hashheader to i8*), i64 3928)
  store i32 %13, i32* @hashsize, align 4
  %14 = load i32* @hashsize, align 4
  %15 = sext i32 %14 to i64
  %16 = icmp ult i64 %15, 3928
  br i1 %16, label %17, label %35

; <label>:17                                      ; preds = %11
  %18 = load i32* @hashsize, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %23

; <label>:20                                      ; preds = %17
  %21 = load %struct._IO_FILE** @stderr, align 8
  %22 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([32 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([4096 x i8]* @hashname, i32 0, i32 0))
  br label %34

; <label>:23                                      ; preds = %17
  %24 = load i32* @hashsize, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %29

; <label>:26                                      ; preds = %23
  %27 = load %struct._IO_FILE** @stderr, align 8
  %28 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([21 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([4096 x i8]* @hashname, i32 0, i32 0))
  br label %33

; <label>:29                                      ; preds = %23
  %30 = load %struct._IO_FILE** @stderr, align 8
  %31 = load i32* @hashsize, align 4
  %32 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([54 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([4096 x i8]* @hashname, i32 0, i32 0), i32 %31, i32 3928)
  br label %33

; <label>:33                                      ; preds = %29, %26
  br label %34

; <label>:34                                      ; preds = %33, %20
  store i32 -1, i32* %1
  br label %683

; <label>:35                                      ; preds = %11
  %36 = load i16* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 0), align 2
  %37 = zext i16 %36 to i32
  %38 = icmp ne i32 %37, 38402
  br i1 %38, label %39, label %44

; <label>:39                                      ; preds = %35
  %40 = load %struct._IO_FILE** @stderr, align 8
  %41 = load i16* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 0), align 2
  %42 = zext i16 %41 to i32
  %43 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([63 x i8]* @.str4, i32 0, i32 0), i8* getelementptr inbounds ([4096 x i8]* @hashname, i32 0, i32 0), i32 38402, i32 %42)
  store i32 -1, i32* %1
  br label %683

; <label>:44                                      ; preds = %35
  %45 = load i16* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 31), align 2
  %46 = zext i16 %45 to i32
  %47 = icmp ne i32 %46, 38402
  br i1 %47, label %48, label %53

; <label>:48                                      ; preds = %44
  %49 = load %struct._IO_FILE** @stderr, align 8
  %50 = load i16* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 31), align 2
  %51 = zext i16 %50 to i32
  %52 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %49, i8* getelementptr inbounds ([64 x i8]* @.str5, i32 0, i32 0), i8* getelementptr inbounds ([4096 x i8]* @hashname, i32 0, i32 0), i32 38402, i32 %51)
  store i32 -1, i32* %1
  br label %683

; <label>:53                                      ; preds = %44
  %54 = load i16* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 1), align 2
  %55 = zext i16 %54 to i32
  %56 = icmp ne i32 %55, 3
  br i1 %56, label %65, label %57

; <label>:57                                      ; preds = %53
  %58 = load i16* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 2), align 2
  %59 = sext i16 %58 to i32
  %60 = icmp ne i32 %59, 100
  br i1 %60, label %65, label %61

; <label>:61                                      ; preds = %57
  %62 = load i16* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 3), align 2
  %63 = sext i16 %62 to i32
  %64 = icmp ne i32 %63, 10
  br i1 %64, label %65, label %74

; <label>:65                                      ; preds = %61, %57, %53
  %66 = load %struct._IO_FILE** @stderr, align 8
  %67 = load i16* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 1), align 2
  %68 = zext i16 %67 to i32
  %69 = load i16* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 2), align 2
  %70 = sext i16 %69 to i32
  %71 = load i16* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 3), align 2
  %72 = sext i16 %71 to i32
  %73 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %66, i8* getelementptr inbounds ([76 x i8]* @.str6, i32 0, i32 0), i32 %68, i32 %70, i32 %72, i32 3, i32 100, i32 10)
  store i32 -1, i32* %1
  br label %683

; <label>:74                                      ; preds = %61
  br label %75

; <label>:75                                      ; preds = %74
  br label %76

; <label>:76                                      ; preds = %75
  br label %77

; <label>:77                                      ; preds = %76
  %78 = load i32* @nodictflag, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %104

; <label>:80                                      ; preds = %77
  store i32 1, i32* @hashsize, align 4
  %81 = call noalias i8* @calloc(i64 1, i64 24) nounwind
  %82 = bitcast i8* %81 to %struct.dent*
  store %struct.dent* %82, %struct.dent** @hashtbl, align 8
  %83 = load %struct.dent** @hashtbl, align 8
  %84 = icmp eq %struct.dent* %83, null
  br i1 %84, label %85, label %88

; <label>:85                                      ; preds = %80
  %86 = load %struct._IO_FILE** @stderr, align 8
  %87 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %86, i8* getelementptr inbounds ([41 x i8]* @.str7, i32 0, i32 0))
  store i32 -1, i32* %1
  br label %683

; <label>:88                                      ; preds = %80
  %89 = load %struct.dent** @hashtbl, align 8
  %90 = getelementptr inbounds %struct.dent* %89, i64 0
  %91 = getelementptr inbounds %struct.dent* %90, i32 0, i32 1
  store i8* null, i8** %91, align 8
  %92 = load %struct.dent** @hashtbl, align 8
  %93 = getelementptr inbounds %struct.dent* %92, i64 0
  %94 = getelementptr inbounds %struct.dent* %93, i32 0, i32 0
  store %struct.dent* null, %struct.dent** %94, align 8
  %95 = load %struct.dent** @hashtbl, align 8
  %96 = getelementptr inbounds %struct.dent* %95, i64 0
  %97 = getelementptr inbounds %struct.dent* %96, i32 0, i32 2
  %98 = getelementptr inbounds [1 x i64]* %97, i32 0, i64 0
  %99 = load i64* %98, align 8
  %100 = and i64 %99, -201326593
  store i64 %100, i64* %98, align 8
  %101 = load i32* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 7), align 4
  %102 = zext i32 %101 to i64
  %103 = call noalias i8* @malloc(i64 %102) nounwind
  store i8* %103, i8** @hashstrings, align 8
  br label %114

; <label>:104                                     ; preds = %77
  %105 = load i32* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 8), align 4
  %106 = zext i32 %105 to i64
  %107 = mul i64 %106, 24
  %108 = call noalias i8* @malloc(i64 %107) nounwind
  %109 = bitcast i8* %108 to %struct.dent*
  store %struct.dent* %109, %struct.dent** @hashtbl, align 8
  %110 = load i32* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 8), align 4
  store i32 %110, i32* @hashsize, align 4
  %111 = load i32* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 6), align 4
  %112 = zext i32 %111 to i64
  %113 = call noalias i8* @malloc(i64 %112) nounwind
  store i8* %113, i8** @hashstrings, align 8
  br label %114

; <label>:114                                     ; preds = %104, %88
  %115 = load i32* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 9), align 4
  store i32 %115, i32* @numsflags, align 4
  %116 = load i32* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 10), align 4
  store i32 %116, i32* @numpflags, align 4
  %117 = load i32* @numsflags, align 4
  %118 = load i32* @numpflags, align 4
  %119 = add nsw i32 %117, %118
  %120 = sext i32 %119 to i64
  %121 = mul i64 %120, 256
  %122 = call noalias i8* @malloc(i64 %121) nounwind
  %123 = bitcast i8* %122 to %struct.flagent*
  store %struct.flagent* %123, %struct.flagent** @sflaglist, align 8
  %124 = load %struct.dent** @hashtbl, align 8
  %125 = icmp eq %struct.dent* %124, null
  br i1 %125, label %132, label %126

; <label>:126                                     ; preds = %114
  %127 = load i8** @hashstrings, align 8
  %128 = icmp eq i8* %127, null
  br i1 %128, label %132, label %129

; <label>:129                                     ; preds = %126
  %130 = load %struct.flagent** @sflaglist, align 8
  %131 = icmp eq %struct.flagent* %130, null
  br i1 %131, label %132, label %135

; <label>:132                                     ; preds = %129, %126, %114
  %133 = load %struct._IO_FILE** @stderr, align 8
  %134 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %133, i8* getelementptr inbounds ([41 x i8]* @.str7, i32 0, i32 0))
  store i32 -1, i32* %1
  br label %683

; <label>:135                                     ; preds = %129
  %136 = load %struct.flagent** @sflaglist, align 8
  %137 = load i32* @numsflags, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.flagent* %136, i64 %138
  store %struct.flagent* %139, %struct.flagent** @pflaglist, align 8
  %140 = load i32* @nodictflag, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %164

; <label>:142                                     ; preds = %135
  %143 = load i32* %hashfd, align 4
  %144 = load i8** @hashstrings, align 8
  %145 = load i32* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 7), align 4
  %146 = call i32 (...)* @read(i32 %143, i8* %144, i32 %145)
  %147 = load i32* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 7), align 4
  %148 = icmp ne i32 %146, %147
  br i1 %148, label %149, label %152

; <label>:149                                     ; preds = %142
  %150 = load %struct._IO_FILE** @stderr, align 8
  %151 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %150, i8* getelementptr inbounds ([28 x i8]* @.str8, i32 0, i32 0))
  store i32 -1, i32* %1
  br label %683

; <label>:152                                     ; preds = %142
  %153 = load i32* %hashfd, align 4
  %154 = load i32* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 6), align 4
  %155 = sext i32 %154 to i64
  %156 = load i32* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 7), align 4
  %157 = sext i32 %156 to i64
  %158 = sub nsw i64 %155, %157
  %159 = load i32* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 8), align 4
  %160 = sext i32 %159 to i64
  %161 = mul nsw i64 %160, 24
  %162 = add nsw i64 %158, %161
  %163 = call i32 (...)* @lseek(i32 %153, i64 %162, i32 1)
  br label %188

; <label>:164                                     ; preds = %135
  %165 = load i32* %hashfd, align 4
  %166 = load i8** @hashstrings, align 8
  %167 = load i32* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 6), align 4
  %168 = call i32 (...)* @read(i32 %165, i8* %166, i32 %167)
  %169 = load i32* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 6), align 4
  %170 = icmp ne i32 %168, %169
  br i1 %170, label %184, label %171

; <label>:171                                     ; preds = %164
  %172 = load i32* %hashfd, align 4
  %173 = load %struct.dent** @hashtbl, align 8
  %174 = bitcast %struct.dent* %173 to i8*
  %175 = load i32* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 8), align 4
  %176 = zext i32 %175 to i64
  %177 = mul i64 %176, 24
  %178 = call i32 (...)* @read(i32 %172, i8* %174, i64 %177)
  %179 = sext i32 %178 to i64
  %180 = load i32* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 8), align 4
  %181 = sext i32 %180 to i64
  %182 = mul i64 %181, 24
  %183 = icmp ne i64 %179, %182
  br i1 %183, label %184, label %187

; <label>:184                                     ; preds = %171, %164
  %185 = load %struct._IO_FILE** @stderr, align 8
  %186 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %185, i8* getelementptr inbounds ([28 x i8]* @.str8, i32 0, i32 0))
  store i32 -1, i32* %1
  br label %683

; <label>:187                                     ; preds = %171
  br label %188

; <label>:188                                     ; preds = %187, %152
  %189 = load i32* %hashfd, align 4
  %190 = load %struct.flagent** @sflaglist, align 8
  %191 = bitcast %struct.flagent* %190 to i8*
  %192 = load i32* @numsflags, align 4
  %193 = load i32* @numpflags, align 4
  %194 = add nsw i32 %192, %193
  %195 = zext i32 %194 to i64
  %196 = mul i64 %195, 256
  %197 = call i32 (...)* @read(i32 %189, i8* %191, i64 %196)
  %198 = sext i32 %197 to i64
  %199 = load i32* @numsflags, align 4
  %200 = load i32* @numpflags, align 4
  %201 = add nsw i32 %199, %200
  %202 = sext i32 %201 to i64
  %203 = mul i64 %202, 256
  %204 = icmp ne i64 %198, %203
  br i1 %204, label %205, label %208

; <label>:205                                     ; preds = %188
  %206 = load %struct._IO_FILE** @stderr, align 8
  %207 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %206, i8* getelementptr inbounds ([28 x i8]* @.str8, i32 0, i32 0))
  store i32 -1, i32* %1
  br label %683

; <label>:208                                     ; preds = %188
  %209 = load i32* %hashfd, align 4
  %210 = call i32 (...)* @close(i32 %209)
  %211 = load i32* @nodictflag, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %261, label %213

; <label>:213                                     ; preds = %208
  %214 = load i32* @hashsize, align 4
  store i32 %214, i32* %i, align 4
  %215 = load %struct.dent** @hashtbl, align 8
  store %struct.dent* %215, %struct.dent** %dp, align 8
  br label %216

; <label>:216                                     ; preds = %257, %213
  %217 = load i32* %i, align 4
  %218 = add nsw i32 %217, -1
  store i32 %218, i32* %i, align 4
  %219 = icmp sge i32 %218, 0
  br i1 %219, label %220, label %260

; <label>:220                                     ; preds = %216
  %221 = load %struct.dent** %dp, align 8
  %222 = getelementptr inbounds %struct.dent* %221, i32 0, i32 1
  %223 = load i8** %222, align 8
  %224 = icmp eq i8* %223, inttoptr (i64 -1 to i8*)
  br i1 %224, label %225, label %228

; <label>:225                                     ; preds = %220
  %226 = load %struct.dent** %dp, align 8
  %227 = getelementptr inbounds %struct.dent* %226, i32 0, i32 1
  store i8* null, i8** %227, align 8
  br label %238

; <label>:228                                     ; preds = %220
  %229 = load %struct.dent** %dp, align 8
  %230 = getelementptr inbounds %struct.dent* %229, i32 0, i32 1
  %231 = load i8** %230, align 8
  %232 = ptrtoint i8* %231 to i32
  %233 = sext i32 %232 to i64
  %234 = load i8** @hashstrings, align 8
  %235 = getelementptr inbounds i8* %234, i64 %233
  %236 = load %struct.dent** %dp, align 8
  %237 = getelementptr inbounds %struct.dent* %236, i32 0, i32 1
  store i8* %235, i8** %237, align 8
  br label %238

; <label>:238                                     ; preds = %228, %225
  %239 = load %struct.dent** %dp, align 8
  %240 = getelementptr inbounds %struct.dent* %239, i32 0, i32 0
  %241 = load %struct.dent** %240, align 8
  %242 = icmp eq %struct.dent* %241, inttoptr (i64 -1 to %struct.dent*)
  br i1 %242, label %243, label %246

; <label>:243                                     ; preds = %238
  %244 = load %struct.dent** %dp, align 8
  %245 = getelementptr inbounds %struct.dent* %244, i32 0, i32 0
  store %struct.dent* null, %struct.dent** %245, align 8
  br label %256

; <label>:246                                     ; preds = %238
  %247 = load %struct.dent** %dp, align 8
  %248 = getelementptr inbounds %struct.dent* %247, i32 0, i32 0
  %249 = load %struct.dent** %248, align 8
  %250 = ptrtoint %struct.dent* %249 to i32
  %251 = sext i32 %250 to i64
  %252 = load %struct.dent** @hashtbl, align 8
  %253 = getelementptr inbounds %struct.dent* %252, i64 %251
  %254 = load %struct.dent** %dp, align 8
  %255 = getelementptr inbounds %struct.dent* %254, i32 0, i32 0
  store %struct.dent* %253, %struct.dent** %255, align 8
  br label %256

; <label>:256                                     ; preds = %246, %243
  br label %257

; <label>:257                                     ; preds = %256
  %258 = load %struct.dent** %dp, align 8
  %259 = getelementptr inbounds %struct.dent* %258, i32 1
  store %struct.dent* %259, %struct.dent** %dp, align 8
  br label %216

; <label>:260                                     ; preds = %216
  br label %261

; <label>:261                                     ; preds = %260, %208
  %262 = load i32* @numsflags, align 4
  %263 = load i32* @numpflags, align 4
  %264 = add nsw i32 %262, %263
  store i32 %264, i32* %i, align 4
  %265 = load %struct.flagent** @sflaglist, align 8
  store %struct.flagent* %265, %struct.flagent** %entry, align 8
  br label %266

; <label>:266                                     ; preds = %307, %261
  %267 = load i32* %i, align 4
  %268 = add nsw i32 %267, -1
  store i32 %268, i32* %i, align 4
  %269 = icmp sge i32 %268, 0
  br i1 %269, label %270, label %310

; <label>:270                                     ; preds = %266
  %271 = load %struct.flagent** %entry, align 8
  %272 = getelementptr inbounds %struct.flagent* %271, i32 0, i32 3
  %273 = load i16* %272, align 2
  %274 = icmp ne i16 %273, 0
  br i1 %274, label %275, label %285

; <label>:275                                     ; preds = %270
  %276 = load %struct.flagent** %entry, align 8
  %277 = getelementptr inbounds %struct.flagent* %276, i32 0, i32 0
  %278 = load i8** %277, align 8
  %279 = ptrtoint i8* %278 to i32
  %280 = sext i32 %279 to i64
  %281 = load i8** @hashstrings, align 8
  %282 = getelementptr inbounds i8* %281, i64 %280
  %283 = load %struct.flagent** %entry, align 8
  %284 = getelementptr inbounds %struct.flagent* %283, i32 0, i32 0
  store i8* %282, i8** %284, align 8
  br label %288

; <label>:285                                     ; preds = %270
  %286 = load %struct.flagent** %entry, align 8
  %287 = getelementptr inbounds %struct.flagent* %286, i32 0, i32 0
  store i8* null, i8** %287, align 8
  br label %288

; <label>:288                                     ; preds = %285, %275
  %289 = load %struct.flagent** %entry, align 8
  %290 = getelementptr inbounds %struct.flagent* %289, i32 0, i32 4
  %291 = load i16* %290, align 2
  %292 = icmp ne i16 %291, 0
  br i1 %292, label %293, label %303

; <label>:293                                     ; preds = %288
  %294 = load %struct.flagent** %entry, align 8
  %295 = getelementptr inbounds %struct.flagent* %294, i32 0, i32 1
  %296 = load i8** %295, align 8
  %297 = ptrtoint i8* %296 to i32
  %298 = sext i32 %297 to i64
  %299 = load i8** @hashstrings, align 8
  %300 = getelementptr inbounds i8* %299, i64 %298
  %301 = load %struct.flagent** %entry, align 8
  %302 = getelementptr inbounds %struct.flagent* %301, i32 0, i32 1
  store i8* %300, i8** %302, align 8
  br label %306

; <label>:303                                     ; preds = %288
  %304 = load %struct.flagent** %entry, align 8
  %305 = getelementptr inbounds %struct.flagent* %304, i32 0, i32 1
  store i8* null, i8** %305, align 8
  br label %306

; <label>:306                                     ; preds = %303, %293
  br label %307

; <label>:307                                     ; preds = %306
  %308 = load %struct.flagent** %entry, align 8
  %309 = getelementptr inbounds %struct.flagent* %308, i32 1
  store %struct.flagent* %309, %struct.flagent** %entry, align 8
  br label %266

; <label>:310                                     ; preds = %266
  %311 = load i32* @numsflags, align 4
  store i32 %311, i32* %i, align 4
  %312 = load %struct.flagent** @sflaglist, align 8
  store %struct.flagent* %312, %struct.flagent** %entry, align 8
  br label %313

; <label>:313                                     ; preds = %445, %310
  %314 = load i32* %i, align 4
  %315 = icmp sgt i32 %314, 0
  br i1 %315, label %316, label %450

; <label>:316                                     ; preds = %313
  %317 = load %struct.flagent** %entry, align 8
  %318 = getelementptr inbounds %struct.flagent* %317, i32 0, i32 4
  %319 = load i16* %318, align 2
  %320 = sext i16 %319 to i32
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %322, label %323

; <label>:322                                     ; preds = %316
  store i8* null, i8** %cp, align 8
  store %struct.flagptr* getelementptr inbounds ([228 x %struct.flagptr]* @sflagindex, i32 0, i64 0), %struct.flagptr** %ind, align 8
  store i32 1, i32* %viazero, align 4
  br label %375

; <label>:323                                     ; preds = %316
  %324 = load %struct.flagent** %entry, align 8
  %325 = getelementptr inbounds %struct.flagent* %324, i32 0, i32 1
  %326 = load i8** %325, align 8
  %327 = load %struct.flagent** %entry, align 8
  %328 = getelementptr inbounds %struct.flagent* %327, i32 0, i32 4
  %329 = load i16* %328, align 2
  %330 = sext i16 %329 to i32
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds i8* %326, i64 %331
  %333 = getelementptr inbounds i8* %332, i64 -1
  store i8* %333, i8** %cp, align 8
  %334 = load i8** %cp, align 8
  %335 = load i8* %334
  %336 = zext i8 %335 to i64
  %337 = getelementptr inbounds [228 x %struct.flagptr]* @sflagindex, i32 0, i64 %336
  store %struct.flagptr* %337, %struct.flagptr** %ind, align 8
  store i32 0, i32* %viazero, align 4
  br label %338

; <label>:338                                     ; preds = %373, %323
  %339 = load %struct.flagptr** %ind, align 8
  %340 = getelementptr inbounds %struct.flagptr* %339, i32 0, i32 1
  %341 = load i32* %340, align 4
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %343, label %349

; <label>:343                                     ; preds = %338
  %344 = load %struct.flagptr** %ind, align 8
  %345 = getelementptr inbounds %struct.flagptr* %344, i32 0, i32 0
  %346 = bitcast %union.ptr_union* %345 to %struct.flagptr**
  %347 = load %struct.flagptr** %346, align 8
  %348 = icmp ne %struct.flagptr* %347, null
  br label %349

; <label>:349                                     ; preds = %343, %338
  %350 = phi i1 [ false, %338 ], [ %348, %343 ]
  br i1 %350, label %351, label %374

; <label>:351                                     ; preds = %349
  %352 = load i8** %cp, align 8
  %353 = load %struct.flagent** %entry, align 8
  %354 = getelementptr inbounds %struct.flagent* %353, i32 0, i32 1
  %355 = load i8** %354, align 8
  %356 = icmp eq i8* %352, %355
  br i1 %356, label %357, label %363

; <label>:357                                     ; preds = %351
  %358 = load %struct.flagptr** %ind, align 8
  %359 = getelementptr inbounds %struct.flagptr* %358, i32 0, i32 0
  %360 = bitcast %union.ptr_union* %359 to %struct.flagptr**
  %361 = load %struct.flagptr** %360, align 8
  %362 = getelementptr inbounds %struct.flagptr* %361, i64 0
  store %struct.flagptr* %362, %struct.flagptr** %ind, align 8
  store i32 1, i32* %viazero, align 4
  br label %373

; <label>:363                                     ; preds = %351
  %364 = load i8** %cp, align 8
  %365 = getelementptr inbounds i8* %364, i32 -1
  store i8* %365, i8** %cp, align 8
  %366 = load i8* %365
  %367 = zext i8 %366 to i64
  %368 = load %struct.flagptr** %ind, align 8
  %369 = getelementptr inbounds %struct.flagptr* %368, i32 0, i32 0
  %370 = bitcast %union.ptr_union* %369 to %struct.flagptr**
  %371 = load %struct.flagptr** %370, align 8
  %372 = getelementptr inbounds %struct.flagptr* %371, i64 %367
  store %struct.flagptr* %372, %struct.flagptr** %ind, align 8
  store i32 0, i32* %viazero, align 4
  br label %373

; <label>:373                                     ; preds = %363, %357
  br label %338

; <label>:374                                     ; preds = %349
  br label %375

; <label>:375                                     ; preds = %374, %322
  %376 = load %struct.flagptr** %ind, align 8
  %377 = getelementptr inbounds %struct.flagptr* %376, i32 0, i32 1
  %378 = load i32* %377, align 4
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %380, label %385

; <label>:380                                     ; preds = %375
  %381 = load %struct.flagent** %entry, align 8
  %382 = load %struct.flagptr** %ind, align 8
  %383 = getelementptr inbounds %struct.flagptr* %382, i32 0, i32 0
  %384 = bitcast %union.ptr_union* %383 to %struct.flagent**
  store %struct.flagent* %381, %struct.flagent** %384, align 8
  br label %385

; <label>:385                                     ; preds = %380, %375
  %386 = load %struct.flagptr** %ind, align 8
  %387 = getelementptr inbounds %struct.flagptr* %386, i32 0, i32 1
  %388 = load i32* %387, align 4
  %389 = add nsw i32 %388, 1
  store i32 %389, i32* %387, align 4
  %390 = load i32* %viazero, align 4
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %444, label %392

; <label>:392                                     ; preds = %385
  %393 = load %struct.flagptr** %ind, align 8
  %394 = getelementptr inbounds %struct.flagptr* %393, i32 0, i32 1
  %395 = load i32* %394, align 4
  %396 = icmp sge i32 %395, 4
  br i1 %396, label %397, label %444

; <label>:397                                     ; preds = %392
  %398 = load %struct.flagent** %entry, align 8
  %399 = getelementptr inbounds %struct.flagent* %398, i32 0, i32 1
  %400 = load i8** %399, align 8
  %401 = load %struct.flagptr** %ind, align 8
  %402 = getelementptr inbounds %struct.flagptr* %401, i32 0, i32 0
  %403 = bitcast %union.ptr_union* %402 to %struct.flagent**
  %404 = load %struct.flagent** %403, align 8
  %405 = getelementptr inbounds %struct.flagent* %404, i32 0, i32 1
  %406 = load i8** %405, align 8
  %407 = call i32 @strcmp(i8* %400, i8* %406) nounwind readonly
  %408 = icmp ne i32 %407, 0
  br i1 %408, label %409, label %444

; <label>:409                                     ; preds = %397
  %410 = load %struct.flagptr** %ind, align 8
  %411 = getelementptr inbounds %struct.flagptr* %410, i32 0, i32 0
  %412 = bitcast %union.ptr_union* %411 to %struct.flagent**
  %413 = load %struct.flagent** %412, align 8
  %414 = getelementptr inbounds %struct.flagent* %413, i64 -1
  store %struct.flagent* %414, %struct.flagent** %entry, align 8
  %415 = load i32* @numsflags, align 4
  %416 = sext i32 %415 to i64
  %417 = load %struct.flagent** %entry, align 8
  %418 = load %struct.flagent** @sflaglist, align 8
  %419 = ptrtoint %struct.flagent* %417 to i64
  %420 = ptrtoint %struct.flagent* %418 to i64
  %421 = sub i64 %419, %420
  %422 = sdiv exact i64 %421, 256
  %423 = sub nsw i64 %416, %422
  %424 = trunc i64 %423 to i32
  store i32 %424, i32* %i, align 4
  %425 = load i32* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 12), align 4
  %426 = add nsw i32 128, %425
  %427 = zext i32 %426 to i64
  %428 = call noalias i8* @calloc(i64 %427, i64 16) nounwind
  %429 = bitcast i8* %428 to %struct.flagptr*
  %430 = load %struct.flagptr** %ind, align 8
  %431 = getelementptr inbounds %struct.flagptr* %430, i32 0, i32 0
  %432 = bitcast %union.ptr_union* %431 to %struct.flagptr**
  store %struct.flagptr* %429, %struct.flagptr** %432, align 8
  %433 = load %struct.flagptr** %ind, align 8
  %434 = getelementptr inbounds %struct.flagptr* %433, i32 0, i32 0
  %435 = bitcast %union.ptr_union* %434 to %struct.flagptr**
  %436 = load %struct.flagptr** %435, align 8
  %437 = icmp eq %struct.flagptr* %436, null
  br i1 %437, label %438, label %441

; <label>:438                                     ; preds = %409
  %439 = load %struct._IO_FILE** @stderr, align 8
  %440 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %439, i8* getelementptr inbounds ([46 x i8]* @.str9, i32 0, i32 0))
  store i32 -1, i32* %1
  br label %683

; <label>:441                                     ; preds = %409
  %442 = load %struct.flagptr** %ind, align 8
  %443 = getelementptr inbounds %struct.flagptr* %442, i32 0, i32 1
  store i32 0, i32* %443, align 4
  br label %444

; <label>:444                                     ; preds = %441, %397, %392, %385
  br label %445

; <label>:445                                     ; preds = %444
  %446 = load i32* %i, align 4
  %447 = add nsw i32 %446, -1
  store i32 %447, i32* %i, align 4
  %448 = load %struct.flagent** %entry, align 8
  %449 = getelementptr inbounds %struct.flagent* %448, i32 1
  store %struct.flagent* %449, %struct.flagent** %entry, align 8
  br label %313

; <label>:450                                     ; preds = %313
  %451 = load i32* @numpflags, align 4
  store i32 %451, i32* %i, align 4
  %452 = load %struct.flagent** @pflaglist, align 8
  store %struct.flagent* %452, %struct.flagent** %entry, align 8
  br label %453

; <label>:453                                     ; preds = %578, %450
  %454 = load i32* %i, align 4
  %455 = icmp sgt i32 %454, 0
  br i1 %455, label %456, label %583

; <label>:456                                     ; preds = %453
  %457 = load %struct.flagent** %entry, align 8
  %458 = getelementptr inbounds %struct.flagent* %457, i32 0, i32 4
  %459 = load i16* %458, align 2
  %460 = sext i16 %459 to i32
  %461 = icmp eq i32 %460, 0
  br i1 %461, label %462, label %463

; <label>:462                                     ; preds = %456
  store i8* null, i8** %cp, align 8
  store %struct.flagptr* getelementptr inbounds ([228 x %struct.flagptr]* @pflagindex, i32 0, i64 0), %struct.flagptr** %ind, align 8
  store i32 1, i32* %viazero, align 4
  br label %508

; <label>:463                                     ; preds = %456
  %464 = load %struct.flagent** %entry, align 8
  %465 = getelementptr inbounds %struct.flagent* %464, i32 0, i32 1
  %466 = load i8** %465, align 8
  store i8* %466, i8** %cp, align 8
  %467 = load i8** %cp, align 8
  %468 = getelementptr inbounds i8* %467, i32 1
  store i8* %468, i8** %cp, align 8
  %469 = load i8* %467
  %470 = zext i8 %469 to i64
  %471 = getelementptr inbounds [228 x %struct.flagptr]* @pflagindex, i32 0, i64 %470
  store %struct.flagptr* %471, %struct.flagptr** %ind, align 8
  store i32 0, i32* %viazero, align 4
  br label %472

; <label>:472                                     ; preds = %506, %463
  %473 = load %struct.flagptr** %ind, align 8
  %474 = getelementptr inbounds %struct.flagptr* %473, i32 0, i32 1
  %475 = load i32* %474, align 4
  %476 = icmp eq i32 %475, 0
  br i1 %476, label %477, label %483

; <label>:477                                     ; preds = %472
  %478 = load %struct.flagptr** %ind, align 8
  %479 = getelementptr inbounds %struct.flagptr* %478, i32 0, i32 0
  %480 = bitcast %union.ptr_union* %479 to %struct.flagptr**
  %481 = load %struct.flagptr** %480, align 8
  %482 = icmp ne %struct.flagptr* %481, null
  br label %483

; <label>:483                                     ; preds = %477, %472
  %484 = phi i1 [ false, %472 ], [ %482, %477 ]
  br i1 %484, label %485, label %507

; <label>:485                                     ; preds = %483
  %486 = load i8** %cp, align 8
  %487 = load i8* %486
  %488 = zext i8 %487 to i32
  %489 = icmp eq i32 %488, 0
  br i1 %489, label %490, label %496

; <label>:490                                     ; preds = %485
  %491 = load %struct.flagptr** %ind, align 8
  %492 = getelementptr inbounds %struct.flagptr* %491, i32 0, i32 0
  %493 = bitcast %union.ptr_union* %492 to %struct.flagptr**
  %494 = load %struct.flagptr** %493, align 8
  %495 = getelementptr inbounds %struct.flagptr* %494, i64 0
  store %struct.flagptr* %495, %struct.flagptr** %ind, align 8
  store i32 1, i32* %viazero, align 4
  br label %506

; <label>:496                                     ; preds = %485
  %497 = load i8** %cp, align 8
  %498 = getelementptr inbounds i8* %497, i32 1
  store i8* %498, i8** %cp, align 8
  %499 = load i8* %497
  %500 = zext i8 %499 to i64
  %501 = load %struct.flagptr** %ind, align 8
  %502 = getelementptr inbounds %struct.flagptr* %501, i32 0, i32 0
  %503 = bitcast %union.ptr_union* %502 to %struct.flagptr**
  %504 = load %struct.flagptr** %503, align 8
  %505 = getelementptr inbounds %struct.flagptr* %504, i64 %500
  store %struct.flagptr* %505, %struct.flagptr** %ind, align 8
  store i32 0, i32* %viazero, align 4
  br label %506

; <label>:506                                     ; preds = %496, %490
  br label %472

; <label>:507                                     ; preds = %483
  br label %508

; <label>:508                                     ; preds = %507, %462
  %509 = load %struct.flagptr** %ind, align 8
  %510 = getelementptr inbounds %struct.flagptr* %509, i32 0, i32 1
  %511 = load i32* %510, align 4
  %512 = icmp eq i32 %511, 0
  br i1 %512, label %513, label %518

; <label>:513                                     ; preds = %508
  %514 = load %struct.flagent** %entry, align 8
  %515 = load %struct.flagptr** %ind, align 8
  %516 = getelementptr inbounds %struct.flagptr* %515, i32 0, i32 0
  %517 = bitcast %union.ptr_union* %516 to %struct.flagent**
  store %struct.flagent* %514, %struct.flagent** %517, align 8
  br label %518

; <label>:518                                     ; preds = %513, %508
  %519 = load %struct.flagptr** %ind, align 8
  %520 = getelementptr inbounds %struct.flagptr* %519, i32 0, i32 1
  %521 = load i32* %520, align 4
  %522 = add nsw i32 %521, 1
  store i32 %522, i32* %520, align 4
  %523 = load i32* %viazero, align 4
  %524 = icmp ne i32 %523, 0
  br i1 %524, label %577, label %525

; <label>:525                                     ; preds = %518
  %526 = load %struct.flagptr** %ind, align 8
  %527 = getelementptr inbounds %struct.flagptr* %526, i32 0, i32 1
  %528 = load i32* %527, align 4
  %529 = icmp sge i32 %528, 4
  br i1 %529, label %530, label %577

; <label>:530                                     ; preds = %525
  %531 = load %struct.flagent** %entry, align 8
  %532 = getelementptr inbounds %struct.flagent* %531, i32 0, i32 1
  %533 = load i8** %532, align 8
  %534 = load %struct.flagptr** %ind, align 8
  %535 = getelementptr inbounds %struct.flagptr* %534, i32 0, i32 0
  %536 = bitcast %union.ptr_union* %535 to %struct.flagent**
  %537 = load %struct.flagent** %536, align 8
  %538 = getelementptr inbounds %struct.flagent* %537, i32 0, i32 1
  %539 = load i8** %538, align 8
  %540 = call i32 @strcmp(i8* %533, i8* %539) nounwind readonly
  %541 = icmp ne i32 %540, 0
  br i1 %541, label %542, label %577

; <label>:542                                     ; preds = %530
  %543 = load %struct.flagptr** %ind, align 8
  %544 = getelementptr inbounds %struct.flagptr* %543, i32 0, i32 0
  %545 = bitcast %union.ptr_union* %544 to %struct.flagent**
  %546 = load %struct.flagent** %545, align 8
  %547 = getelementptr inbounds %struct.flagent* %546, i64 -1
  store %struct.flagent* %547, %struct.flagent** %entry, align 8
  %548 = load i32* @numpflags, align 4
  %549 = sext i32 %548 to i64
  %550 = load %struct.flagent** %entry, align 8
  %551 = load %struct.flagent** @pflaglist, align 8
  %552 = ptrtoint %struct.flagent* %550 to i64
  %553 = ptrtoint %struct.flagent* %551 to i64
  %554 = sub i64 %552, %553
  %555 = sdiv exact i64 %554, 256
  %556 = sub nsw i64 %549, %555
  %557 = trunc i64 %556 to i32
  store i32 %557, i32* %i, align 4
  %558 = load i32* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 12), align 4
  %559 = add nsw i32 128, %558
  %560 = sext i32 %559 to i64
  %561 = call noalias i8* @calloc(i64 %560, i64 16) nounwind
  %562 = bitcast i8* %561 to %struct.flagptr*
  %563 = load %struct.flagptr** %ind, align 8
  %564 = getelementptr inbounds %struct.flagptr* %563, i32 0, i32 0
  %565 = bitcast %union.ptr_union* %564 to %struct.flagptr**
  store %struct.flagptr* %562, %struct.flagptr** %565, align 8
  %566 = load %struct.flagptr** %ind, align 8
  %567 = getelementptr inbounds %struct.flagptr* %566, i32 0, i32 0
  %568 = bitcast %union.ptr_union* %567 to %struct.flagptr**
  %569 = load %struct.flagptr** %568, align 8
  %570 = icmp eq %struct.flagptr* %569, null
  br i1 %570, label %571, label %574

; <label>:571                                     ; preds = %542
  %572 = load %struct._IO_FILE** @stderr, align 8
  %573 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %572, i8* getelementptr inbounds ([46 x i8]* @.str9, i32 0, i32 0))
  store i32 -1, i32* %1
  br label %683

; <label>:574                                     ; preds = %542
  %575 = load %struct.flagptr** %ind, align 8
  %576 = getelementptr inbounds %struct.flagptr* %575, i32 0, i32 1
  store i32 0, i32* %576, align 4
  br label %577

; <label>:577                                     ; preds = %574, %530, %525, %518
  br label %578

; <label>:578                                     ; preds = %577
  %579 = load i32* %i, align 4
  %580 = add nsw i32 %579, -1
  store i32 %580, i32* %i, align 4
  %581 = load %struct.flagent** %entry, align 8
  %582 = getelementptr inbounds %struct.flagent* %581, i32 1
  store %struct.flagent* %582, %struct.flagent** %entry, align 8
  br label %453

; <label>:583                                     ; preds = %453
  %584 = load i32* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 13), align 4
  %585 = icmp eq i32 %584, 0
  br i1 %585, label %586, label %587

; <label>:586                                     ; preds = %583
  store %struct.strchartype* null, %struct.strchartype** @chartypes, align 8
  br label %682

; <label>:587                                     ; preds = %583
  %588 = load i32* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 13), align 4
  %589 = sext i32 %588 to i64
  %590 = mul i64 %589, 24
  %591 = call noalias i8* @malloc(i64 %590) nounwind
  %592 = bitcast i8* %591 to %struct.strchartype*
  store %struct.strchartype* %592, %struct.strchartype** @chartypes, align 8
  %593 = load %struct.strchartype** @chartypes, align 8
  %594 = icmp eq %struct.strchartype* %593, null
  br i1 %594, label %595, label %598

; <label>:595                                     ; preds = %587
  %596 = load %struct._IO_FILE** @stderr, align 8
  %597 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %596, i8* getelementptr inbounds ([46 x i8]* @.str9, i32 0, i32 0))
  store i32 -1, i32* %1
  br label %683

; <label>:598                                     ; preds = %587
  store i32 0, i32* %i, align 4
  %599 = load i32* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 14), align 4
  store i32 %599, i32* %nextchar, align 4
  br label %600

; <label>:600                                     ; preds = %678, %598
  %601 = load i32* %i, align 4
  %602 = load i32* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 13), align 4
  %603 = icmp slt i32 %601, %602
  br i1 %603, label %604, label %681

; <label>:604                                     ; preds = %600
  %605 = load i32* %nextchar, align 4
  %606 = sext i32 %605 to i64
  %607 = load i8** @hashstrings, align 8
  %608 = getelementptr inbounds i8* %607, i64 %606
  %609 = load i32* %i, align 4
  %610 = sext i32 %609 to i64
  %611 = load %struct.strchartype** @chartypes, align 8
  %612 = getelementptr inbounds %struct.strchartype* %611, i64 %610
  %613 = getelementptr inbounds %struct.strchartype* %612, i32 0, i32 0
  store i8* %608, i8** %613, align 8
  %614 = load i32* %i, align 4
  %615 = sext i32 %614 to i64
  %616 = load %struct.strchartype** @chartypes, align 8
  %617 = getelementptr inbounds %struct.strchartype* %616, i64 %615
  %618 = getelementptr inbounds %struct.strchartype* %617, i32 0, i32 0
  %619 = load i8** %618, align 8
  %620 = call i64 @strlen(i8* %619) nounwind readonly
  %621 = add i64 %620, 1
  %622 = load i32* %nextchar, align 4
  %623 = sext i32 %622 to i64
  %624 = add i64 %623, %621
  %625 = trunc i64 %624 to i32
  store i32 %625, i32* %nextchar, align 4
  %626 = load i32* %nextchar, align 4
  %627 = sext i32 %626 to i64
  %628 = load i8** @hashstrings, align 8
  %629 = getelementptr inbounds i8* %628, i64 %627
  %630 = load i32* %i, align 4
  %631 = sext i32 %630 to i64
  %632 = load %struct.strchartype** @chartypes, align 8
  %633 = getelementptr inbounds %struct.strchartype* %632, i64 %631
  %634 = getelementptr inbounds %struct.strchartype* %633, i32 0, i32 1
  store i8* %629, i8** %634, align 8
  %635 = load i32* %i, align 4
  %636 = sext i32 %635 to i64
  %637 = load %struct.strchartype** @chartypes, align 8
  %638 = getelementptr inbounds %struct.strchartype* %637, i64 %636
  %639 = getelementptr inbounds %struct.strchartype* %638, i32 0, i32 1
  %640 = load i8** %639, align 8
  %641 = call i64 @strlen(i8* %640) nounwind readonly
  %642 = add i64 %641, 1
  %643 = load i32* %nextchar, align 4
  %644 = sext i32 %643 to i64
  %645 = add i64 %644, %642
  %646 = trunc i64 %645 to i32
  store i32 %646, i32* %nextchar, align 4
  %647 = load i32* %nextchar, align 4
  %648 = sext i32 %647 to i64
  %649 = load i8** @hashstrings, align 8
  %650 = getelementptr inbounds i8* %649, i64 %648
  %651 = load i32* %i, align 4
  %652 = sext i32 %651 to i64
  %653 = load %struct.strchartype** @chartypes, align 8
  %654 = getelementptr inbounds %struct.strchartype* %653, i64 %652
  %655 = getelementptr inbounds %struct.strchartype* %654, i32 0, i32 2
  store i8* %650, i8** %655, align 8
  br label %656

; <label>:656                                     ; preds = %664, %604
  %657 = load i32* %nextchar, align 4
  %658 = sext i32 %657 to i64
  %659 = load i8** @hashstrings, align 8
  %660 = getelementptr inbounds i8* %659, i64 %658
  %661 = load i8* %660
  %662 = sext i8 %661 to i32
  %663 = icmp ne i32 %662, 0
  br i1 %663, label %664, label %675

; <label>:664                                     ; preds = %656
  %665 = load i32* %nextchar, align 4
  %666 = sext i32 %665 to i64
  %667 = load i8** @hashstrings, align 8
  %668 = getelementptr inbounds i8* %667, i64 %666
  %669 = call i64 @strlen(i8* %668) nounwind readonly
  %670 = add i64 %669, 1
  %671 = load i32* %nextchar, align 4
  %672 = sext i32 %671 to i64
  %673 = add i64 %672, %670
  %674 = trunc i64 %673 to i32
  store i32 %674, i32* %nextchar, align 4
  br label %656

; <label>:675                                     ; preds = %656
  %676 = load i32* %nextchar, align 4
  %677 = add nsw i32 %676, 1
  store i32 %677, i32* %nextchar, align 4
  br label %678

; <label>:678                                     ; preds = %675
  %679 = load i32* %i, align 4
  %680 = add nsw i32 %679, 1
  store i32 %680, i32* %i, align 4
  br label %600

; <label>:681                                     ; preds = %600
  br label %682

; <label>:682                                     ; preds = %681, %586
  store i32 1, i32* @inited, align 4
  store i32 0, i32* %1
  br label %683

; <label>:683                                     ; preds = %682, %595, %571, %438, %205, %184, %149, %132, %85, %65, %48, %39, %34, %8, %4
  %684 = load i32* %1
  ret i32 %684
}

declare i32 @open(...)

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...)

declare i32 @read(...)

declare noalias i8* @calloc(i64, i64) nounwind

declare noalias i8* @malloc(i64) nounwind

declare i32 @lseek(...)

declare i32 @close(...)

declare i32 @strcmp(i8*, i8*) nounwind readonly

declare i64 @strlen(i8*) nounwind readonly

define %struct.dent* @lookup(i8* %s, i32 %dotree) nounwind uwtable {
  %1 = alloca %struct.dent*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %dp = alloca %struct.dent*, align 8
  %s1 = alloca i8*, align 8
  %schar = alloca [120 x i8], align 16
  store i8* %s, i8** %2, align 8
  store i32 %dotree, i32* %3, align 4
  %4 = load i8** %2, align 8
  %5 = load i32* @hashsize, align 4
  %6 = call i32 @hash(i8* %4, i32 %5)
  %7 = sext i32 %6 to i64
  %8 = load %struct.dent** @hashtbl, align 8
  %9 = getelementptr inbounds %struct.dent* %8, i64 %7
  store %struct.dent* %9, %struct.dent** %dp, align 8
  %10 = getelementptr inbounds [120 x i8]* %schar, i32 0, i32 0
  %11 = load i8** %2, align 8
  %12 = call i32 @ichartostr(i8* %10, i8* %11, i32 120, i32 1)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

; <label>:14                                      ; preds = %0
  %15 = load %struct._IO_FILE** @stderr, align 8
  %16 = getelementptr inbounds [120 x i8]* %schar, i32 0, i32 0
  %17 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([51 x i8]* @.str10, i32 0, i32 0), i8* %16, i32 467, i8* getelementptr inbounds ([83 x i8]* @.str11, i32 0, i32 0))
  br label %18

; <label>:18                                      ; preds = %14, %0
  br label %19

; <label>:19                                      ; preds = %59, %18
  %20 = load %struct.dent** %dp, align 8
  %21 = icmp ne %struct.dent* %20, null
  br i1 %21, label %22, label %63

; <label>:22                                      ; preds = %19
  %23 = load %struct.dent** %dp, align 8
  %24 = getelementptr inbounds %struct.dent* %23, i32 0, i32 1
  %25 = load i8** %24, align 8
  store i8* %25, i8** %s1, align 8
  %26 = load i8** %s1, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %46

; <label>:28                                      ; preds = %22
  %29 = load i8** %s1, align 8
  %30 = getelementptr inbounds i8* %29, i64 0
  %31 = load i8* %30
  %32 = sext i8 %31 to i32
  %33 = getelementptr inbounds [120 x i8]* %schar, i32 0, i64 0
  %34 = load i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %32, %35
  br i1 %36, label %37, label %46

; <label>:37                                      ; preds = %28
  %38 = load i8** %s1, align 8
  %39 = getelementptr inbounds i8* %38, i64 1
  %40 = getelementptr inbounds [120 x i8]* %schar, i32 0, i32 0
  %41 = getelementptr inbounds i8* %40, i64 1
  %42 = call i32 @strcmp(i8* %39, i8* %41) nounwind readonly
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %46

; <label>:44                                      ; preds = %37
  %45 = load %struct.dent** %dp, align 8
  store %struct.dent* %45, %struct.dent** %1
  br label %71

; <label>:46                                      ; preds = %37, %28, %22
  br label %47

; <label>:47                                      ; preds = %54, %46
  %48 = load %struct.dent** %dp, align 8
  %49 = getelementptr inbounds %struct.dent* %48, i32 0, i32 2
  %50 = getelementptr inbounds [1 x i64]* %49, i32 0, i64 0
  %51 = load i64* %50, align 8
  %52 = and i64 %51, 1073741824
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

; <label>:54                                      ; preds = %47
  %55 = load %struct.dent** %dp, align 8
  %56 = getelementptr inbounds %struct.dent* %55, i32 0, i32 0
  %57 = load %struct.dent** %56, align 8
  store %struct.dent* %57, %struct.dent** %dp, align 8
  br label %47

; <label>:58                                      ; preds = %47
  br label %59

; <label>:59                                      ; preds = %58
  %60 = load %struct.dent** %dp, align 8
  %61 = getelementptr inbounds %struct.dent* %60, i32 0, i32 0
  %62 = load %struct.dent** %61, align 8
  store %struct.dent* %62, %struct.dent** %dp, align 8
  br label %19

; <label>:63                                      ; preds = %19
  %64 = load i32* %3, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

; <label>:66                                      ; preds = %63
  %67 = load i8** %2, align 8
  %68 = call %struct.dent* @treelookup(i8* %67)
  store %struct.dent* %68, %struct.dent** %dp, align 8
  %69 = load %struct.dent** %dp, align 8
  store %struct.dent* %69, %struct.dent** %1
  br label %71

; <label>:70                                      ; preds = %63
  store %struct.dent* null, %struct.dent** %1
  br label %71

; <label>:71                                      ; preds = %70, %66, %44
  %72 = load %struct.dent** %1
  ret %struct.dent* %72
}

declare i32 @hash(i8*, i32)

declare i32 @ichartostr(i8*, i8*, i32, i32)

declare %struct.dent* @treelookup(i8*)
