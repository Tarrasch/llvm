; ModuleID = 'defmt.o'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.hashheader = type { i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i8], [13 x i8], i8, i8, i8, [228 x i16], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [128 x i8], [100 x [11 x i8]], [100 x i32], [100 x i32], i16 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.success = type { %struct.dent*, %struct.flagent*, %struct.flagent* }
%struct.dent = type { %struct.dent*, i8*, [1 x i64] }
%struct.flagent = type { i8*, i8*, i16, i16, i16, i16, i16, [228 x i8] }

@TeX_comment = internal global i32 0, align 4
@save_math_mode = internal global i32 0, align 4
@math_mode = external global i32
@save_LaTeX_Mode = internal global i8 0, align 1
@LaTeX_Mode = external global i8
@hashheader = external global %struct.hashheader
@contextbufs = external global [10 x [8192 x i8]]
@currentchar = external global i8*
@tflag = external global i32
@.str = private unnamed_addr constant [5 x i8] c"if t\00", align 1
@.str1 = private unnamed_addr constant [5 x i8] c"if n\00", align 1
@.str2 = private unnamed_addr constant [4 x i8] c"ds \00", align 1
@.str3 = private unnamed_addr constant [4 x i8] c"de \00", align 1
@.str4 = private unnamed_addr constant [4 x i8] c"nr \00", align 1
@lflag = external global i32
@aflag = external global i32
@ctoken = external global [120 x i8]
@itoken = external global [120 x i8]
@stderr = external global %struct._IO_FILE*
@.str5 = private unnamed_addr constant [51 x i8] c"\0D\0AWord '%s' too long at line %d of %s, truncated\0D\0A\00", align 1
@.str6 = private unnamed_addr constant [82 x i8] c"/home/arka3/repos/test-suite/MultiSource/Benchmarks/MiBench/office-ispell/defmt.c\00", align 1
@minword = external global i32
@cflag = external global i32
@.str7 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@terse = external global i32
@.str8 = private unnamed_addr constant [3 x i8] c"*\0A\00", align 1
@hits = external global [10 x %struct.success]
@.str9 = private unnamed_addr constant [6 x i8] c"+ %s\0A\00", align 1
@.str10 = private unnamed_addr constant [3 x i8] c"-\0A\00", align 1
@pcount = external global i32
@.str11 = private unnamed_addr constant [12 x i8] c"%c %s %d %d\00", align 1
@easypossibilities = external global i32
@contextoffset = external global i32
@possibilities = external global [100 x [120 x i8]]
@.str12 = private unnamed_addr constant [6 x i8] c"%c %s\00", align 1
@.str13 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str14 = private unnamed_addr constant [9 x i8] c"# %s %d\0A\00", align 1
@quit = external global i32
@.str15 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str16 = private unnamed_addr constant [38 x i8] c"****ERROR in parsing TeX math mode!\0D\0A\00", align 1
@.str17 = private unnamed_addr constant [5 x i8] c"\5Cend\00", align 1
@.str18 = private unnamed_addr constant [6 x i8] c"begin\00", align 1
@.str19 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@.str20 = private unnamed_addr constant [7 x i8] c"vspace\00", align 1
@.str21 = private unnamed_addr constant [7 x i8] c"hspace\00", align 1
@.str22 = private unnamed_addr constant [5 x i8] c"cite\00", align 1
@.str23 = private unnamed_addr constant [4 x i8] c"ref\00", align 1
@.str24 = private unnamed_addr constant [7 x i8] c"parbox\00", align 1
@.str25 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str26 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str27 = private unnamed_addr constant [7 x i8] c"nocite\00", align 1
@.str28 = private unnamed_addr constant [8 x i8] c"include\00", align 1
@.str29 = private unnamed_addr constant [12 x i8] c"includeonly\00", align 1
@.str30 = private unnamed_addr constant [14 x i8] c"documentstyle\00", align 1
@.str31 = private unnamed_addr constant [14 x i8] c"documentclass\00", align 1
@.str32 = private unnamed_addr constant [11 x i8] c"usepackage\00", align 1
@.str33 = private unnamed_addr constant [10 x i8] c"pagestyle\00", align 1
@.str34 = private unnamed_addr constant [14 x i8] c"pagenumbering\00", align 1
@.str35 = private unnamed_addr constant [13 x i8] c"bibliography\00", align 1
@.str36 = private unnamed_addr constant [8 x i8] c"bibitem\00", align 1
@.str37 = private unnamed_addr constant [12 x i8] c"hyphenation\00", align 1
@.str38 = private unnamed_addr constant [8 x i8] c"pageref\00", align 1
@.str39 = private unnamed_addr constant [5 x i8] c"rule\00", align 1
@.str40 = private unnamed_addr constant [11 x i8] c"setcounter\00", align 1
@.str41 = private unnamed_addr constant [13 x i8] c"addtocounter\00", align 1
@.str42 = private unnamed_addr constant [10 x i8] c"setlength\00", align 1
@.str43 = private unnamed_addr constant [12 x i8] c"addtolength\00", align 1
@.str44 = private unnamed_addr constant [11 x i8] c"settowidth\00", align 1
@.str45 = private unnamed_addr constant [5 x i8] c"verb\00", align 1
@.str46 = private unnamed_addr constant [5 x i8] c"mbox\00", align 1
@.str47 = private unnamed_addr constant [8 x i8] c"makebox\00", align 1
@.str48 = private unnamed_addr constant [5 x i8] c"fbox\00", align 1
@.str49 = private unnamed_addr constant [9 x i8] c"framebox\00", align 1
@.str50 = private unnamed_addr constant [9 x i8] c"raisebox\00", align 1
@.str51 = private unnamed_addr constant [9 x i8] c"minipage\00", align 1
@.str52 = private unnamed_addr constant [37 x i8] c"***ERROR in LR to math-mode switch.\0A\00", align 1
@.str53 = private unnamed_addr constant [9 x i8] c"equation\00", align 1
@.str54 = private unnamed_addr constant [9 x i8] c"eqnarray\00", align 1
@.str55 = private unnamed_addr constant [12 x i8] c"displaymath\00", align 1
@.str56 = private unnamed_addr constant [8 x i8] c"picture\00", align 1
@.str57 = private unnamed_addr constant [5 x i8] c"math\00", align 1
@.str58 = private unnamed_addr constant [8 x i8] c"tabular\00", align 1
@.str59 = private unnamed_addr constant [9 x i8] c"tabular*\00", align 1

define i8* @skipoverword(i8* %bufp) nounwind uwtable {
  %1 = alloca i8*, align 8
  %lastboundary = alloca i8*, align 8
  %scharlen = alloca i32, align 4
  store i8* %bufp, i8** %1, align 8
  store i8* null, i8** %lastboundary, align 8
  br label %2

; <label>:2                                       ; preds = %67, %0
  %3 = load i8** %1, align 8
  %4 = load i8* %3
  %5 = sext i8 %4 to i32
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %14

; <label>:7                                       ; preds = %2
  %8 = load i32* @TeX_comment, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

; <label>:10                                      ; preds = %7
  %11 = load i32* @save_math_mode, align 4
  store i32 %11, i32* @math_mode, align 4
  %12 = load i8* @save_LaTeX_Mode, align 1
  store i8 %12, i8* @LaTeX_Mode, align 1
  store i32 0, i32* @TeX_comment, align 4
  br label %13

; <label>:13                                      ; preds = %10, %7
  br label %68

; <label>:14                                      ; preds = %2
  %15 = load i8** %1, align 8
  %16 = load i8* %15
  %17 = zext i8 %16 to i64
  %18 = getelementptr inbounds [128 x i8]* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 27), i32 0, i64 %17
  %19 = load i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %31

; <label>:22                                      ; preds = %14
  %23 = load i8** %1, align 8
  %24 = call i32 @stringcharlen(i8* %23, i32 0)
  store i32 %24, i32* %scharlen, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %31

; <label>:26                                      ; preds = %22
  %27 = load i32* %scharlen, align 4
  %28 = load i8** %1, align 8
  %29 = sext i32 %27 to i64
  %30 = getelementptr inbounds i8* %28, i64 %29
  store i8* %30, i8** %1, align 8
  store i8* null, i8** %lastboundary, align 8
  br label %66

; <label>:31                                      ; preds = %22, %14
  %32 = load i8** %1, align 8
  %33 = load i8* %32
  %34 = zext i8 %33 to i64
  %35 = getelementptr inbounds [228 x i8]* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 23), i32 0, i64 %34
  %36 = load i8* %35, align 1
  %37 = icmp ne i8 %36, 0
  br i1 %37, label %38, label %41

; <label>:38                                      ; preds = %31
  %39 = load i8** %1, align 8
  %40 = getelementptr inbounds i8* %39, i32 1
  store i8* %40, i8** %1, align 8
  store i8* null, i8** %lastboundary, align 8
  br label %65

; <label>:41                                      ; preds = %31
  %42 = load i8** %1, align 8
  %43 = load i8* %42
  %44 = zext i8 %43 to i64
  %45 = getelementptr inbounds [228 x i8]* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 26), i32 0, i64 %44
  %46 = load i8* %45, align 1
  %47 = icmp ne i8 %46, 0
  br i1 %47, label %48, label %63

; <label>:48                                      ; preds = %41
  %49 = load i8** %lastboundary, align 8
  %50 = icmp eq i8* %49, null
  br i1 %50, label %51, label %53

; <label>:51                                      ; preds = %48
  %52 = load i8** %1, align 8
  store i8* %52, i8** %lastboundary, align 8
  br label %60

; <label>:53                                      ; preds = %48
  %54 = load i8** %lastboundary, align 8
  %55 = load i8** %1, align 8
  %56 = getelementptr inbounds i8* %55, i64 -1
  %57 = icmp eq i8* %54, %56
  br i1 %57, label %58, label %59

; <label>:58                                      ; preds = %53
  br label %68

; <label>:59                                      ; preds = %53
  br label %60

; <label>:60                                      ; preds = %59, %51
  %61 = load i8** %1, align 8
  %62 = getelementptr inbounds i8* %61, i32 1
  store i8* %62, i8** %1, align 8
  br label %64

; <label>:63                                      ; preds = %41
  br label %68

; <label>:64                                      ; preds = %60
  br label %65

; <label>:65                                      ; preds = %64, %38
  br label %66

; <label>:66                                      ; preds = %65, %26
  br label %67

; <label>:67                                      ; preds = %66
  br label %2

; <label>:68                                      ; preds = %63, %58, %13
  %69 = load i8** %lastboundary, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %73

; <label>:71                                      ; preds = %68
  %72 = load i8** %lastboundary, align 8
  br label %75

; <label>:73                                      ; preds = %68
  %74 = load i8** %1, align 8
  br label %75

; <label>:75                                      ; preds = %73, %71
  %76 = phi i8* [ %72, %71 ], [ %74, %73 ]
  ret i8* %76
}

declare i32 @stringcharlen(i8*, i32)

define void @checkline(%struct._IO_FILE* %ofile) nounwind uwtable {
  %1 = alloca %struct._IO_FILE*, align 8
  %p = alloca i8*, align 8
  %endp = alloca i8*, align 8
  %hadlf = alloca i32, align 4
  %len = alloca i32, align 4
  %i = alloca i32, align 4
  %ilen = alloca i32, align 4
  store %struct._IO_FILE* %ofile, %struct._IO_FILE** %1, align 8
  store i8* getelementptr inbounds ([10 x [8192 x i8]]* @contextbufs, i32 0, i64 0, i32 0), i8** @currentchar, align 8
  %2 = call i64 @strlen(i8* getelementptr inbounds ([10 x [8192 x i8]]* @contextbufs, i32 0, i64 0, i32 0)) nounwind readonly
  %3 = sub i64 %2, 1
  %4 = trunc i64 %3 to i32
  store i32 %4, i32* %len, align 4
  %5 = load i32* %len, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [8192 x i8]* getelementptr inbounds ([10 x [8192 x i8]]* @contextbufs, i32 0, i64 0), i32 0, i64 %6
  %8 = load i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp eq i32 %9, 10
  %11 = zext i1 %10 to i32
  store i32 %11, i32* %hadlf, align 4
  %12 = load i32* %hadlf, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

; <label>:14                                      ; preds = %0
  %15 = load i32* %len, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [8192 x i8]* getelementptr inbounds ([10 x [8192 x i8]]* @contextbufs, i32 0, i64 0), i32 0, i64 %16
  store i8 0, i8* %17, align 1
  br label %18

; <label>:18                                      ; preds = %14, %0
  %19 = load i32* @tflag, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %181, label %21

; <label>:21                                      ; preds = %18
  %22 = load i8** @currentchar, align 8
  %23 = load i8* %22
  %24 = sext i8 %23 to i32
  %25 = load i8* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 15, i64 2), align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %28, label %72

; <label>:28                                      ; preds = %21
  %29 = load i8** @currentchar, align 8
  %30 = getelementptr inbounds i8* %29, i64 1
  %31 = call i32 @strncmp(i8* %30, i8* getelementptr inbounds ([5 x i8]* @.str, i32 0, i32 0), i64 4) nounwind readonly
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %38, label %33

; <label>:33                                      ; preds = %28
  %34 = load i8** @currentchar, align 8
  %35 = getelementptr inbounds i8* %34, i64 1
  %36 = call i32 @strncmp(i8* %35, i8* getelementptr inbounds ([5 x i8]* @.str1, i32 0, i32 0), i64 4) nounwind readonly
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %72

; <label>:38                                      ; preds = %33, %28
  call void @copyout(i8** @currentchar, i32 5)
  br label %39

; <label>:39                                      ; preds = %70, %38
  %40 = load i8** @currentchar, align 8
  %41 = load i8* %40
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %68

; <label>:44                                      ; preds = %39
  %45 = load i8** @currentchar, align 8
  %46 = load i8* %45
  %47 = zext i8 %46 to i32
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %66

; <label>:49                                      ; preds = %44
  %50 = load i8** @currentchar, align 8
  %51 = load i8* %50
  %52 = zext i8 %51 to i32
  %53 = icmp slt i32 %52, 128
  br i1 %53, label %54, label %66

; <label>:54                                      ; preds = %49
  %55 = load i8** @currentchar, align 8
  %56 = load i8* %55
  %57 = zext i8 %56 to i32
  %58 = sext i32 %57 to i64
  %59 = call i16** @__ctype_b_loc() nounwind readnone
  %60 = load i16** %59
  %61 = getelementptr inbounds i16* %60, i64 %58
  %62 = load i16* %61
  %63 = zext i16 %62 to i32
  %64 = and i32 %63, 8192
  %65 = icmp ne i32 %64, 0
  br label %66

; <label>:66                                      ; preds = %54, %49, %44
  %67 = phi i1 [ false, %49 ], [ false, %44 ], [ %65, %54 ]
  br label %68

; <label>:68                                      ; preds = %66, %39
  %69 = phi i1 [ false, %39 ], [ %67, %66 ]
  br i1 %69, label %70, label %71

; <label>:70                                      ; preds = %68
  call void @copyout(i8** @currentchar, i32 1)
  br label %39

; <label>:71                                      ; preds = %68
  br label %72

; <label>:72                                      ; preds = %71, %33, %21
  %73 = load i8** @currentchar, align 8
  %74 = load i8* %73
  %75 = sext i8 %74 to i32
  %76 = load i8* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 15, i64 2), align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %75, %77
  br i1 %78, label %79, label %180

; <label>:79                                      ; preds = %72
  %80 = load i8** @currentchar, align 8
  %81 = getelementptr inbounds i8* %80, i64 1
  %82 = call i32 @strncmp(i8* %81, i8* getelementptr inbounds ([4 x i8]* @.str2, i32 0, i32 0), i64 3) nounwind readonly
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %94, label %84

; <label>:84                                      ; preds = %79
  %85 = load i8** @currentchar, align 8
  %86 = getelementptr inbounds i8* %85, i64 1
  %87 = call i32 @strncmp(i8* %86, i8* getelementptr inbounds ([4 x i8]* @.str3, i32 0, i32 0), i64 3) nounwind readonly
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %94, label %89

; <label>:89                                      ; preds = %84
  %90 = load i8** @currentchar, align 8
  %91 = getelementptr inbounds i8* %90, i64 1
  %92 = call i32 @strncmp(i8* %91, i8* getelementptr inbounds ([4 x i8]* @.str4, i32 0, i32 0), i64 3) nounwind readonly
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %180

; <label>:94                                      ; preds = %89, %84, %79
  call void @copyout(i8** @currentchar, i32 4)
  br label %95

; <label>:95                                      ; preds = %126, %94
  %96 = load i8** @currentchar, align 8
  %97 = load i8* %96
  %98 = sext i8 %97 to i32
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %124

; <label>:100                                     ; preds = %95
  %101 = load i8** @currentchar, align 8
  %102 = load i8* %101
  %103 = zext i8 %102 to i32
  %104 = icmp sgt i32 %103, 0
  br i1 %104, label %105, label %122

; <label>:105                                     ; preds = %100
  %106 = load i8** @currentchar, align 8
  %107 = load i8* %106
  %108 = zext i8 %107 to i32
  %109 = icmp slt i32 %108, 128
  br i1 %109, label %110, label %122

; <label>:110                                     ; preds = %105
  %111 = load i8** @currentchar, align 8
  %112 = load i8* %111
  %113 = zext i8 %112 to i32
  %114 = sext i32 %113 to i64
  %115 = call i16** @__ctype_b_loc() nounwind readnone
  %116 = load i16** %115
  %117 = getelementptr inbounds i16* %116, i64 %114
  %118 = load i16* %117
  %119 = zext i16 %118 to i32
  %120 = and i32 %119, 8192
  %121 = icmp ne i32 %120, 0
  br label %122

; <label>:122                                     ; preds = %110, %105, %100
  %123 = phi i1 [ false, %105 ], [ false, %100 ], [ %121, %110 ]
  br label %124

; <label>:124                                     ; preds = %122, %95
  %125 = phi i1 [ false, %95 ], [ %123, %122 ]
  br i1 %125, label %126, label %127

; <label>:126                                     ; preds = %124
  call void @copyout(i8** @currentchar, i32 1)
  br label %95

; <label>:127                                     ; preds = %124
  br label %128

; <label>:128                                     ; preds = %160, %127
  %129 = load i8** @currentchar, align 8
  %130 = load i8* %129
  %131 = sext i8 %130 to i32
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %158

; <label>:133                                     ; preds = %128
  %134 = load i8** @currentchar, align 8
  %135 = load i8* %134
  %136 = zext i8 %135 to i32
  %137 = icmp sgt i32 %136, 0
  br i1 %137, label %138, label %155

; <label>:138                                     ; preds = %133
  %139 = load i8** @currentchar, align 8
  %140 = load i8* %139
  %141 = zext i8 %140 to i32
  %142 = icmp slt i32 %141, 128
  br i1 %142, label %143, label %155

; <label>:143                                     ; preds = %138
  %144 = load i8** @currentchar, align 8
  %145 = load i8* %144
  %146 = zext i8 %145 to i32
  %147 = sext i32 %146 to i64
  %148 = call i16** @__ctype_b_loc() nounwind readnone
  %149 = load i16** %148
  %150 = getelementptr inbounds i16* %149, i64 %147
  %151 = load i16* %150
  %152 = zext i16 %151 to i32
  %153 = and i32 %152, 8192
  %154 = icmp ne i32 %153, 0
  br label %155

; <label>:155                                     ; preds = %143, %138, %133
  %156 = phi i1 [ false, %138 ], [ false, %133 ], [ %154, %143 ]
  %157 = xor i1 %156, true
  br label %158

; <label>:158                                     ; preds = %155, %128
  %159 = phi i1 [ false, %128 ], [ %157, %155 ]
  br i1 %159, label %160, label %161

; <label>:160                                     ; preds = %158
  call void @copyout(i8** @currentchar, i32 1)
  br label %128

; <label>:161                                     ; preds = %158
  %162 = load i8** @currentchar, align 8
  %163 = load i8* %162
  %164 = sext i8 %163 to i32
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %179

; <label>:166                                     ; preds = %161
  %167 = load i32* @lflag, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %178, label %169

; <label>:169                                     ; preds = %166
  %170 = load i32* @aflag, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %175, label %172

; <label>:172                                     ; preds = %169
  %173 = load i32* %hadlf, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %178

; <label>:175                                     ; preds = %172, %169
  %176 = load %struct._IO_FILE** %1, align 8
  %177 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %176)
  br label %178

; <label>:178                                     ; preds = %175, %172, %166
  br label %464

; <label>:179                                     ; preds = %161
  br label %180

; <label>:180                                     ; preds = %179, %89, %72
  br label %181

; <label>:181                                     ; preds = %180, %18
  %182 = load i32* @tflag, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %258, label %184

; <label>:184                                     ; preds = %181
  %185 = load i8** @currentchar, align 8
  %186 = load i8* %185
  %187 = sext i8 %186 to i32
  %188 = load i8* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 15, i64 2), align 1
  %189 = sext i8 %188 to i32
  %190 = icmp eq i32 %187, %189
  br i1 %190, label %191, label %258

; <label>:191                                     ; preds = %184
  br label %192

; <label>:192                                     ; preds = %236, %191
  %193 = load i8** @currentchar, align 8
  %194 = load i8* %193
  %195 = sext i8 %194 to i32
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %222

; <label>:197                                     ; preds = %192
  %198 = load i8** @currentchar, align 8
  %199 = load i8* %198
  %200 = zext i8 %199 to i32
  %201 = icmp sgt i32 %200, 0
  br i1 %201, label %202, label %219

; <label>:202                                     ; preds = %197
  %203 = load i8** @currentchar, align 8
  %204 = load i8* %203
  %205 = zext i8 %204 to i32
  %206 = icmp slt i32 %205, 128
  br i1 %206, label %207, label %219

; <label>:207                                     ; preds = %202
  %208 = load i8** @currentchar, align 8
  %209 = load i8* %208
  %210 = zext i8 %209 to i32
  %211 = sext i32 %210 to i64
  %212 = call i16** @__ctype_b_loc() nounwind readnone
  %213 = load i16** %212
  %214 = getelementptr inbounds i16* %213, i64 %211
  %215 = load i16* %214
  %216 = zext i16 %215 to i32
  %217 = and i32 %216, 8192
  %218 = icmp ne i32 %217, 0
  br label %219

; <label>:219                                     ; preds = %207, %202, %197
  %220 = phi i1 [ false, %202 ], [ false, %197 ], [ %218, %207 ]
  %221 = xor i1 %220, true
  br label %222

; <label>:222                                     ; preds = %219, %192
  %223 = phi i1 [ false, %192 ], [ %221, %219 ]
  br i1 %223, label %224, label %239

; <label>:224                                     ; preds = %222
  %225 = load i32* @aflag, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %236, label %227

; <label>:227                                     ; preds = %224
  %228 = load i32* @lflag, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %236, label %230

; <label>:230                                     ; preds = %227
  %231 = load i8** @currentchar, align 8
  %232 = load i8* %231
  %233 = sext i8 %232 to i32
  %234 = load %struct._IO_FILE** %1, align 8
  %235 = call i32 @_IO_putc(i32 %233, %struct._IO_FILE* %234)
  br label %236

; <label>:236                                     ; preds = %230, %227, %224
  %237 = load i8** @currentchar, align 8
  %238 = getelementptr inbounds i8* %237, i32 1
  store i8* %238, i8** @currentchar, align 8
  br label %192

; <label>:239                                     ; preds = %222
  %240 = load i8** @currentchar, align 8
  %241 = load i8* %240
  %242 = sext i8 %241 to i32
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %244, label %257

; <label>:244                                     ; preds = %239
  %245 = load i32* @lflag, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %256, label %247

; <label>:247                                     ; preds = %244
  %248 = load i32* @aflag, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %253, label %250

; <label>:250                                     ; preds = %247
  %251 = load i32* %hadlf, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %256

; <label>:253                                     ; preds = %250, %247
  %254 = load %struct._IO_FILE** %1, align 8
  %255 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %254)
  br label %256

; <label>:256                                     ; preds = %253, %250, %244
  br label %464

; <label>:257                                     ; preds = %239
  br label %258

; <label>:258                                     ; preds = %257, %184, %181
  br label %259

; <label>:259                                     ; preds = %451, %338, %258
  %260 = load i8** @currentchar, align 8
  %261 = call i8* (...)* bitcast (i8* (i8*)* @skiptoword to i8* (...)*)(i8* %260)
  store i8* %261, i8** %p, align 8
  %262 = load i8** %p, align 8
  %263 = load i8** @currentchar, align 8
  %264 = icmp ne i8* %262, %263
  br i1 %264, label %265, label %272

; <label>:265                                     ; preds = %259
  %266 = load i8** %p, align 8
  %267 = load i8** @currentchar, align 8
  %268 = ptrtoint i8* %266 to i64
  %269 = ptrtoint i8* %267 to i64
  %270 = sub i64 %268, %269
  %271 = trunc i64 %270 to i32
  call void @copyout(i8** @currentchar, i32 %271)
  br label %272

; <label>:272                                     ; preds = %265, %259
  %273 = load i8** @currentchar, align 8
  %274 = load i8* %273
  %275 = sext i8 %274 to i32
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %277, label %278

; <label>:277                                     ; preds = %272
  br label %452

; <label>:278                                     ; preds = %272
  store i8* getelementptr inbounds ([120 x i8]* @ctoken, i32 0, i32 0), i8** %p, align 8
  %279 = load i8** @currentchar, align 8
  %280 = call i8* (...)* bitcast (i8* (i8*)* @skipoverword to i8* (...)*)(i8* %279)
  store i8* %280, i8** %endp, align 8
  br label %281

; <label>:281                                     ; preds = %290, %278
  %282 = load i8** @currentchar, align 8
  %283 = load i8** %endp, align 8
  %284 = icmp ult i8* %282, %283
  br i1 %284, label %285, label %288

; <label>:285                                     ; preds = %281
  %286 = load i8** %p, align 8
  %287 = icmp ult i8* %286, getelementptr inbounds ([120 x i8]* @ctoken, i64 1, i64 -1)
  br label %288

; <label>:288                                     ; preds = %285, %281
  %289 = phi i1 [ false, %281 ], [ %287, %285 ]
  br i1 %289, label %290, label %296

; <label>:290                                     ; preds = %288
  %291 = load i8** @currentchar, align 8
  %292 = getelementptr inbounds i8* %291, i32 1
  store i8* %292, i8** @currentchar, align 8
  %293 = load i8* %291
  %294 = load i8** %p, align 8
  %295 = getelementptr inbounds i8* %294, i32 1
  store i8* %295, i8** %p, align 8
  store i8 %293, i8* %294
  br label %281

; <label>:296                                     ; preds = %288
  %297 = load i8** %p, align 8
  store i8 0, i8* %297
  %298 = call i32 @strtoichar(i8* getelementptr inbounds ([120 x i8]* @itoken, i32 0, i32 0), i8* getelementptr inbounds ([120 x i8]* @ctoken, i32 0, i32 0), i32 100, i32 0)
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %303

; <label>:300                                     ; preds = %296
  %301 = load %struct._IO_FILE** @stderr, align 8
  %302 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %301, i8* getelementptr inbounds ([51 x i8]* @.str5, i32 0, i32 0), i8* getelementptr inbounds ([120 x i8]* @ctoken, i32 0, i32 0), i32 466, i8* getelementptr inbounds ([82 x i8]* @.str6, i32 0, i32 0))
  br label %303

; <label>:303                                     ; preds = %300, %296
  %304 = call i64 @strlen(i8* getelementptr inbounds ([120 x i8]* @itoken, i32 0, i32 0)) nounwind readonly
  %305 = trunc i64 %304 to i32
  store i32 %305, i32* %ilen, align 4
  %306 = load i32* @lflag, align 4
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %325

; <label>:308                                     ; preds = %303
  %309 = load i32* %ilen, align 4
  %310 = load i32* @minword, align 4
  %311 = icmp sgt i32 %309, %310
  br i1 %311, label %312, label %324

; <label>:312                                     ; preds = %308
  %313 = call i32 @good(i8* getelementptr inbounds ([120 x i8]* @itoken, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0)
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %324, label %315

; <label>:315                                     ; preds = %312
  %316 = load i32* @cflag, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %324, label %318

; <label>:318                                     ; preds = %315
  %319 = call i32 @compoundgood(i8* getelementptr inbounds ([120 x i8]* @itoken, i32 0, i32 0), i32 0)
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %324, label %321

; <label>:321                                     ; preds = %318
  %322 = load %struct._IO_FILE** %1, align 8
  %323 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %322, i8* getelementptr inbounds ([4 x i8]* @.str7, i32 0, i32 0), i8* getelementptr inbounds ([120 x i8]* @ctoken, i32 0, i32 0))
  br label %324

; <label>:324                                     ; preds = %321, %318, %315, %312, %308
  br label %442

; <label>:325                                     ; preds = %303
  %326 = load i32* @aflag, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %436

; <label>:328                                     ; preds = %325
  %329 = load i32* %ilen, align 4
  %330 = load i32* @minword, align 4
  %331 = icmp sle i32 %329, %330
  br i1 %331, label %332, label %339

; <label>:332                                     ; preds = %328
  %333 = load i32* @terse, align 4
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %338, label %335

; <label>:335                                     ; preds = %332
  %336 = load %struct._IO_FILE** %1, align 8
  %337 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %336, i8* getelementptr inbounds ([3 x i8]* @.str8, i32 0, i32 0))
  br label %338

; <label>:338                                     ; preds = %335, %332
  br label %259

; <label>:339                                     ; preds = %328
  %340 = call i32 @good(i8* getelementptr inbounds ([120 x i8]* @itoken, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0)
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %366

; <label>:342                                     ; preds = %339
  %343 = load %struct.flagent** getelementptr inbounds ([10 x %struct.success]* @hits, i32 0, i64 0, i32 1), align 8
  %344 = icmp eq %struct.flagent* %343, null
  br i1 %344, label %345, label %355

; <label>:345                                     ; preds = %342
  %346 = load %struct.flagent** getelementptr inbounds ([10 x %struct.success]* @hits, i32 0, i64 0, i32 2), align 8
  %347 = icmp eq %struct.flagent* %346, null
  br i1 %347, label %348, label %355

; <label>:348                                     ; preds = %345
  %349 = load i32* @terse, align 4
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %354, label %351

; <label>:351                                     ; preds = %348
  %352 = load %struct._IO_FILE** %1, align 8
  %353 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %352, i8* getelementptr inbounds ([3 x i8]* @.str8, i32 0, i32 0))
  br label %354

; <label>:354                                     ; preds = %351, %348
  br label %365

; <label>:355                                     ; preds = %345, %342
  %356 = load i32* @terse, align 4
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %364, label %358

; <label>:358                                     ; preds = %355
  %359 = load %struct._IO_FILE** %1, align 8
  %360 = load %struct.dent** getelementptr inbounds ([10 x %struct.success]* @hits, i32 0, i64 0, i32 0), align 8
  %361 = getelementptr inbounds %struct.dent* %360, i32 0, i32 1
  %362 = load i8** %361, align 8
  %363 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %359, i8* getelementptr inbounds ([6 x i8]* @.str9, i32 0, i32 0), i8* %362)
  br label %364

; <label>:364                                     ; preds = %358, %355
  br label %365

; <label>:365                                     ; preds = %364, %354
  br label %435

; <label>:366                                     ; preds = %339
  %367 = call i32 @compoundgood(i8* getelementptr inbounds ([120 x i8]* @itoken, i32 0, i32 0), i32 0)
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %376

; <label>:369                                     ; preds = %366
  %370 = load i32* @terse, align 4
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %375, label %372

; <label>:372                                     ; preds = %369
  %373 = load %struct._IO_FILE** %1, align 8
  %374 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %373, i8* getelementptr inbounds ([3 x i8]* @.str10, i32 0, i32 0))
  br label %375

; <label>:375                                     ; preds = %372, %369
  br label %434

; <label>:376                                     ; preds = %366
  call void @makepossibilities(i8* getelementptr inbounds ([120 x i8]* @itoken, i32 0, i32 0))
  %377 = load i32* @pcount, align 4
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %379, label %422

; <label>:379                                     ; preds = %376
  %380 = load %struct._IO_FILE** %1, align 8
  %381 = load i32* @easypossibilities, align 4
  %382 = icmp ne i32 %381, 0
  %383 = select i1 %382, i32 38, i32 63
  %384 = load i32* @easypossibilities, align 4
  %385 = load i8** @currentchar, align 8
  %386 = ptrtoint i8* %385 to i64
  %387 = sub i64 %386, ptrtoint ([10 x [8192 x i8]]* @contextbufs to i64)
  %388 = call i64 @strlen(i8* getelementptr inbounds ([120 x i8]* @ctoken, i32 0, i32 0)) nounwind readonly
  %389 = sub i64 %387, %388
  %390 = trunc i64 %389 to i32
  %391 = load i32* @contextoffset, align 4
  %392 = add nsw i32 %390, %391
  %393 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %380, i8* getelementptr inbounds ([12 x i8]* @.str11, i32 0, i32 0), i32 %383, i8* getelementptr inbounds ([120 x i8]* @ctoken, i32 0, i32 0), i32 %384, i32 %392)
  store i32 0, i32* %i, align 4
  br label %394

; <label>:394                                     ; preds = %416, %379
  %395 = load i32* %i, align 4
  %396 = icmp slt i32 %395, 100
  br i1 %396, label %397, label %419

; <label>:397                                     ; preds = %394
  %398 = load i32* %i, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds [100 x [120 x i8]]* @possibilities, i32 0, i64 %399
  %401 = getelementptr inbounds [120 x i8]* %400, i32 0, i64 0
  %402 = load i8* %401, align 1
  %403 = sext i8 %402 to i32
  %404 = icmp eq i32 %403, 0
  br i1 %404, label %405, label %406

; <label>:405                                     ; preds = %397
  br label %419

; <label>:406                                     ; preds = %397
  %407 = load %struct._IO_FILE** %1, align 8
  %408 = load i32* %i, align 4
  %409 = icmp ne i32 %408, 0
  %410 = select i1 %409, i32 44, i32 58
  %411 = load i32* %i, align 4
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds [100 x [120 x i8]]* @possibilities, i32 0, i64 %412
  %414 = getelementptr inbounds [120 x i8]* %413, i32 0, i32 0
  %415 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %407, i8* getelementptr inbounds ([6 x i8]* @.str12, i32 0, i32 0), i32 %410, i8* %414)
  br label %416

; <label>:416                                     ; preds = %406
  %417 = load i32* %i, align 4
  %418 = add nsw i32 %417, 1
  store i32 %418, i32* %i, align 4
  br label %394

; <label>:419                                     ; preds = %405, %394
  %420 = load %struct._IO_FILE** %1, align 8
  %421 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %420, i8* getelementptr inbounds ([2 x i8]* @.str13, i32 0, i32 0))
  br label %433

; <label>:422                                     ; preds = %376
  %423 = load %struct._IO_FILE** %1, align 8
  %424 = load i8** @currentchar, align 8
  %425 = ptrtoint i8* %424 to i64
  %426 = sub i64 %425, ptrtoint ([10 x [8192 x i8]]* @contextbufs to i64)
  %427 = call i64 @strlen(i8* getelementptr inbounds ([120 x i8]* @ctoken, i32 0, i32 0)) nounwind readonly
  %428 = sub i64 %426, %427
  %429 = trunc i64 %428 to i32
  %430 = load i32* @contextoffset, align 4
  %431 = add nsw i32 %429, %430
  %432 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %423, i8* getelementptr inbounds ([9 x i8]* @.str14, i32 0, i32 0), i8* getelementptr inbounds ([120 x i8]* @ctoken, i32 0, i32 0), i32 %431)
  br label %433

; <label>:433                                     ; preds = %422, %419
  br label %434

; <label>:434                                     ; preds = %433, %375
  br label %435

; <label>:435                                     ; preds = %434, %365
  br label %441

; <label>:436                                     ; preds = %325
  %437 = load i32* @quit, align 4
  %438 = icmp ne i32 %437, 0
  br i1 %438, label %440, label %439

; <label>:439                                     ; preds = %436
  call void @correct(i8* getelementptr inbounds ([120 x i8]* @ctoken, i32 0, i32 0), i32 120, i8* getelementptr inbounds ([120 x i8]* @itoken, i32 0, i32 0), i32 120, i8** @currentchar)
  br label %440

; <label>:440                                     ; preds = %439, %436
  br label %441

; <label>:441                                     ; preds = %440, %435
  br label %442

; <label>:442                                     ; preds = %441, %324
  %443 = load i32* @aflag, align 4
  %444 = icmp ne i32 %443, 0
  br i1 %444, label %451, label %445

; <label>:445                                     ; preds = %442
  %446 = load i32* @lflag, align 4
  %447 = icmp ne i32 %446, 0
  br i1 %447, label %451, label %448

; <label>:448                                     ; preds = %445
  %449 = load %struct._IO_FILE** %1, align 8
  %450 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %449, i8* getelementptr inbounds ([3 x i8]* @.str15, i32 0, i32 0), i8* getelementptr inbounds ([120 x i8]* @ctoken, i32 0, i32 0))
  br label %451

; <label>:451                                     ; preds = %448, %445, %442
  br label %259

; <label>:452                                     ; preds = %277
  %453 = load i32* @lflag, align 4
  %454 = icmp ne i32 %453, 0
  br i1 %454, label %464, label %455

; <label>:455                                     ; preds = %452
  %456 = load i32* @aflag, align 4
  %457 = icmp ne i32 %456, 0
  br i1 %457, label %461, label %458

; <label>:458                                     ; preds = %455
  %459 = load i32* %hadlf, align 4
  %460 = icmp ne i32 %459, 0
  br i1 %460, label %461, label %464

; <label>:461                                     ; preds = %458, %455
  %462 = load %struct._IO_FILE** %1, align 8
  %463 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %462)
  br label %464

; <label>:464                                     ; preds = %461, %458, %452, %256, %178
  ret void
}

declare i64 @strlen(i8*) nounwind readonly

declare i32 @strncmp(i8*, i8*, i64) nounwind readonly

declare void @copyout(i8**, i32)

declare i16** @__ctype_b_loc() nounwind readnone

declare i32 @_IO_putc(i32, %struct._IO_FILE*)

define internal i8* @skiptoword(i8* %bufp) nounwind uwtable {
  %1 = alloca i8*, align 8
  store i8* %bufp, i8** %1, align 8
  br label %2

; <label>:2                                       ; preds = %360, %310, %285, %276, %243, %0
  %3 = load i8** %1, align 8
  %4 = load i8* %3
  %5 = sext i8 %4 to i32
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %45

; <label>:7                                       ; preds = %2
  %8 = load i8** %1, align 8
  %9 = load i8* %8
  %10 = zext i8 %9 to i64
  %11 = getelementptr inbounds [128 x i8]* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 27), i32 0, i64 %10
  %12 = load i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

; <label>:15                                      ; preds = %7
  %16 = load i8** %1, align 8
  %17 = call i32 @stringcharlen(i8* %16, i32 0)
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %26, label %19

; <label>:19                                      ; preds = %15, %7
  %20 = load i8** %1, align 8
  %21 = load i8* %20
  %22 = zext i8 %21 to i64
  %23 = getelementptr inbounds [228 x i8]* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 23), i32 0, i64 %22
  %24 = load i8* %23, align 1
  %25 = icmp ne i8 %24, 0
  br i1 %25, label %26, label %43

; <label>:26                                      ; preds = %19, %15
  %27 = load i8** %1, align 8
  %28 = load i8* %27
  %29 = zext i8 %28 to i64
  %30 = getelementptr inbounds [228 x i8]* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 26), i32 0, i64 %29
  %31 = load i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %43, label %34

; <label>:34                                      ; preds = %26
  %35 = load i32* @tflag, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

; <label>:37                                      ; preds = %34
  %38 = load i32* @math_mode, align 4
  %39 = and i32 %38, 1
  %40 = icmp ne i32 %39, 0
  br label %41

; <label>:41                                      ; preds = %37, %34
  %42 = phi i1 [ false, %34 ], [ %40, %37 ]
  br label %43

; <label>:43                                      ; preds = %41, %26, %19
  %44 = phi i1 [ true, %26 ], [ true, %19 ], [ %42, %41 ]
  br label %45

; <label>:45                                      ; preds = %43, %2
  %46 = phi i1 [ false, %2 ], [ %44, %43 ]
  br i1 %46, label %47, label %361

; <label>:47                                      ; preds = %45
  %48 = load i32* @tflag, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %217

; <label>:50                                      ; preds = %47
  %51 = load i8** %1, align 8
  %52 = load i8* %51
  %53 = sext i8 %52 to i32
  %54 = load i8* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 16, i64 12), align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %53, %55
  br i1 %56, label %57, label %64

; <label>:57                                      ; preds = %50
  %58 = load i32* @TeX_comment, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

; <label>:60                                      ; preds = %57
  %61 = load i32* @math_mode, align 4
  store i32 %61, i32* @save_math_mode, align 4
  %62 = load i8* @LaTeX_Mode, align 1
  store i8 %62, i8* @save_LaTeX_Mode, align 1
  store i32 0, i32* @math_mode, align 4
  store i8 80, i8* @LaTeX_Mode, align 1
  store i32 1, i32* @TeX_comment, align 4
  br label %63

; <label>:63                                      ; preds = %60, %57
  br label %210

; <label>:64                                      ; preds = %50
  %65 = load i32* @math_mode, align 4
  %66 = and i32 %65, 1
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %140

; <label>:68                                      ; preds = %64
  %69 = load i8* @LaTeX_Mode, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 101
  br i1 %71, label %72, label %75

; <label>:72                                      ; preds = %68
  %73 = call i32 @TeX_math_check(i32 101, i8** %1)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %82, label %75

; <label>:75                                      ; preds = %72, %68
  %76 = load i8* @LaTeX_Mode, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 109
  br i1 %78, label %79, label %85

; <label>:79                                      ; preds = %75
  %80 = call i32 @TeX_LR_check(i32 1, i8** %1)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

; <label>:82                                      ; preds = %79, %72
  %83 = load i32* @math_mode, align 4
  %84 = add nsw i32 %83, -1
  store i32 %84, i32* @math_mode, align 4
  br label %133

; <label>:85                                      ; preds = %79, %75
  br label %86

; <label>:86                                      ; preds = %117, %85
  %87 = load i8** %1, align 8
  %88 = load i8* %87
  %89 = sext i8 %88 to i32
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %115

; <label>:91                                      ; preds = %86
  %92 = load i8** %1, align 8
  %93 = load i8* %92
  %94 = sext i8 %93 to i32
  %95 = load i8* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 16, i64 8), align 1
  %96 = sext i8 %95 to i32
  %97 = icmp eq i32 %94, %96
  br i1 %97, label %112, label %98

; <label>:98                                      ; preds = %91
  %99 = load i8** %1, align 8
  %100 = load i8* %99
  %101 = sext i8 %100 to i32
  %102 = load i8* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 16, i64 9), align 1
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %101, %103
  br i1 %104, label %112, label %105

; <label>:105                                     ; preds = %98
  %106 = load i8** %1, align 8
  %107 = load i8* %106
  %108 = sext i8 %107 to i32
  %109 = load i8* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 16, i64 12), align 1
  %110 = sext i8 %109 to i32
  %111 = icmp eq i32 %108, %110
  br label %112

; <label>:112                                     ; preds = %105, %98, %91
  %113 = phi i1 [ true, %98 ], [ true, %91 ], [ %111, %105 ]
  %114 = xor i1 %113, true
  br label %115

; <label>:115                                     ; preds = %112, %86
  %116 = phi i1 [ false, %86 ], [ %114, %112 ]
  br i1 %116, label %117, label %120

; <label>:117                                     ; preds = %115
  %118 = load i8** %1, align 8
  %119 = getelementptr inbounds i8* %118, i32 1
  store i8* %119, i8** %1, align 8
  br label %86

; <label>:120                                     ; preds = %115
  %121 = load i8** %1, align 8
  %122 = load i8* %121
  %123 = sext i8 %122 to i32
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %126

; <label>:125                                     ; preds = %120
  br label %361

; <label>:126                                     ; preds = %120
  %127 = call i32 @TeX_math_end(i8** %1)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %132

; <label>:129                                     ; preds = %126
  %130 = load i32* @math_mode, align 4
  %131 = add nsw i32 %130, -1
  store i32 %131, i32* @math_mode, align 4
  br label %132

; <label>:132                                     ; preds = %129, %126
  br label %133

; <label>:133                                     ; preds = %132, %82
  %134 = load i32* @math_mode, align 4
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %139

; <label>:136                                     ; preds = %133
  %137 = load %struct._IO_FILE** @stderr, align 8
  %138 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %137, i8* getelementptr inbounds ([38 x i8]* @.str16, i32 0, i32 0))
  store i32 0, i32* @math_mode, align 4
  br label %139

; <label>:139                                     ; preds = %136, %133
  br label %209

; <label>:140                                     ; preds = %64
  %141 = load i32* @math_mode, align 4
  %142 = icmp sgt i32 %141, 1
  br i1 %142, label %143, label %159

; <label>:143                                     ; preds = %140
  %144 = load i8** %1, align 8
  %145 = load i8* %144
  %146 = sext i8 %145 to i32
  %147 = load i8* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 16, i64 5), align 1
  %148 = sext i8 %147 to i32
  %149 = icmp eq i32 %146, %148
  br i1 %149, label %150, label %159

; <label>:150                                     ; preds = %143
  %151 = load i32* @math_mode, align 4
  %152 = load i32* @math_mode, align 4
  %153 = and i32 %152, 127
  %154 = mul nsw i32 %153, 128
  %155 = icmp slt i32 %151, %154
  br i1 %155, label %156, label %159

; <label>:156                                     ; preds = %150
  %157 = load i32* @math_mode, align 4
  %158 = add nsw i32 %157, -1
  store i32 %158, i32* @math_mode, align 4
  br label %208

; <label>:159                                     ; preds = %150, %143, %140
  %160 = load i8* @LaTeX_Mode, align 1
  %161 = sext i8 %160 to i32
  %162 = icmp eq i32 %161, 109
  br i1 %162, label %176, label %163

; <label>:163                                     ; preds = %159
  %164 = load i32* @math_mode, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %183

; <label>:166                                     ; preds = %163
  %167 = load i32* @math_mode, align 4
  %168 = load i32* @math_mode, align 4
  %169 = and i32 %168, 127
  %170 = mul nsw i32 %169, 128
  %171 = icmp sge i32 %167, %170
  br i1 %171, label %172, label %183

; <label>:172                                     ; preds = %166
  %173 = load i8** %1, align 8
  %174 = call i32 @TeX_strncmp(i8* %173, i8* getelementptr inbounds ([5 x i8]* @.str17, i32 0, i32 0), i32 4)
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %183

; <label>:176                                     ; preds = %172, %159
  %177 = call i32 @TeX_LR_check(i32 0, i8** %1)
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %182

; <label>:179                                     ; preds = %176
  %180 = load i32* @math_mode, align 4
  %181 = add nsw i32 %180, -1
  store i32 %181, i32* @math_mode, align 4
  br label %182

; <label>:182                                     ; preds = %179, %176
  br label %207

; <label>:183                                     ; preds = %172, %166, %163
  %184 = load i8* @LaTeX_Mode, align 1
  %185 = sext i8 %184 to i32
  %186 = icmp eq i32 %185, 98
  br i1 %186, label %187, label %193

; <label>:187                                     ; preds = %183
  %188 = call i32 @TeX_math_check(i32 98, i8** %1)
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %193

; <label>:190                                     ; preds = %187
  %191 = load i32* @math_mode, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* @math_mode, align 4
  br label %206

; <label>:193                                     ; preds = %187, %183
  %194 = load i8* @LaTeX_Mode, align 1
  %195 = sext i8 %194 to i32
  %196 = icmp eq i32 %195, 114
  br i1 %196, label %197, label %198

; <label>:197                                     ; preds = %193
  call void @TeX_skip_parens(i8** %1)
  store i8 80, i8* @LaTeX_Mode, align 1
  br label %205

; <label>:198                                     ; preds = %193
  %199 = call i32 @TeX_math_begin(i8** %1)
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %204

; <label>:201                                     ; preds = %198
  %202 = load i32* @math_mode, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* @math_mode, align 4
  br label %204

; <label>:204                                     ; preds = %201, %198
  br label %205

; <label>:205                                     ; preds = %204, %197
  br label %206

; <label>:206                                     ; preds = %205, %190
  br label %207

; <label>:207                                     ; preds = %206, %182
  br label %208

; <label>:208                                     ; preds = %207, %156
  br label %209

; <label>:209                                     ; preds = %208, %139
  br label %210

; <label>:210                                     ; preds = %209, %63
  %211 = load i8** %1, align 8
  %212 = load i8* %211
  %213 = sext i8 %212 to i32
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %216

; <label>:215                                     ; preds = %210
  br label %361

; <label>:216                                     ; preds = %210
  br label %315

; <label>:217                                     ; preds = %47
  %218 = load i8** %1, align 8
  %219 = load i8* %218
  %220 = sext i8 %219 to i32
  %221 = load i8* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 15, i64 3), align 1
  %222 = sext i8 %221 to i32
  %223 = icmp eq i32 %220, %222
  br i1 %223, label %224, label %314

; <label>:224                                     ; preds = %217
  %225 = load i8** %1, align 8
  %226 = getelementptr inbounds i8* %225, i64 1
  %227 = load i8* %226
  %228 = sext i8 %227 to i32
  switch i32 %228, label %277 [
    i32 102, label %229
    i32 115, label %244
  ]

; <label>:229                                     ; preds = %224
  %230 = load i8** %1, align 8
  %231 = getelementptr inbounds i8* %230, i64 2
  %232 = load i8* %231
  %233 = sext i8 %232 to i32
  %234 = load i8* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 15, i64 0), align 1
  %235 = sext i8 %234 to i32
  %236 = icmp eq i32 %233, %235
  br i1 %236, label %237, label %240

; <label>:237                                     ; preds = %229
  %238 = load i8** %1, align 8
  %239 = getelementptr inbounds i8* %238, i64 5
  store i8* %239, i8** %1, align 8
  br label %243

; <label>:240                                     ; preds = %229
  %241 = load i8** %1, align 8
  %242 = getelementptr inbounds i8* %241, i64 3
  store i8* %242, i8** %1, align 8
  br label %243

; <label>:243                                     ; preds = %240, %237
  br label %2

; <label>:244                                     ; preds = %224
  %245 = load i8** %1, align 8
  %246 = getelementptr inbounds i8* %245, i64 2
  store i8* %246, i8** %1, align 8
  %247 = load i8** %1, align 8
  %248 = load i8* %247
  %249 = sext i8 %248 to i32
  %250 = icmp eq i32 %249, 43
  br i1 %250, label %256, label %251

; <label>:251                                     ; preds = %244
  %252 = load i8** %1, align 8
  %253 = load i8* %252
  %254 = sext i8 %253 to i32
  %255 = icmp eq i32 %254, 45
  br i1 %255, label %256, label %259

; <label>:256                                     ; preds = %251, %244
  %257 = load i8** %1, align 8
  %258 = getelementptr inbounds i8* %257, i32 1
  store i8* %258, i8** %1, align 8
  br label %259

; <label>:259                                     ; preds = %256, %251
  %260 = load i8** %1, align 8
  %261 = getelementptr inbounds i8* %260, i32 1
  store i8* %261, i8** %1, align 8
  %262 = load i8** %1, align 8
  %263 = load i8* %262
  %264 = sext i8 %263 to i32
  %265 = sext i32 %264 to i64
  %266 = call i16** @__ctype_b_loc() nounwind readnone
  %267 = load i16** %266
  %268 = getelementptr inbounds i16* %267, i64 %265
  %269 = load i16* %268
  %270 = zext i16 %269 to i32
  %271 = and i32 %270, 2048
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %276

; <label>:273                                     ; preds = %259
  %274 = load i8** %1, align 8
  %275 = getelementptr inbounds i8* %274, i32 1
  store i8* %275, i8** %1, align 8
  br label %276

; <label>:276                                     ; preds = %273, %259
  br label %2

; <label>:277                                     ; preds = %224
  %278 = load i8** %1, align 8
  %279 = getelementptr inbounds i8* %278, i64 1
  %280 = load i8* %279
  %281 = sext i8 %280 to i32
  %282 = load i8* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 15, i64 0), align 1
  %283 = sext i8 %282 to i32
  %284 = icmp eq i32 %281, %283
  br i1 %284, label %285, label %288

; <label>:285                                     ; preds = %277
  %286 = load i8** %1, align 8
  %287 = getelementptr inbounds i8* %286, i64 4
  store i8* %287, i8** %1, align 8
  br label %2

; <label>:288                                     ; preds = %277
  %289 = load i8** %1, align 8
  %290 = getelementptr inbounds i8* %289, i64 1
  %291 = load i8* %290
  %292 = sext i8 %291 to i32
  %293 = load i8* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 15, i64 4), align 1
  %294 = sext i8 %293 to i32
  %295 = icmp eq i32 %292, %294
  br i1 %295, label %296, label %311

; <label>:296                                     ; preds = %288
  %297 = load i8** %1, align 8
  %298 = getelementptr inbounds i8* %297, i64 2
  %299 = load i8* %298
  %300 = sext i8 %299 to i32
  %301 = load i8* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 15, i64 0), align 1
  %302 = sext i8 %301 to i32
  %303 = icmp eq i32 %300, %302
  br i1 %303, label %304, label %307

; <label>:304                                     ; preds = %296
  %305 = load i8** %1, align 8
  %306 = getelementptr inbounds i8* %305, i64 5
  store i8* %306, i8** %1, align 8
  br label %310

; <label>:307                                     ; preds = %296
  %308 = load i8** %1, align 8
  %309 = getelementptr inbounds i8* %308, i64 3
  store i8* %309, i8** %1, align 8
  br label %310

; <label>:310                                     ; preds = %307, %304
  br label %2

; <label>:311                                     ; preds = %288
  br label %312

; <label>:312                                     ; preds = %311
  br label %313

; <label>:313                                     ; preds = %312
  br label %314

; <label>:314                                     ; preds = %313, %217
  br label %315

; <label>:315                                     ; preds = %314, %216
  %316 = load i8** %1, align 8
  %317 = load i8* %316
  %318 = sext i8 %317 to i32
  %319 = icmp eq i32 %318, 48
  br i1 %319, label %320, label %357

; <label>:320                                     ; preds = %315
  %321 = load i8** %1, align 8
  %322 = getelementptr inbounds i8* %321, i64 1
  %323 = load i8* %322
  %324 = sext i8 %323 to i32
  %325 = icmp eq i32 %324, 120
  br i1 %325, label %332, label %326

; <label>:326                                     ; preds = %320
  %327 = load i8** %1, align 8
  %328 = getelementptr inbounds i8* %327, i64 1
  %329 = load i8* %328
  %330 = sext i8 %329 to i32
  %331 = icmp eq i32 %330, 88
  br i1 %331, label %332, label %357

; <label>:332                                     ; preds = %326, %320
  %333 = load i32* @terse, align 4
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %338, label %335

; <label>:335                                     ; preds = %332
  %336 = load i32* @aflag, align 4
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %357, label %338

; <label>:338                                     ; preds = %335, %332
  %339 = load i8** %1, align 8
  %340 = getelementptr inbounds i8* %339, i64 2
  store i8* %340, i8** %1, align 8
  br label %341

; <label>:341                                     ; preds = %353, %338
  %342 = load i8** %1, align 8
  %343 = load i8* %342
  %344 = sext i8 %343 to i32
  %345 = sext i32 %344 to i64
  %346 = call i16** @__ctype_b_loc() nounwind readnone
  %347 = load i16** %346
  %348 = getelementptr inbounds i16* %347, i64 %345
  %349 = load i16* %348
  %350 = zext i16 %349 to i32
  %351 = and i32 %350, 4096
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %356

; <label>:353                                     ; preds = %341
  %354 = load i8** %1, align 8
  %355 = getelementptr inbounds i8* %354, i32 1
  store i8* %355, i8** %1, align 8
  br label %341

; <label>:356                                     ; preds = %341
  br label %360

; <label>:357                                     ; preds = %335, %326, %315
  %358 = load i8** %1, align 8
  %359 = getelementptr inbounds i8* %358, i32 1
  store i8* %359, i8** %1, align 8
  br label %360

; <label>:360                                     ; preds = %357, %356
  br label %2

; <label>:361                                     ; preds = %215, %125, %45
  %362 = load i8** %1, align 8
  %363 = load i8* %362
  %364 = sext i8 %363 to i32
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %366, label %373

; <label>:366                                     ; preds = %361
  %367 = load i32* @TeX_comment, align 4
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %372

; <label>:369                                     ; preds = %366
  %370 = load i32* @save_math_mode, align 4
  store i32 %370, i32* @math_mode, align 4
  %371 = load i8* @save_LaTeX_Mode, align 1
  store i8 %371, i8* @LaTeX_Mode, align 1
  store i32 0, i32* @TeX_comment, align 4
  br label %372

; <label>:372                                     ; preds = %369, %366
  br label %373

; <label>:373                                     ; preds = %372, %361
  %374 = load i8** %1, align 8
  ret i8* %374
}

declare i32 @strtoichar(i8*, i8*, i32, i32)

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...)

declare i32 @good(i8*, i32, i32, i32, i32)

declare i32 @compoundgood(i8*, i32)

declare void @makepossibilities(i8*)

declare void @correct(i8*, i32, i8*, i32, i8**)

define internal i32 @TeX_math_check(i32 %cont_char, i8** %bufp) nounwind uwtable {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  store i32 %cont_char, i32* %2, align 4
  store i8** %bufp, i8*** %3, align 8
  %4 = load i8*** %3, align 8
  call void @TeX_open_paren(i8** %4)
  %5 = load i8*** %3, align 8
  %6 = load i8** %5
  %7 = load i8* %6
  %8 = sext i8 %7 to i32
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13

; <label>:10                                      ; preds = %0
  %11 = load i32* %2, align 4
  %12 = trunc i32 %11 to i8
  store i8 %12, i8* @LaTeX_Mode, align 1
  store i32 0, i32* %1
  br label %53

; <label>:13                                      ; preds = %0
  store i8 80, i8* @LaTeX_Mode, align 1
  br label %14

; <label>:14                                      ; preds = %13
  %15 = load i8*** %3, align 8
  %16 = load i8** %15
  %17 = getelementptr inbounds i8* %16, i32 1
  store i8* %17, i8** %15
  %18 = call i32 @strncmp(i8* %17, i8* getelementptr inbounds ([9 x i8]* @.str53, i32 0, i32 0), i64 8) nounwind readonly
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %40, label %20

; <label>:20                                      ; preds = %14
  %21 = load i8*** %3, align 8
  %22 = load i8** %21
  %23 = call i32 @strncmp(i8* %22, i8* getelementptr inbounds ([9 x i8]* @.str54, i32 0, i32 0), i64 8) nounwind readonly
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %40, label %25

; <label>:25                                      ; preds = %20
  %26 = load i8*** %3, align 8
  %27 = load i8** %26
  %28 = call i32 @strncmp(i8* %27, i8* getelementptr inbounds ([12 x i8]* @.str55, i32 0, i32 0), i64 11) nounwind readonly
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %40, label %30

; <label>:30                                      ; preds = %25
  %31 = load i8*** %3, align 8
  %32 = load i8** %31
  %33 = call i32 @strncmp(i8* %32, i8* getelementptr inbounds ([8 x i8]* @.str56, i32 0, i32 0), i64 7) nounwind readonly
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %40, label %35

; <label>:35                                      ; preds = %30
  %36 = load i8*** %3, align 8
  %37 = load i8** %36
  %38 = call i32 @strncmp(i8* %37, i8* getelementptr inbounds ([5 x i8]* @.str57, i32 0, i32 0), i64 4) nounwind readonly
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %45

; <label>:40                                      ; preds = %35, %30, %25, %20, %14
  %41 = load i8*** %3, align 8
  %42 = load i8** %41
  %43 = getelementptr inbounds i8* %42, i32 -1
  store i8* %43, i8** %41
  %44 = load i8*** %3, align 8
  call void @TeX_skip_parens(i8** %44)
  store i32 1, i32* %1
  br label %53

; <label>:45                                      ; preds = %35
  %46 = load i32* %2, align 4
  %47 = icmp eq i32 %46, 98
  br i1 %47, label %48, label %50

; <label>:48                                      ; preds = %45
  %49 = load i8*** %3, align 8
  call void (...)* bitcast (void (i8**)* @TeX_skip_args to void (...)*)(i8** %49)
  br label %52

; <label>:50                                      ; preds = %45
  %51 = load i8*** %3, align 8
  call void @TeX_skip_parens(i8** %51)
  br label %52

; <label>:52                                      ; preds = %50, %48
  store i32 0, i32* %1
  br label %53

; <label>:53                                      ; preds = %52, %40, %10
  %54 = load i32* %1
  ret i32 %54
}

define internal i32 @TeX_LR_check(i32 %begin_p, i8** %bufp) nounwind uwtable {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  store i32 %begin_p, i32* %2, align 4
  store i8** %bufp, i8*** %3, align 8
  %4 = load i8*** %3, align 8
  call void @TeX_open_paren(i8** %4)
  %5 = load i8*** %3, align 8
  %6 = load i8** %5
  %7 = load i8* %6
  %8 = sext i8 %7 to i32
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %0
  store i8 109, i8* @LaTeX_Mode, align 1
  store i32 0, i32* %1
  br label %58

; <label>:11                                      ; preds = %0
  store i8 80, i8* @LaTeX_Mode, align 1
  br label %12

; <label>:12                                      ; preds = %11
  %13 = load i8*** %3, align 8
  %14 = load i8** %13
  %15 = getelementptr inbounds i8* %14, i32 1
  store i8* %15, i8** %13
  %16 = call i32 @strncmp(i8* %15, i8* getelementptr inbounds ([9 x i8]* @.str51, i32 0, i32 0), i64 8) nounwind readonly
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %54

; <label>:18                                      ; preds = %12
  %19 = load i8*** %3, align 8
  call void @TeX_skip_parens(i8** %19)
  %20 = load i8*** %3, align 8
  %21 = load i8** %20
  %22 = load i8* %21
  %23 = icmp ne i8 %22, 0
  br i1 %23, label %24, label %28

; <label>:24                                      ; preds = %18
  %25 = load i8*** %3, align 8
  %26 = load i8** %25
  %27 = getelementptr inbounds i8* %26, i32 1
  store i8* %27, i8** %25
  br label %28

; <label>:28                                      ; preds = %24, %18
  %29 = load i32* %2, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %41

; <label>:31                                      ; preds = %28
  %32 = load i8*** %3, align 8
  call void @TeX_skip_parens(i8** %32)
  %33 = load i32* @math_mode, align 4
  %34 = add nsw i32 %33, 2
  store i32 %34, i32* @math_mode, align 4
  %35 = load i32* @math_mode, align 4
  %36 = and i32 %35, 127
  %37 = sub nsw i32 %36, 1
  %38 = mul nsw i32 %37, 128
  %39 = load i32* @math_mode, align 4
  %40 = add nsw i32 %39, %38
  store i32 %40, i32* @math_mode, align 4
  br label %53

; <label>:41                                      ; preds = %28
  %42 = load i32* @math_mode, align 4
  %43 = and i32 %42, 127
  %44 = mul nsw i32 %43, 128
  %45 = load i32* @math_mode, align 4
  %46 = sub nsw i32 %45, %44
  store i32 %46, i32* @math_mode, align 4
  %47 = load i32* @math_mode, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %52

; <label>:49                                      ; preds = %41
  %50 = load %struct._IO_FILE** @stderr, align 8
  %51 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %50, i8* getelementptr inbounds ([37 x i8]* @.str52, i32 0, i32 0))
  store i32 1, i32* @math_mode, align 4
  br label %52

; <label>:52                                      ; preds = %49, %41
  br label %53

; <label>:53                                      ; preds = %52, %31
  store i32 1, i32* %1
  br label %58

; <label>:54                                      ; preds = %12
  %55 = load i8*** %3, align 8
  %56 = load i8** %55
  %57 = getelementptr inbounds i8* %56, i32 -1
  store i8* %57, i8** %55
  store i32 0, i32* %1
  br label %58

; <label>:58                                      ; preds = %54, %53, %10
  %59 = load i32* %1
  ret i32 %59
}

define internal i32 @TeX_math_end(i8** %bufp) nounwind uwtable {
  %1 = alloca i32, align 4
  %2 = alloca i8**, align 8
  store i8** %bufp, i8*** %2, align 8
  %3 = load i8*** %2, align 8
  %4 = load i8** %3
  %5 = load i8* %4
  %6 = sext i8 %5 to i32
  %7 = load i8* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 16, i64 9), align 1
  %8 = sext i8 %7 to i32
  %9 = icmp eq i32 %6, %8
  br i1 %9, label %10, label %24

; <label>:10                                      ; preds = %0
  %11 = load i8*** %2, align 8
  %12 = load i8** %11
  %13 = getelementptr inbounds i8* %12, i64 1
  %14 = load i8* %13
  %15 = sext i8 %14 to i32
  %16 = load i8* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 16, i64 9), align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %15, %17
  br i1 %18, label %19, label %23

; <label>:19                                      ; preds = %10
  %20 = load i8*** %2, align 8
  %21 = load i8** %20
  %22 = getelementptr inbounds i8* %21, i32 1
  store i8* %22, i8** %20
  br label %23

; <label>:23                                      ; preds = %19, %10
  store i32 1, i32* %1
  br label %74

; <label>:24                                      ; preds = %0
  %25 = load i8*** %2, align 8
  %26 = load i8** %25
  %27 = load i8* %26
  %28 = sext i8 %27 to i32
  %29 = load i8* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 16, i64 12), align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %28, %30
  br i1 %31, label %32, label %39

; <label>:32                                      ; preds = %24
  %33 = load i32* @TeX_comment, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

; <label>:35                                      ; preds = %32
  %36 = load i32* @math_mode, align 4
  store i32 %36, i32* @save_math_mode, align 4
  %37 = load i8* @LaTeX_Mode, align 1
  store i8 %37, i8* @save_LaTeX_Mode, align 1
  store i32 0, i32* @math_mode, align 4
  store i8 80, i8* @LaTeX_Mode, align 1
  store i32 1, i32* @TeX_comment, align 4
  br label %38

; <label>:38                                      ; preds = %35, %32
  store i32 0, i32* %1
  br label %74

; <label>:39                                      ; preds = %24
  br label %40

; <label>:40                                      ; preds = %39
  %41 = load i8*** %2, align 8
  %42 = load i8** %41
  %43 = getelementptr inbounds i8* %42, i32 1
  store i8* %43, i8** %41
  %44 = load i8*** %2, align 8
  %45 = load i8** %44
  %46 = load i8* %45
  %47 = sext i8 %46 to i32
  %48 = load i8* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 16, i64 1), align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %47, %49
  br i1 %50, label %59, label %51

; <label>:51                                      ; preds = %40
  %52 = load i8*** %2, align 8
  %53 = load i8** %52
  %54 = load i8* %53
  %55 = sext i8 %54 to i32
  %56 = load i8* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 16, i64 3), align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %55, %57
  br i1 %58, label %59, label %60

; <label>:59                                      ; preds = %51, %40
  store i32 1, i32* %1
  br label %74

; <label>:60                                      ; preds = %51
  %61 = load i8*** %2, align 8
  %62 = call i32 @TeX_LR_begin(i8** %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

; <label>:64                                      ; preds = %60
  store i32 1, i32* %1
  br label %74

; <label>:65                                      ; preds = %60
  %66 = load i8*** %2, align 8
  %67 = load i8** %66
  %68 = call i32 @TeX_strncmp(i8* %67, i8* getelementptr inbounds ([4 x i8]* @.str19, i32 0, i32 0), i32 3)
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %73

; <label>:70                                      ; preds = %65
  %71 = load i8*** %2, align 8
  %72 = call i32 @TeX_math_check(i32 101, i8** %71)
  store i32 %72, i32* %1
  br label %74

; <label>:73                                      ; preds = %65
  store i32 0, i32* %1
  br label %74

; <label>:74                                      ; preds = %73, %70, %64, %59, %38, %23
  %75 = load i32* %1
  ret i32 %75
}

define internal i32 @TeX_strncmp(i8* %a, i8* %b, i32 %n) nounwind uwtable {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %cmpresult = alloca i32, align 4
  store i8* %a, i8** %2, align 8
  store i8* %b, i8** %3, align 8
  store i32 %n, i32* %4, align 4
  %5 = load i8** %2, align 8
  %6 = load i8** %3, align 8
  %7 = load i32* %4, align 4
  %8 = sext i32 %7 to i64
  %9 = call i32 @strncmp(i8* %5, i8* %6, i64 %8) nounwind readonly
  store i32 %9, i32* %cmpresult, align 4
  %10 = load i32* %cmpresult, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %38

; <label>:12                                      ; preds = %0
  %13 = load i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = load i8** %2, align 8
  %16 = getelementptr inbounds i8* %15, i64 %14
  %17 = load i8* %16
  %18 = sext i8 %17 to i32
  %19 = and i32 %18, -128
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %37

; <label>:21                                      ; preds = %12
  %22 = load i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = load i8** %2, align 8
  %25 = getelementptr inbounds i8* %24, i64 %23
  %26 = load i8* %25
  %27 = sext i8 %26 to i32
  %28 = sext i32 %27 to i64
  %29 = call i16** @__ctype_b_loc() nounwind readnone
  %30 = load i16** %29
  %31 = getelementptr inbounds i16* %30, i64 %28
  %32 = load i16* %31
  %33 = zext i16 %32 to i32
  %34 = and i32 %33, 1024
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

; <label>:36                                      ; preds = %21
  store i32 1, i32* %1
  br label %40

; <label>:37                                      ; preds = %21, %12
  br label %38

; <label>:38                                      ; preds = %37, %0
  %39 = load i32* %cmpresult, align 4
  store i32 %39, i32* %1
  br label %40

; <label>:40                                      ; preds = %38, %36
  %41 = load i32* %1
  ret i32 %41
}

define internal void @TeX_skip_parens(i8** %bufp) nounwind uwtable {
  %1 = alloca i8**, align 8
  store i8** %bufp, i8*** %1, align 8
  br label %2

; <label>:2                                       ; preds = %26, %0
  %3 = load i8*** %1, align 8
  %4 = load i8** %3
  %5 = load i8* %4
  %6 = sext i8 %5 to i32
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %24

; <label>:8                                       ; preds = %2
  %9 = load i8*** %1, align 8
  %10 = load i8** %9
  %11 = load i8* %10
  %12 = sext i8 %11 to i32
  %13 = load i8* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 16, i64 5), align 1
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %12, %14
  br i1 %15, label %16, label %24

; <label>:16                                      ; preds = %8
  %17 = load i8*** %1, align 8
  %18 = load i8** %17
  %19 = load i8* %18
  %20 = sext i8 %19 to i32
  %21 = load i8* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 16, i64 9), align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %20, %22
  br label %24

; <label>:24                                      ; preds = %16, %8, %2
  %25 = phi i1 [ false, %8 ], [ false, %2 ], [ %23, %16 ]
  br i1 %25, label %26, label %30

; <label>:26                                      ; preds = %24
  %27 = load i8*** %1, align 8
  %28 = load i8** %27
  %29 = getelementptr inbounds i8* %28, i32 1
  store i8* %29, i8** %27
  br label %2

; <label>:30                                      ; preds = %24
  ret void
}

define internal i32 @TeX_math_begin(i8** %bufp) nounwind uwtable {
  %1 = alloca i32, align 4
  %2 = alloca i8**, align 8
  store i8** %bufp, i8*** %2, align 8
  %3 = load i8*** %2, align 8
  %4 = load i8** %3
  %5 = load i8* %4
  %6 = sext i8 %5 to i32
  %7 = load i8* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 16, i64 9), align 1
  %8 = sext i8 %7 to i32
  %9 = icmp eq i32 %6, %8
  br i1 %9, label %10, label %24

; <label>:10                                      ; preds = %0
  %11 = load i8*** %2, align 8
  %12 = load i8** %11
  %13 = getelementptr inbounds i8* %12, i64 1
  %14 = load i8* %13
  %15 = sext i8 %14 to i32
  %16 = load i8* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 16, i64 9), align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %15, %17
  br i1 %18, label %19, label %23

; <label>:19                                      ; preds = %10
  %20 = load i8*** %2, align 8
  %21 = load i8** %20
  %22 = getelementptr inbounds i8* %21, i32 1
  store i8* %22, i8** %20
  br label %23

; <label>:23                                      ; preds = %19, %10
  store i32 1, i32* %1
  br label %161

; <label>:24                                      ; preds = %0
  br label %25

; <label>:25                                      ; preds = %95, %72, %24
  %26 = load i8*** %2, align 8
  %27 = load i8** %26
  %28 = load i8* %27
  %29 = sext i8 %28 to i32
  %30 = load i8* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 16, i64 8), align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %29, %31
  br i1 %32, label %33, label %96

; <label>:33                                      ; preds = %25
  %34 = load i8*** %2, align 8
  %35 = load i8** %34
  %36 = getelementptr inbounds i8* %35, i32 1
  store i8* %36, i8** %34
  %37 = load i8*** %2, align 8
  %38 = load i8** %37
  %39 = load i8* %38
  %40 = sext i8 %39 to i32
  %41 = load i8* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 16, i64 0), align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %52, label %44

; <label>:44                                      ; preds = %33
  %45 = load i8*** %2, align 8
  %46 = load i8** %45
  %47 = load i8* %46
  %48 = sext i8 %47 to i32
  %49 = load i8* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 16, i64 2), align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %48, %50
  br i1 %51, label %52, label %53

; <label>:52                                      ; preds = %44, %33
  store i32 1, i32* %1
  br label %161

; <label>:53                                      ; preds = %44
  %54 = load i8*** %2, align 8
  %55 = load i8** %54
  %56 = load i8* %55
  %57 = sext i8 %56 to i32
  %58 = sext i32 %57 to i64
  %59 = call i16** @__ctype_b_loc() nounwind readnone
  %60 = load i16** %59
  %61 = getelementptr inbounds i16* %60, i64 %58
  %62 = load i16* %61
  %63 = zext i16 %62 to i32
  %64 = and i32 %63, 1024
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %76, label %66

; <label>:66                                      ; preds = %53
  %67 = load i8*** %2, align 8
  %68 = load i8** %67
  %69 = load i8* %68
  %70 = sext i8 %69 to i32
  %71 = icmp ne i32 %70, 64
  br i1 %71, label %72, label %76

; <label>:72                                      ; preds = %66
  %73 = load i8*** %2, align 8
  %74 = load i8** %73
  %75 = getelementptr inbounds i8* %74, i32 1
  store i8* %75, i8** %73
  br label %25

; <label>:76                                      ; preds = %66, %53
  %77 = load i8*** %2, align 8
  %78 = load i8** %77
  %79 = call i32 @TeX_strncmp(i8* %78, i8* getelementptr inbounds ([6 x i8]* @.str18, i32 0, i32 0), i32 5)
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %91

; <label>:81                                      ; preds = %76
  %82 = load i8*** %2, align 8
  %83 = call i32 @TeX_math_check(i32 98, i8** %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

; <label>:85                                      ; preds = %81
  store i32 1, i32* %1
  br label %161

; <label>:86                                      ; preds = %81
  %87 = load i8*** %2, align 8
  %88 = load i8** %87
  %89 = getelementptr inbounds i8* %88, i32 -1
  store i8* %89, i8** %87
  br label %90

; <label>:90                                      ; preds = %86
  br label %93

; <label>:91                                      ; preds = %76
  %92 = load i8*** %2, align 8
  call void @TeX_skip_check(i8** %92)
  store i32 0, i32* %1
  br label %161

; <label>:93                                      ; preds = %90
  br label %94

; <label>:94                                      ; preds = %93
  br label %95

; <label>:95                                      ; preds = %94
  br label %25

; <label>:96                                      ; preds = %25
  %97 = load i8*** %2, align 8
  %98 = load i8** %97
  %99 = load i8* %98
  %100 = sext i8 %99 to i32
  %101 = load i8* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 16, i64 2), align 1
  %102 = sext i8 %101 to i32
  %103 = icmp eq i32 %100, %102
  br i1 %103, label %112, label %104

; <label>:104                                     ; preds = %96
  %105 = load i8*** %2, align 8
  %106 = load i8** %105
  %107 = load i8* %106
  %108 = sext i8 %107 to i32
  %109 = load i8* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 16, i64 6), align 1
  %110 = sext i8 %109 to i32
  %111 = icmp eq i32 %108, %110
  br i1 %111, label %112, label %160

; <label>:112                                     ; preds = %104, %96
  %113 = load i8*** %2, align 8
  %114 = load i8** %113
  %115 = getelementptr inbounds i8* %114, i64 1
  %116 = load i8* %115
  %117 = sext i8 %116 to i32
  %118 = load i8* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 16, i64 11), align 1
  %119 = sext i8 %118 to i32
  %120 = icmp eq i32 %117, %119
  br i1 %120, label %121, label %160

; <label>:121                                     ; preds = %112
  %122 = load i8*** %2, align 8
  %123 = load i8** %122
  %124 = getelementptr inbounds i8* %123, i32 1
  store i8* %124, i8** %122
  br label %125

; <label>:125                                     ; preds = %158, %121
  %126 = load i8*** %2, align 8
  %127 = load i8** %126
  %128 = load i8* %127
  %129 = icmp ne i8 %128, 0
  br i1 %129, label %130, label %159

; <label>:130                                     ; preds = %125
  %131 = load i8*** %2, align 8
  %132 = load i8** %131
  %133 = getelementptr inbounds i8* %132, i32 1
  store i8* %133, i8** %131
  %134 = load i8* %132
  %135 = sext i8 %134 to i32
  %136 = load i8* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 16, i64 11), align 1
  %137 = sext i8 %136 to i32
  %138 = icmp eq i32 %135, %137
  br i1 %138, label %139, label %158

; <label>:139                                     ; preds = %130
  %140 = load i8*** %2, align 8
  %141 = load i8** %140
  %142 = load i8* %141
  %143 = sext i8 %142 to i32
  %144 = load i8* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 16, i64 3), align 1
  %145 = sext i8 %144 to i32
  %146 = icmp eq i32 %143, %145
  br i1 %146, label %155, label %147

; <label>:147                                     ; preds = %139
  %148 = load i8*** %2, align 8
  %149 = load i8** %148
  %150 = load i8* %149
  %151 = sext i8 %150 to i32
  %152 = load i8* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 16, i64 7), align 1
  %153 = sext i8 %152 to i32
  %154 = icmp eq i32 %151, %153
  br i1 %154, label %155, label %158

; <label>:155                                     ; preds = %147, %139
  %156 = load i8*** %2, align 8
  %157 = call i32 (...)* bitcast (i32 (i8**)* @TeX_math_begin to i32 (...)*)(i8** %156)
  store i32 %157, i32* %1
  br label %161

; <label>:158                                     ; preds = %147, %130
  br label %125

; <label>:159                                     ; preds = %125
  store i32 0, i32* %1
  br label %161

; <label>:160                                     ; preds = %112, %104
  store i32 0, i32* %1
  br label %161

; <label>:161                                     ; preds = %160, %159, %155, %91, %85, %52, %23
  %162 = load i32* %1
  ret i32 %162
}

define internal void @TeX_skip_check(i8** %bufp) nounwind uwtable {
  %1 = alloca i8**, align 8
  %skip_ch = alloca i32, align 4
  store i8** %bufp, i8*** %1, align 8
  %2 = load i8*** %1, align 8
  %3 = load i8** %2
  %4 = call i32 @TeX_strncmp(i8* %3, i8* getelementptr inbounds ([4 x i8]* @.str19, i32 0, i32 0), i32 3)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %101, label %6

; <label>:6                                       ; preds = %0
  %7 = load i8*** %1, align 8
  %8 = load i8** %7
  %9 = call i32 @TeX_strncmp(i8* %8, i8* getelementptr inbounds ([7 x i8]* @.str20, i32 0, i32 0), i32 6)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %101, label %11

; <label>:11                                      ; preds = %6
  %12 = load i8*** %1, align 8
  %13 = load i8** %12
  %14 = call i32 @TeX_strncmp(i8* %13, i8* getelementptr inbounds ([7 x i8]* @.str21, i32 0, i32 0), i32 6)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %101, label %16

; <label>:16                                      ; preds = %11
  %17 = load i8*** %1, align 8
  %18 = load i8** %17
  %19 = call i32 @TeX_strncmp(i8* %18, i8* getelementptr inbounds ([5 x i8]* @.str22, i32 0, i32 0), i32 4)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %101, label %21

; <label>:21                                      ; preds = %16
  %22 = load i8*** %1, align 8
  %23 = load i8** %22
  %24 = call i32 @TeX_strncmp(i8* %23, i8* getelementptr inbounds ([4 x i8]* @.str23, i32 0, i32 0), i32 3)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %101, label %26

; <label>:26                                      ; preds = %21
  %27 = load i8*** %1, align 8
  %28 = load i8** %27
  %29 = call i32 @TeX_strncmp(i8* %28, i8* getelementptr inbounds ([7 x i8]* @.str24, i32 0, i32 0), i32 6)
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %101, label %31

; <label>:31                                      ; preds = %26
  %32 = load i8*** %1, align 8
  %33 = load i8** %32
  %34 = call i32 @TeX_strncmp(i8* %33, i8* getelementptr inbounds ([6 x i8]* @.str25, i32 0, i32 0), i32 5)
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %101, label %36

; <label>:36                                      ; preds = %31
  %37 = load i8*** %1, align 8
  %38 = load i8** %37
  %39 = call i32 @TeX_strncmp(i8* %38, i8* getelementptr inbounds ([6 x i8]* @.str26, i32 0, i32 0), i32 5)
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %101, label %41

; <label>:41                                      ; preds = %36
  %42 = load i8*** %1, align 8
  %43 = load i8** %42
  %44 = call i32 @TeX_strncmp(i8* %43, i8* getelementptr inbounds ([7 x i8]* @.str27, i32 0, i32 0), i32 6)
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %101, label %46

; <label>:46                                      ; preds = %41
  %47 = load i8*** %1, align 8
  %48 = load i8** %47
  %49 = call i32 @TeX_strncmp(i8* %48, i8* getelementptr inbounds ([8 x i8]* @.str28, i32 0, i32 0), i32 7)
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %101, label %51

; <label>:51                                      ; preds = %46
  %52 = load i8*** %1, align 8
  %53 = load i8** %52
  %54 = call i32 @TeX_strncmp(i8* %53, i8* getelementptr inbounds ([12 x i8]* @.str29, i32 0, i32 0), i32 11)
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %101, label %56

; <label>:56                                      ; preds = %51
  %57 = load i8*** %1, align 8
  %58 = load i8** %57
  %59 = call i32 @TeX_strncmp(i8* %58, i8* getelementptr inbounds ([14 x i8]* @.str30, i32 0, i32 0), i32 13)
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %101, label %61

; <label>:61                                      ; preds = %56
  %62 = load i8*** %1, align 8
  %63 = load i8** %62
  %64 = call i32 @TeX_strncmp(i8* %63, i8* getelementptr inbounds ([14 x i8]* @.str31, i32 0, i32 0), i32 13)
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %101, label %66

; <label>:66                                      ; preds = %61
  %67 = load i8*** %1, align 8
  %68 = load i8** %67
  %69 = call i32 @TeX_strncmp(i8* %68, i8* getelementptr inbounds ([11 x i8]* @.str32, i32 0, i32 0), i32 10)
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %101, label %71

; <label>:71                                      ; preds = %66
  %72 = load i8*** %1, align 8
  %73 = load i8** %72
  %74 = call i32 @TeX_strncmp(i8* %73, i8* getelementptr inbounds ([10 x i8]* @.str33, i32 0, i32 0), i32 9)
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %101, label %76

; <label>:76                                      ; preds = %71
  %77 = load i8*** %1, align 8
  %78 = load i8** %77
  %79 = call i32 @TeX_strncmp(i8* %78, i8* getelementptr inbounds ([14 x i8]* @.str34, i32 0, i32 0), i32 13)
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %101, label %81

; <label>:81                                      ; preds = %76
  %82 = load i8*** %1, align 8
  %83 = load i8** %82
  %84 = call i32 @TeX_strncmp(i8* %83, i8* getelementptr inbounds ([13 x i8]* @.str35, i32 0, i32 0), i32 12)
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %101, label %86

; <label>:86                                      ; preds = %81
  %87 = load i8*** %1, align 8
  %88 = load i8** %87
  %89 = call i32 @TeX_strncmp(i8* %88, i8* getelementptr inbounds ([8 x i8]* @.str36, i32 0, i32 0), i32 7)
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %101, label %91

; <label>:91                                      ; preds = %86
  %92 = load i8*** %1, align 8
  %93 = load i8** %92
  %94 = call i32 @TeX_strncmp(i8* %93, i8* getelementptr inbounds ([12 x i8]* @.str37, i32 0, i32 0), i32 11)
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %101, label %96

; <label>:96                                      ; preds = %91
  %97 = load i8*** %1, align 8
  %98 = load i8** %97
  %99 = call i32 @TeX_strncmp(i8* %98, i8* getelementptr inbounds ([8 x i8]* @.str38, i32 0, i32 0), i32 7)
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %110

; <label>:101                                     ; preds = %96, %91, %86, %81, %76, %71, %66, %61, %56, %51, %46, %41, %36, %31, %26, %21, %16, %11, %6, %0
  %102 = load i8*** %1, align 8
  call void (...)* bitcast (void (i8**)* @TeX_skip_parens to void (...)*)(i8** %102)
  %103 = load i8*** %1, align 8
  %104 = load i8** %103
  %105 = load i8* %104
  %106 = sext i8 %105 to i32
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %109

; <label>:108                                     ; preds = %101
  store i8 114, i8* @LaTeX_Mode, align 1
  br label %109

; <label>:109                                     ; preds = %108, %101
  br label %227

; <label>:110                                     ; preds = %96
  %111 = load i8*** %1, align 8
  %112 = load i8** %111
  %113 = call i32 @TeX_strncmp(i8* %112, i8* getelementptr inbounds ([5 x i8]* @.str39, i32 0, i32 0), i32 4)
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %140, label %115

; <label>:115                                     ; preds = %110
  %116 = load i8*** %1, align 8
  %117 = load i8** %116
  %118 = call i32 @TeX_strncmp(i8* %117, i8* getelementptr inbounds ([11 x i8]* @.str40, i32 0, i32 0), i32 10)
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %140, label %120

; <label>:120                                     ; preds = %115
  %121 = load i8*** %1, align 8
  %122 = load i8** %121
  %123 = call i32 @TeX_strncmp(i8* %122, i8* getelementptr inbounds ([13 x i8]* @.str41, i32 0, i32 0), i32 12)
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %140, label %125

; <label>:125                                     ; preds = %120
  %126 = load i8*** %1, align 8
  %127 = load i8** %126
  %128 = call i32 @TeX_strncmp(i8* %127, i8* getelementptr inbounds ([10 x i8]* @.str42, i32 0, i32 0), i32 9)
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %140, label %130

; <label>:130                                     ; preds = %125
  %131 = load i8*** %1, align 8
  %132 = load i8** %131
  %133 = call i32 @TeX_strncmp(i8* %132, i8* getelementptr inbounds ([12 x i8]* @.str43, i32 0, i32 0), i32 11)
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %140, label %135

; <label>:135                                     ; preds = %130
  %136 = load i8*** %1, align 8
  %137 = load i8** %136
  %138 = call i32 @TeX_strncmp(i8* %137, i8* getelementptr inbounds ([11 x i8]* @.str44, i32 0, i32 0), i32 10)
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %161

; <label>:140                                     ; preds = %135, %130, %125, %120, %115, %110
  %141 = load i8*** %1, align 8
  call void (...)* bitcast (void (i8**)* @TeX_skip_parens to void (...)*)(i8** %141)
  %142 = load i8*** %1, align 8
  %143 = load i8** %142
  %144 = load i8* %143
  %145 = sext i8 %144 to i32
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %148

; <label>:147                                     ; preds = %140
  store i8 114, i8* @LaTeX_Mode, align 1
  br label %160

; <label>:148                                     ; preds = %140
  %149 = load i8*** %1, align 8
  %150 = load i8** %149
  %151 = getelementptr inbounds i8* %150, i32 1
  store i8* %151, i8** %149
  %152 = load i8*** %1, align 8
  call void (...)* bitcast (void (i8**)* @TeX_skip_parens to void (...)*)(i8** %152)
  %153 = load i8*** %1, align 8
  %154 = load i8** %153
  %155 = load i8* %154
  %156 = sext i8 %155 to i32
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %159

; <label>:158                                     ; preds = %148
  store i8 114, i8* @LaTeX_Mode, align 1
  br label %159

; <label>:159                                     ; preds = %158, %148
  br label %160

; <label>:160                                     ; preds = %159, %147
  br label %226

; <label>:161                                     ; preds = %135
  %162 = load i8*** %1, align 8
  %163 = load i8** %162
  %164 = call i32 @TeX_strncmp(i8* %163, i8* getelementptr inbounds ([5 x i8]* @.str45, i32 0, i32 0), i32 4)
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %195

; <label>:166                                     ; preds = %161
  %167 = load i8*** %1, align 8
  %168 = load i8** %167
  %169 = getelementptr inbounds i8* %168, i64 4
  %170 = load i8* %169
  %171 = sext i8 %170 to i32
  store i32 %171, i32* %skip_ch, align 4
  %172 = load i8*** %1, align 8
  %173 = load i8** %172
  %174 = getelementptr inbounds i8* %173, i64 5
  store i8* %174, i8** %172
  br label %175

; <label>:175                                     ; preds = %190, %166
  %176 = load i8*** %1, align 8
  %177 = load i8** %176
  %178 = load i8* %177
  %179 = sext i8 %178 to i32
  %180 = load i32* %skip_ch, align 4
  %181 = icmp ne i32 %179, %180
  br i1 %181, label %182, label %188

; <label>:182                                     ; preds = %175
  %183 = load i8*** %1, align 8
  %184 = load i8** %183
  %185 = load i8* %184
  %186 = sext i8 %185 to i32
  %187 = icmp ne i32 %186, 0
  br label %188

; <label>:188                                     ; preds = %182, %175
  %189 = phi i1 [ false, %175 ], [ %187, %182 ]
  br i1 %189, label %190, label %194

; <label>:190                                     ; preds = %188
  %191 = load i8*** %1, align 8
  %192 = load i8** %191
  %193 = getelementptr inbounds i8* %192, i32 1
  store i8* %193, i8** %191
  br label %175

; <label>:194                                     ; preds = %188
  br label %225

; <label>:195                                     ; preds = %161
  br label %196

; <label>:196                                     ; preds = %217, %195
  %197 = load i8*** %1, align 8
  %198 = load i8** %197
  %199 = load i8* %198
  %200 = sext i8 %199 to i32
  %201 = sext i32 %200 to i64
  %202 = call i16** @__ctype_b_loc() nounwind readnone
  %203 = load i16** %202
  %204 = getelementptr inbounds i16* %203, i64 %201
  %205 = load i16* %204
  %206 = zext i16 %205 to i32
  %207 = and i32 %206, 1024
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %215, label %209

; <label>:209                                     ; preds = %196
  %210 = load i8*** %1, align 8
  %211 = load i8** %210
  %212 = load i8* %211
  %213 = sext i8 %212 to i32
  %214 = icmp eq i32 %213, 64
  br label %215

; <label>:215                                     ; preds = %209, %196
  %216 = phi i1 [ true, %196 ], [ %214, %209 ]
  br i1 %216, label %217, label %221

; <label>:217                                     ; preds = %215
  %218 = load i8*** %1, align 8
  %219 = load i8** %218
  %220 = getelementptr inbounds i8* %219, i32 1
  store i8* %220, i8** %218
  br label %196

; <label>:221                                     ; preds = %215
  %222 = load i8*** %1, align 8
  %223 = load i8** %222
  %224 = getelementptr inbounds i8* %223, i32 -1
  store i8* %224, i8** %222
  br label %225

; <label>:225                                     ; preds = %221, %194
  br label %226

; <label>:226                                     ; preds = %225, %160
  br label %227

; <label>:227                                     ; preds = %226, %109
  ret void
}

define internal i32 @TeX_LR_begin(i8** %bufp) nounwind uwtable {
  %1 = alloca i32, align 4
  %2 = alloca i8**, align 8
  store i8** %bufp, i8*** %2, align 8
  %3 = load i8*** %2, align 8
  %4 = load i8** %3
  %5 = call i32 @TeX_strncmp(i8* %4, i8* getelementptr inbounds ([5 x i8]* @.str46, i32 0, i32 0), i32 4)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %22, label %7

; <label>:7                                       ; preds = %0
  %8 = load i8*** %2, align 8
  %9 = load i8** %8
  %10 = call i32 @TeX_strncmp(i8* %9, i8* getelementptr inbounds ([8 x i8]* @.str47, i32 0, i32 0), i32 7)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %22, label %12

; <label>:12                                      ; preds = %7
  %13 = load i8*** %2, align 8
  %14 = load i8** %13
  %15 = call i32 @TeX_strncmp(i8* %14, i8* getelementptr inbounds ([5 x i8]* @.str48, i32 0, i32 0), i32 4)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %22, label %17

; <label>:17                                      ; preds = %12
  %18 = load i8*** %2, align 8
  %19 = load i8** %18
  %20 = call i32 @TeX_strncmp(i8* %19, i8* getelementptr inbounds ([9 x i8]* @.str49, i32 0, i32 0), i32 8)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

; <label>:22                                      ; preds = %17, %12, %7, %0
  %23 = load i32* @math_mode, align 4
  %24 = add nsw i32 %23, 2
  store i32 %24, i32* @math_mode, align 4
  br label %59

; <label>:25                                      ; preds = %17
  %26 = load i8*** %2, align 8
  %27 = load i8** %26
  %28 = call i32 @TeX_strncmp(i8* %27, i8* getelementptr inbounds ([7 x i8]* @.str24, i32 0, i32 0), i32 6)
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %35, label %30

; <label>:30                                      ; preds = %25
  %31 = load i8*** %2, align 8
  %32 = load i8** %31
  %33 = call i32 @TeX_strncmp(i8* %32, i8* getelementptr inbounds ([9 x i8]* @.str50, i32 0, i32 0), i32 8)
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %49

; <label>:35                                      ; preds = %30, %25
  %36 = load i32* @math_mode, align 4
  %37 = add nsw i32 %36, 2
  store i32 %37, i32* @math_mode, align 4
  %38 = load i8*** %2, align 8
  call void @TeX_open_paren(i8** %38)
  %39 = load i8*** %2, align 8
  %40 = load i8** %39
  %41 = load i8* %40
  %42 = icmp ne i8 %41, 0
  br i1 %42, label %43, label %47

; <label>:43                                      ; preds = %35
  %44 = load i8*** %2, align 8
  %45 = load i8** %44
  %46 = getelementptr inbounds i8* %45, i32 1
  store i8* %46, i8** %44
  br label %48

; <label>:47                                      ; preds = %35
  store i8 114, i8* @LaTeX_Mode, align 1
  br label %48

; <label>:48                                      ; preds = %47, %43
  br label %58

; <label>:49                                      ; preds = %30
  %50 = load i8*** %2, align 8
  %51 = load i8** %50
  %52 = call i32 @TeX_strncmp(i8* %51, i8* getelementptr inbounds ([6 x i8]* @.str18, i32 0, i32 0), i32 5)
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %57

; <label>:54                                      ; preds = %49
  %55 = load i8*** %2, align 8
  %56 = call i32 @TeX_LR_check(i32 1, i8** %55)
  store i32 %56, i32* %1
  br label %61

; <label>:57                                      ; preds = %49
  store i32 0, i32* %1
  br label %61

; <label>:58                                      ; preds = %48
  br label %59

; <label>:59                                      ; preds = %58, %22
  %60 = load i8*** %2, align 8
  call void @TeX_open_paren(i8** %60)
  store i32 1, i32* %1
  br label %61

; <label>:61                                      ; preds = %59, %57, %54
  %62 = load i32* %1
  ret i32 %62
}

define internal void @TeX_open_paren(i8** %bufp) nounwind uwtable {
  %1 = alloca i8**, align 8
  store i8** %bufp, i8*** %1, align 8
  br label %2

; <label>:2                                       ; preds = %26, %0
  %3 = load i8*** %1, align 8
  %4 = load i8** %3
  %5 = load i8* %4
  %6 = sext i8 %5 to i32
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %24

; <label>:8                                       ; preds = %2
  %9 = load i8*** %1, align 8
  %10 = load i8** %9
  %11 = load i8* %10
  %12 = sext i8 %11 to i32
  %13 = load i8* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 16, i64 4), align 1
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %12, %14
  br i1 %15, label %16, label %24

; <label>:16                                      ; preds = %8
  %17 = load i8*** %1, align 8
  %18 = load i8** %17
  %19 = load i8* %18
  %20 = sext i8 %19 to i32
  %21 = load i8* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 16, i64 9), align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %20, %22
  br label %24

; <label>:24                                      ; preds = %16, %8, %2
  %25 = phi i1 [ false, %8 ], [ false, %2 ], [ %23, %16 ]
  br i1 %25, label %26, label %30

; <label>:26                                      ; preds = %24
  %27 = load i8*** %1, align 8
  %28 = load i8** %27
  %29 = getelementptr inbounds i8* %28, i32 1
  store i8* %29, i8** %27
  br label %2

; <label>:30                                      ; preds = %24
  ret void
}

define internal void @TeX_skip_args(i8** %bufp) nounwind uwtable {
  %1 = alloca i8**, align 8
  %skip_cnt = alloca i32, align 4
  store i8** %bufp, i8*** %1, align 8
  store i32 0, i32* %skip_cnt, align 4
  %2 = load i8*** %1, align 8
  %3 = load i8** %2
  %4 = call i32 @strncmp(i8* %3, i8* getelementptr inbounds ([8 x i8]* @.str58, i32 0, i32 0), i64 7) nounwind readonly
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %11, label %6

; <label>:6                                       ; preds = %0
  %7 = load i8*** %1, align 8
  %8 = load i8** %7
  %9 = call i32 @strncmp(i8* %8, i8* getelementptr inbounds ([9 x i8]* @.str51, i32 0, i32 0), i64 8) nounwind readonly
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14

; <label>:11                                      ; preds = %6, %0
  %12 = load i32* %skip_cnt, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %skip_cnt, align 4
  br label %14

; <label>:14                                      ; preds = %11, %6
  %15 = load i8*** %1, align 8
  %16 = load i8** %15
  %17 = call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([9 x i8]* @.str59, i32 0, i32 0), i64 8) nounwind readonly
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

; <label>:19                                      ; preds = %14
  %20 = load i32* %skip_cnt, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %skip_cnt, align 4
  br label %22

; <label>:22                                      ; preds = %19, %14
  %23 = load i8*** %1, align 8
  call void @TeX_skip_parens(i8** %23)
  %24 = load i8*** %1, align 8
  %25 = load i8** %24
  %26 = load i8* %25
  %27 = icmp ne i8 %26, 0
  br i1 %27, label %28, label %32

; <label>:28                                      ; preds = %22
  %29 = load i8*** %1, align 8
  %30 = load i8** %29
  %31 = getelementptr inbounds i8* %30, i32 1
  store i8* %31, i8** %29
  br label %33

; <label>:32                                      ; preds = %22
  br label %55

; <label>:33                                      ; preds = %28
  %34 = load i32* %skip_cnt, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %skip_cnt, align 4
  %36 = icmp ne i32 %34, 0
  br i1 %36, label %37, label %39

; <label>:37                                      ; preds = %33
  %38 = load i8*** %1, align 8
  call void @TeX_skip_parens(i8** %38)
  br label %40

; <label>:39                                      ; preds = %33
  br label %55

; <label>:40                                      ; preds = %37
  %41 = load i8*** %1, align 8
  %42 = load i8** %41
  %43 = load i8* %42
  %44 = icmp ne i8 %43, 0
  br i1 %44, label %45, label %49

; <label>:45                                      ; preds = %40
  %46 = load i8*** %1, align 8
  %47 = load i8** %46
  %48 = getelementptr inbounds i8* %47, i32 1
  store i8* %48, i8** %46
  br label %50

; <label>:49                                      ; preds = %40
  br label %55

; <label>:50                                      ; preds = %45
  %51 = load i32* %skip_cnt, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

; <label>:53                                      ; preds = %50
  %54 = load i8*** %1, align 8
  call void @TeX_skip_parens(i8** %54)
  br label %55

; <label>:55                                      ; preds = %53, %50, %49, %39, %32
  ret void
}
