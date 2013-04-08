; ModuleID = 'good.o'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.hashheader = type { i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i8], [13 x i8], i8, i8, i8, [228 x i16], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [128 x i8], [100 x [11 x i8]], [100 x i32], [100 x i32], i16 }
%struct.success = type { %struct.dent*, %struct.flagent*, %struct.flagent* }
%struct.dent = type { %struct.dent*, i8*, [1 x i64] }
%struct.flagent = type { i8*, i8*, i16, i16, i16, i16, i16, [228 x i8] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@hashheader = external global %struct.hashheader
@numhits = external global i32
@cflag = external global i32
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@orig_word = internal global i8* null, align 8
@hits = external global [10 x %struct.success]
@compoundflag = external global i32
@stdout = external global %struct._IO_FILE*

define i32 @good(i8* %w, i32 %ignoreflagbits, i32 %allhits, i32 %pfxopts, i32 %sfxopts) nounwind uwtable {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %nword = alloca [120 x i8], align 16
  %p = alloca i8*, align 8
  %q = alloca i8*, align 8
  %n = alloca i32, align 4
  %dp = alloca %struct.dent*, align 8
  store i8* %w, i8** %2, align 8
  store i32 %ignoreflagbits, i32* %3, align 4
  store i32 %allhits, i32* %4, align 4
  store i32 %pfxopts, i32* %5, align 4
  store i32 %sfxopts, i32* %6, align 4
  %7 = load i8** %2, align 8
  store i8* %7, i8** %p, align 8
  %8 = getelementptr inbounds [120 x i8]* %nword, i32 0, i32 0
  store i8* %8, i8** %q, align 8
  br label %9

; <label>:9                                       ; preds = %13, %0
  %10 = load i8** %p, align 8
  %11 = load i8* %10
  %12 = icmp ne i8 %11, 0
  br i1 %12, label %13, label %22

; <label>:13                                      ; preds = %9
  %14 = load i8** %p, align 8
  %15 = getelementptr inbounds i8* %14, i32 1
  store i8* %15, i8** %p, align 8
  %16 = load i8* %14
  %17 = zext i8 %16 to i64
  %18 = getelementptr inbounds [228 x i8]* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 22), i32 0, i64 %17
  %19 = load i8* %18, align 1
  %20 = load i8** %q, align 8
  %21 = getelementptr inbounds i8* %20, i32 1
  store i8* %21, i8** %q, align 8
  store i8 %19, i8* %20
  br label %9

; <label>:22                                      ; preds = %9
  %23 = load i8** %q, align 8
  store i8 0, i8* %23
  %24 = load i8** %q, align 8
  %25 = getelementptr inbounds [120 x i8]* %nword, i32 0, i32 0
  %26 = ptrtoint i8* %24 to i64
  %27 = ptrtoint i8* %25 to i64
  %28 = sub i64 %26, %27
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %n, align 4
  store i32 0, i32* @numhits, align 4
  %30 = load i32* @cflag, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

; <label>:32                                      ; preds = %22
  %33 = load i8** %2, align 8
  %34 = call i8* @ichartosstr(i8* %33, i32 0)
  %35 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([3 x i8]* @.str, i32 0, i32 0), i8* %34)
  %36 = load i8** %2, align 8
  store i8* %36, i8** @orig_word, align 8
  br label %78

; <label>:37                                      ; preds = %22
  %38 = getelementptr inbounds [120 x i8]* %nword, i32 0, i32 0
  %39 = call %struct.dent* @lookup(i8* %38, i32 1)
  store %struct.dent* %39, %struct.dent** %dp, align 8
  %40 = icmp ne %struct.dent* %39, null
  br i1 %40, label %41, label %77

; <label>:41                                      ; preds = %37
  %42 = load %struct.dent** %dp, align 8
  store %struct.dent* %42, %struct.dent** getelementptr inbounds ([10 x %struct.success]* @hits, i32 0, i64 0, i32 0), align 8
  store %struct.flagent* null, %struct.flagent** getelementptr inbounds ([10 x %struct.success]* @hits, i32 0, i64 0, i32 1), align 8
  store %struct.flagent* null, %struct.flagent** getelementptr inbounds ([10 x %struct.success]* @hits, i32 0, i64 0, i32 2), align 8
  %43 = load i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %50, label %45

; <label>:45                                      ; preds = %41
  %46 = load i8** %2, align 8
  %47 = load i32* %n, align 4
  %48 = call i32 @cap_ok(i8* %46, %struct.success* getelementptr inbounds ([10 x %struct.success]* @hits, i32 0, i64 0), i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

; <label>:50                                      ; preds = %45, %41
  store i32 1, i32* @numhits, align 4
  br label %51

; <label>:51                                      ; preds = %50, %45
  %52 = load i32* @compoundflag, align 4
  %53 = icmp eq i32 %52, 2
  br i1 %53, label %54, label %76

; <label>:54                                      ; preds = %51
  %55 = load i32* %5, align 4
  %56 = load i32* %6, align 4
  %57 = or i32 %55, %56
  %58 = and i32 %57, 2
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %76

; <label>:60                                      ; preds = %54
  %61 = load i16* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 5), align 2
  %62 = sext i16 %61 to i32
  %63 = icmp sge i32 %62, 0
  br i1 %63, label %64, label %76

; <label>:64                                      ; preds = %60
  %65 = load %struct.dent** %dp, align 8
  %66 = getelementptr inbounds %struct.dent* %65, i32 0, i32 2
  %67 = getelementptr inbounds [1 x i64]* %66, i32 0, i64 0
  %68 = load i64* %67, align 8
  %69 = load i16* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 5), align 2
  %70 = sext i16 %69 to i32
  %71 = zext i32 %70 to i64
  %72 = shl i64 1, %71
  %73 = and i64 %68, %72
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %76

; <label>:75                                      ; preds = %64
  store i32 0, i32* @numhits, align 4
  br label %76

; <label>:76                                      ; preds = %75, %64, %60, %54, %51
  br label %77

; <label>:77                                      ; preds = %76, %37
  br label %78

; <label>:78                                      ; preds = %77, %32
  %79 = load i32* @numhits, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

; <label>:81                                      ; preds = %78
  %82 = load i32* %4, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

; <label>:84                                      ; preds = %81
  store i32 1, i32* %1
  br label %99

; <label>:85                                      ; preds = %81, %78
  %86 = load i8** %2, align 8
  %87 = getelementptr inbounds [120 x i8]* %nword, i32 0, i32 0
  %88 = load i32* %n, align 4
  %89 = load i32* %3, align 4
  %90 = load i32* %4, align 4
  %91 = load i32* %5, align 4
  %92 = load i32* %6, align 4
  call void @chk_aff(i8* %86, i8* %87, i32 %88, i32 %89, i32 %90, i32 %91, i32 %92)
  %93 = load i32* @cflag, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

; <label>:95                                      ; preds = %85
  %96 = call i32 @putchar(i32 10)
  br label %97

; <label>:97                                      ; preds = %95, %85
  %98 = load i32* @numhits, align 4
  store i32 %98, i32* %1
  br label %99

; <label>:99                                      ; preds = %97, %84
  %100 = load i32* %1
  ret i32 %100
}

declare i32 @printf(i8*, ...)

declare i8* @ichartosstr(i8*, i32)

declare %struct.dent* @lookup(i8*, i32)

define i32 @cap_ok(i8* %word, %struct.success* %hit, i32 %len) nounwind uwtable {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca %struct.success*, align 8
  %4 = alloca i32, align 4
  %dword = alloca i8*, align 8
  %w = alloca i8*, align 8
  %dent = alloca %struct.dent*, align 8
  %dentword = alloca [120 x i8], align 16
  %preadd = alloca i32, align 4
  %prestrip = alloca i32, align 4
  %sufadd = alloca i32, align 4
  %limit = alloca i8*, align 8
  %thiscap = alloca i64, align 8
  %dentcap = alloca i64, align 8
  store i8* %word, i8** %2, align 8
  store %struct.success* %hit, %struct.success** %3, align 8
  store i32 %len, i32* %4, align 4
  %5 = load i8** %2, align 8
  %6 = call i64 @whatcap(i8* %5)
  store i64 %6, i64* %thiscap, align 8
  store i32 0, i32* %sufadd, align 4
  store i32 0, i32* %prestrip, align 4
  store i32 0, i32* %preadd, align 4
  %7 = load i64* %thiscap, align 8
  %8 = icmp eq i64 %7, 268435456
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %0
  store i32 1, i32* %1
  br label %242

; <label>:10                                      ; preds = %0
  %11 = load i64* %thiscap, align 8
  %12 = icmp eq i64 %11, 805306368
  br i1 %12, label %13, label %47

; <label>:13                                      ; preds = %10
  %14 = load %struct.success** %3, align 8
  %15 = getelementptr inbounds %struct.success* %14, i32 0, i32 1
  %16 = load %struct.flagent** %15, align 8
  %17 = icmp ne %struct.flagent* %16, null
  br i1 %17, label %18, label %31

; <label>:18                                      ; preds = %13
  %19 = load %struct.success** %3, align 8
  %20 = getelementptr inbounds %struct.success* %19, i32 0, i32 1
  %21 = load %struct.flagent** %20, align 8
  %22 = getelementptr inbounds %struct.flagent* %21, i32 0, i32 4
  %23 = load i16* %22, align 2
  %24 = sext i16 %23 to i32
  store i32 %24, i32* %preadd, align 4
  %25 = load %struct.success** %3, align 8
  %26 = getelementptr inbounds %struct.success* %25, i32 0, i32 1
  %27 = load %struct.flagent** %26, align 8
  %28 = getelementptr inbounds %struct.flagent* %27, i32 0, i32 3
  %29 = load i16* %28, align 2
  %30 = sext i16 %29 to i32
  store i32 %30, i32* %prestrip, align 4
  br label %32

; <label>:31                                      ; preds = %13
  store i32 0, i32* %prestrip, align 4
  store i32 0, i32* %preadd, align 4
  br label %32

; <label>:32                                      ; preds = %31, %18
  %33 = load %struct.success** %3, align 8
  %34 = getelementptr inbounds %struct.success* %33, i32 0, i32 2
  %35 = load %struct.flagent** %34, align 8
  %36 = icmp ne %struct.flagent* %35, null
  br i1 %36, label %37, label %44

; <label>:37                                      ; preds = %32
  %38 = load %struct.success** %3, align 8
  %39 = getelementptr inbounds %struct.success* %38, i32 0, i32 2
  %40 = load %struct.flagent** %39, align 8
  %41 = getelementptr inbounds %struct.flagent* %40, i32 0, i32 4
  %42 = load i16* %41, align 2
  %43 = sext i16 %42 to i32
  br label %45

; <label>:44                                      ; preds = %32
  br label %45

; <label>:45                                      ; preds = %44, %37
  %46 = phi i32 [ %43, %37 ], [ 0, %44 ]
  store i32 %46, i32* %sufadd, align 4
  br label %47

; <label>:47                                      ; preds = %45, %10
  br label %48

; <label>:48                                      ; preds = %47
  %49 = load %struct.success** %3, align 8
  %50 = getelementptr inbounds %struct.success* %49, i32 0, i32 0
  %51 = load %struct.dent** %50, align 8
  store %struct.dent* %51, %struct.dent** %dent, align 8
  br label %52

; <label>:52                                      ; preds = %237, %48
  %53 = load %struct.dent** %dent, align 8
  %54 = getelementptr inbounds %struct.dent* %53, i32 0, i32 2
  %55 = getelementptr inbounds [1 x i64]* %54, i32 0, i64 0
  %56 = load i64* %55, align 8
  %57 = and i64 %56, 805306368
  store i64 %57, i64* %dentcap, align 8
  %58 = load i64* %dentcap, align 8
  %59 = load i64* %thiscap, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %74

; <label>:61                                      ; preds = %52
  %62 = load i64* %dentcap, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %73

; <label>:64                                      ; preds = %61
  %65 = load i64* %thiscap, align 8
  %66 = icmp eq i64 %65, 536870912
  br i1 %66, label %67, label %73

; <label>:67                                      ; preds = %64
  %68 = load %struct.dent** %dent, align 8
  %69 = load %struct.success** %3, align 8
  %70 = call i32 @entryhasaffixes(%struct.dent* %68, %struct.success* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

; <label>:72                                      ; preds = %67
  store i32 1, i32* %1
  br label %242

; <label>:73                                      ; preds = %67, %64, %61
  br label %229

; <label>:74                                      ; preds = %52
  %75 = load i64* %thiscap, align 8
  %76 = icmp ne i64 %75, 805306368
  br i1 %76, label %77, label %84

; <label>:77                                      ; preds = %74
  %78 = load %struct.dent** %dent, align 8
  %79 = load %struct.success** %3, align 8
  %80 = call i32 @entryhasaffixes(%struct.dent* %78, %struct.success* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

; <label>:82                                      ; preds = %77
  store i32 1, i32* %1
  br label %242

; <label>:83                                      ; preds = %77
  br label %228

; <label>:84                                      ; preds = %74
  %85 = getelementptr inbounds [120 x i8]* %dentword, i32 0, i32 0
  %86 = load %struct.dent** %dent, align 8
  %87 = getelementptr inbounds %struct.dent* %86, i32 0, i32 1
  %88 = load i8** %87, align 8
  %89 = call i32 @strtoichar(i8* %85, i8* %88, i32 100, i32 1)
  %90 = getelementptr inbounds [120 x i8]* %dentword, i32 0, i32 0
  store i8* %90, i8** %dword, align 8
  %91 = load i8** %2, align 8
  %92 = load i32* %preadd, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8* %91, i64 %93
  store i8* %94, i8** %limit, align 8
  %95 = load i32* %prestrip, align 4
  %96 = sext i32 %95 to i64
  %97 = load i8** %dword, align 8
  %98 = getelementptr inbounds i8* %97, i64 %96
  %99 = load i8* %98
  %100 = zext i8 %99 to i64
  %101 = getelementptr inbounds [228 x i8]* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 24), i32 0, i64 %100
  %102 = load i8* %101, align 1
  %103 = icmp ne i8 %102, 0
  br i1 %103, label %104, label %123

; <label>:104                                     ; preds = %84
  %105 = load i8** %2, align 8
  store i8* %105, i8** %w, align 8
  br label %106

; <label>:106                                     ; preds = %119, %104
  %107 = load i8** %w, align 8
  %108 = load i8** %limit, align 8
  %109 = icmp ult i8* %107, %108
  br i1 %109, label %110, label %122

; <label>:110                                     ; preds = %106
  %111 = load i8** %w, align 8
  %112 = load i8* %111
  %113 = zext i8 %112 to i64
  %114 = getelementptr inbounds [228 x i8]* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 25), i32 0, i64 %113
  %115 = load i8* %114, align 1
  %116 = icmp ne i8 %115, 0
  br i1 %116, label %117, label %118

; <label>:117                                     ; preds = %110
  br label %227

; <label>:118                                     ; preds = %110
  br label %119

; <label>:119                                     ; preds = %118
  %120 = load i8** %w, align 8
  %121 = getelementptr inbounds i8* %120, i32 1
  store i8* %121, i8** %w, align 8
  br label %106

; <label>:122                                     ; preds = %106
  br label %142

; <label>:123                                     ; preds = %84
  %124 = load i8** %2, align 8
  store i8* %124, i8** %w, align 8
  br label %125

; <label>:125                                     ; preds = %138, %123
  %126 = load i8** %w, align 8
  %127 = load i8** %limit, align 8
  %128 = icmp ult i8* %126, %127
  br i1 %128, label %129, label %141

; <label>:129                                     ; preds = %125
  %130 = load i8** %w, align 8
  %131 = load i8* %130
  %132 = zext i8 %131 to i64
  %133 = getelementptr inbounds [228 x i8]* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 24), i32 0, i64 %132
  %134 = load i8* %133, align 1
  %135 = icmp ne i8 %134, 0
  br i1 %135, label %136, label %137

; <label>:136                                     ; preds = %129
  br label %227

; <label>:137                                     ; preds = %129
  br label %138

; <label>:138                                     ; preds = %137
  %139 = load i8** %w, align 8
  %140 = getelementptr inbounds i8* %139, i32 1
  store i8* %140, i8** %w, align 8
  br label %125

; <label>:141                                     ; preds = %125
  br label %142

; <label>:142                                     ; preds = %141, %122
  %143 = load i32* %prestrip, align 4
  %144 = load i8** %dword, align 8
  %145 = sext i32 %143 to i64
  %146 = getelementptr inbounds i8* %144, i64 %145
  store i8* %146, i8** %dword, align 8
  %147 = load i8** %dword, align 8
  %148 = load i32* %4, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8* %147, i64 %149
  %151 = load i32* %preadd, align 4
  %152 = sext i32 %151 to i64
  %153 = sub i64 0, %152
  %154 = getelementptr inbounds i8* %150, i64 %153
  %155 = load i32* %sufadd, align 4
  %156 = sext i32 %155 to i64
  %157 = sub i64 0, %156
  %158 = getelementptr inbounds i8* %154, i64 %157
  store i8* %158, i8** %limit, align 8
  br label %159

; <label>:159                                     ; preds = %174, %142
  %160 = load i8** %dword, align 8
  %161 = load i8** %limit, align 8
  %162 = icmp ult i8* %160, %161
  br i1 %162, label %163, label %175

; <label>:163                                     ; preds = %159
  %164 = load i8** %dword, align 8
  %165 = getelementptr inbounds i8* %164, i32 1
  store i8* %165, i8** %dword, align 8
  %166 = load i8* %164
  %167 = zext i8 %166 to i32
  %168 = load i8** %w, align 8
  %169 = getelementptr inbounds i8* %168, i32 1
  store i8* %169, i8** %w, align 8
  %170 = load i8* %168
  %171 = zext i8 %170 to i32
  %172 = icmp ne i32 %167, %171
  br i1 %172, label %173, label %174

; <label>:173                                     ; preds = %163
  br label %227

; <label>:174                                     ; preds = %163
  br label %159

; <label>:175                                     ; preds = %159
  %176 = load i8** %limit, align 8
  %177 = getelementptr inbounds i8* %176, i64 -1
  store i8* %177, i8** %dword, align 8
  %178 = load i8** %dword, align 8
  %179 = load i8* %178
  %180 = zext i8 %179 to i64
  %181 = getelementptr inbounds [228 x i8]* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 24), i32 0, i64 %180
  %182 = load i8* %181, align 1
  %183 = icmp ne i8 %182, 0
  br i1 %183, label %184, label %202

; <label>:184                                     ; preds = %175
  br label %185

; <label>:185                                     ; preds = %198, %184
  %186 = load i8** %w, align 8
  %187 = load i8* %186
  %188 = icmp ne i8 %187, 0
  br i1 %188, label %189, label %201

; <label>:189                                     ; preds = %185
  %190 = load i8** %w, align 8
  %191 = load i8* %190
  %192 = zext i8 %191 to i64
  %193 = getelementptr inbounds [228 x i8]* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 25), i32 0, i64 %192
  %194 = load i8* %193, align 1
  %195 = icmp ne i8 %194, 0
  br i1 %195, label %196, label %197

; <label>:196                                     ; preds = %189
  br label %227

; <label>:197                                     ; preds = %189
  br label %198

; <label>:198                                     ; preds = %197
  %199 = load i8** %w, align 8
  %200 = getelementptr inbounds i8* %199, i32 1
  store i8* %200, i8** %w, align 8
  br label %185

; <label>:201                                     ; preds = %185
  br label %220

; <label>:202                                     ; preds = %175
  br label %203

; <label>:203                                     ; preds = %216, %202
  %204 = load i8** %w, align 8
  %205 = load i8* %204
  %206 = icmp ne i8 %205, 0
  br i1 %206, label %207, label %219

; <label>:207                                     ; preds = %203
  %208 = load i8** %w, align 8
  %209 = load i8* %208
  %210 = zext i8 %209 to i64
  %211 = getelementptr inbounds [228 x i8]* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 24), i32 0, i64 %210
  %212 = load i8* %211, align 1
  %213 = icmp ne i8 %212, 0
  br i1 %213, label %214, label %215

; <label>:214                                     ; preds = %207
  br label %227

; <label>:215                                     ; preds = %207
  br label %216

; <label>:216                                     ; preds = %215
  %217 = load i8** %w, align 8
  %218 = getelementptr inbounds i8* %217, i32 1
  store i8* %218, i8** %w, align 8
  br label %203

; <label>:219                                     ; preds = %203
  br label %220

; <label>:220                                     ; preds = %219, %201
  %221 = load %struct.dent** %dent, align 8
  %222 = load %struct.success** %3, align 8
  %223 = call i32 @entryhasaffixes(%struct.dent* %221, %struct.success* %222)
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %226

; <label>:225                                     ; preds = %220
  store i32 1, i32* %1
  br label %242

; <label>:226                                     ; preds = %220
  br label %227

; <label>:227                                     ; preds = %226, %214, %196, %173, %136, %117
  br label %228

; <label>:228                                     ; preds = %227, %83
  br label %229

; <label>:229                                     ; preds = %228, %73
  %230 = load %struct.dent** %dent, align 8
  %231 = getelementptr inbounds %struct.dent* %230, i32 0, i32 2
  %232 = getelementptr inbounds [1 x i64]* %231, i32 0, i64 0
  %233 = load i64* %232, align 8
  %234 = and i64 %233, 1073741824
  %235 = icmp eq i64 %234, 0
  br i1 %235, label %236, label %237

; <label>:236                                     ; preds = %229
  br label %241

; <label>:237                                     ; preds = %229
  %238 = load %struct.dent** %dent, align 8
  %239 = getelementptr inbounds %struct.dent* %238, i32 0, i32 0
  %240 = load %struct.dent** %239, align 8
  store %struct.dent* %240, %struct.dent** %dent, align 8
  br label %52

; <label>:241                                     ; preds = %236
  store i32 0, i32* %1
  br label %242

; <label>:242                                     ; preds = %241, %225, %82, %72, %9
  %243 = load i32* %1
  ret i32 %243
}

declare void @chk_aff(i8*, i8*, i32, i32, i32, i32, i32)

declare i32 @putchar(i32)

declare i64 @whatcap(i8*)

define internal i32 @entryhasaffixes(%struct.dent* %dent, %struct.success* %hit) nounwind uwtable {
  %1 = alloca i32, align 4
  %2 = alloca %struct.dent*, align 8
  %3 = alloca %struct.success*, align 8
  store %struct.dent* %dent, %struct.dent** %2, align 8
  store %struct.success* %hit, %struct.success** %3, align 8
  %4 = load %struct.success** %3, align 8
  %5 = getelementptr inbounds %struct.success* %4, i32 0, i32 1
  %6 = load %struct.flagent** %5, align 8
  %7 = icmp ne %struct.flagent* %6, null
  br i1 %7, label %8, label %24

; <label>:8                                       ; preds = %0
  %9 = load %struct.dent** %2, align 8
  %10 = getelementptr inbounds %struct.dent* %9, i32 0, i32 2
  %11 = getelementptr inbounds [1 x i64]* %10, i32 0, i64 0
  %12 = load i64* %11, align 8
  %13 = load %struct.success** %3, align 8
  %14 = getelementptr inbounds %struct.success* %13, i32 0, i32 1
  %15 = load %struct.flagent** %14, align 8
  %16 = getelementptr inbounds %struct.flagent* %15, i32 0, i32 2
  %17 = load i16* %16, align 2
  %18 = sext i16 %17 to i32
  %19 = zext i32 %18 to i64
  %20 = shl i64 1, %19
  %21 = and i64 %12, %20
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %24, label %23

; <label>:23                                      ; preds = %8
  store i32 0, i32* %1
  br label %46

; <label>:24                                      ; preds = %8, %0
  %25 = load %struct.success** %3, align 8
  %26 = getelementptr inbounds %struct.success* %25, i32 0, i32 2
  %27 = load %struct.flagent** %26, align 8
  %28 = icmp ne %struct.flagent* %27, null
  br i1 %28, label %29, label %45

; <label>:29                                      ; preds = %24
  %30 = load %struct.dent** %2, align 8
  %31 = getelementptr inbounds %struct.dent* %30, i32 0, i32 2
  %32 = getelementptr inbounds [1 x i64]* %31, i32 0, i64 0
  %33 = load i64* %32, align 8
  %34 = load %struct.success** %3, align 8
  %35 = getelementptr inbounds %struct.success* %34, i32 0, i32 2
  %36 = load %struct.flagent** %35, align 8
  %37 = getelementptr inbounds %struct.flagent* %36, i32 0, i32 2
  %38 = load i16* %37, align 2
  %39 = sext i16 %38 to i32
  %40 = zext i32 %39 to i64
  %41 = shl i64 1, %40
  %42 = and i64 %33, %41
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %45, label %44

; <label>:44                                      ; preds = %29
  store i32 0, i32* %1
  br label %46

; <label>:45                                      ; preds = %29, %24
  store i32 1, i32* %1
  br label %46

; <label>:46                                      ; preds = %45, %44, %23
  %47 = load i32* %1
  ret i32 %47
}

declare i32 @strtoichar(i8*, i8*, i32, i32)

define void @flagpr(i8* %word, i32 %preflag, i32 %prestrip, i32 %preadd, i32 %sufflag, i32 %sufadd) nounwind uwtable {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %origp = alloca i8*, align 8
  %orig_len = alloca i32, align 4
  store i8* %word, i8** %1, align 8
  store i32 %preflag, i32* %2, align 4
  store i32 %prestrip, i32* %3, align 4
  store i32 %preadd, i32* %4, align 4
  store i32 %sufflag, i32* %5, align 4
  store i32 %sufadd, i32* %6, align 4
  %7 = load i8** @orig_word, align 8
  %8 = call i64 @strlen(i8* %7) nounwind readonly
  %9 = trunc i64 %8 to i32
  store i32 %9, i32* %orig_len, align 4
  %10 = load i32* %2, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %68

; <label>:12                                      ; preds = %0
  %13 = load i8** @orig_word, align 8
  %14 = load i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8* %13, i64 %15
  store i8* %16, i8** %origp, align 8
  %17 = load i8** %origp, align 8
  %18 = load i8* %17
  %19 = zext i8 %18 to i64
  %20 = getelementptr inbounds [228 x i8]* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 24), i32 0, i64 %19
  %21 = load i8* %20, align 1
  %22 = icmp ne i8 %21, 0
  br i1 %22, label %23, label %45

; <label>:23                                      ; preds = %12
  %24 = load i8** @orig_word, align 8
  store i8* %24, i8** %origp, align 8
  br label %25

; <label>:25                                      ; preds = %41, %23
  %26 = load i8** %origp, align 8
  %27 = load i8** @orig_word, align 8
  %28 = load i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8* %27, i64 %29
  %31 = icmp ult i8* %26, %30
  br i1 %31, label %32, label %44

; <label>:32                                      ; preds = %25
  %33 = load i8** %origp, align 8
  %34 = load i8* %33
  %35 = zext i8 %34 to i64
  %36 = getelementptr inbounds [228 x i8]* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 25), i32 0, i64 %35
  %37 = load i8* %36, align 1
  %38 = icmp ne i8 %37, 0
  br i1 %38, label %39, label %40

; <label>:39                                      ; preds = %32
  br label %249

; <label>:40                                      ; preds = %32
  br label %41

; <label>:41                                      ; preds = %40
  %42 = load i8** %origp, align 8
  %43 = getelementptr inbounds i8* %42, i32 1
  store i8* %43, i8** %origp, align 8
  br label %25

; <label>:44                                      ; preds = %25
  br label %67

; <label>:45                                      ; preds = %12
  %46 = load i8** @orig_word, align 8
  store i8* %46, i8** %origp, align 8
  br label %47

; <label>:47                                      ; preds = %63, %45
  %48 = load i8** %origp, align 8
  %49 = load i8** @orig_word, align 8
  %50 = load i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8* %49, i64 %51
  %53 = icmp ult i8* %48, %52
  br i1 %53, label %54, label %66

; <label>:54                                      ; preds = %47
  %55 = load i8** %origp, align 8
  %56 = load i8* %55
  %57 = zext i8 %56 to i64
  %58 = getelementptr inbounds [228 x i8]* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 24), i32 0, i64 %57
  %59 = load i8* %58, align 1
  %60 = icmp ne i8 %59, 0
  br i1 %60, label %61, label %62

; <label>:61                                      ; preds = %54
  br label %249

; <label>:62                                      ; preds = %54
  br label %63

; <label>:63                                      ; preds = %62
  %64 = load i8** %origp, align 8
  %65 = getelementptr inbounds i8* %64, i32 1
  store i8* %65, i8** %origp, align 8
  br label %47

; <label>:66                                      ; preds = %47
  br label %67

; <label>:67                                      ; preds = %66, %44
  br label %68

; <label>:68                                      ; preds = %67, %0
  %69 = load i32* %5, align 4
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %134

; <label>:71                                      ; preds = %68
  %72 = load i8** @orig_word, align 8
  %73 = load i32* %orig_len, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8* %72, i64 %74
  %76 = load i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = sub i64 0, %77
  %79 = getelementptr inbounds i8* %75, i64 %78
  store i8* %79, i8** %origp, align 8
  %80 = load i8** %origp, align 8
  %81 = getelementptr inbounds i8* %80, i64 -1
  %82 = load i8* %81
  %83 = zext i8 %82 to i64
  %84 = getelementptr inbounds [228 x i8]* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 24), i32 0, i64 %83
  %85 = load i8* %84, align 1
  %86 = icmp ne i8 %85, 0
  br i1 %86, label %87, label %106

; <label>:87                                      ; preds = %71
  br label %88

; <label>:88                                      ; preds = %102, %87
  %89 = load i8** %origp, align 8
  %90 = load i8* %89
  %91 = zext i8 %90 to i32
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %105

; <label>:93                                      ; preds = %88
  %94 = load i8** %origp, align 8
  %95 = load i8* %94
  %96 = zext i8 %95 to i64
  %97 = getelementptr inbounds [228 x i8]* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 25), i32 0, i64 %96
  %98 = load i8* %97, align 1
  %99 = icmp ne i8 %98, 0
  br i1 %99, label %100, label %101

; <label>:100                                     ; preds = %93
  br label %249

; <label>:101                                     ; preds = %93
  br label %102

; <label>:102                                     ; preds = %101
  %103 = load i8** %origp, align 8
  %104 = getelementptr inbounds i8* %103, i32 1
  store i8* %104, i8** %origp, align 8
  br label %88

; <label>:105                                     ; preds = %88
  br label %133

; <label>:106                                     ; preds = %71
  %107 = load i8** @orig_word, align 8
  %108 = load i32* %orig_len, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8* %107, i64 %109
  %111 = load i32* %6, align 4
  %112 = sext i32 %111 to i64
  %113 = sub i64 0, %112
  %114 = getelementptr inbounds i8* %110, i64 %113
  store i8* %114, i8** %origp, align 8
  br label %115

; <label>:115                                     ; preds = %129, %106
  %116 = load i8** %origp, align 8
  %117 = load i8* %116
  %118 = zext i8 %117 to i32
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %132

; <label>:120                                     ; preds = %115
  %121 = load i8** %origp, align 8
  %122 = load i8* %121
  %123 = zext i8 %122 to i64
  %124 = getelementptr inbounds [228 x i8]* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 24), i32 0, i64 %123
  %125 = load i8* %124, align 1
  %126 = icmp ne i8 %125, 0
  br i1 %126, label %127, label %128

; <label>:127                                     ; preds = %120
  br label %249

; <label>:128                                     ; preds = %120
  br label %129

; <label>:129                                     ; preds = %128
  %130 = load i8** %origp, align 8
  %131 = getelementptr inbounds i8* %130, i32 1
  store i8* %131, i8** %origp, align 8
  br label %115

; <label>:132                                     ; preds = %115
  br label %133

; <label>:133                                     ; preds = %132, %105
  br label %134

; <label>:134                                     ; preds = %133, %68
  %135 = call i32 @putchar(i32 32)
  %136 = load i8** @orig_word, align 8
  %137 = load i32* %4, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8* %136, i64 %138
  store i8* %139, i8** %origp, align 8
  %140 = load i8** %origp, align 8
  %141 = load i8* %140
  %142 = zext i8 %141 to i64
  %143 = getelementptr inbounds [228 x i8]* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 24), i32 0, i64 %142
  %144 = load i8* %143, align 1
  %145 = icmp ne i8 %144, 0
  br i1 %145, label %146, label %160

; <label>:146                                     ; preds = %134
  br label %147

; <label>:147                                     ; preds = %151, %146
  %148 = load i32* %3, align 4
  %149 = add nsw i32 %148, -1
  store i32 %149, i32* %3, align 4
  %150 = icmp sge i32 %149, 0
  br i1 %150, label %151, label %159

; <label>:151                                     ; preds = %147
  %152 = load i8** %1, align 8
  %153 = getelementptr inbounds i8* %152, i32 1
  store i8* %153, i8** %1, align 8
  %154 = load i8* %152
  %155 = zext i8 %154 to i32
  %156 = call i8* @printichar(i32 %155)
  %157 = load %struct._IO_FILE** @stdout, align 8
  %158 = call i32 @fputs(i8* %156, %struct._IO_FILE* %157)
  br label %147

; <label>:159                                     ; preds = %147
  br label %177

; <label>:160                                     ; preds = %134
  br label %161

; <label>:161                                     ; preds = %165, %160
  %162 = load i32* %3, align 4
  %163 = add nsw i32 %162, -1
  store i32 %163, i32* %3, align 4
  %164 = icmp sge i32 %163, 0
  br i1 %164, label %165, label %176

; <label>:165                                     ; preds = %161
  %166 = load i8** %1, align 8
  %167 = getelementptr inbounds i8* %166, i32 1
  store i8* %167, i8** %1, align 8
  %168 = load i8* %166
  %169 = zext i8 %168 to i64
  %170 = getelementptr inbounds [228 x i8]* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 21), i32 0, i64 %169
  %171 = load i8* %170, align 1
  %172 = zext i8 %171 to i32
  %173 = call i8* @printichar(i32 %172)
  %174 = load %struct._IO_FILE** @stdout, align 8
  %175 = call i32 @fputs(i8* %173, %struct._IO_FILE* %174)
  br label %161

; <label>:176                                     ; preds = %161
  br label %177

; <label>:177                                     ; preds = %176, %159
  %178 = load i32* %orig_len, align 4
  %179 = load i32* %4, align 4
  %180 = sub nsw i32 %178, %179
  %181 = load i32* %6, align 4
  %182 = sub nsw i32 %180, %181
  store i32 %182, i32* %3, align 4
  br label %183

; <label>:183                                     ; preds = %195, %177
  %184 = load i32* %3, align 4
  %185 = add nsw i32 %184, -1
  store i32 %185, i32* %3, align 4
  %186 = icmp sge i32 %185, 0
  br i1 %186, label %187, label %198

; <label>:187                                     ; preds = %183
  %188 = load i8** %origp, align 8
  %189 = getelementptr inbounds i8* %188, i32 1
  store i8* %189, i8** %origp, align 8
  %190 = load i8* %188
  %191 = zext i8 %190 to i32
  %192 = call i8* @printichar(i32 %191)
  %193 = load %struct._IO_FILE** @stdout, align 8
  %194 = call i32 @fputs(i8* %192, %struct._IO_FILE* %193)
  br label %195

; <label>:195                                     ; preds = %187
  %196 = load i8** %1, align 8
  %197 = getelementptr inbounds i8* %196, i32 1
  store i8* %197, i8** %1, align 8
  br label %183

; <label>:198                                     ; preds = %183
  %199 = load i8** %origp, align 8
  %200 = load i8** @orig_word, align 8
  %201 = icmp ugt i8* %199, %200
  br i1 %201, label %202, label %205

; <label>:202                                     ; preds = %198
  %203 = load i8** %origp, align 8
  %204 = getelementptr inbounds i8* %203, i32 -1
  store i8* %204, i8** %origp, align 8
  br label %205

; <label>:205                                     ; preds = %202, %198
  %206 = load i8** %origp, align 8
  %207 = load i8* %206
  %208 = zext i8 %207 to i64
  %209 = getelementptr inbounds [228 x i8]* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 24), i32 0, i64 %208
  %210 = load i8* %209, align 1
  %211 = icmp ne i8 %210, 0
  br i1 %211, label %212, label %217

; <label>:212                                     ; preds = %205
  %213 = load i8** %1, align 8
  %214 = call i8* @ichartosstr(i8* %213, i32 0)
  %215 = load %struct._IO_FILE** @stdout, align 8
  %216 = call i32 @fputs(i8* %214, %struct._IO_FILE* %215)
  br label %234

; <label>:217                                     ; preds = %205
  br label %218

; <label>:218                                     ; preds = %222, %217
  %219 = load i8** %1, align 8
  %220 = load i8* %219
  %221 = icmp ne i8 %220, 0
  br i1 %221, label %222, label %233

; <label>:222                                     ; preds = %218
  %223 = load i8** %1, align 8
  %224 = getelementptr inbounds i8* %223, i32 1
  store i8* %224, i8** %1, align 8
  %225 = load i8* %223
  %226 = zext i8 %225 to i64
  %227 = getelementptr inbounds [228 x i8]* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 21), i32 0, i64 %226
  %228 = load i8* %227, align 1
  %229 = zext i8 %228 to i32
  %230 = call i8* @printichar(i32 %229)
  %231 = load %struct._IO_FILE** @stdout, align 8
  %232 = call i32 @fputs(i8* %230, %struct._IO_FILE* %231)
  br label %218

; <label>:233                                     ; preds = %218
  br label %234

; <label>:234                                     ; preds = %233, %212
  %235 = load i8* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 19), align 1
  %236 = sext i8 %235 to i32
  %237 = call i32 @putchar(i32 %236)
  %238 = load i32* %2, align 4
  %239 = icmp sgt i32 %238, 0
  br i1 %239, label %240, label %243

; <label>:240                                     ; preds = %234
  %241 = load i32* %2, align 4
  %242 = call i32 @putchar(i32 %241)
  br label %243

; <label>:243                                     ; preds = %240, %234
  %244 = load i32* %5, align 4
  %245 = icmp sgt i32 %244, 0
  br i1 %245, label %246, label %249

; <label>:246                                     ; preds = %243
  %247 = load i32* %5, align 4
  %248 = call i32 @putchar(i32 %247)
  br label %249

; <label>:249                                     ; preds = %246, %243, %127, %100, %61, %39
  ret void
}

declare i64 @strlen(i8*) nounwind readonly

declare i32 @fputs(i8*, %struct._IO_FILE*)

declare i8* @printichar(i32)
