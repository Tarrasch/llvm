; ModuleID = 'tgood.o'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.flagptr = type { %union.ptr_union, i32 }
%union.ptr_union = type { %struct.flagptr* }
%struct.flagent = type { i8*, i8*, i16, i16, i16, i16, i16, [228 x i8] }
%struct.hashheader = type { i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i8], [13 x i8], i8, i8, i8, [228 x i16], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [128 x i8], [100 x [11 x i8]], [100 x i32], [100 x i32], i16 }
%struct.success = type { %struct.dent*, %struct.flagent*, %struct.flagent* }
%struct.dent = type { %struct.dent*, i8*, [1 x i64] }

@pflagindex = external global [228 x %struct.flagptr]
@numhits = external global i32
@cflag = external global i32
@pflaglist = external global %struct.flagent*
@numpflags = external global i32
@sflaglist = external global %struct.flagent*
@numsflags = external global i32
@hashheader = external global %struct.hashheader
@.str = private unnamed_addr constant [4 x i8] c"\0A%s\00", align 1
@.str1 = private unnamed_addr constant [6 x i8] c" %s%s\00", align 1
@sflagindex = external global [228 x %struct.flagptr]
@compoundflag = external global i32
@hits = external global [10 x %struct.success]

define void @chk_aff(i8* %word, i8* %ucword, i32 %len, i32 %ignoreflagbits, i32 %allhits, i32 %pfxopts, i32 %sfxopts) nounwind uwtable {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %cp = alloca i8*, align 8
  %ind = alloca %struct.flagptr*, align 8
  store i8* %word, i8** %1, align 8
  store i8* %ucword, i8** %2, align 8
  store i32 %len, i32* %3, align 4
  store i32 %ignoreflagbits, i32* %4, align 4
  store i32 %allhits, i32* %5, align 4
  store i32 %pfxopts, i32* %6, align 4
  store i32 %sfxopts, i32* %7, align 4
  %8 = load i8** %1, align 8
  %9 = load i8** %2, align 8
  %10 = load i32* %3, align 4
  %11 = load i32* %6, align 4
  %12 = load i32* %7, align 4
  %13 = load i32* %4, align 4
  %14 = load i32* %5, align 4
  call void @pfx_list_chk(i8* %8, i8* %9, i32 %10, i32 %11, i32 %12, %struct.flagptr* getelementptr inbounds ([228 x %struct.flagptr]* @pflagindex, i32 0, i64 0), i32 %13, i32 %14)
  %15 = load i8** %2, align 8
  store i8* %15, i8** %cp, align 8
  %16 = load i8** %cp, align 8
  %17 = getelementptr inbounds i8* %16, i32 1
  store i8* %17, i8** %cp, align 8
  %18 = load i8* %16
  %19 = zext i8 %18 to i64
  %20 = getelementptr inbounds [228 x %struct.flagptr]* @pflagindex, i32 0, i64 %19
  store %struct.flagptr* %20, %struct.flagptr** %ind, align 8
  br label %21

; <label>:21                                      ; preds = %75, %0
  %22 = load %struct.flagptr** %ind, align 8
  %23 = getelementptr inbounds %struct.flagptr* %22, i32 0, i32 1
  %24 = load i32* %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %32

; <label>:26                                      ; preds = %21
  %27 = load %struct.flagptr** %ind, align 8
  %28 = getelementptr inbounds %struct.flagptr* %27, i32 0, i32 0
  %29 = bitcast %union.ptr_union* %28 to %struct.flagptr**
  %30 = load %struct.flagptr** %29, align 8
  %31 = icmp ne %struct.flagptr* %30, null
  br label %32

; <label>:32                                      ; preds = %26, %21
  %33 = phi i1 [ false, %21 ], [ %31, %26 ]
  br i1 %33, label %34, label %85

; <label>:34                                      ; preds = %32
  %35 = load i8** %cp, align 8
  %36 = load i8* %35
  %37 = zext i8 %36 to i32
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

; <label>:39                                      ; preds = %34
  br label %113

; <label>:40                                      ; preds = %34
  %41 = load %struct.flagptr** %ind, align 8
  %42 = getelementptr inbounds %struct.flagptr* %41, i32 0, i32 0
  %43 = bitcast %union.ptr_union* %42 to %struct.flagptr**
  %44 = load %struct.flagptr** %43, align 8
  %45 = getelementptr inbounds %struct.flagptr* %44, i64 0
  %46 = getelementptr inbounds %struct.flagptr* %45, i32 0, i32 1
  %47 = load i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %75

; <label>:49                                      ; preds = %40
  %50 = load i8** %1, align 8
  %51 = load i8** %2, align 8
  %52 = load i32* %3, align 4
  %53 = load i32* %6, align 4
  %54 = load i32* %7, align 4
  %55 = load %struct.flagptr** %ind, align 8
  %56 = getelementptr inbounds %struct.flagptr* %55, i32 0, i32 0
  %57 = bitcast %union.ptr_union* %56 to %struct.flagptr**
  %58 = load %struct.flagptr** %57, align 8
  %59 = getelementptr inbounds %struct.flagptr* %58, i64 0
  %60 = load i32* %4, align 4
  %61 = load i32* %5, align 4
  call void @pfx_list_chk(i8* %50, i8* %51, i32 %52, i32 %53, i32 %54, %struct.flagptr* %59, i32 %60, i32 %61)
  %62 = load i32* @numhits, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %74

; <label>:64                                      ; preds = %49
  %65 = load i32* %5, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %74, label %67

; <label>:67                                      ; preds = %64
  %68 = load i32* @cflag, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %74, label %70

; <label>:70                                      ; preds = %67
  %71 = load i32* %4, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

; <label>:73                                      ; preds = %70
  br label %113

; <label>:74                                      ; preds = %70, %67, %64, %49
  br label %75

; <label>:75                                      ; preds = %74, %40
  %76 = load i8** %cp, align 8
  %77 = getelementptr inbounds i8* %76, i32 1
  store i8* %77, i8** %cp, align 8
  %78 = load i8* %76
  %79 = zext i8 %78 to i64
  %80 = load %struct.flagptr** %ind, align 8
  %81 = getelementptr inbounds %struct.flagptr* %80, i32 0, i32 0
  %82 = bitcast %union.ptr_union* %81 to %struct.flagptr**
  %83 = load %struct.flagptr** %82, align 8
  %84 = getelementptr inbounds %struct.flagptr* %83, i64 %79
  store %struct.flagptr* %84, %struct.flagptr** %ind, align 8
  br label %21

; <label>:85                                      ; preds = %32
  %86 = load i8** %1, align 8
  %87 = load i8** %2, align 8
  %88 = load i32* %3, align 4
  %89 = load i32* %6, align 4
  %90 = load i32* %7, align 4
  %91 = load %struct.flagptr** %ind, align 8
  %92 = load i32* %4, align 4
  %93 = load i32* %5, align 4
  call void @pfx_list_chk(i8* %86, i8* %87, i32 %88, i32 %89, i32 %90, %struct.flagptr* %91, i32 %92, i32 %93)
  %94 = load i32* @numhits, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %106

; <label>:96                                      ; preds = %85
  %97 = load i32* %5, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %106, label %99

; <label>:99                                      ; preds = %96
  %100 = load i32* @cflag, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %106, label %102

; <label>:102                                     ; preds = %99
  %103 = load i32* %4, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

; <label>:105                                     ; preds = %102
  br label %113

; <label>:106                                     ; preds = %102, %99, %96, %85
  %107 = load i8** %1, align 8
  %108 = load i8** %2, align 8
  %109 = load i32* %3, align 4
  %110 = load i32* %7, align 4
  %111 = load i32* %4, align 4
  %112 = load i32* %5, align 4
  call void @chk_suf(i8* %107, i8* %108, i32 %109, i32 %110, %struct.flagent* null, i32 %111, i32 %112)
  br label %113

; <label>:113                                     ; preds = %106, %105, %73, %39
  ret void
}

define internal void @pfx_list_chk(i8* %word, i8* %ucword, i32 %len, i32 %optflags, i32 %sfxopts, %struct.flagptr* %ind, i32 %ignoreflagbits, i32 %allhits) nounwind uwtable {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.flagptr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %cond = alloca i32, align 4
  %cp = alloca i8*, align 8
  %dent = alloca %struct.dent*, align 8
  %entcount = alloca i32, align 4
  %flent = alloca %struct.flagent*, align 8
  %preadd = alloca i32, align 4
  %tlen = alloca i32, align 4
  %tword = alloca [184 x i8], align 16
  %tword2 = alloca [184 x i8], align 16
  store i8* %word, i8** %1, align 8
  store i8* %ucword, i8** %2, align 8
  store i32 %len, i32* %3, align 4
  store i32 %optflags, i32* %4, align 4
  store i32 %sfxopts, i32* %5, align 4
  store %struct.flagptr* %ind, %struct.flagptr** %6, align 8
  store i32 %ignoreflagbits, i32* %7, align 4
  store i32 %allhits, i32* %8, align 4
  %9 = load %struct.flagptr** %6, align 8
  %10 = getelementptr inbounds %struct.flagptr* %9, i32 0, i32 0
  %11 = bitcast %union.ptr_union* %10 to %struct.flagent**
  %12 = load %struct.flagent** %11, align 8
  store %struct.flagent* %12, %struct.flagent** %flent, align 8
  %13 = load %struct.flagptr** %6, align 8
  %14 = getelementptr inbounds %struct.flagptr* %13, i32 0, i32 1
  %15 = load i32* %14, align 4
  store i32 %15, i32* %entcount, align 4
  br label %16

; <label>:16                                      ; preds = %314, %0
  %17 = load i32* %entcount, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %319

; <label>:19                                      ; preds = %16
  %20 = load %struct.flagent** %flent, align 8
  %21 = getelementptr inbounds %struct.flagent* %20, i32 0, i32 6
  %22 = load i16* %21, align 2
  %23 = sext i16 %22 to i32
  %24 = and i32 %23, 2
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

; <label>:26                                      ; preds = %19
  %27 = load i32* %4, align 4
  %28 = and i32 %27, 2
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

; <label>:30                                      ; preds = %26
  br label %314

; <label>:31                                      ; preds = %26, %19
  %32 = load i32* @compoundflag, align 4
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %34, label %44

; <label>:34                                      ; preds = %31
  %35 = load %struct.flagent** %flent, align 8
  %36 = getelementptr inbounds %struct.flagent* %35, i32 0, i32 6
  %37 = load i16* %36, align 2
  %38 = sext i16 %37 to i32
  %39 = load i32* %4, align 4
  %40 = xor i32 %38, %39
  %41 = and i32 %40, 2
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

; <label>:43                                      ; preds = %34
  br label %314

; <label>:44                                      ; preds = %34, %31
  %45 = load i32* %3, align 4
  %46 = load %struct.flagent** %flent, align 8
  %47 = getelementptr inbounds %struct.flagent* %46, i32 0, i32 4
  %48 = load i16* %47, align 2
  %49 = sext i16 %48 to i32
  %50 = sub nsw i32 %45, %49
  store i32 %50, i32* %tlen, align 4
  %51 = load i32* %tlen, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %313

; <label>:53                                      ; preds = %44
  %54 = load %struct.flagent** %flent, align 8
  %55 = getelementptr inbounds %struct.flagent* %54, i32 0, i32 4
  %56 = load i16* %55, align 2
  %57 = sext i16 %56 to i32
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %70, label %59

; <label>:59                                      ; preds = %53
  %60 = load %struct.flagent** %flent, align 8
  %61 = getelementptr inbounds %struct.flagent* %60, i32 0, i32 1
  %62 = load i8** %61, align 8
  %63 = load i8** %2, align 8
  %64 = load %struct.flagent** %flent, align 8
  %65 = getelementptr inbounds %struct.flagent* %64, i32 0, i32 4
  %66 = load i16* %65, align 2
  %67 = sext i16 %66 to i64
  %68 = call i32 @strncmp(i8* %62, i8* %63, i64 %67) nounwind readonly
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %313

; <label>:70                                      ; preds = %59, %53
  %71 = load i32* %tlen, align 4
  %72 = load %struct.flagent** %flent, align 8
  %73 = getelementptr inbounds %struct.flagent* %72, i32 0, i32 3
  %74 = load i16* %73, align 2
  %75 = sext i16 %74 to i32
  %76 = add nsw i32 %71, %75
  %77 = load %struct.flagent** %flent, align 8
  %78 = getelementptr inbounds %struct.flagent* %77, i32 0, i32 5
  %79 = load i16* %78, align 2
  %80 = sext i16 %79 to i32
  %81 = icmp sge i32 %76, %80
  br i1 %81, label %82, label %313

; <label>:82                                      ; preds = %70
  %83 = load %struct.flagent** %flent, align 8
  %84 = getelementptr inbounds %struct.flagent* %83, i32 0, i32 3
  %85 = load i16* %84, align 2
  %86 = icmp ne i16 %85, 0
  br i1 %86, label %87, label %93

; <label>:87                                      ; preds = %82
  %88 = getelementptr inbounds [184 x i8]* %tword, i32 0, i32 0
  %89 = load %struct.flagent** %flent, align 8
  %90 = getelementptr inbounds %struct.flagent* %89, i32 0, i32 0
  %91 = load i8** %90, align 8
  %92 = call i8* @strcpy(i8* %88, i8* %91) nounwind
  br label %93

; <label>:93                                      ; preds = %87, %82
  %94 = getelementptr inbounds [184 x i8]* %tword, i32 0, i32 0
  %95 = load %struct.flagent** %flent, align 8
  %96 = getelementptr inbounds %struct.flagent* %95, i32 0, i32 3
  %97 = load i16* %96, align 2
  %98 = sext i16 %97 to i32
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8* %94, i64 %99
  %101 = load i8** %2, align 8
  %102 = load %struct.flagent** %flent, align 8
  %103 = getelementptr inbounds %struct.flagent* %102, i32 0, i32 4
  %104 = load i16* %103, align 2
  %105 = sext i16 %104 to i32
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8* %101, i64 %106
  %108 = call i8* @strcpy(i8* %100, i8* %107) nounwind
  %109 = getelementptr inbounds [184 x i8]* %tword, i32 0, i32 0
  store i8* %109, i8** %cp, align 8
  store i32 0, i32* %cond, align 4
  br label %110

; <label>:110                                     ; preds = %133, %93
  %111 = load i32* %cond, align 4
  %112 = load %struct.flagent** %flent, align 8
  %113 = getelementptr inbounds %struct.flagent* %112, i32 0, i32 5
  %114 = load i16* %113, align 2
  %115 = sext i16 %114 to i32
  %116 = icmp slt i32 %111, %115
  br i1 %116, label %117, label %136

; <label>:117                                     ; preds = %110
  %118 = load i8** %cp, align 8
  %119 = getelementptr inbounds i8* %118, i32 1
  store i8* %119, i8** %cp, align 8
  %120 = load i8* %118
  %121 = zext i8 %120 to i64
  %122 = load %struct.flagent** %flent, align 8
  %123 = getelementptr inbounds %struct.flagent* %122, i32 0, i32 7
  %124 = getelementptr inbounds [228 x i8]* %123, i32 0, i64 %121
  %125 = load i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = load i32* %cond, align 4
  %128 = shl i32 1, %127
  %129 = and i32 %126, %128
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %132

; <label>:131                                     ; preds = %117
  br label %136

; <label>:132                                     ; preds = %117
  br label %133

; <label>:133                                     ; preds = %132
  %134 = load i32* %cond, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %cond, align 4
  br label %110

; <label>:136                                     ; preds = %131, %110
  %137 = load i32* %cond, align 4
  %138 = load %struct.flagent** %flent, align 8
  %139 = getelementptr inbounds %struct.flagent* %138, i32 0, i32 5
  %140 = load i16* %139, align 2
  %141 = sext i16 %140 to i32
  %142 = icmp sge i32 %137, %141
  br i1 %142, label %143, label %312

; <label>:143                                     ; preds = %136
  %144 = load %struct.flagent** %flent, align 8
  %145 = getelementptr inbounds %struct.flagent* %144, i32 0, i32 3
  %146 = load i16* %145, align 2
  %147 = sext i16 %146 to i32
  %148 = load i32* %tlen, align 4
  %149 = add nsw i32 %148, %147
  store i32 %149, i32* %tlen, align 4
  %150 = load i32* @cflag, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %167

; <label>:152                                     ; preds = %143
  %153 = getelementptr inbounds [184 x i8]* %tword, i32 0, i32 0
  %154 = load %struct.flagent** %flent, align 8
  %155 = getelementptr inbounds %struct.flagent* %154, i32 0, i32 2
  %156 = load i16* %155, align 2
  %157 = sext i16 %156 to i32
  %158 = add nsw i32 %157, 65
  %159 = load %struct.flagent** %flent, align 8
  %160 = getelementptr inbounds %struct.flagent* %159, i32 0, i32 3
  %161 = load i16* %160, align 2
  %162 = sext i16 %161 to i32
  %163 = load %struct.flagent** %flent, align 8
  %164 = getelementptr inbounds %struct.flagent* %163, i32 0, i32 4
  %165 = load i16* %164, align 2
  %166 = sext i16 %165 to i32
  call void @flagpr(i8* %153, i32 %158, i32 %162, i32 %166, i32 -1, i32 0)
  br label %295

; <label>:167                                     ; preds = %143
  %168 = load i32* %7, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %245

; <label>:170                                     ; preds = %167
  %171 = getelementptr inbounds [184 x i8]* %tword, i32 0, i32 0
  %172 = call %struct.dent* @lookup(i8* %171, i32 1)
  store %struct.dent* %172, %struct.dent** %dent, align 8
  %173 = icmp ne %struct.dent* %172, null
  br i1 %173, label %174, label %244

; <label>:174                                     ; preds = %170
  %175 = getelementptr inbounds [184 x i8]* %tword2, i32 0, i32 0
  store i8* %175, i8** %cp, align 8
  %176 = load %struct.flagent** %flent, align 8
  %177 = getelementptr inbounds %struct.flagent* %176, i32 0, i32 4
  %178 = load i16* %177, align 2
  %179 = icmp ne i16 %178, 0
  br i1 %179, label %180, label %195

; <label>:180                                     ; preds = %174
  %181 = load i8** %cp, align 8
  %182 = load %struct.flagent** %flent, align 8
  %183 = getelementptr inbounds %struct.flagent* %182, i32 0, i32 1
  %184 = load i8** %183, align 8
  %185 = call i8* @strcpy(i8* %181, i8* %184) nounwind
  %186 = load %struct.flagent** %flent, align 8
  %187 = getelementptr inbounds %struct.flagent* %186, i32 0, i32 4
  %188 = load i16* %187, align 2
  %189 = sext i16 %188 to i32
  %190 = load i8** %cp, align 8
  %191 = sext i32 %189 to i64
  %192 = getelementptr inbounds i8* %190, i64 %191
  store i8* %192, i8** %cp, align 8
  %193 = load i8** %cp, align 8
  %194 = getelementptr inbounds i8* %193, i32 1
  store i8* %194, i8** %cp, align 8
  store i8 43, i8* %193
  br label %195

; <label>:195                                     ; preds = %180, %174
  %196 = load i8** %cp, align 8
  %197 = getelementptr inbounds [184 x i8]* %tword2, i32 0, i32 0
  %198 = ptrtoint i8* %196 to i64
  %199 = ptrtoint i8* %197 to i64
  %200 = sub i64 %198, %199
  %201 = trunc i64 %200 to i32
  store i32 %201, i32* %preadd, align 4
  %202 = load i8** %cp, align 8
  %203 = getelementptr inbounds [184 x i8]* %tword, i32 0, i32 0
  %204 = call i8* @strcpy(i8* %202, i8* %203) nounwind
  %205 = load i32* %tlen, align 4
  %206 = load i8** %cp, align 8
  %207 = sext i32 %205 to i64
  %208 = getelementptr inbounds i8* %206, i64 %207
  store i8* %208, i8** %cp, align 8
  %209 = load %struct.flagent** %flent, align 8
  %210 = getelementptr inbounds %struct.flagent* %209, i32 0, i32 3
  %211 = load i16* %210, align 2
  %212 = icmp ne i16 %211, 0
  br i1 %212, label %213, label %221

; <label>:213                                     ; preds = %195
  %214 = load i8** %cp, align 8
  %215 = getelementptr inbounds i8* %214, i32 1
  store i8* %215, i8** %cp, align 8
  store i8 45, i8* %214
  %216 = load i8** %cp, align 8
  %217 = load %struct.flagent** %flent, align 8
  %218 = getelementptr inbounds %struct.flagent* %217, i32 0, i32 0
  %219 = load i8** %218, align 8
  %220 = call i8* @strcpy(i8* %216, i8* %219) nounwind
  br label %221

; <label>:221                                     ; preds = %213, %195
  %222 = getelementptr inbounds [184 x i8]* %tword2, i32 0, i32 0
  %223 = load i8** %1, align 8
  %224 = load %struct.flagent** %flent, align 8
  %225 = getelementptr inbounds %struct.flagent* %224, i32 0, i32 3
  %226 = load i16* %225, align 2
  %227 = sext i16 %226 to i32
  %228 = load i32* %preadd, align 4
  %229 = load i8** %cp, align 8
  %230 = getelementptr inbounds [184 x i8]* %tword2, i32 0, i32 0
  %231 = ptrtoint i8* %229 to i64
  %232 = ptrtoint i8* %230 to i64
  %233 = sub i64 %231, %232
  %234 = load i32* %tlen, align 4
  %235 = sext i32 %234 to i64
  %236 = sub nsw i64 %233, %235
  %237 = load i32* %preadd, align 4
  %238 = sext i32 %237 to i64
  %239 = sub nsw i64 %236, %238
  %240 = trunc i64 %239 to i32
  %241 = load %struct.dent** %dent, align 8
  %242 = load %struct.flagent** %flent, align 8
  %243 = call i32 @ins_root_cap(i8* %222, i8* %223, i32 %227, i32 %228, i32 0, i32 %240, %struct.dent* %241, %struct.flagent* %242, %struct.flagent* null)
  br label %244

; <label>:244                                     ; preds = %221, %170
  br label %294

; <label>:245                                     ; preds = %167
  %246 = getelementptr inbounds [184 x i8]* %tword, i32 0, i32 0
  %247 = call %struct.dent* @lookup(i8* %246, i32 1)
  store %struct.dent* %247, %struct.dent** %dent, align 8
  %248 = icmp ne %struct.dent* %247, null
  br i1 %248, label %249, label %293

; <label>:249                                     ; preds = %245
  %250 = load %struct.dent** %dent, align 8
  %251 = getelementptr inbounds %struct.dent* %250, i32 0, i32 2
  %252 = getelementptr inbounds [1 x i64]* %251, i32 0, i64 0
  %253 = load i64* %252, align 8
  %254 = load %struct.flagent** %flent, align 8
  %255 = getelementptr inbounds %struct.flagent* %254, i32 0, i32 2
  %256 = load i16* %255, align 2
  %257 = sext i16 %256 to i32
  %258 = zext i32 %257 to i64
  %259 = shl i64 1, %258
  %260 = and i64 %253, %259
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %293

; <label>:262                                     ; preds = %249
  %263 = load i32* @numhits, align 4
  %264 = icmp slt i32 %263, 10
  br i1 %264, label %265, label %282

; <label>:265                                     ; preds = %262
  %266 = load %struct.dent** %dent, align 8
  %267 = load i32* @numhits, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds [10 x %struct.success]* @hits, i32 0, i64 %268
  %270 = getelementptr inbounds %struct.success* %269, i32 0, i32 0
  store %struct.dent* %266, %struct.dent** %270, align 8
  %271 = load %struct.flagent** %flent, align 8
  %272 = load i32* @numhits, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds [10 x %struct.success]* @hits, i32 0, i64 %273
  %275 = getelementptr inbounds %struct.success* %274, i32 0, i32 1
  store %struct.flagent* %271, %struct.flagent** %275, align 8
  %276 = load i32* @numhits, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds [10 x %struct.success]* @hits, i32 0, i64 %277
  %279 = getelementptr inbounds %struct.success* %278, i32 0, i32 2
  store %struct.flagent* null, %struct.flagent** %279, align 8
  %280 = load i32* @numhits, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* @numhits, align 4
  br label %282

; <label>:282                                     ; preds = %265, %262
  %283 = load i32* %8, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %292, label %285

; <label>:285                                     ; preds = %282
  %286 = load i8** %1, align 8
  %287 = load i32* %3, align 4
  %288 = call i32 @cap_ok(i8* %286, %struct.success* getelementptr inbounds ([10 x %struct.success]* @hits, i32 0, i64 0), i32 %287)
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %291

; <label>:290                                     ; preds = %285
  br label %319

; <label>:291                                     ; preds = %285
  store i32 0, i32* @numhits, align 4
  br label %292

; <label>:292                                     ; preds = %291, %282
  br label %293

; <label>:293                                     ; preds = %292, %249, %245
  br label %294

; <label>:294                                     ; preds = %293, %244
  br label %295

; <label>:295                                     ; preds = %294, %152
  %296 = load %struct.flagent** %flent, align 8
  %297 = getelementptr inbounds %struct.flagent* %296, i32 0, i32 6
  %298 = load i16* %297, align 2
  %299 = sext i16 %298 to i32
  %300 = and i32 %299, 1
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %311

; <label>:302                                     ; preds = %295
  %303 = load i8** %1, align 8
  %304 = getelementptr inbounds [184 x i8]* %tword, i32 0, i32 0
  %305 = load i32* %tlen, align 4
  %306 = load i32* %5, align 4
  %307 = or i32 %306, 1
  %308 = load %struct.flagent** %flent, align 8
  %309 = load i32* %7, align 4
  %310 = load i32* %8, align 4
  call void @chk_suf(i8* %303, i8* %304, i32 %305, i32 %307, %struct.flagent* %308, i32 %309, i32 %310)
  br label %311

; <label>:311                                     ; preds = %302, %295
  br label %312

; <label>:312                                     ; preds = %311, %136
  br label %313

; <label>:313                                     ; preds = %312, %70, %59, %44
  br label %314

; <label>:314                                     ; preds = %313, %43, %30
  %315 = load %struct.flagent** %flent, align 8
  %316 = getelementptr inbounds %struct.flagent* %315, i32 1
  store %struct.flagent* %316, %struct.flagent** %flent, align 8
  %317 = load i32* %entcount, align 4
  %318 = add nsw i32 %317, -1
  store i32 %318, i32* %entcount, align 4
  br label %16

; <label>:319                                     ; preds = %290, %16
  ret void
}

define internal void @chk_suf(i8* %word, i8* %ucword, i32 %len, i32 %optflags, %struct.flagent* %pfxent, i32 %ignoreflagbits, i32 %allhits) nounwind uwtable {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.flagent*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %cp = alloca i8*, align 8
  %ind = alloca %struct.flagptr*, align 8
  store i8* %word, i8** %1, align 8
  store i8* %ucword, i8** %2, align 8
  store i32 %len, i32* %3, align 4
  store i32 %optflags, i32* %4, align 4
  store %struct.flagent* %pfxent, %struct.flagent** %5, align 8
  store i32 %ignoreflagbits, i32* %6, align 4
  store i32 %allhits, i32* %7, align 4
  %8 = load i8** %1, align 8
  %9 = load i8** %2, align 8
  %10 = load i32* %3, align 4
  %11 = load i32* %4, align 4
  %12 = load %struct.flagent** %5, align 8
  %13 = load i32* %6, align 4
  %14 = load i32* %7, align 4
  call void @suf_list_chk(i8* %8, i8* %9, i32 %10, %struct.flagptr* getelementptr inbounds ([228 x %struct.flagptr]* @sflagindex, i32 0, i64 0), i32 %11, %struct.flagent* %12, i32 %13, i32 %14)
  %15 = load i8** %2, align 8
  %16 = load i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8* %15, i64 %17
  %19 = getelementptr inbounds i8* %18, i64 -1
  store i8* %19, i8** %cp, align 8
  %20 = load i8** %cp, align 8
  %21 = load i8* %20
  %22 = zext i8 %21 to i64
  %23 = getelementptr inbounds [228 x %struct.flagptr]* @sflagindex, i32 0, i64 %22
  store %struct.flagptr* %23, %struct.flagptr** %ind, align 8
  br label %24

; <label>:24                                      ; preds = %77, %0
  %25 = load %struct.flagptr** %ind, align 8
  %26 = getelementptr inbounds %struct.flagptr* %25, i32 0, i32 1
  %27 = load i32* %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %35

; <label>:29                                      ; preds = %24
  %30 = load %struct.flagptr** %ind, align 8
  %31 = getelementptr inbounds %struct.flagptr* %30, i32 0, i32 0
  %32 = bitcast %union.ptr_union* %31 to %struct.flagptr**
  %33 = load %struct.flagptr** %32, align 8
  %34 = icmp ne %struct.flagptr* %33, null
  br label %35

; <label>:35                                      ; preds = %29, %24
  %36 = phi i1 [ false, %24 ], [ %34, %29 ]
  br i1 %36, label %37, label %87

; <label>:37                                      ; preds = %35
  %38 = load i8** %cp, align 8
  %39 = load i8** %2, align 8
  %40 = icmp eq i8* %38, %39
  br i1 %40, label %41, label %42

; <label>:41                                      ; preds = %37
  br label %96

; <label>:42                                      ; preds = %37
  %43 = load %struct.flagptr** %ind, align 8
  %44 = getelementptr inbounds %struct.flagptr* %43, i32 0, i32 0
  %45 = bitcast %union.ptr_union* %44 to %struct.flagptr**
  %46 = load %struct.flagptr** %45, align 8
  %47 = getelementptr inbounds %struct.flagptr* %46, i64 0
  %48 = getelementptr inbounds %struct.flagptr* %47, i32 0, i32 1
  %49 = load i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %77

; <label>:51                                      ; preds = %42
  %52 = load i8** %1, align 8
  %53 = load i8** %2, align 8
  %54 = load i32* %3, align 4
  %55 = load %struct.flagptr** %ind, align 8
  %56 = getelementptr inbounds %struct.flagptr* %55, i32 0, i32 0
  %57 = bitcast %union.ptr_union* %56 to %struct.flagptr**
  %58 = load %struct.flagptr** %57, align 8
  %59 = getelementptr inbounds %struct.flagptr* %58, i64 0
  %60 = load i32* %4, align 4
  %61 = load %struct.flagent** %5, align 8
  %62 = load i32* %6, align 4
  %63 = load i32* %7, align 4
  call void @suf_list_chk(i8* %52, i8* %53, i32 %54, %struct.flagptr* %59, i32 %60, %struct.flagent* %61, i32 %62, i32 %63)
  %64 = load i32* @numhits, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %76

; <label>:66                                      ; preds = %51
  %67 = load i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %76, label %69

; <label>:69                                      ; preds = %66
  %70 = load i32* @cflag, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %76, label %72

; <label>:72                                      ; preds = %69
  %73 = load i32* %6, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

; <label>:75                                      ; preds = %72
  br label %96

; <label>:76                                      ; preds = %72, %69, %66, %51
  br label %77

; <label>:77                                      ; preds = %76, %42
  %78 = load i8** %cp, align 8
  %79 = getelementptr inbounds i8* %78, i32 -1
  store i8* %79, i8** %cp, align 8
  %80 = load i8* %79
  %81 = zext i8 %80 to i64
  %82 = load %struct.flagptr** %ind, align 8
  %83 = getelementptr inbounds %struct.flagptr* %82, i32 0, i32 0
  %84 = bitcast %union.ptr_union* %83 to %struct.flagptr**
  %85 = load %struct.flagptr** %84, align 8
  %86 = getelementptr inbounds %struct.flagptr* %85, i64 %81
  store %struct.flagptr* %86, %struct.flagptr** %ind, align 8
  br label %24

; <label>:87                                      ; preds = %35
  %88 = load i8** %1, align 8
  %89 = load i8** %2, align 8
  %90 = load i32* %3, align 4
  %91 = load %struct.flagptr** %ind, align 8
  %92 = load i32* %4, align 4
  %93 = load %struct.flagent** %5, align 8
  %94 = load i32* %6, align 4
  %95 = load i32* %7, align 4
  call void @suf_list_chk(i8* %88, i8* %89, i32 %90, %struct.flagptr* %91, i32 %92, %struct.flagent* %93, i32 %94, i32 %95)
  br label %96

; <label>:96                                      ; preds = %87, %75, %41
  ret void
}

define i32 @expand_pre(i8* %croot, i8* %rootword, i64* %mask, i32 %option, i8* %extra) nounwind uwtable {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %entcount = alloca i32, align 4
  %explength = alloca i32, align 4
  %flent = alloca %struct.flagent*, align 8
  store i8* %croot, i8** %1, align 8
  store i8* %rootword, i8** %2, align 8
  store i64* %mask, i64** %3, align 8
  store i32 %option, i32* %4, align 4
  store i8* %extra, i8** %5, align 8
  %6 = load %struct.flagent** @pflaglist, align 8
  store %struct.flagent* %6, %struct.flagent** %flent, align 8
  %7 = load i32* @numpflags, align 4
  store i32 %7, i32* %entcount, align 4
  store i32 0, i32* %explength, align 4
  br label %8

; <label>:8                                       ; preds = %34, %0
  %9 = load i32* %entcount, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %39

; <label>:11                                      ; preds = %8
  %12 = load i64** %3, align 8
  %13 = getelementptr inbounds i64* %12, i64 0
  %14 = load i64* %13
  %15 = load %struct.flagent** %flent, align 8
  %16 = getelementptr inbounds %struct.flagent* %15, i32 0, i32 2
  %17 = load i16* %16, align 2
  %18 = sext i16 %17 to i32
  %19 = zext i32 %18 to i64
  %20 = shl i64 1, %19
  %21 = and i64 %14, %20
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %33

; <label>:23                                      ; preds = %11
  %24 = load i8** %1, align 8
  %25 = load i8** %2, align 8
  %26 = load %struct.flagent** %flent, align 8
  %27 = load i64** %3, align 8
  %28 = load i32* %4, align 4
  %29 = load i8** %5, align 8
  %30 = call i32 @pr_pre_expansion(i8* %24, i8* %25, %struct.flagent* %26, i64* %27, i32 %28, i8* %29)
  %31 = load i32* %explength, align 4
  %32 = add nsw i32 %31, %30
  store i32 %32, i32* %explength, align 4
  br label %33

; <label>:33                                      ; preds = %23, %11
  br label %34

; <label>:34                                      ; preds = %33
  %35 = load %struct.flagent** %flent, align 8
  %36 = getelementptr inbounds %struct.flagent* %35, i32 1
  store %struct.flagent* %36, %struct.flagent** %flent, align 8
  %37 = load i32* %entcount, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %entcount, align 4
  br label %8

; <label>:39                                      ; preds = %8
  %40 = load i32* %explength, align 4
  ret i32 %40
}

define internal i32 @pr_pre_expansion(i8* %croot, i8* %rootword, %struct.flagent* %flent, i64* %mask, i32 %option, i8* %extra) nounwind uwtable {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.flagent*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %cond = alloca i32, align 4
  %nextc = alloca i8*, align 8
  %tlen = alloca i32, align 4
  %tword = alloca [120 x i8], align 16
  store i8* %croot, i8** %2, align 8
  store i8* %rootword, i8** %3, align 8
  store %struct.flagent* %flent, %struct.flagent** %4, align 8
  store i64* %mask, i64** %5, align 8
  store i32 %option, i32* %6, align 4
  store i8* %extra, i8** %7, align 8
  %8 = load i8** %3, align 8
  %9 = call i64 @strlen(i8* %8) nounwind readonly
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %tlen, align 4
  %11 = load %struct.flagent** %4, align 8
  %12 = getelementptr inbounds %struct.flagent* %11, i32 0, i32 5
  %13 = load i16* %12, align 2
  %14 = sext i16 %13 to i32
  %15 = load i32* %tlen, align 4
  %16 = icmp sgt i32 %14, %15
  br i1 %16, label %17, label %18

; <label>:17                                      ; preds = %0
  store i32 0, i32* %1
  br label %215

; <label>:18                                      ; preds = %0
  %19 = load %struct.flagent** %4, align 8
  %20 = getelementptr inbounds %struct.flagent* %19, i32 0, i32 3
  %21 = load i16* %20, align 2
  %22 = sext i16 %21 to i32
  %23 = load i32* %tlen, align 4
  %24 = sub nsw i32 %23, %22
  store i32 %24, i32* %tlen, align 4
  %25 = load i32* %tlen, align 4
  %26 = icmp sle i32 %25, 0
  br i1 %26, label %27, label %28

; <label>:27                                      ; preds = %18
  store i32 0, i32* %1
  br label %215

; <label>:28                                      ; preds = %18
  %29 = load %struct.flagent** %4, align 8
  %30 = getelementptr inbounds %struct.flagent* %29, i32 0, i32 4
  %31 = load i16* %30, align 2
  %32 = sext i16 %31 to i32
  %33 = load i32* %tlen, align 4
  %34 = add nsw i32 %33, %32
  store i32 %34, i32* %tlen, align 4
  store i32 0, i32* %cond, align 4
  %35 = load i8** %3, align 8
  store i8* %35, i8** %nextc, align 8
  br label %36

; <label>:36                                      ; preds = %62, %28
  %37 = load i32* %cond, align 4
  %38 = load %struct.flagent** %4, align 8
  %39 = getelementptr inbounds %struct.flagent* %38, i32 0, i32 5
  %40 = load i16* %39, align 2
  %41 = sext i16 %40 to i32
  %42 = icmp slt i32 %37, %41
  br i1 %42, label %43, label %65

; <label>:43                                      ; preds = %36
  %44 = load i8** %nextc, align 8
  %45 = getelementptr inbounds i8* %44, i32 1
  store i8* %45, i8** %nextc, align 8
  %46 = load i8* %44
  %47 = zext i8 %46 to i64
  %48 = getelementptr inbounds [228 x i8]* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 22), i32 0, i64 %47
  %49 = load i8* %48, align 1
  %50 = zext i8 %49 to i64
  %51 = load %struct.flagent** %4, align 8
  %52 = getelementptr inbounds %struct.flagent* %51, i32 0, i32 7
  %53 = getelementptr inbounds [228 x i8]* %52, i32 0, i64 %50
  %54 = load i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = load i32* %cond, align 4
  %57 = shl i32 1, %56
  %58 = and i32 %55, %57
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

; <label>:60                                      ; preds = %43
  store i32 0, i32* %1
  br label %215

; <label>:61                                      ; preds = %43
  br label %62

; <label>:62                                      ; preds = %61
  %63 = load i32* %cond, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %cond, align 4
  br label %36

; <label>:65                                      ; preds = %36
  %66 = load %struct.flagent** %4, align 8
  %67 = getelementptr inbounds %struct.flagent* %66, i32 0, i32 4
  %68 = load i16* %67, align 2
  %69 = icmp ne i16 %68, 0
  br i1 %69, label %70, label %83

; <label>:70                                      ; preds = %65
  %71 = getelementptr inbounds [120 x i8]* %tword, i32 0, i32 0
  %72 = load %struct.flagent** %4, align 8
  %73 = getelementptr inbounds %struct.flagent* %72, i32 0, i32 1
  %74 = load i8** %73, align 8
  %75 = call i8* @strcpy(i8* %71, i8* %74) nounwind
  %76 = getelementptr inbounds [120 x i8]* %tword, i32 0, i32 0
  %77 = load %struct.flagent** %4, align 8
  %78 = getelementptr inbounds %struct.flagent* %77, i32 0, i32 4
  %79 = load i16* %78, align 2
  %80 = sext i16 %79 to i32
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8* %76, i64 %81
  store i8* %82, i8** %nextc, align 8
  br label %83

; <label>:83                                      ; preds = %70, %65
  %84 = load i8** %nextc, align 8
  %85 = load i8** %3, align 8
  %86 = load %struct.flagent** %4, align 8
  %87 = getelementptr inbounds %struct.flagent* %86, i32 0, i32 3
  %88 = load i16* %87, align 2
  %89 = sext i16 %88 to i32
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8* %85, i64 %90
  %92 = call i8* @strcpy(i8* %84, i8* %91) nounwind
  %93 = load i8** %3, align 8
  %94 = getelementptr inbounds i8* %93, i64 0
  %95 = load i8* %94
  %96 = zext i8 %95 to i64
  %97 = getelementptr inbounds [228 x i8]* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 24), i32 0, i64 %96
  %98 = load i8* %97, align 1
  %99 = icmp ne i8 %98, 0
  br i1 %99, label %100, label %169

; <label>:100                                     ; preds = %83
  %101 = load i8** %3, align 8
  %102 = getelementptr inbounds i8* %101, i64 1
  store i8* %102, i8** %nextc, align 8
  br label %103

; <label>:103                                     ; preds = %116, %100
  %104 = load i8** %nextc, align 8
  %105 = load i8* %104
  %106 = icmp ne i8 %105, 0
  br i1 %106, label %107, label %119

; <label>:107                                     ; preds = %103
  %108 = load i8** %nextc, align 8
  %109 = load i8* %108
  %110 = zext i8 %109 to i64
  %111 = getelementptr inbounds [228 x i8]* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 24), i32 0, i64 %110
  %112 = load i8* %111, align 1
  %113 = icmp ne i8 %112, 0
  br i1 %113, label %115, label %114

; <label>:114                                     ; preds = %107
  br label %119

; <label>:115                                     ; preds = %107
  br label %116

; <label>:116                                     ; preds = %115
  %117 = load i8** %nextc, align 8
  %118 = getelementptr inbounds i8* %117, i32 1
  store i8* %118, i8** %nextc, align 8
  br label %103

; <label>:119                                     ; preds = %114, %103
  %120 = load i8** %nextc, align 8
  %121 = load i8* %120
  %122 = icmp ne i8 %121, 0
  br i1 %122, label %123, label %168

; <label>:123                                     ; preds = %119
  br label %124

; <label>:124                                     ; preds = %137, %123
  %125 = load i8** %nextc, align 8
  %126 = load i8* %125
  %127 = icmp ne i8 %126, 0
  br i1 %127, label %128, label %140

; <label>:128                                     ; preds = %124
  %129 = load i8** %nextc, align 8
  %130 = load i8* %129
  %131 = zext i8 %130 to i64
  %132 = getelementptr inbounds [228 x i8]* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 24), i32 0, i64 %131
  %133 = load i8* %132, align 1
  %134 = icmp ne i8 %133, 0
  br i1 %134, label %135, label %136

; <label>:135                                     ; preds = %128
  br label %140

; <label>:136                                     ; preds = %128
  br label %137

; <label>:137                                     ; preds = %136
  %138 = load i8** %nextc, align 8
  %139 = getelementptr inbounds i8* %138, i32 1
  store i8* %139, i8** %nextc, align 8
  br label %124

; <label>:140                                     ; preds = %135, %124
  %141 = load i8** %nextc, align 8
  %142 = load i8* %141
  %143 = icmp ne i8 %142, 0
  br i1 %143, label %144, label %162

; <label>:144                                     ; preds = %140
  %145 = load %struct.flagent** %4, align 8
  %146 = getelementptr inbounds %struct.flagent* %145, i32 0, i32 4
  %147 = load i16* %146, align 2
  %148 = sext i16 %147 to i64
  %149 = getelementptr inbounds [120 x i8]* %tword, i32 0, i64 %148
  %150 = load i8* %149, align 1
  %151 = zext i8 %150 to i64
  %152 = getelementptr inbounds [228 x i8]* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 24), i32 0, i64 %151
  %153 = load i8* %152, align 1
  %154 = icmp ne i8 %153, 0
  br i1 %154, label %161, label %155

; <label>:155                                     ; preds = %144
  %156 = getelementptr inbounds [120 x i8]* %tword, i32 0, i32 0
  %157 = load %struct.flagent** %4, align 8
  %158 = getelementptr inbounds %struct.flagent* %157, i32 0, i32 4
  %159 = load i16* %158, align 2
  %160 = sext i16 %159 to i32
  call void @forcelc(i8* %156, i32 %160)
  br label %161

; <label>:161                                     ; preds = %155, %144
  br label %167

; <label>:162                                     ; preds = %140
  %163 = getelementptr inbounds [120 x i8]* %tword, i32 0, i32 0
  %164 = getelementptr inbounds i8* %163, i64 1
  %165 = load i32* %tlen, align 4
  %166 = sub nsw i32 %165, 1
  call void @forcelc(i8* %164, i32 %166)
  br label %167

; <label>:167                                     ; preds = %162, %161
  br label %168

; <label>:168                                     ; preds = %167, %119
  br label %183

; <label>:169                                     ; preds = %83
  %170 = load i8** %nextc, align 8
  %171 = load i8* %170
  %172 = zext i8 %171 to i64
  %173 = getelementptr inbounds [228 x i8]* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 24), i32 0, i64 %172
  %174 = load i8* %173, align 1
  %175 = icmp ne i8 %174, 0
  br i1 %175, label %182, label %176

; <label>:176                                     ; preds = %169
  %177 = getelementptr inbounds [120 x i8]* %tword, i32 0, i32 0
  %178 = load %struct.flagent** %4, align 8
  %179 = getelementptr inbounds %struct.flagent* %178, i32 0, i32 4
  %180 = load i16* %179, align 2
  %181 = sext i16 %180 to i32
  call void @forcelc(i8* %177, i32 %181)
  br label %182

; <label>:182                                     ; preds = %176, %169
  br label %183

; <label>:183                                     ; preds = %182, %168
  %184 = load i32* %6, align 4
  %185 = icmp eq i32 %184, 3
  br i1 %185, label %186, label %189

; <label>:186                                     ; preds = %183
  %187 = load i8** %2, align 8
  %188 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str, i32 0, i32 0), i8* %187)
  br label %189

; <label>:189                                     ; preds = %186, %183
  %190 = load i32* %6, align 4
  %191 = icmp ne i32 %190, 4
  br i1 %191, label %192, label %197

; <label>:192                                     ; preds = %189
  %193 = getelementptr inbounds [120 x i8]* %tword, i32 0, i32 0
  %194 = call i8* @ichartosstr(i8* %193, i32 1)
  %195 = load i8** %7, align 8
  %196 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([6 x i8]* @.str1, i32 0, i32 0), i8* %194, i8* %195)
  br label %197

; <label>:197                                     ; preds = %192, %189
  %198 = load %struct.flagent** %4, align 8
  %199 = getelementptr inbounds %struct.flagent* %198, i32 0, i32 6
  %200 = load i16* %199, align 2
  %201 = sext i16 %200 to i32
  %202 = and i32 %201, 1
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %213

; <label>:204                                     ; preds = %197
  %205 = load i32* %tlen, align 4
  %206 = load i8** %2, align 8
  %207 = getelementptr inbounds [120 x i8]* %tword, i32 0, i32 0
  %208 = load i64** %5, align 8
  %209 = load i32* %6, align 4
  %210 = load i8** %7, align 8
  %211 = call i32 @expand_suf(i8* %206, i8* %207, i64* %208, i32 1, i32 %209, i8* %210)
  %212 = add nsw i32 %205, %211
  store i32 %212, i32* %1
  br label %215

; <label>:213                                     ; preds = %197
  %214 = load i32* %tlen, align 4
  store i32 %214, i32* %1
  br label %215

; <label>:215                                     ; preds = %213, %204, %60, %27, %17
  %216 = load i32* %1
  ret i32 %216
}

define i32 @expand_suf(i8* %croot, i8* %rootword, i64* %mask, i32 %optflags, i32 %option, i8* %extra) nounwind uwtable {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %entcount = alloca i32, align 4
  %explength = alloca i32, align 4
  %flent = alloca %struct.flagent*, align 8
  store i8* %croot, i8** %1, align 8
  store i8* %rootword, i8** %2, align 8
  store i64* %mask, i64** %3, align 8
  store i32 %optflags, i32* %4, align 4
  store i32 %option, i32* %5, align 4
  store i8* %extra, i8** %6, align 8
  %7 = load %struct.flagent** @sflaglist, align 8
  store %struct.flagent* %7, %struct.flagent** %flent, align 8
  %8 = load i32* @numsflags, align 4
  store i32 %8, i32* %entcount, align 4
  store i32 0, i32* %explength, align 4
  br label %9

; <label>:9                                       ; preds = %46, %0
  %10 = load i32* %entcount, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %51

; <label>:12                                      ; preds = %9
  %13 = load i64** %3, align 8
  %14 = getelementptr inbounds i64* %13, i64 0
  %15 = load i64* %14
  %16 = load %struct.flagent** %flent, align 8
  %17 = getelementptr inbounds %struct.flagent* %16, i32 0, i32 2
  %18 = load i16* %17, align 2
  %19 = sext i16 %18 to i32
  %20 = zext i32 %19 to i64
  %21 = shl i64 1, %20
  %22 = and i64 %15, %21
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %45

; <label>:24                                      ; preds = %12
  %25 = load i32* %4, align 4
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %35, label %28

; <label>:28                                      ; preds = %24
  %29 = load %struct.flagent** %flent, align 8
  %30 = getelementptr inbounds %struct.flagent* %29, i32 0, i32 6
  %31 = load i16* %30, align 2
  %32 = sext i16 %31 to i32
  %33 = and i32 %32, 1
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %44

; <label>:35                                      ; preds = %28, %24
  %36 = load i8** %1, align 8
  %37 = load i8** %2, align 8
  %38 = load %struct.flagent** %flent, align 8
  %39 = load i32* %5, align 4
  %40 = load i8** %6, align 8
  %41 = call i32 @pr_suf_expansion(i8* %36, i8* %37, %struct.flagent* %38, i32 %39, i8* %40)
  %42 = load i32* %explength, align 4
  %43 = add nsw i32 %42, %41
  store i32 %43, i32* %explength, align 4
  br label %44

; <label>:44                                      ; preds = %35, %28
  br label %45

; <label>:45                                      ; preds = %44, %12
  br label %46

; <label>:46                                      ; preds = %45
  %47 = load %struct.flagent** %flent, align 8
  %48 = getelementptr inbounds %struct.flagent* %47, i32 1
  store %struct.flagent* %48, %struct.flagent** %flent, align 8
  %49 = load i32* %entcount, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %entcount, align 4
  br label %9

; <label>:51                                      ; preds = %9
  %52 = load i32* %explength, align 4
  ret i32 %52
}

define internal i32 @pr_suf_expansion(i8* %croot, i8* %rootword, %struct.flagent* %flent, i32 %option, i8* %extra) nounwind uwtable {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.flagent*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %cond = alloca i32, align 4
  %nextc = alloca i8*, align 8
  %tlen = alloca i32, align 4
  %tword = alloca [120 x i8], align 16
  store i8* %croot, i8** %2, align 8
  store i8* %rootword, i8** %3, align 8
  store %struct.flagent* %flent, %struct.flagent** %4, align 8
  store i32 %option, i32* %5, align 4
  store i8* %extra, i8** %6, align 8
  %7 = load i8** %3, align 8
  %8 = call i64 @strlen(i8* %7) nounwind readonly
  %9 = trunc i64 %8 to i32
  store i32 %9, i32* %tlen, align 4
  %10 = load %struct.flagent** %4, align 8
  %11 = getelementptr inbounds %struct.flagent* %10, i32 0, i32 5
  %12 = load i16* %11, align 2
  %13 = sext i16 %12 to i32
  store i32 %13, i32* %cond, align 4
  %14 = load i32* %cond, align 4
  %15 = load i32* %tlen, align 4
  %16 = icmp sgt i32 %14, %15
  br i1 %16, label %17, label %18

; <label>:17                                      ; preds = %0
  store i32 0, i32* %1
  br label %122

; <label>:18                                      ; preds = %0
  %19 = load i32* %tlen, align 4
  %20 = load %struct.flagent** %4, align 8
  %21 = getelementptr inbounds %struct.flagent* %20, i32 0, i32 3
  %22 = load i16* %21, align 2
  %23 = sext i16 %22 to i32
  %24 = sub nsw i32 %19, %23
  %25 = icmp sle i32 %24, 0
  br i1 %25, label %26, label %27

; <label>:26                                      ; preds = %18
  store i32 0, i32* %1
  br label %122

; <label>:27                                      ; preds = %18
  %28 = load i8** %3, align 8
  %29 = load i32* %tlen, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8* %28, i64 %30
  store i8* %31, i8** %nextc, align 8
  br label %32

; <label>:32                                      ; preds = %54, %27
  %33 = load i32* %cond, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %cond, align 4
  %35 = icmp sge i32 %34, 0
  br i1 %35, label %36, label %55

; <label>:36                                      ; preds = %32
  %37 = load i8** %nextc, align 8
  %38 = getelementptr inbounds i8* %37, i32 -1
  store i8* %38, i8** %nextc, align 8
  %39 = load i8* %38
  %40 = zext i8 %39 to i64
  %41 = getelementptr inbounds [228 x i8]* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 22), i32 0, i64 %40
  %42 = load i8* %41, align 1
  %43 = zext i8 %42 to i64
  %44 = load %struct.flagent** %4, align 8
  %45 = getelementptr inbounds %struct.flagent* %44, i32 0, i32 7
  %46 = getelementptr inbounds [228 x i8]* %45, i32 0, i64 %43
  %47 = load i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = load i32* %cond, align 4
  %50 = shl i32 1, %49
  %51 = and i32 %48, %50
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %54

; <label>:53                                      ; preds = %36
  store i32 0, i32* %1
  br label %122

; <label>:54                                      ; preds = %36
  br label %32

; <label>:55                                      ; preds = %32
  %56 = getelementptr inbounds [120 x i8]* %tword, i32 0, i32 0
  %57 = load i8** %3, align 8
  %58 = call i8* @strcpy(i8* %56, i8* %57) nounwind
  %59 = getelementptr inbounds [120 x i8]* %tword, i32 0, i32 0
  %60 = load i32* %tlen, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8* %59, i64 %61
  %63 = load %struct.flagent** %4, align 8
  %64 = getelementptr inbounds %struct.flagent* %63, i32 0, i32 3
  %65 = load i16* %64, align 2
  %66 = sext i16 %65 to i32
  %67 = sext i32 %66 to i64
  %68 = sub i64 0, %67
  %69 = getelementptr inbounds i8* %62, i64 %68
  store i8* %69, i8** %nextc, align 8
  %70 = load %struct.flagent** %4, align 8
  %71 = getelementptr inbounds %struct.flagent* %70, i32 0, i32 4
  %72 = load i16* %71, align 2
  %73 = icmp ne i16 %72, 0
  br i1 %73, label %74, label %94

; <label>:74                                      ; preds = %55
  %75 = load i8** %nextc, align 8
  %76 = load %struct.flagent** %4, align 8
  %77 = getelementptr inbounds %struct.flagent* %76, i32 0, i32 1
  %78 = load i8** %77, align 8
  %79 = call i8* @strcpy(i8* %75, i8* %78) nounwind
  %80 = load i8** %nextc, align 8
  %81 = getelementptr inbounds i8* %80, i64 -1
  %82 = load i8* %81
  %83 = zext i8 %82 to i64
  %84 = getelementptr inbounds [228 x i8]* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 24), i32 0, i64 %83
  %85 = load i8* %84, align 1
  %86 = icmp ne i8 %85, 0
  br i1 %86, label %93, label %87

; <label>:87                                      ; preds = %74
  %88 = load i8** %nextc, align 8
  %89 = load %struct.flagent** %4, align 8
  %90 = getelementptr inbounds %struct.flagent* %89, i32 0, i32 4
  %91 = load i16* %90, align 2
  %92 = sext i16 %91 to i32
  call void @forcelc(i8* %88, i32 %92)
  br label %93

; <label>:93                                      ; preds = %87, %74
  br label %96

; <label>:94                                      ; preds = %55
  %95 = load i8** %nextc, align 8
  store i8 0, i8* %95
  br label %96

; <label>:96                                      ; preds = %94, %93
  %97 = load i32* %5, align 4
  %98 = icmp eq i32 %97, 3
  br i1 %98, label %99, label %102

; <label>:99                                      ; preds = %96
  %100 = load i8** %2, align 8
  %101 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str, i32 0, i32 0), i8* %100)
  br label %102

; <label>:102                                     ; preds = %99, %96
  %103 = load i32* %5, align 4
  %104 = icmp ne i32 %103, 4
  br i1 %104, label %105, label %110

; <label>:105                                     ; preds = %102
  %106 = getelementptr inbounds [120 x i8]* %tword, i32 0, i32 0
  %107 = call i8* @ichartosstr(i8* %106, i32 1)
  %108 = load i8** %6, align 8
  %109 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([6 x i8]* @.str1, i32 0, i32 0), i8* %107, i8* %108)
  br label %110

; <label>:110                                     ; preds = %105, %102
  %111 = load i32* %tlen, align 4
  %112 = load %struct.flagent** %4, align 8
  %113 = getelementptr inbounds %struct.flagent* %112, i32 0, i32 4
  %114 = load i16* %113, align 2
  %115 = sext i16 %114 to i32
  %116 = add nsw i32 %111, %115
  %117 = load %struct.flagent** %4, align 8
  %118 = getelementptr inbounds %struct.flagent* %117, i32 0, i32 3
  %119 = load i16* %118, align 2
  %120 = sext i16 %119 to i32
  %121 = sub nsw i32 %116, %120
  store i32 %121, i32* %1
  br label %122

; <label>:122                                     ; preds = %110, %53, %26, %17
  %123 = load i32* %1
  ret i32 %123
}

declare i64 @strlen(i8*) nounwind readonly

declare i8* @strcpy(i8*, i8*) nounwind

define internal void @forcelc(i8* %dst, i32 %len) nounwind uwtable {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  store i8* %dst, i8** %1, align 8
  store i32 %len, i32* %2, align 4
  br label %3

; <label>:3                                       ; preds = %14, %0
  %4 = load i32* %2, align 4
  %5 = add nsw i32 %4, -1
  store i32 %5, i32* %2, align 4
  %6 = icmp sge i32 %5, 0
  br i1 %6, label %7, label %17

; <label>:7                                       ; preds = %3
  %8 = load i8** %1, align 8
  %9 = load i8* %8
  %10 = zext i8 %9 to i64
  %11 = getelementptr inbounds [228 x i8]* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 21), i32 0, i64 %10
  %12 = load i8* %11, align 1
  %13 = load i8** %1, align 8
  store i8 %12, i8* %13
  br label %14

; <label>:14                                      ; preds = %7
  %15 = load i8** %1, align 8
  %16 = getelementptr inbounds i8* %15, i32 1
  store i8* %16, i8** %1, align 8
  br label %3

; <label>:17                                      ; preds = %3
  ret void
}

declare i32 @printf(i8*, ...)

declare i8* @ichartosstr(i8*, i32)

define internal void @suf_list_chk(i8* %word, i8* %ucword, i32 %len, %struct.flagptr* %ind, i32 %optflags, %struct.flagent* %pfxent, i32 %ignoreflagbits, i32 %allhits) nounwind uwtable {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.flagptr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.flagent*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %cp = alloca i8*, align 8
  %cond = alloca i32, align 4
  %dent = alloca %struct.dent*, align 8
  %entcount = alloca i32, align 4
  %flent = alloca %struct.flagent*, align 8
  %preadd = alloca i32, align 4
  %tlen = alloca i32, align 4
  %tword = alloca [184 x i8], align 16
  %tword2 = alloca [184 x i8], align 16
  store i8* %word, i8** %1, align 8
  store i8* %ucword, i8** %2, align 8
  store i32 %len, i32* %3, align 4
  store %struct.flagptr* %ind, %struct.flagptr** %4, align 8
  store i32 %optflags, i32* %5, align 4
  store %struct.flagent* %pfxent, %struct.flagent** %6, align 8
  store i32 %ignoreflagbits, i32* %7, align 4
  store i32 %allhits, i32* %8, align 4
  %9 = getelementptr inbounds [184 x i8]* %tword, i32 0, i32 0
  %10 = load i8** %2, align 8
  %11 = call i8* @strcpy(i8* %9, i8* %10) nounwind
  %12 = load %struct.flagptr** %4, align 8
  %13 = getelementptr inbounds %struct.flagptr* %12, i32 0, i32 0
  %14 = bitcast %union.ptr_union* %13 to %struct.flagent**
  %15 = load %struct.flagent** %14, align 8
  store %struct.flagent* %15, %struct.flagent** %flent, align 8
  %16 = load %struct.flagptr** %4, align 8
  %17 = getelementptr inbounds %struct.flagptr* %16, i32 0, i32 1
  %18 = load i32* %17, align 4
  store i32 %18, i32* %entcount, align 4
  br label %19

; <label>:19                                      ; preds = %415, %0
  %20 = load i32* %entcount, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %420

; <label>:22                                      ; preds = %19
  %23 = load i32* %5, align 4
  %24 = and i32 %23, 1
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

; <label>:26                                      ; preds = %22
  %27 = load %struct.flagent** %flent, align 8
  %28 = getelementptr inbounds %struct.flagent* %27, i32 0, i32 6
  %29 = load i16* %28, align 2
  %30 = sext i16 %29 to i32
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

; <label>:33                                      ; preds = %26
  br label %415

; <label>:34                                      ; preds = %26, %22
  %35 = load %struct.flagent** %flent, align 8
  %36 = getelementptr inbounds %struct.flagent* %35, i32 0, i32 6
  %37 = load i16* %36, align 2
  %38 = sext i16 %37 to i32
  %39 = and i32 %38, 2
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

; <label>:41                                      ; preds = %34
  %42 = load i32* %5, align 4
  %43 = and i32 %42, 2
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

; <label>:45                                      ; preds = %41
  br label %415

; <label>:46                                      ; preds = %41, %34
  %47 = load i32* @compoundflag, align 4
  %48 = icmp eq i32 %47, 2
  br i1 %48, label %49, label %59

; <label>:49                                      ; preds = %46
  %50 = load %struct.flagent** %flent, align 8
  %51 = getelementptr inbounds %struct.flagent* %50, i32 0, i32 6
  %52 = load i16* %51, align 2
  %53 = sext i16 %52 to i32
  %54 = load i32* %5, align 4
  %55 = xor i32 %53, %54
  %56 = and i32 %55, 2
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

; <label>:58                                      ; preds = %49
  br label %415

; <label>:59                                      ; preds = %49, %46
  %60 = load i32* %3, align 4
  %61 = load %struct.flagent** %flent, align 8
  %62 = getelementptr inbounds %struct.flagent* %61, i32 0, i32 4
  %63 = load i16* %62, align 2
  %64 = sext i16 %63 to i32
  %65 = sub nsw i32 %60, %64
  store i32 %65, i32* %tlen, align 4
  %66 = load i32* %tlen, align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %414

; <label>:68                                      ; preds = %59
  %69 = load %struct.flagent** %flent, align 8
  %70 = getelementptr inbounds %struct.flagent* %69, i32 0, i32 4
  %71 = load i16* %70, align 2
  %72 = sext i16 %71 to i32
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %84, label %74

; <label>:74                                      ; preds = %68
  %75 = load %struct.flagent** %flent, align 8
  %76 = getelementptr inbounds %struct.flagent* %75, i32 0, i32 1
  %77 = load i8** %76, align 8
  %78 = load i8** %2, align 8
  %79 = load i32* %tlen, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8* %78, i64 %80
  %82 = call i32 @strcmp(i8* %77, i8* %81) nounwind readonly
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %414

; <label>:84                                      ; preds = %74, %68
  %85 = load i32* %tlen, align 4
  %86 = load %struct.flagent** %flent, align 8
  %87 = getelementptr inbounds %struct.flagent* %86, i32 0, i32 3
  %88 = load i16* %87, align 2
  %89 = sext i16 %88 to i32
  %90 = add nsw i32 %85, %89
  %91 = load %struct.flagent** %flent, align 8
  %92 = getelementptr inbounds %struct.flagent* %91, i32 0, i32 5
  %93 = load i16* %92, align 2
  %94 = sext i16 %93 to i32
  %95 = icmp sge i32 %90, %94
  br i1 %95, label %96, label %414

; <label>:96                                      ; preds = %84
  %97 = getelementptr inbounds [184 x i8]* %tword, i32 0, i32 0
  %98 = load i8** %2, align 8
  %99 = call i8* @strcpy(i8* %97, i8* %98) nounwind
  %100 = getelementptr inbounds [184 x i8]* %tword, i32 0, i32 0
  %101 = load i32* %tlen, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8* %100, i64 %102
  store i8* %103, i8** %cp, align 8
  %104 = load %struct.flagent** %flent, align 8
  %105 = getelementptr inbounds %struct.flagent* %104, i32 0, i32 3
  %106 = load i16* %105, align 2
  %107 = icmp ne i16 %106, 0
  br i1 %107, label %108, label %124

; <label>:108                                     ; preds = %96
  %109 = load i8** %cp, align 8
  %110 = load %struct.flagent** %flent, align 8
  %111 = getelementptr inbounds %struct.flagent* %110, i32 0, i32 0
  %112 = load i8** %111, align 8
  %113 = call i8* @strcpy(i8* %109, i8* %112) nounwind
  %114 = load %struct.flagent** %flent, align 8
  %115 = getelementptr inbounds %struct.flagent* %114, i32 0, i32 3
  %116 = load i16* %115, align 2
  %117 = sext i16 %116 to i32
  %118 = load i32* %tlen, align 4
  %119 = add nsw i32 %118, %117
  store i32 %119, i32* %tlen, align 4
  %120 = getelementptr inbounds [184 x i8]* %tword, i32 0, i32 0
  %121 = load i32* %tlen, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8* %120, i64 %122
  store i8* %123, i8** %cp, align 8
  br label %126

; <label>:124                                     ; preds = %96
  %125 = load i8** %cp, align 8
  store i8 0, i8* %125
  br label %126

; <label>:126                                     ; preds = %124, %108
  %127 = load %struct.flagent** %flent, align 8
  %128 = getelementptr inbounds %struct.flagent* %127, i32 0, i32 5
  %129 = load i16* %128, align 2
  %130 = sext i16 %129 to i32
  store i32 %130, i32* %cond, align 4
  br label %131

; <label>:131                                     ; preds = %150, %126
  %132 = load i32* %cond, align 4
  %133 = add nsw i32 %132, -1
  store i32 %133, i32* %cond, align 4
  %134 = icmp sge i32 %133, 0
  br i1 %134, label %135, label %151

; <label>:135                                     ; preds = %131
  %136 = load i8** %cp, align 8
  %137 = getelementptr inbounds i8* %136, i32 -1
  store i8* %137, i8** %cp, align 8
  %138 = load i8* %137
  %139 = zext i8 %138 to i64
  %140 = load %struct.flagent** %flent, align 8
  %141 = getelementptr inbounds %struct.flagent* %140, i32 0, i32 7
  %142 = getelementptr inbounds [228 x i8]* %141, i32 0, i64 %139
  %143 = load i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = load i32* %cond, align 4
  %146 = shl i32 1, %145
  %147 = and i32 %144, %146
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %150

; <label>:149                                     ; preds = %135
  br label %151

; <label>:150                                     ; preds = %135
  br label %131

; <label>:151                                     ; preds = %149, %131
  %152 = load i32* %cond, align 4
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %154, label %413

; <label>:154                                     ; preds = %151
  %155 = load i32* @cflag, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %197

; <label>:157                                     ; preds = %154
  %158 = load i32* %5, align 4
  %159 = and i32 %158, 1
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %185

; <label>:161                                     ; preds = %157
  %162 = getelementptr inbounds [184 x i8]* %tword, i32 0, i32 0
  %163 = load %struct.flagent** %6, align 8
  %164 = getelementptr inbounds %struct.flagent* %163, i32 0, i32 2
  %165 = load i16* %164, align 2
  %166 = sext i16 %165 to i32
  %167 = add nsw i32 %166, 65
  %168 = load %struct.flagent** %6, align 8
  %169 = getelementptr inbounds %struct.flagent* %168, i32 0, i32 3
  %170 = load i16* %169, align 2
  %171 = sext i16 %170 to i32
  %172 = load %struct.flagent** %6, align 8
  %173 = getelementptr inbounds %struct.flagent* %172, i32 0, i32 4
  %174 = load i16* %173, align 2
  %175 = sext i16 %174 to i32
  %176 = load %struct.flagent** %flent, align 8
  %177 = getelementptr inbounds %struct.flagent* %176, i32 0, i32 2
  %178 = load i16* %177, align 2
  %179 = sext i16 %178 to i32
  %180 = add nsw i32 %179, 65
  %181 = load %struct.flagent** %flent, align 8
  %182 = getelementptr inbounds %struct.flagent* %181, i32 0, i32 4
  %183 = load i16* %182, align 2
  %184 = sext i16 %183 to i32
  call void @flagpr(i8* %162, i32 %167, i32 %171, i32 %175, i32 %180, i32 %184)
  br label %196

; <label>:185                                     ; preds = %157
  %186 = getelementptr inbounds [184 x i8]* %tword, i32 0, i32 0
  %187 = load %struct.flagent** %flent, align 8
  %188 = getelementptr inbounds %struct.flagent* %187, i32 0, i32 2
  %189 = load i16* %188, align 2
  %190 = sext i16 %189 to i32
  %191 = add nsw i32 %190, 65
  %192 = load %struct.flagent** %flent, align 8
  %193 = getelementptr inbounds %struct.flagent* %192, i32 0, i32 4
  %194 = load i16* %193, align 2
  %195 = sext i16 %194 to i32
  call void @flagpr(i8* %186, i32 -1, i32 0, i32 0, i32 %191, i32 %195)
  br label %196

; <label>:196                                     ; preds = %185, %161
  br label %412

; <label>:197                                     ; preds = %154
  %198 = load i32* %7, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %344

; <label>:200                                     ; preds = %197
  %201 = getelementptr inbounds [184 x i8]* %tword, i32 0, i32 0
  %202 = call %struct.dent* @lookup(i8* %201, i32 1)
  store %struct.dent* %202, %struct.dent** %dent, align 8
  %203 = icmp ne %struct.dent* %202, null
  br i1 %203, label %204, label %343

; <label>:204                                     ; preds = %200
  %205 = getelementptr inbounds [184 x i8]* %tword2, i32 0, i32 0
  store i8* %205, i8** %cp, align 8
  %206 = load i32* %5, align 4
  %207 = and i32 %206, 1
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %230

; <label>:209                                     ; preds = %204
  %210 = load %struct.flagent** %6, align 8
  %211 = getelementptr inbounds %struct.flagent* %210, i32 0, i32 4
  %212 = load i16* %211, align 2
  %213 = sext i16 %212 to i32
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %230

; <label>:215                                     ; preds = %209
  %216 = load i8** %cp, align 8
  %217 = load %struct.flagent** %6, align 8
  %218 = getelementptr inbounds %struct.flagent* %217, i32 0, i32 1
  %219 = load i8** %218, align 8
  %220 = call i8* @strcpy(i8* %216, i8* %219) nounwind
  %221 = load %struct.flagent** %6, align 8
  %222 = getelementptr inbounds %struct.flagent* %221, i32 0, i32 4
  %223 = load i16* %222, align 2
  %224 = sext i16 %223 to i32
  %225 = load i8** %cp, align 8
  %226 = sext i32 %224 to i64
  %227 = getelementptr inbounds i8* %225, i64 %226
  store i8* %227, i8** %cp, align 8
  %228 = load i8** %cp, align 8
  %229 = getelementptr inbounds i8* %228, i32 1
  store i8* %229, i8** %cp, align 8
  store i8 43, i8* %228
  br label %230

; <label>:230                                     ; preds = %215, %209, %204
  %231 = load i8** %cp, align 8
  %232 = getelementptr inbounds [184 x i8]* %tword2, i32 0, i32 0
  %233 = ptrtoint i8* %231 to i64
  %234 = ptrtoint i8* %232 to i64
  %235 = sub i64 %233, %234
  %236 = trunc i64 %235 to i32
  store i32 %236, i32* %preadd, align 4
  %237 = load i8** %cp, align 8
  %238 = getelementptr inbounds [184 x i8]* %tword, i32 0, i32 0
  %239 = call i8* @strcpy(i8* %237, i8* %238) nounwind
  %240 = load i32* %tlen, align 4
  %241 = load i8** %cp, align 8
  %242 = sext i32 %240 to i64
  %243 = getelementptr inbounds i8* %241, i64 %242
  store i8* %243, i8** %cp, align 8
  %244 = load i32* %5, align 4
  %245 = and i32 %244, 1
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %268

; <label>:247                                     ; preds = %230
  %248 = load %struct.flagent** %6, align 8
  %249 = getelementptr inbounds %struct.flagent* %248, i32 0, i32 3
  %250 = load i16* %249, align 2
  %251 = sext i16 %250 to i32
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %268

; <label>:253                                     ; preds = %247
  %254 = load i8** %cp, align 8
  %255 = getelementptr inbounds i8* %254, i32 1
  store i8* %255, i8** %cp, align 8
  store i8 45, i8* %254
  %256 = load i8** %cp, align 8
  %257 = load %struct.flagent** %6, align 8
  %258 = getelementptr inbounds %struct.flagent* %257, i32 0, i32 0
  %259 = load i8** %258, align 8
  %260 = call i8* @strcpy(i8* %256, i8* %259) nounwind
  %261 = load %struct.flagent** %6, align 8
  %262 = getelementptr inbounds %struct.flagent* %261, i32 0, i32 3
  %263 = load i16* %262, align 2
  %264 = sext i16 %263 to i32
  %265 = load i8** %cp, align 8
  %266 = sext i32 %264 to i64
  %267 = getelementptr inbounds i8* %265, i64 %266
  store i8* %267, i8** %cp, align 8
  br label %268

; <label>:268                                     ; preds = %253, %247, %230
  %269 = load %struct.flagent** %flent, align 8
  %270 = getelementptr inbounds %struct.flagent* %269, i32 0, i32 3
  %271 = load i16* %270, align 2
  %272 = icmp ne i16 %271, 0
  br i1 %272, label %273, label %288

; <label>:273                                     ; preds = %268
  %274 = load i8** %cp, align 8
  %275 = getelementptr inbounds i8* %274, i32 1
  store i8* %275, i8** %cp, align 8
  store i8 45, i8* %274
  %276 = load i8** %cp, align 8
  %277 = load %struct.flagent** %flent, align 8
  %278 = getelementptr inbounds %struct.flagent* %277, i32 0, i32 0
  %279 = load i8** %278, align 8
  %280 = call i8* @strcpy(i8* %276, i8* %279) nounwind
  %281 = load %struct.flagent** %flent, align 8
  %282 = getelementptr inbounds %struct.flagent* %281, i32 0, i32 3
  %283 = load i16* %282, align 2
  %284 = sext i16 %283 to i32
  %285 = load i8** %cp, align 8
  %286 = sext i32 %284 to i64
  %287 = getelementptr inbounds i8* %285, i64 %286
  store i8* %287, i8** %cp, align 8
  br label %288

; <label>:288                                     ; preds = %273, %268
  %289 = load %struct.flagent** %flent, align 8
  %290 = getelementptr inbounds %struct.flagent* %289, i32 0, i32 4
  %291 = load i16* %290, align 2
  %292 = icmp ne i16 %291, 0
  br i1 %292, label %293, label %308

; <label>:293                                     ; preds = %288
  %294 = load i8** %cp, align 8
  %295 = getelementptr inbounds i8* %294, i32 1
  store i8* %295, i8** %cp, align 8
  store i8 43, i8* %294
  %296 = load i8** %cp, align 8
  %297 = load %struct.flagent** %flent, align 8
  %298 = getelementptr inbounds %struct.flagent* %297, i32 0, i32 1
  %299 = load i8** %298, align 8
  %300 = call i8* @strcpy(i8* %296, i8* %299) nounwind
  %301 = load %struct.flagent** %flent, align 8
  %302 = getelementptr inbounds %struct.flagent* %301, i32 0, i32 4
  %303 = load i16* %302, align 2
  %304 = sext i16 %303 to i32
  %305 = load i8** %cp, align 8
  %306 = sext i32 %304 to i64
  %307 = getelementptr inbounds i8* %305, i64 %306
  store i8* %307, i8** %cp, align 8
  br label %308

; <label>:308                                     ; preds = %293, %288
  %309 = getelementptr inbounds [184 x i8]* %tword2, i32 0, i32 0
  %310 = load i8** %1, align 8
  %311 = load i32* %5, align 4
  %312 = and i32 %311, 1
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %319

; <label>:314                                     ; preds = %308
  %315 = load %struct.flagent** %6, align 8
  %316 = getelementptr inbounds %struct.flagent* %315, i32 0, i32 3
  %317 = load i16* %316, align 2
  %318 = sext i16 %317 to i32
  br label %320

; <label>:319                                     ; preds = %308
  br label %320

; <label>:320                                     ; preds = %319, %314
  %321 = phi i32 [ %318, %314 ], [ 0, %319 ]
  %322 = load i32* %preadd, align 4
  %323 = load %struct.flagent** %flent, align 8
  %324 = getelementptr inbounds %struct.flagent* %323, i32 0, i32 3
  %325 = load i16* %324, align 2
  %326 = sext i16 %325 to i32
  %327 = load i8** %cp, align 8
  %328 = getelementptr inbounds [184 x i8]* %tword2, i32 0, i32 0
  %329 = ptrtoint i8* %327 to i64
  %330 = ptrtoint i8* %328 to i64
  %331 = sub i64 %329, %330
  %332 = load i32* %tlen, align 4
  %333 = sext i32 %332 to i64
  %334 = sub nsw i64 %331, %333
  %335 = load i32* %preadd, align 4
  %336 = sext i32 %335 to i64
  %337 = sub nsw i64 %334, %336
  %338 = trunc i64 %337 to i32
  %339 = load %struct.dent** %dent, align 8
  %340 = load %struct.flagent** %6, align 8
  %341 = load %struct.flagent** %flent, align 8
  %342 = call i32 @ins_root_cap(i8* %309, i8* %310, i32 %321, i32 %322, i32 %326, i32 %338, %struct.dent* %339, %struct.flagent* %340, %struct.flagent* %341)
  br label %343

; <label>:343                                     ; preds = %320, %200
  br label %411

; <label>:344                                     ; preds = %197
  %345 = getelementptr inbounds [184 x i8]* %tword, i32 0, i32 0
  %346 = call %struct.dent* @lookup(i8* %345, i32 1)
  store %struct.dent* %346, %struct.dent** %dent, align 8
  %347 = icmp ne %struct.dent* %346, null
  br i1 %347, label %348, label %410

; <label>:348                                     ; preds = %344
  %349 = load %struct.dent** %dent, align 8
  %350 = getelementptr inbounds %struct.dent* %349, i32 0, i32 2
  %351 = getelementptr inbounds [1 x i64]* %350, i32 0, i64 0
  %352 = load i64* %351, align 8
  %353 = load %struct.flagent** %flent, align 8
  %354 = getelementptr inbounds %struct.flagent* %353, i32 0, i32 2
  %355 = load i16* %354, align 2
  %356 = sext i16 %355 to i32
  %357 = zext i32 %356 to i64
  %358 = shl i64 1, %357
  %359 = and i64 %352, %358
  %360 = icmp ne i64 %359, 0
  br i1 %360, label %361, label %410

; <label>:361                                     ; preds = %348
  %362 = load i32* %5, align 4
  %363 = and i32 %362, 1
  %364 = icmp eq i32 %363, 0
  br i1 %364, label %378, label %365

; <label>:365                                     ; preds = %361
  %366 = load %struct.dent** %dent, align 8
  %367 = getelementptr inbounds %struct.dent* %366, i32 0, i32 2
  %368 = getelementptr inbounds [1 x i64]* %367, i32 0, i64 0
  %369 = load i64* %368, align 8
  %370 = load %struct.flagent** %6, align 8
  %371 = getelementptr inbounds %struct.flagent* %370, i32 0, i32 2
  %372 = load i16* %371, align 2
  %373 = sext i16 %372 to i32
  %374 = zext i32 %373 to i64
  %375 = shl i64 1, %374
  %376 = and i64 %369, %375
  %377 = icmp ne i64 %376, 0
  br i1 %377, label %378, label %410

; <label>:378                                     ; preds = %365, %361
  %379 = load i32* @numhits, align 4
  %380 = icmp slt i32 %379, 10
  br i1 %380, label %381, label %399

; <label>:381                                     ; preds = %378
  %382 = load %struct.dent** %dent, align 8
  %383 = load i32* @numhits, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds [10 x %struct.success]* @hits, i32 0, i64 %384
  %386 = getelementptr inbounds %struct.success* %385, i32 0, i32 0
  store %struct.dent* %382, %struct.dent** %386, align 8
  %387 = load %struct.flagent** %6, align 8
  %388 = load i32* @numhits, align 4
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds [10 x %struct.success]* @hits, i32 0, i64 %389
  %391 = getelementptr inbounds %struct.success* %390, i32 0, i32 1
  store %struct.flagent* %387, %struct.flagent** %391, align 8
  %392 = load %struct.flagent** %flent, align 8
  %393 = load i32* @numhits, align 4
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds [10 x %struct.success]* @hits, i32 0, i64 %394
  %396 = getelementptr inbounds %struct.success* %395, i32 0, i32 2
  store %struct.flagent* %392, %struct.flagent** %396, align 8
  %397 = load i32* @numhits, align 4
  %398 = add nsw i32 %397, 1
  store i32 %398, i32* @numhits, align 4
  br label %399

; <label>:399                                     ; preds = %381, %378
  %400 = load i32* %8, align 4
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %409, label %402

; <label>:402                                     ; preds = %399
  %403 = load i8** %1, align 8
  %404 = load i32* %3, align 4
  %405 = call i32 @cap_ok(i8* %403, %struct.success* getelementptr inbounds ([10 x %struct.success]* @hits, i32 0, i64 0), i32 %404)
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %407, label %408

; <label>:407                                     ; preds = %402
  br label %420

; <label>:408                                     ; preds = %402
  store i32 0, i32* @numhits, align 4
  br label %409

; <label>:409                                     ; preds = %408, %399
  br label %410

; <label>:410                                     ; preds = %409, %365, %348, %344
  br label %411

; <label>:411                                     ; preds = %410, %343
  br label %412

; <label>:412                                     ; preds = %411, %196
  br label %413

; <label>:413                                     ; preds = %412, %151
  br label %414

; <label>:414                                     ; preds = %413, %84, %74, %59
  br label %415

; <label>:415                                     ; preds = %414, %58, %45, %33
  %416 = load %struct.flagent** %flent, align 8
  %417 = getelementptr inbounds %struct.flagent* %416, i32 1
  store %struct.flagent* %417, %struct.flagent** %flent, align 8
  %418 = load i32* %entcount, align 4
  %419 = add nsw i32 %418, -1
  store i32 %419, i32* %entcount, align 4
  br label %19

; <label>:420                                     ; preds = %407, %19
  ret void
}

declare i32 @strcmp(i8*, i8*) nounwind readonly

declare void @flagpr(i8*, i32, i32, i32, i32, i32)

declare %struct.dent* @lookup(i8*, i32)

declare i32 @ins_root_cap(i8*, i8*, i32, i32, i32, i32, %struct.dent*, %struct.flagent*, %struct.flagent*)

declare i32 @cap_ok(i8*, %struct.success*, i32)

declare i32 @strncmp(i8*, i8*, i64) nounwind readonly
