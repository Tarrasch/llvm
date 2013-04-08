; ModuleID = 'correct.o'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.hashheader = type { i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i8], [13 x i8], i8, i8, i8, [228 x i16], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [128 x i8], [100 x [11 x i8]], [100 x i32], [100 x i32], i16 }
%struct.success = type { %struct.dent*, %struct.flagent*, %struct.flagent* }
%struct.dent = type { %struct.dent*, i8*, [1 x i64] }
%struct.flagent = type { i8*, i8*, i16, i16, i16, i16, i16, [228 x i8] }

@stdout = external global %struct._IO_FILE*
@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [58 x i8] c"Whenever a word is found that is not in the dictionary,\0D\0A\00", align 1
@.str1 = private unnamed_addr constant [68 x i8] c"it is printed on the first line of the screen.  If the dictionary\0D\0A\00", align 1
@.str2 = private unnamed_addr constant [60 x i8] c"contains any similar words, they are listed with a number\0D\0A\00", align 1
@.str3 = private unnamed_addr constant [63 x i8] c"next to each one.  You have the option of replacing the word\0D\0A\00", align 1
@.str4 = private unnamed_addr constant [54 x i8] c"completely, or choosing one of the suggested words.\0D\0A\00", align 1
@.str5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str6 = private unnamed_addr constant [20 x i8] c"\0D\0ACommands are:\0D\0A\0D\0A\00", align 1
@.str7 = private unnamed_addr constant [50 x i8] c"R       Replace the misspelled word completely.\0D\0A\00", align 1
@.str8 = private unnamed_addr constant [42 x i8] c"Space   Accept the word this time only.\0D\0A\00", align 1
@.str9 = private unnamed_addr constant [56 x i8] c"A       Accept the word for the rest of this session.\0D\0A\00", align 1
@.str10 = private unnamed_addr constant [66 x i8] c"I       Accept the word, and put it in your private dictionary.\0D\0A\00", align 1
@.str11 = private unnamed_addr constant [66 x i8] c"U       Accept and add lowercase version to private dictionary.\0D\0A\00", align 1
@.str12 = private unnamed_addr constant [51 x i8] c"0-n     Replace with one of the suggested words.\0D\0A\00", align 1
@.str13 = private unnamed_addr constant [46 x i8] c"L       Look up words in system dictionary.\0D\0A\00", align 1
@.str14 = private unnamed_addr constant [92 x i8] c"X       Write the rest of this file, ignoring misspellings,\0D\0A        and start next file.\0D\0A\00", align 1
@.str15 = private unnamed_addr constant [84 x i8] c"Q       Quit immediately.  Asks for confirmation.\0D\0A        Leaves file unchanged.\0D\0A\00", align 1
@.str16 = private unnamed_addr constant [24 x i8] c"!       Shell escape.\0D\0A\00", align 1
@.str17 = private unnamed_addr constant [25 x i8] c"^L      Redraw screen.\0D\0A\00", align 1
@.str18 = private unnamed_addr constant [27 x i8] c"^Z      Suspend program.\0D\0A\00", align 1
@.str19 = private unnamed_addr constant [33 x i8] c"?       Show this help screen.\0D\0A\00", align 1
@.str20 = private unnamed_addr constant [5 x i8] c"\0D\0A\0D\0A\00", align 1
@.str21 = private unnamed_addr constant [29 x i8] c"-- Type space to continue --\00", align 1
@contextsize = external global i32
@contextbufs = external global [10 x [8192 x i8]]
@quit = external global i32
@infile = external global %struct._IO_FILE*
@outfile = external global %struct._IO_FILE*
@hashheader = external global %struct.hashheader
@minword = external global i32
@.str22 = private unnamed_addr constant [7 x i8] c"    %s\00", align 1
@currentfile = external global i8*
@.str23 = private unnamed_addr constant [23 x i8] c"              File: %s\00", align 1
@readonly = external global i32
@.str24 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str25 = private unnamed_addr constant [11 x i8] c"[READONLY]\00", align 1
@li = external global i32
@minimenusize = external global i32
@co = external global i32
@maxposslen = external global i32
@pcount = external global i32
@easypossibilities = external global i32
@.str26 = private unnamed_addr constant [7 x i8] c"??: %s\00", align 1
@possibilities = external global [100 x [120 x i8]]
@.str27 = private unnamed_addr constant [8 x i8] c"0%d: %s\00", align 1
@.str28 = private unnamed_addr constant [8 x i8] c"%2d: %s\00", align 1
@sg = external global i32
@.str29 = private unnamed_addr constant [80 x i8] c"[SP] <number> R)epl A)ccept I)nsert L)ookup U)ncap Q)uit e(X)it or ? for help\0D\0A\00", align 1
@changes = external global i32
@.str30 = private unnamed_addr constant [51 x i8] c"Are you sure you want to throw away your changes? \00", align 1
@.str31 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str32 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str33 = private unnamed_addr constant [15 x i8] c"Replace with: \00", align 1
@.str34 = private unnamed_addr constant [51 x i8] c"\0D\0AWord '%s' too long at line %d of %s, truncated\0D\0A\00", align 1
@.str35 = private unnamed_addr constant [84 x i8] c"/home/arka3/repos/test-suite/MultiSource/Benchmarks/MiBench/office-ispell/correct.c\00", align 1
@.str36 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str37 = private unnamed_addr constant [34 x i8] c"Lookup string ('*' is wildcard): \00", align 1
@compoundflag = external global i32
@tryhardflag = external global i32
@sortit = external global i32
@fflag = external global i32
@askfilename = external global i8*
@.str38 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str39 = private unnamed_addr constant [18 x i8] c"Can't create %s\0D\0A\00", align 1
@.str40 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@Version_ID = internal global [40 x i8*] [i8* getelementptr inbounds ([50 x i8]* @.str49, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8]* @.str50, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8]* @.str51, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8]* @.str52, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str53, i32 0, i32 0), i8* getelementptr inbounds ([72 x i8]* @.str54, i32 0, i32 0), i8* getelementptr inbounds ([72 x i8]* @.str55, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @.str56, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str53, i32 0, i32 0), i8* getelementptr inbounds ([71 x i8]* @.str57, i32 0, i32 0), i8* getelementptr inbounds ([70 x i8]* @.str58, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8]* @.str59, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8]* @.str60, i32 0, i32 0), i8* getelementptr inbounds ([72 x i8]* @.str61, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8]* @.str62, i32 0, i32 0), i8* getelementptr inbounds ([71 x i8]* @.str63, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8]* @.str64, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8]* @.str65, i32 0, i32 0), i8* getelementptr inbounds ([63 x i8]* @.str66, i32 0, i32 0), i8* getelementptr inbounds ([69 x i8]* @.str67, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8]* @.str68, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8]* @.str69, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8]* @.str70, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8]* @.str71, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8]* @.str72, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8]* @.str73, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str53, i32 0, i32 0), i8* getelementptr inbounds ([71 x i8]* @.str74, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8]* @.str75, i32 0, i32 0), i8* getelementptr inbounds ([71 x i8]* @.str76, i32 0, i32 0), i8* getelementptr inbounds ([71 x i8]* @.str77, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8]* @.str78, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8]* @.str79, i32 0, i32 0), i8* getelementptr inbounds ([72 x i8]* @.str80, i32 0, i32 0), i8* getelementptr inbounds ([72 x i8]* @.str81, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8]* @.str82, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8]* @.str83, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8]* @.str84, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8]* @.str85, i32 0, i32 0), i8* null], align 16
@contextoffset = external global i32
@stdin = external global %struct._IO_FILE*
@math_mode = external global i32
@LaTeX_Mode = external global i8
@terse = external global i32
@tflag = external global i32
@.str41 = private unnamed_addr constant [6 x i8] c"nroff\00", align 1
@.str42 = private unnamed_addr constant [6 x i8] c"troff\00", align 1
@defdupchar = external global i32
@sflag = external global i32
@aflag = external global i32
@lflag = external global i32
@lookharder.look = internal global i32 -1, align 4
@.str43 = private unnamed_addr constant [9 x i8] c"%s %s %s\00", align 1
@.str44 = private unnamed_addr constant [9 x i8] c"look -df\00", align 1
@.str45 = private unnamed_addr constant [16 x i8] c"/usr/dict/words\00", align 1
@.str46 = private unnamed_addr constant [3 x i8] c".*\00", align 1
@.str47 = private unnamed_addr constant [11 x i8] c"%s ^%s$ %s\00", align 1
@.str48 = private unnamed_addr constant [18 x i8] c"/usr/bin/egrep -i\00", align 1
@.str49 = private unnamed_addr constant [50 x i8] c"@(#) International Ispell Version 3.1.20 10/10/95\00", align 1
@.str50 = private unnamed_addr constant [44 x i8] c"@(#) Copyright (c), 1983, by Pace Willisson\00", align 1
@.str51 = private unnamed_addr constant [64 x i8] c"@(#) International version Copyright (c) 1987, 1988, 1990-1995,\00", align 1
@.str52 = private unnamed_addr constant [65 x i8] c"@(#) by Geoff Kuenning, Granada Hills, CA.  All rights reserved.\00", align 1
@.str53 = private unnamed_addr constant [5 x i8] c"@(#)\00", align 1
@.str54 = private unnamed_addr constant [72 x i8] c"@(#) Redistribution and use in source and binary forms, with or without\00", align 1
@.str55 = private unnamed_addr constant [72 x i8] c"@(#) modification, are permitted provided that the following conditions\00", align 1
@.str56 = private unnamed_addr constant [14 x i8] c"@(#) are met:\00", align 1
@.str57 = private unnamed_addr constant [71 x i8] c"@(#) 1. Redistributions of source code must retain the above copyright\00", align 1
@.str58 = private unnamed_addr constant [70 x i8] c"@(#)    notice, this list of conditions and the following disclaimer.\00", align 1
@.str59 = private unnamed_addr constant [64 x i8] c"@(#) 2. Redistributions in binary form must reproduce the above\00", align 1
@.str60 = private unnamed_addr constant [68 x i8] c"@(#)    copyright notice, this list of conditions and the following\00", align 1
@.str61 = private unnamed_addr constant [72 x i8] c"@(#)    disclaimer in the documentation and/or other materials provided\00", align 1
@.str62 = private unnamed_addr constant [31 x i8] c"@(#)    with the distribution.\00", align 1
@.str63 = private unnamed_addr constant [71 x i8] c"@(#) 3. All modifications to the source code must be clearly marked as\00", align 1
@.str64 = private unnamed_addr constant [68 x i8] c"@(#)    such.  Binary redistributions based on modified source code\00", align 1
@.str65 = private unnamed_addr constant [73 x i8] c"@(#)    must be clearly marked as modified versions in the documentation\00", align 1
@.str66 = private unnamed_addr constant [63 x i8] c"@(#)    and/or other materials provided with the distribution.\00", align 1
@.str67 = private unnamed_addr constant [69 x i8] c"@(#) 4. All advertising materials mentioning features or use of this\00", align 1
@.str68 = private unnamed_addr constant [60 x i8] c"@(#)    software must display the following acknowledgment:\00", align 1
@.str69 = private unnamed_addr constant [73 x i8] c"@(#)      This product includes software developed by Geoff Kuenning and\00", align 1
@.str70 = private unnamed_addr constant [37 x i8] c"@(#)      other unpaid contributors.\00", align 1
@.str71 = private unnamed_addr constant [73 x i8] c"@(#) 5. The name of Geoff Kuenning may not be used to endorse or promote\00", align 1
@.str72 = private unnamed_addr constant [67 x i8] c"@(#)    products derived from this software without specific prior\00", align 1
@.str73 = private unnamed_addr constant [28 x i8] c"@(#)    written permission.\00", align 1
@.str74 = private unnamed_addr constant [71 x i8] c"@(#) THIS SOFTWARE IS PROVIDED BY GEOFF KUENNING AND CONTRIBUTORS ``AS\00", align 1
@.str75 = private unnamed_addr constant [68 x i8] c"@(#) IS'' AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT\00", align 1
@.str76 = private unnamed_addr constant [71 x i8] c"@(#) LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS\00", align 1
@.str77 = private unnamed_addr constant [71 x i8] c"@(#) FOR A PARTICULAR PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL GEOFF\00", align 1
@.str78 = private unnamed_addr constant [66 x i8] c"@(#) KUENNING OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,\00", align 1
@.str79 = private unnamed_addr constant [62 x i8] c"@(#) INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES\00", align 1
@.str80 = private unnamed_addr constant [72 x i8] c"@(#) (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR\00", align 1
@.str81 = private unnamed_addr constant [72 x i8] c"@(#) SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)\00", align 1
@.str82 = private unnamed_addr constant [73 x i8] c"@(#) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,\00", align 1
@.str83 = private unnamed_addr constant [67 x i8] c"@(#) STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)\00", align 1
@.str84 = private unnamed_addr constant [73 x i8] c"@(#) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED\00", align 1
@.str85 = private unnamed_addr constant [40 x i8] c"@(#) OF THE POSSIBILITY OF SUCH DAMAGE.\00", align 1
@uerasechar = external global i32
@ukillchar = external global i32
@numhits = external global i32
@hits = external global [10 x %struct.success]
@Trynum = external global i32
@Try = external global [228 x i8]
@laststringch = external global i32
@vflag = external global i32

define void @givehelp(i32 %interactive) nounwind uwtable {
  %1 = alloca i32, align 4
  %helpout = alloca %struct._IO_FILE*, align 8
  store i32 %interactive, i32* %1, align 4
  %2 = load i32* %1, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %6

; <label>:4                                       ; preds = %0
  call void @erase()
  %5 = load %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %5, %struct._IO_FILE** %helpout, align 8
  br label %8

; <label>:6                                       ; preds = %0
  %7 = load %struct._IO_FILE** @stderr, align 8
  store %struct._IO_FILE* %7, %struct._IO_FILE** %helpout, align 8
  br label %8

; <label>:8                                       ; preds = %6, %4
  %9 = load %struct._IO_FILE** %helpout, align 8
  %10 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([58 x i8]* @.str, i32 0, i32 0))
  %11 = load %struct._IO_FILE** %helpout, align 8
  %12 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([68 x i8]* @.str1, i32 0, i32 0))
  %13 = load %struct._IO_FILE** %helpout, align 8
  %14 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([60 x i8]* @.str2, i32 0, i32 0))
  %15 = load %struct._IO_FILE** %helpout, align 8
  %16 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([63 x i8]* @.str3, i32 0, i32 0))
  %17 = load %struct._IO_FILE** %helpout, align 8
  %18 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([54 x i8]* @.str4, i32 0, i32 0))
  %19 = load %struct._IO_FILE** %helpout, align 8
  %20 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([1 x i8]* @.str5, i32 0, i32 0))
  %21 = load %struct._IO_FILE** %helpout, align 8
  %22 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([1 x i8]* @.str5, i32 0, i32 0))
  %23 = load %struct._IO_FILE** %helpout, align 8
  %24 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([1 x i8]* @.str5, i32 0, i32 0))
  %25 = load %struct._IO_FILE** %helpout, align 8
  %26 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([1 x i8]* @.str5, i32 0, i32 0))
  %27 = load %struct._IO_FILE** %helpout, align 8
  %28 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([20 x i8]* @.str6, i32 0, i32 0))
  %29 = load %struct._IO_FILE** %helpout, align 8
  %30 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([50 x i8]* @.str7, i32 0, i32 0))
  %31 = load %struct._IO_FILE** %helpout, align 8
  %32 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([42 x i8]* @.str8, i32 0, i32 0))
  %33 = load %struct._IO_FILE** %helpout, align 8
  %34 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([56 x i8]* @.str9, i32 0, i32 0))
  %35 = load %struct._IO_FILE** %helpout, align 8
  %36 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([66 x i8]* @.str10, i32 0, i32 0))
  %37 = load %struct._IO_FILE** %helpout, align 8
  %38 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([66 x i8]* @.str11, i32 0, i32 0))
  %39 = load %struct._IO_FILE** %helpout, align 8
  %40 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([51 x i8]* @.str12, i32 0, i32 0))
  %41 = load %struct._IO_FILE** %helpout, align 8
  %42 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %41, i8* getelementptr inbounds ([46 x i8]* @.str13, i32 0, i32 0))
  %43 = load %struct._IO_FILE** %helpout, align 8
  %44 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %43, i8* getelementptr inbounds ([92 x i8]* @.str14, i32 0, i32 0))
  %45 = load %struct._IO_FILE** %helpout, align 8
  %46 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([84 x i8]* @.str15, i32 0, i32 0))
  %47 = load %struct._IO_FILE** %helpout, align 8
  %48 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %47, i8* getelementptr inbounds ([24 x i8]* @.str16, i32 0, i32 0))
  %49 = load %struct._IO_FILE** %helpout, align 8
  %50 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %49, i8* getelementptr inbounds ([25 x i8]* @.str17, i32 0, i32 0))
  %51 = load %struct._IO_FILE** %helpout, align 8
  %52 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %51, i8* getelementptr inbounds ([27 x i8]* @.str18, i32 0, i32 0))
  %53 = load %struct._IO_FILE** %helpout, align 8
  %54 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %53, i8* getelementptr inbounds ([33 x i8]* @.str19, i32 0, i32 0))
  %55 = load i32* %1, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %69

; <label>:57                                      ; preds = %8
  %58 = load %struct._IO_FILE** %helpout, align 8
  %59 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %58, i8* getelementptr inbounds ([5 x i8]* @.str20, i32 0, i32 0))
  %60 = load %struct._IO_FILE** %helpout, align 8
  %61 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %60, i8* getelementptr inbounds ([29 x i8]* @.str21, i32 0, i32 0))
  %62 = load %struct._IO_FILE** %helpout, align 8
  %63 = call i32 @fflush(%struct._IO_FILE* %62)
  br label %64

; <label>:64                                      ; preds = %67, %57
  %65 = call i32 @getchar()
  %66 = icmp ne i32 %65, 32
  br i1 %66, label %67, label %68

; <label>:67                                      ; preds = %64
  br label %64

; <label>:68                                      ; preds = %64
  br label %69

; <label>:69                                      ; preds = %68, %8
  ret void
}

declare void @erase()

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...)

declare i32 @fflush(%struct._IO_FILE*)

declare i32 @getchar()

define void @checkfile() nounwind uwtable {
  %bufno = alloca i32, align 4
  %bufsize = alloca i32, align 4
  %ch = alloca i32, align 4
  store i32 0, i32* %bufno, align 4
  br label %1

; <label>:1                                       ; preds = %10, %0
  %2 = load i32* %bufno, align 4
  %3 = load i32* @contextsize, align 4
  %4 = icmp slt i32 %2, %3
  br i1 %4, label %5, label %13

; <label>:5                                       ; preds = %1
  %6 = load i32* %bufno, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [10 x [8192 x i8]]* @contextbufs, i32 0, i64 %7
  %9 = getelementptr inbounds [8192 x i8]* %8, i32 0, i64 0
  store i8 0, i8* %9, align 1
  br label %10

; <label>:10                                      ; preds = %5
  %11 = load i32* %bufno, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %bufno, align 4
  br label %1

; <label>:13                                      ; preds = %1
  br label %14

; <label>:14                                      ; preds = %110, %13
  %15 = load i32* @contextsize, align 4
  store i32 %15, i32* %bufno, align 4
  br label %16

; <label>:16                                      ; preds = %20, %14
  %17 = load i32* %bufno, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %bufno, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %31

; <label>:20                                      ; preds = %16
  %21 = load i32* %bufno, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [10 x [8192 x i8]]* @contextbufs, i32 0, i64 %22
  %24 = getelementptr inbounds [8192 x i8]* %23, i32 0, i32 0
  %25 = load i32* %bufno, align 4
  %26 = sub nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [10 x [8192 x i8]]* @contextbufs, i32 0, i64 %27
  %29 = getelementptr inbounds [8192 x i8]* %28, i32 0, i32 0
  %30 = call i8* @strcpy(i8* %24, i8* %29) nounwind
  br label %16

; <label>:31                                      ; preds = %16
  %32 = load i32* @quit, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %43

; <label>:34                                      ; preds = %31
  br label %35

; <label>:35                                      ; preds = %39, %34
  %36 = load %struct._IO_FILE** @infile, align 8
  %37 = call i8* @fgets(i8* getelementptr inbounds ([10 x [8192 x i8]]* @contextbufs, i32 0, i64 0, i32 0), i32 8192, %struct._IO_FILE* %36)
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %42

; <label>:39                                      ; preds = %35
  %40 = load %struct._IO_FILE** @outfile, align 8
  %41 = call i32 @fputs(i8* getelementptr inbounds ([10 x [8192 x i8]]* @contextbufs, i32 0, i64 0, i32 0), %struct._IO_FILE* %40)
  br label %35

; <label>:42                                      ; preds = %35
  br label %112

; <label>:43                                      ; preds = %31
  %44 = load %struct._IO_FILE** @infile, align 8
  %45 = call i8* @fgets(i8* getelementptr inbounds ([10 x [8192 x i8]]* @contextbufs, i32 0, i64 0, i32 0), i32 4096, %struct._IO_FILE* %44)
  %46 = icmp eq i8* %45, null
  br i1 %46, label %47, label %48

; <label>:47                                      ; preds = %43
  br label %112

; <label>:48                                      ; preds = %43
  %49 = call i64 @strlen(i8* getelementptr inbounds ([10 x [8192 x i8]]* @contextbufs, i32 0, i64 0, i32 0)) nounwind readonly
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %bufsize, align 4
  %51 = load i32* %bufsize, align 4
  %52 = sext i32 %51 to i64
  %53 = icmp eq i64 %52, 4095
  br i1 %53, label %54, label %110

; <label>:54                                      ; preds = %48
  %55 = load i32* %bufsize, align 4
  %56 = sub nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [8192 x i8]* getelementptr inbounds ([10 x [8192 x i8]]* @contextbufs, i32 0, i64 0), i32 0, i64 %57
  %59 = load i8* %58, align 1
  %60 = zext i8 %59 to i32
  store i32 %60, i32* %ch, align 4
  br label %61

; <label>:61                                      ; preds = %99, %54
  %62 = load i32* %bufsize, align 4
  %63 = sext i32 %62 to i64
  %64 = icmp ult i64 %63, 8191
  br i1 %64, label %65, label %91

; <label>:65                                      ; preds = %61
  %66 = load i32* %ch, align 4
  %67 = trunc i32 %66 to i8
  %68 = zext i8 %67 to i64
  %69 = getelementptr inbounds [228 x i8]* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 23), i32 0, i64 %68
  %70 = load i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %89, label %73

; <label>:73                                      ; preds = %65
  %74 = load i32* %ch, align 4
  %75 = trunc i32 %74 to i8
  %76 = zext i8 %75 to i64
  %77 = getelementptr inbounds [228 x i8]* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 26), i32 0, i64 %76
  %78 = load i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %89, label %81

; <label>:81                                      ; preds = %73
  %82 = load i32* %ch, align 4
  %83 = trunc i32 %82 to i8
  %84 = zext i8 %83 to i64
  %85 = getelementptr inbounds [128 x i8]* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 27), i32 0, i64 %84
  %86 = load i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp ne i32 %87, 0
  br label %89

; <label>:89                                      ; preds = %81, %73, %65
  %90 = phi i1 [ true, %73 ], [ true, %65 ], [ %88, %81 ]
  br label %91

; <label>:91                                      ; preds = %89, %61
  %92 = phi i1 [ false, %61 ], [ %90, %89 ]
  br i1 %92, label %93, label %109

; <label>:93                                      ; preds = %91
  %94 = load %struct._IO_FILE** @infile, align 8
  %95 = call i32 @_IO_getc(%struct._IO_FILE* %94)
  store i32 %95, i32* %ch, align 4
  %96 = load i32* %ch, align 4
  %97 = icmp eq i32 %96, -1
  br i1 %97, label %98, label %99

; <label>:98                                      ; preds = %93
  br label %109

; <label>:99                                      ; preds = %93
  %100 = load i32* %ch, align 4
  %101 = trunc i32 %100 to i8
  %102 = load i32* %bufsize, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %bufsize, align 4
  %104 = sext i32 %102 to i64
  %105 = getelementptr inbounds [8192 x i8]* getelementptr inbounds ([10 x [8192 x i8]]* @contextbufs, i32 0, i64 0), i32 0, i64 %104
  store i8 %101, i8* %105, align 1
  %106 = load i32* %bufsize, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [8192 x i8]* getelementptr inbounds ([10 x [8192 x i8]]* @contextbufs, i32 0, i64 0), i32 0, i64 %107
  store i8 0, i8* %108, align 1
  br label %61

; <label>:109                                     ; preds = %98, %91
  br label %110

; <label>:110                                     ; preds = %109, %48
  %111 = load %struct._IO_FILE** @outfile, align 8
  call void @checkline(%struct._IO_FILE* %111)
  br label %14

; <label>:112                                     ; preds = %47, %42
  ret void
}

declare i8* @strcpy(i8*, i8*) nounwind

declare i8* @fgets(i8*, i32, %struct._IO_FILE*)

declare i32 @fputs(i8*, %struct._IO_FILE*)

declare i64 @strlen(i8*) nounwind readonly

declare i32 @_IO_getc(%struct._IO_FILE*)

declare void @checkline(%struct._IO_FILE*)

define void @correct(i8* %ctok, i32 %ctokl, i8* %itok, i32 %itokl, i8** %curchar) nounwind uwtable {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %c = alloca i32, align 4
  %i = alloca i32, align 4
  %col_ht = alloca i32, align 4
  %ncols = alloca i32, align 4
  %start_l2 = alloca i8*, align 8
  %begintoken = alloca i8*, align 8
  %buf = alloca [200 x i8], align 16
  %buf1 = alloca [100 x i8], align 16
  store i8* %ctok, i8** %1, align 8
  store i32 %ctokl, i32* %2, align 4
  store i8* %itok, i8** %3, align 8
  store i32 %itokl, i32* %4, align 4
  store i8** %curchar, i8*** %5, align 8
  %6 = load i8*** %5, align 8
  %7 = load i8** %6
  %8 = load i8** %1, align 8
  %9 = call i64 @strlen(i8* %8) nounwind readonly
  %10 = sub i64 0, %9
  %11 = getelementptr inbounds i8* %7, i64 %10
  store i8* %11, i8** %begintoken, align 8
  %12 = load i8** %3, align 8
  %13 = call i64 @strlen(i8* %12) nounwind readonly
  %14 = load i32* @minword, align 4
  %15 = sext i32 %14 to i64
  %16 = icmp ule i64 %13, %15
  br i1 %16, label %17, label %18

; <label>:17                                      ; preds = %0
  br label %381

; <label>:18                                      ; preds = %0
  br label %19

; <label>:19                                      ; preds = %370, %368, %303, %257, %253, %245, %244, %223, %200, %18
  %20 = load i8** %3, align 8
  %21 = call i32 @good(i8* %20, i32 0, i32 0, i32 0, i32 0)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

; <label>:23                                      ; preds = %19
  %24 = load i8** %3, align 8
  %25 = call i32 @compoundgood(i8* %24, i32 0)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

; <label>:27                                      ; preds = %23, %19
  br label %381

; <label>:28                                      ; preds = %23
  call void @erase()
  %29 = load i8** %1, align 8
  %30 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([7 x i8]* @.str22, i32 0, i32 0), i8* %29)
  %31 = load i8** @currentfile, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %36

; <label>:33                                      ; preds = %28
  %34 = load i8** @currentfile, align 8
  %35 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @.str23, i32 0, i32 0), i8* %34)
  br label %36

; <label>:36                                      ; preds = %33, %28
  %37 = load i32* @readonly, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

; <label>:39                                      ; preds = %36
  %40 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str24, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str25, i32 0, i32 0))
  br label %41

; <label>:41                                      ; preds = %39, %36
  %42 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([5 x i8]* @.str20, i32 0, i32 0))
  %43 = load i8** %3, align 8
  call void @makepossibilities(i8* %43)
  %44 = load i32* @li, align 4
  %45 = load i32* @contextsize, align 4
  %46 = sub nsw i32 %44, %45
  %47 = sub nsw i32 %46, 4
  %48 = load i32* @minimenusize, align 4
  %49 = sub nsw i32 %47, %48
  store i32 %49, i32* %col_ht, align 4
  %50 = load i32* @co, align 4
  %51 = load i32* @maxposslen, align 4
  %52 = add nsw i32 %51, 8
  %53 = sdiv i32 %50, %52
  store i32 %53, i32* %ncols, align 4
  %54 = load i32* @pcount, align 4
  %55 = load i32* %ncols, align 4
  %56 = load i32* %col_ht, align 4
  %57 = mul nsw i32 %55, %56
  %58 = icmp sgt i32 %54, %57
  br i1 %58, label %59, label %63

; <label>:59                                      ; preds = %41
  %60 = load i32* %ncols, align 4
  %61 = load i32* %col_ht, align 4
  %62 = mul nsw i32 %60, %61
  store i32 %62, i32* @pcount, align 4
  br label %63

; <label>:63                                      ; preds = %59, %41
  store i32 0, i32* %i, align 4
  br label %64

; <label>:64                                      ; preds = %112, %63
  %65 = load i32* %i, align 4
  %66 = load i32* @pcount, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %115

; <label>:68                                      ; preds = %64
  %69 = load i32* @contextsize, align 4
  %70 = add nsw i32 3, %69
  %71 = load i32* %i, align 4
  %72 = load i32* %col_ht, align 4
  %73 = srem i32 %71, %72
  %74 = add nsw i32 %70, %73
  %75 = load i32* @maxposslen, align 4
  %76 = add nsw i32 %75, 8
  %77 = load i32* %i, align 4
  %78 = load i32* %col_ht, align 4
  %79 = sdiv i32 %77, %78
  %80 = mul nsw i32 %76, %79
  call void @move(i32 %74, i32 %80)
  %81 = load i32* %i, align 4
  %82 = load i32* @easypossibilities, align 4
  %83 = icmp sge i32 %81, %82
  br i1 %83, label %84, label %90

; <label>:84                                      ; preds = %68
  %85 = load i32* %i, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [100 x [120 x i8]]* @possibilities, i32 0, i64 %86
  %88 = getelementptr inbounds [120 x i8]* %87, i32 0, i32 0
  %89 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([7 x i8]* @.str26, i32 0, i32 0), i8* %88)
  br label %111

; <label>:90                                      ; preds = %68
  %91 = load i32* @easypossibilities, align 4
  %92 = icmp sge i32 %91, 10
  br i1 %92, label %93, label %103

; <label>:93                                      ; preds = %90
  %94 = load i32* %i, align 4
  %95 = icmp slt i32 %94, 10
  br i1 %95, label %96, label %103

; <label>:96                                      ; preds = %93
  %97 = load i32* %i, align 4
  %98 = load i32* %i, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [100 x [120 x i8]]* @possibilities, i32 0, i64 %99
  %101 = getelementptr inbounds [120 x i8]* %100, i32 0, i32 0
  %102 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([8 x i8]* @.str27, i32 0, i32 0), i32 %97, i8* %101)
  br label %110

; <label>:103                                     ; preds = %93, %90
  %104 = load i32* %i, align 4
  %105 = load i32* %i, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [100 x [120 x i8]]* @possibilities, i32 0, i64 %106
  %108 = getelementptr inbounds [120 x i8]* %107, i32 0, i32 0
  %109 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([8 x i8]* @.str28, i32 0, i32 0), i32 %104, i8* %108)
  br label %110

; <label>:110                                     ; preds = %103, %96
  br label %111

; <label>:111                                     ; preds = %110, %84
  br label %112

; <label>:112                                     ; preds = %111
  %113 = load i32* %i, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %i, align 4
  br label %64

; <label>:115                                     ; preds = %64
  call void @move(i32 2, i32 0)
  %116 = load i32* @contextsize, align 4
  store i32 %116, i32* %i, align 4
  br label %117

; <label>:117                                     ; preds = %121, %115
  %118 = load i32* %i, align 4
  %119 = add nsw i32 %118, -1
  store i32 %119, i32* %i, align 4
  %120 = icmp sgt i32 %119, 0
  br i1 %120, label %121, label %130

; <label>:121                                     ; preds = %117
  %122 = load i32* %i, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [10 x [8192 x i8]]* @contextbufs, i32 0, i64 %123
  %125 = getelementptr inbounds [8192 x i8]* %124, i32 0, i32 0
  %126 = load i32* %i, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [10 x [8192 x i8]]* @contextbufs, i32 0, i64 %127
  %129 = getelementptr inbounds [8192 x i8]* %128, i32 0, i32 0
  call void @show_line(i8* %125, i8* %129, i32 0)
  br label %117

; <label>:130                                     ; preds = %117
  store i8* getelementptr inbounds ([10 x [8192 x i8]]* @contextbufs, i32 0, i64 0, i32 0), i8** %start_l2, align 8
  %131 = load i8*** %5, align 8
  %132 = load i8** %131
  %133 = call i32 @line_size(i8* getelementptr inbounds ([10 x [8192 x i8]]* @contextbufs, i32 0, i64 0, i32 0), i8* %132)
  %134 = load i32* @co, align 4
  %135 = load i32* @sg, align 4
  %136 = shl i32 %135, 1
  %137 = sub nsw i32 %134, %136
  %138 = sub nsw i32 %137, 1
  %139 = icmp sgt i32 %133, %138
  br i1 %139, label %140, label %182

; <label>:140                                     ; preds = %130
  %141 = load i8** %begintoken, align 8
  %142 = load i32* @co, align 4
  %143 = sdiv i32 %142, 2
  %144 = sext i32 %143 to i64
  %145 = sub i64 0, %144
  %146 = getelementptr inbounds i8* %141, i64 %145
  store i8* %146, i8** %start_l2, align 8
  br label %147

; <label>:147                                     ; preds = %164, %140
  %148 = load i8** %start_l2, align 8
  %149 = load i8** %begintoken, align 8
  %150 = icmp ult i8* %148, %149
  br i1 %150, label %151, label %171

; <label>:151                                     ; preds = %147
  %152 = load i8** %start_l2, align 8
  %153 = load i8*** %5, align 8
  %154 = load i8** %153
  %155 = call i32 @line_size(i8* %152, i8* %154)
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %i, align 4
  %157 = load i32* %i, align 4
  %158 = load i32* @sg, align 4
  %159 = shl i32 %158, 1
  %160 = add nsw i32 %157, %159
  %161 = load i32* @co, align 4
  %162 = icmp sle i32 %160, %161
  br i1 %162, label %163, label %164

; <label>:163                                     ; preds = %151
  br label %171

; <label>:164                                     ; preds = %151
  %165 = load i32* %i, align 4
  %166 = load i32* @co, align 4
  %167 = sub nsw i32 %165, %166
  %168 = load i8** %start_l2, align 8
  %169 = sext i32 %167 to i64
  %170 = getelementptr inbounds i8* %168, i64 %169
  store i8* %170, i8** %start_l2, align 8
  br label %147

; <label>:171                                     ; preds = %163, %147
  %172 = load i8** %start_l2, align 8
  %173 = load i8** %begintoken, align 8
  %174 = icmp ugt i8* %172, %173
  br i1 %174, label %175, label %177

; <label>:175                                     ; preds = %171
  %176 = load i8** %begintoken, align 8
  store i8* %176, i8** %start_l2, align 8
  br label %177

; <label>:177                                     ; preds = %175, %171
  %178 = load i8** %start_l2, align 8
  %179 = icmp ult i8* %178, getelementptr inbounds ([10 x [8192 x i8]]* @contextbufs, i32 0, i64 0, i32 0)
  br i1 %179, label %180, label %181

; <label>:180                                     ; preds = %177
  store i8* getelementptr inbounds ([10 x [8192 x i8]]* @contextbufs, i32 0, i64 0, i32 0), i8** %start_l2, align 8
  br label %181

; <label>:181                                     ; preds = %180, %177
  br label %182

; <label>:182                                     ; preds = %181, %130
  %183 = load i8** %start_l2, align 8
  %184 = load i8** %begintoken, align 8
  %185 = load i8** %1, align 8
  %186 = call i64 @strlen(i8* %185) nounwind readonly
  %187 = trunc i64 %186 to i32
  call void @show_line(i8* %183, i8* %184, i32 %187)
  %188 = load i32* @minimenusize, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %194

; <label>:190                                     ; preds = %182
  %191 = load i32* @li, align 4
  %192 = sub nsw i32 %191, 2
  call void @move(i32 %192, i32 0)
  %193 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([80 x i8]* @.str29, i32 0, i32 0))
  br label %194

; <label>:194                                     ; preds = %190, %182
  br label %195

; <label>:195                                     ; preds = %380, %194
  %196 = load %struct._IO_FILE** @stdout, align 8
  %197 = call i32 @fflush(%struct._IO_FILE* %196)
  %198 = call i32 @getchar()
  %199 = and i32 %198, 127
  store i32 %199, i32* %c, align 4
  switch i32 %199, label %378 [
    i32 26, label %200
    i32 32, label %201
    i32 113, label %204
    i32 81, label %204
    i32 105, label %224
    i32 73, label %224
    i32 117, label %230
    i32 85, label %230
    i32 97, label %238
    i32 65, label %238
    i32 12, label %244
    i32 63, label %245
    i32 33, label %246
    i32 114, label %263
    i32 82, label %263
    i32 48, label %304
    i32 49, label %304
    i32 50, label %304
    i32 51, label %304
    i32 52, label %304
    i32 53, label %304
    i32 54, label %304
    i32 55, label %304
    i32 56, label %304
    i32 57, label %304
    i32 13, label %360
    i32 10, label %360
    i32 108, label %361
    i32 76, label %361
    i32 120, label %375
    i32 88, label %375
  ]

; <label>:200                                     ; preds = %195
  call void @stop()
  call void @erase()
  br label %19

; <label>:201                                     ; preds = %195
  call void @erase()
  %202 = load %struct._IO_FILE** @stdout, align 8
  %203 = call i32 @fflush(%struct._IO_FILE* %202)
  br label %381

; <label>:204                                     ; preds = %195, %195
  %205 = load i32* @changes, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %213

; <label>:207                                     ; preds = %204
  %208 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([51 x i8]* @.str30, i32 0, i32 0))
  %209 = load %struct._IO_FILE** @stdout, align 8
  %210 = call i32 @fflush(%struct._IO_FILE* %209)
  %211 = call i32 @getchar()
  %212 = and i32 %211, 127
  store i32 %212, i32* %c, align 4
  br label %214

; <label>:213                                     ; preds = %204
  store i32 121, i32* %c, align 4
  br label %214

; <label>:214                                     ; preds = %213, %207
  %215 = load i32* %c, align 4
  %216 = icmp eq i32 %215, 121
  br i1 %216, label %220, label %217

; <label>:217                                     ; preds = %214
  %218 = load i32* %c, align 4
  %219 = icmp eq i32 %218, 89
  br i1 %219, label %220, label %223

; <label>:220                                     ; preds = %217, %214
  call void @erase()
  %221 = load %struct._IO_FILE** @stdout, align 8
  %222 = call i32 @fflush(%struct._IO_FILE* %221)
  call void @done(i32 0)
  br label %223

; <label>:223                                     ; preds = %220, %217
  br label %19

; <label>:224                                     ; preds = %195, %195
  %225 = load i8** %1, align 8
  %226 = call i8* @strtosichar(i8* %225, i32 0)
  %227 = call i8* @ichartosstr(i8* %226, i32 1)
  call void @treeinsert(i8* %227, i32 184, i32 1)
  call void @erase()
  %228 = load %struct._IO_FILE** @stdout, align 8
  %229 = call i32 @fflush(%struct._IO_FILE* %228)
  store i32 1, i32* @changes, align 4
  br label %381

; <label>:230                                     ; preds = %195, %195
  %231 = load i8** %1, align 8
  %232 = call i8* @strtosichar(i8* %231, i32 0)
  store i8* %232, i8** %3, align 8
  %233 = load i8** %3, align 8
  call void @lowcase(i8* %233)
  %234 = load i8** %3, align 8
  %235 = call i8* @ichartosstr(i8* %234, i32 1)
  call void @treeinsert(i8* %235, i32 184, i32 1)
  call void @erase()
  %236 = load %struct._IO_FILE** @stdout, align 8
  %237 = call i32 @fflush(%struct._IO_FILE* %236)
  store i32 1, i32* @changes, align 4
  br label %381

; <label>:238                                     ; preds = %195, %195
  %239 = load i8** %1, align 8
  %240 = call i8* @strtosichar(i8* %239, i32 0)
  %241 = call i8* @ichartosstr(i8* %240, i32 1)
  call void @treeinsert(i8* %241, i32 184, i32 0)
  call void @erase()
  %242 = load %struct._IO_FILE** @stdout, align 8
  %243 = call i32 @fflush(%struct._IO_FILE* %242)
  br label %381

; <label>:244                                     ; preds = %195
  br label %19

; <label>:245                                     ; preds = %195
  call void (...)* bitcast (void (i32)* @givehelp to void (...)*)(i32 1)
  br label %19

; <label>:246                                     ; preds = %195
  %247 = load i32* @li, align 4
  %248 = sub nsw i32 %247, 1
  call void @move(i32 %248, i32 0)
  %249 = call i32 @putchar(i32 33)
  %250 = getelementptr inbounds [200 x i8]* %buf, i32 0, i32 0
  %251 = call i8* @getline_ispell(i8* %250)
  %252 = icmp eq i8* %251, null
  br i1 %252, label %253, label %257

; <label>:253                                     ; preds = %246
  %254 = call i32 @putchar(i32 7)
  call void @erase()
  %255 = load %struct._IO_FILE** @stdout, align 8
  %256 = call i32 @fflush(%struct._IO_FILE* %255)
  br label %19

; <label>:257                                     ; preds = %246
  %258 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([3 x i8]* @.str31, i32 0, i32 0))
  %259 = load %struct._IO_FILE** @stdout, align 8
  %260 = call i32 @fflush(%struct._IO_FILE* %259)
  %261 = getelementptr inbounds [200 x i8]* %buf, i32 0, i32 0
  %262 = call i32 @shellescape(i8* %261)
  call void @erase()
  br label %19

; <label>:263                                     ; preds = %195, %195
  %264 = load i32* @li, align 4
  %265 = sub nsw i32 %264, 1
  call void @move(i32 %265, i32 0)
  %266 = load i32* @readonly, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %271

; <label>:268                                     ; preds = %263
  %269 = call i32 @putchar(i32 7)
  %270 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str32, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str25, i32 0, i32 0))
  br label %271

; <label>:271                                     ; preds = %268, %263
  %272 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @.str33, i32 0, i32 0))
  %273 = load i8** %1, align 8
  %274 = call i8* @getline_ispell(i8* %273)
  %275 = icmp eq i8* %274, null
  br i1 %275, label %276, label %282

; <label>:276                                     ; preds = %271
  %277 = call i32 @putchar(i32 7)
  %278 = load i8** %1, align 8
  %279 = load i8** %3, align 8
  %280 = load i32* %2, align 4
  %281 = call i32 @ichartostr(i8* %278, i8* %279, i32 %280, i32 0)
  br label %296

; <label>:282                                     ; preds = %271
  %283 = load i8** %begintoken, align 8
  %284 = load i8** %1, align 8
  %285 = load i8*** %5, align 8
  call void @inserttoken(i8* getelementptr inbounds ([10 x [8192 x i8]]* @contextbufs, i32 0, i64 0, i32 0), i8* %283, i8* %284, i8** %285)
  %286 = load i8** %3, align 8
  %287 = load i8** %1, align 8
  %288 = load i32* %4, align 4
  %289 = call i32 @strtoichar(i8* %286, i8* %287, i32 %288, i32 0)
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %295

; <label>:291                                     ; preds = %282
  %292 = call i32 @putchar(i32 7)
  %293 = load i8** %1, align 8
  %294 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([51 x i8]* @.str34, i32 0, i32 0), i8* %293, i32 493, i8* getelementptr inbounds ([84 x i8]* @.str35, i32 0, i32 0))
  br label %295

; <label>:295                                     ; preds = %291, %282
  store i32 1, i32* @changes, align 4
  br label %296

; <label>:296                                     ; preds = %295, %276
  call void @erase()
  %297 = load i8** %3, align 8
  %298 = call i64 @strlen(i8* %297) nounwind readonly
  %299 = load i32* @minword, align 4
  %300 = sext i32 %299 to i64
  %301 = icmp ule i64 %298, %300
  br i1 %301, label %302, label %303

; <label>:302                                     ; preds = %296
  br label %381

; <label>:303                                     ; preds = %296
  br label %19

; <label>:304                                     ; preds = %195, %195, %195, %195, %195, %195, %195, %195, %195, %195
  %305 = load i32* %c, align 4
  %306 = sub nsw i32 %305, 48
  store i32 %306, i32* %i, align 4
  %307 = load i32* @easypossibilities, align 4
  %308 = icmp sge i32 %307, 10
  br i1 %308, label %309, label %333

; <label>:309                                     ; preds = %304
  %310 = call i32 @getchar()
  %311 = and i32 %310, 127
  store i32 %311, i32* %c, align 4
  %312 = load i32* %c, align 4
  %313 = icmp sge i32 %312, 48
  br i1 %313, label %314, label %323

; <label>:314                                     ; preds = %309
  %315 = load i32* %c, align 4
  %316 = icmp sle i32 %315, 57
  br i1 %316, label %317, label %323

; <label>:317                                     ; preds = %314
  %318 = load i32* %i, align 4
  %319 = mul nsw i32 %318, 10
  %320 = load i32* %c, align 4
  %321 = add nsw i32 %319, %320
  %322 = sub nsw i32 %321, 48
  store i32 %322, i32* %i, align 4
  br label %332

; <label>:323                                     ; preds = %314, %309
  %324 = load i32* %c, align 4
  %325 = icmp ne i32 %324, 13
  br i1 %325, label %326, label %331

; <label>:326                                     ; preds = %323
  %327 = load i32* %c, align 4
  %328 = icmp ne i32 %327, 10
  br i1 %328, label %329, label %331

; <label>:329                                     ; preds = %326
  %330 = call i32 @putchar(i32 7)
  br label %380

; <label>:331                                     ; preds = %326, %323
  br label %332

; <label>:332                                     ; preds = %331, %317
  br label %333

; <label>:333                                     ; preds = %332, %304
  %334 = load i32* %i, align 4
  %335 = load i32* @easypossibilities, align 4
  %336 = icmp slt i32 %334, %335
  br i1 %336, label %337, label %358

; <label>:337                                     ; preds = %333
  %338 = load i8** %1, align 8
  %339 = load i32* %i, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds [100 x [120 x i8]]* @possibilities, i32 0, i64 %340
  %342 = getelementptr inbounds [120 x i8]* %341, i32 0, i32 0
  %343 = call i8* @strcpy(i8* %338, i8* %342) nounwind
  store i32 1, i32* @changes, align 4
  %344 = load i8** %begintoken, align 8
  %345 = load i8** %1, align 8
  %346 = load i8*** %5, align 8
  call void @inserttoken(i8* getelementptr inbounds ([10 x [8192 x i8]]* @contextbufs, i32 0, i64 0, i32 0), i8* %344, i8* %345, i8** %346)
  call void @erase()
  %347 = load i32* @readonly, align 4
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %349, label %357

; <label>:349                                     ; preds = %337
  %350 = load i32* @li, align 4
  %351 = sub nsw i32 %350, 1
  call void @move(i32 %351, i32 0)
  %352 = call i32 @putchar(i32 7)
  %353 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([3 x i8]* @.str36, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str25, i32 0, i32 0))
  %354 = load %struct._IO_FILE** @stdout, align 8
  %355 = call i32 @fflush(%struct._IO_FILE* %354)
  %356 = call i32 (...)* @sleep(i32 2)
  br label %357

; <label>:357                                     ; preds = %349, %337
  br label %381

; <label>:358                                     ; preds = %333
  %359 = call i32 @putchar(i32 7)
  br label %380

; <label>:360                                     ; preds = %195, %195
  br label %380

; <label>:361                                     ; preds = %195, %195
  %362 = load i32* @li, align 4
  %363 = sub nsw i32 %362, 1
  call void @move(i32 %363, i32 0)
  %364 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([34 x i8]* @.str37, i32 0, i32 0))
  %365 = getelementptr inbounds [100 x i8]* %buf1, i32 0, i32 0
  %366 = call i8* @getline_ispell(i8* %365)
  %367 = icmp eq i8* %366, null
  br i1 %367, label %368, label %370

; <label>:368                                     ; preds = %361
  %369 = call i32 @putchar(i32 7)
  call void @erase()
  br label %19

; <label>:370                                     ; preds = %361
  %371 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([3 x i8]* @.str31, i32 0, i32 0))
  %372 = load %struct._IO_FILE** @stdout, align 8
  %373 = call i32 @fflush(%struct._IO_FILE* %372)
  %374 = getelementptr inbounds [100 x i8]* %buf1, i32 0, i32 0
  call void @lookharder(i8* %374)
  call void @erase()
  br label %19

; <label>:375                                     ; preds = %195, %195
  store i32 1, i32* @quit, align 4
  call void @erase()
  %376 = load %struct._IO_FILE** @stdout, align 8
  %377 = call i32 @fflush(%struct._IO_FILE* %376)
  br label %381

; <label>:378                                     ; preds = %195
  %379 = call i32 @putchar(i32 7)
  br label %380

; <label>:380                                     ; preds = %378, %360, %358, %329
  br label %195

; <label>:381                                     ; preds = %375, %357, %302, %238, %230, %224, %201, %27, %17
  ret void
}

declare i32 @good(i8*, i32, i32, i32, i32)

define i32 @compoundgood(i8* %word, i32 %pfxopts) nounwind uwtable {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %newword = alloca [120 x i8], align 16
  %p = alloca i8*, align 8
  %savech = alloca i8, align 1
  %secondcap = alloca i64, align 8
  store i8* %word, i8** %2, align 8
  store i32 %pfxopts, i32* %3, align 4
  %4 = load i32* @compoundflag, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %0
  store i32 0, i32* %1
  br label %76

; <label>:7                                       ; preds = %0
  %8 = load i8** %2, align 8
  %9 = call i64 @strlen(i8* %8) nounwind readonly
  %10 = load i16* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 4), align 2
  %11 = sext i16 %10 to i32
  %12 = mul nsw i32 2, %11
  %13 = sext i32 %12 to i64
  %14 = icmp ult i64 %9, %13
  br i1 %14, label %15, label %16

; <label>:15                                      ; preds = %7
  store i32 0, i32* %1
  br label %76

; <label>:16                                      ; preds = %7
  %17 = getelementptr inbounds [120 x i8]* %newword, i32 0, i32 0
  %18 = load i8** %2, align 8
  %19 = call i8* @strcpy(i8* %17, i8* %18) nounwind
  %20 = getelementptr inbounds [120 x i8]* %newword, i32 0, i32 0
  %21 = load i16* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 4), align 2
  %22 = sext i16 %21 to i32
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8* %20, i64 %23
  store i8* %24, i8** %p, align 8
  br label %25

; <label>:25                                      ; preds = %72, %16
  %26 = load i16* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 4), align 2
  %27 = sext i16 %26 to i32
  %28 = sub nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = load i8** %p, align 8
  %31 = getelementptr inbounds i8* %30, i64 %29
  %32 = load i8* %31
  %33 = zext i8 %32 to i32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %75

; <label>:35                                      ; preds = %25
  %36 = load i8** %p, align 8
  %37 = load i8* %36
  store i8 %37, i8* %savech, align 1
  %38 = load i8** %p, align 8
  store i8 0, i8* %38
  %39 = getelementptr inbounds [120 x i8]* %newword, i32 0, i32 0
  %40 = load i32* %3, align 4
  %41 = call i32 @good(i8* %39, i32 0, i32 0, i32 %40, i32 2)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %68

; <label>:43                                      ; preds = %35
  %44 = load i8* %savech, align 1
  %45 = load i8** %p, align 8
  store i8 %44, i8* %45
  %46 = load i8** %p, align 8
  %47 = call i32 @good(i8* %46, i32 0, i32 1, i32 2, i32 0)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %53, label %49

; <label>:49                                      ; preds = %43
  %50 = load i8** %p, align 8
  %51 = call i32 (...)* bitcast (i32 (i8*, i32)* @compoundgood to i32 (...)*)(i8* %50, i32 2)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %67

; <label>:53                                      ; preds = %49, %43
  %54 = load i8** %p, align 8
  %55 = call i64 @whatcap(i8* %54)
  store i64 %55, i64* %secondcap, align 8
  %56 = getelementptr inbounds [120 x i8]* %newword, i32 0, i32 0
  %57 = call i64 @whatcap(i8* %56)
  switch i64 %57, label %66 [
    i64 0, label %58
    i64 536870912, label %58
    i64 805306368, label %58
    i64 268435456, label %62
  ]

; <label>:58                                      ; preds = %53, %53, %53
  %59 = load i64* %secondcap, align 8
  %60 = icmp eq i64 %59, 0
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %1
  br label %76

; <label>:62                                      ; preds = %53
  %63 = load i64* %secondcap, align 8
  %64 = icmp eq i64 %63, 268435456
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %1
  br label %76

; <label>:66                                      ; preds = %53
  br label %67

; <label>:67                                      ; preds = %66, %49
  br label %71

; <label>:68                                      ; preds = %35
  %69 = load i8* %savech, align 1
  %70 = load i8** %p, align 8
  store i8 %69, i8* %70
  br label %71

; <label>:71                                      ; preds = %68, %67
  br label %72

; <label>:72                                      ; preds = %71
  %73 = load i8** %p, align 8
  %74 = getelementptr inbounds i8* %73, i32 1
  store i8* %74, i8** %p, align 8
  br label %25

; <label>:75                                      ; preds = %25
  store i32 0, i32* %1
  br label %76

; <label>:76                                      ; preds = %75, %62, %58, %15, %6
  %77 = load i32* %1
  ret i32 %77
}

declare i32 @printf(i8*, ...)

define void @makepossibilities(i8* %word) nounwind uwtable {
  %1 = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %word, i8** %1, align 8
  store i32 0, i32* %i, align 4
  br label %2

; <label>:2                                       ; preds = %10, %0
  %3 = load i32* %i, align 4
  %4 = icmp slt i32 %3, 100
  br i1 %4, label %5, label %13

; <label>:5                                       ; preds = %2
  %6 = load i32* %i, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [100 x [120 x i8]]* @possibilities, i32 0, i64 %7
  %9 = getelementptr inbounds [120 x i8]* %8, i32 0, i64 0
  store i8 0, i8* %9, align 1
  br label %10

; <label>:10                                      ; preds = %5
  %11 = load i32* %i, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %i, align 4
  br label %2

; <label>:13                                      ; preds = %2
  store i32 0, i32* @pcount, align 4
  store i32 0, i32* @maxposslen, align 4
  store i32 0, i32* @easypossibilities, align 4
  %14 = load i8** %1, align 8
  call void @wrongcapital(i8* %14)
  %15 = load i32* @pcount, align 4
  %16 = icmp slt i32 %15, 100
  br i1 %16, label %17, label %19

; <label>:17                                      ; preds = %13
  %18 = load i8** %1, align 8
  call void @missingletter(i8* %18)
  br label %19

; <label>:19                                      ; preds = %17, %13
  %20 = load i32* @pcount, align 4
  %21 = icmp slt i32 %20, 100
  br i1 %21, label %22, label %24

; <label>:22                                      ; preds = %19
  %23 = load i8** %1, align 8
  call void @transposedletter(i8* %23)
  br label %24

; <label>:24                                      ; preds = %22, %19
  %25 = load i32* @pcount, align 4
  %26 = icmp slt i32 %25, 100
  br i1 %26, label %27, label %29

; <label>:27                                      ; preds = %24
  %28 = load i8** %1, align 8
  call void @extraletter(i8* %28)
  br label %29

; <label>:29                                      ; preds = %27, %24
  %30 = load i32* @pcount, align 4
  %31 = icmp slt i32 %30, 100
  br i1 %31, label %32, label %34

; <label>:32                                      ; preds = %29
  %33 = load i8** %1, align 8
  call void @wrongletter(i8* %33)
  br label %34

; <label>:34                                      ; preds = %32, %29
  %35 = load i32* @compoundflag, align 4
  %36 = icmp ne i32 %35, 1
  br i1 %36, label %37, label %42

; <label>:37                                      ; preds = %34
  %38 = load i32* @pcount, align 4
  %39 = icmp slt i32 %38, 100
  br i1 %39, label %40, label %42

; <label>:40                                      ; preds = %37
  %41 = load i8** %1, align 8
  call void @missingspace(i8* %41)
  br label %42

; <label>:42                                      ; preds = %40, %37, %34
  %43 = load i32* @pcount, align 4
  store i32 %43, i32* @easypossibilities, align 4
  %44 = load i32* @easypossibilities, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %49, label %46

; <label>:46                                      ; preds = %42
  %47 = load i32* @tryhardflag, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

; <label>:49                                      ; preds = %46, %42
  %50 = load i8** %1, align 8
  call void @tryveryhard(i8* %50)
  br label %51

; <label>:51                                      ; preds = %49, %46
  %52 = load i32* @sortit, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %58, label %54

; <label>:54                                      ; preds = %51
  %55 = load i32* @pcount, align 4
  %56 = load i32* @easypossibilities, align 4
  %57 = icmp sgt i32 %55, %56
  br i1 %57, label %58, label %84

; <label>:58                                      ; preds = %54, %51
  %59 = load i32* @pcount, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %84

; <label>:61                                      ; preds = %58
  %62 = load i32* @easypossibilities, align 4
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %70

; <label>:64                                      ; preds = %61
  %65 = load i32* @sortit, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

; <label>:67                                      ; preds = %64
  %68 = load i32* @easypossibilities, align 4
  %69 = zext i32 %68 to i64
  call void @qsort(i8* getelementptr inbounds ([100 x [120 x i8]]* @possibilities, i32 0, i32 0, i32 0), i64 %69, i64 120, i32 (i8*, i8*)* @posscmp)
  br label %70

; <label>:70                                      ; preds = %67, %64, %61
  %71 = load i32* @pcount, align 4
  %72 = load i32* @easypossibilities, align 4
  %73 = icmp sgt i32 %71, %72
  br i1 %73, label %74, label %83

; <label>:74                                      ; preds = %70
  %75 = load i32* @easypossibilities, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [100 x [120 x i8]]* @possibilities, i32 0, i64 %76
  %78 = getelementptr inbounds [120 x i8]* %77, i32 0, i64 0
  %79 = load i32* @pcount, align 4
  %80 = load i32* @easypossibilities, align 4
  %81 = sub nsw i32 %79, %80
  %82 = zext i32 %81 to i64
  call void @qsort(i8* %78, i64 %82, i64 120, i32 (i8*, i8*)* @posscmp)
  br label %83

; <label>:83                                      ; preds = %74, %70
  br label %84

; <label>:84                                      ; preds = %83, %58, %54
  ret void
}

declare void @move(i32, i32)

define internal void @show_line(i8* %line, i8* %invstart, i32 %invlen) nounwind uwtable {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %width = alloca i32, align 4
  store i8* %line, i8** %1, align 8
  store i8* %invstart, i8** %2, align 8
  store i32 %invlen, i32* %3, align 4
  %4 = load i32* %3, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %9

; <label>:6                                       ; preds = %0
  %7 = load i32* @sg, align 4
  %8 = shl i32 %7, 1
  br label %10

; <label>:9                                       ; preds = %0
  br label %10

; <label>:10                                      ; preds = %9, %6
  %11 = phi i32 [ %8, %6 ], [ 0, %9 ]
  store i32 %11, i32* %width, align 4
  br label %12

; <label>:12                                      ; preds = %23, %10
  %13 = load i8** %1, align 8
  %14 = load i8** %2, align 8
  %15 = icmp ult i8* %13, %14
  br i1 %15, label %16, label %21

; <label>:16                                      ; preds = %12
  %17 = load i32* %width, align 4
  %18 = load i32* @co, align 4
  %19 = sub nsw i32 %18, 1
  %20 = icmp slt i32 %17, %19
  br label %21

; <label>:21                                      ; preds = %16, %12
  %22 = phi i1 [ false, %12 ], [ %20, %16 ]
  br i1 %22, label %23, label %34

; <label>:23                                      ; preds = %21
  %24 = load i32* %width, align 4
  %25 = load i8** %2, align 8
  %26 = load i8** %1, align 8
  %27 = ptrtoint i8* %25 to i64
  %28 = ptrtoint i8* %26 to i64
  %29 = sub i64 %27, %28
  %30 = trunc i64 %29 to i32
  %31 = call i32 @show_char(i8** %1, i32 %24, i32 1, i32 %30)
  %32 = load i32* %width, align 4
  %33 = add nsw i32 %32, %31
  store i32 %33, i32* %width, align 4
  br label %12

; <label>:34                                      ; preds = %21
  %35 = load i32* %3, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %65

; <label>:37                                      ; preds = %34
  call void @inverse()
  %38 = load i32* %3, align 4
  %39 = load i8** %2, align 8
  %40 = sext i32 %38 to i64
  %41 = getelementptr inbounds i8* %39, i64 %40
  store i8* %41, i8** %2, align 8
  br label %42

; <label>:42                                      ; preds = %53, %37
  %43 = load i8** %1, align 8
  %44 = load i8** %2, align 8
  %45 = icmp ult i8* %43, %44
  br i1 %45, label %46, label %51

; <label>:46                                      ; preds = %42
  %47 = load i32* %width, align 4
  %48 = load i32* @co, align 4
  %49 = sub nsw i32 %48, 1
  %50 = icmp slt i32 %47, %49
  br label %51

; <label>:51                                      ; preds = %46, %42
  %52 = phi i1 [ false, %42 ], [ %50, %46 ]
  br i1 %52, label %53, label %64

; <label>:53                                      ; preds = %51
  %54 = load i32* %width, align 4
  %55 = load i8** %2, align 8
  %56 = load i8** %1, align 8
  %57 = ptrtoint i8* %55 to i64
  %58 = ptrtoint i8* %56 to i64
  %59 = sub i64 %57, %58
  %60 = trunc i64 %59 to i32
  %61 = call i32 @show_char(i8** %1, i32 %54, i32 1, i32 %60)
  %62 = load i32* %width, align 4
  %63 = add nsw i32 %62, %61
  store i32 %63, i32* %width, align 4
  br label %42

; <label>:64                                      ; preds = %51
  call void @normal()
  br label %65

; <label>:65                                      ; preds = %64, %34
  br label %66

; <label>:66                                      ; preds = %78, %65
  %67 = load i8** %1, align 8
  %68 = load i8* %67
  %69 = sext i8 %68 to i32
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

; <label>:71                                      ; preds = %66
  %72 = load i32* %width, align 4
  %73 = load i32* @co, align 4
  %74 = sub nsw i32 %73, 1
  %75 = icmp slt i32 %72, %74
  br label %76

; <label>:76                                      ; preds = %71, %66
  %77 = phi i1 [ false, %66 ], [ %75, %71 ]
  br i1 %77, label %78, label %83

; <label>:78                                      ; preds = %76
  %79 = load i32* %width, align 4
  %80 = call i32 @show_char(i8** %1, i32 %79, i32 1, i32 0)
  %81 = load i32* %width, align 4
  %82 = add nsw i32 %81, %80
  store i32 %82, i32* %width, align 4
  br label %66

; <label>:83                                      ; preds = %76
  %84 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([3 x i8]* @.str31, i32 0, i32 0))
  ret void
}

define internal i32 @line_size(i8* %buf, i8* %bufend) nounwind uwtable {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %width = alloca i32, align 4
  store i8* %buf, i8** %1, align 8
  store i8* %bufend, i8** %2, align 8
  store i32 0, i32* %width, align 4
  br label %3

; <label>:3                                       ; preds = %14, %0
  %4 = load i8** %1, align 8
  %5 = load i8** %2, align 8
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %7, label %12

; <label>:7                                       ; preds = %3
  %8 = load i8** %1, align 8
  %9 = load i8* %8
  %10 = sext i8 %9 to i32
  %11 = icmp ne i32 %10, 0
  br label %12

; <label>:12                                      ; preds = %7, %3
  %13 = phi i1 [ false, %3 ], [ %11, %7 ]
  br i1 %13, label %14, label %25

; <label>:14                                      ; preds = %12
  %15 = load i32* %width, align 4
  %16 = load i8** %2, align 8
  %17 = load i8** %1, align 8
  %18 = ptrtoint i8* %16 to i64
  %19 = ptrtoint i8* %17 to i64
  %20 = sub i64 %18, %19
  %21 = trunc i64 %20 to i32
  %22 = call i32 (...)* bitcast (i32 (i8**, i32, i32, i32)* @show_char to i32 (...)*)(i8** %1, i32 %15, i32 0, i32 %21)
  %23 = load i32* %width, align 4
  %24 = add nsw i32 %23, %22
  store i32 %24, i32* %width, align 4
  br label %3

; <label>:25                                      ; preds = %12
  %26 = load i32* %width, align 4
  ret i32 %26
}

declare void @stop()

declare void @done(i32)

declare void @treeinsert(i8*, i32, i32)

declare i8* @ichartosstr(i8*, i32)

declare i8* @strtosichar(i8*, i32)

declare void @lowcase(i8*)

declare i32 @putchar(i32)

define internal i8* @getline_ispell(i8* %s) nounwind uwtable {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %p = alloca i8*, align 8
  %c = alloca i32, align 4
  store i8* %s, i8** %2, align 8
  %3 = load i8** %2, align 8
  store i8* %3, i8** %p, align 8
  br label %4

; <label>:4                                       ; preds = %74, %0
  %5 = load %struct._IO_FILE** @stdout, align 8
  %6 = call i32 @fflush(%struct._IO_FILE* %5)
  %7 = call i32 @getchar()
  %8 = and i32 %7, 127
  store i32 %8, i32* %c, align 4
  %9 = load i32* %c, align 4
  %10 = icmp eq i32 %9, 92
  br i1 %10, label %11, label %23

; <label>:11                                      ; preds = %4
  %12 = call i32 @putchar(i32 92)
  %13 = load %struct._IO_FILE** @stdout, align 8
  %14 = call i32 @fflush(%struct._IO_FILE* %13)
  %15 = call i32 @getchar()
  %16 = and i32 %15, 127
  store i32 %16, i32* %c, align 4
  call void @backup()
  %17 = load i32* %c, align 4
  %18 = call i32 @putchar(i32 %17)
  %19 = load i32* %c, align 4
  %20 = trunc i32 %19 to i8
  %21 = load i8** %p, align 8
  %22 = getelementptr inbounds i8* %21, i32 1
  store i8* %22, i8** %p, align 8
  store i8 %20, i8* %21
  br label %74

; <label>:23                                      ; preds = %4
  %24 = load i32* %c, align 4
  %25 = icmp eq i32 %24, 7
  br i1 %25, label %26, label %27

; <label>:26                                      ; preds = %23
  store i8* null, i8** %1
  br label %75

; <label>:27                                      ; preds = %23
  %28 = load i32* %c, align 4
  %29 = icmp eq i32 %28, 10
  br i1 %29, label %33, label %30

; <label>:30                                      ; preds = %27
  %31 = load i32* %c, align 4
  %32 = icmp eq i32 %31, 13
  br i1 %32, label %33, label %36

; <label>:33                                      ; preds = %30, %27
  %34 = load i8** %p, align 8
  store i8 0, i8* %34
  %35 = load i8** %2, align 8
  store i8* %35, i8** %1
  br label %75

; <label>:36                                      ; preds = %30
  %37 = load i32* %c, align 4
  %38 = load i32* @uerasechar, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %49

; <label>:40                                      ; preds = %36
  %41 = load i8** %p, align 8
  %42 = load i8** %2, align 8
  %43 = icmp ne i8* %41, %42
  br i1 %43, label %44, label %48

; <label>:44                                      ; preds = %40
  %45 = load i8** %p, align 8
  %46 = getelementptr inbounds i8* %45, i32 -1
  store i8* %46, i8** %p, align 8
  call void @backup()
  %47 = call i32 @putchar(i32 32)
  call void @backup()
  br label %48

; <label>:48                                      ; preds = %44, %40
  br label %71

; <label>:49                                      ; preds = %36
  %50 = load i32* %c, align 4
  %51 = load i32* @ukillchar, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %63

; <label>:53                                      ; preds = %49
  br label %54

; <label>:54                                      ; preds = %58, %53
  %55 = load i8** %p, align 8
  %56 = load i8** %2, align 8
  %57 = icmp ne i8* %55, %56
  br i1 %57, label %58, label %62

; <label>:58                                      ; preds = %54
  %59 = load i8** %p, align 8
  %60 = getelementptr inbounds i8* %59, i32 -1
  store i8* %60, i8** %p, align 8
  call void @backup()
  %61 = call i32 @putchar(i32 32)
  call void @backup()
  br label %54

; <label>:62                                      ; preds = %54
  br label %70

; <label>:63                                      ; preds = %49
  %64 = load i32* %c, align 4
  %65 = trunc i32 %64 to i8
  %66 = load i8** %p, align 8
  %67 = getelementptr inbounds i8* %66, i32 1
  store i8* %67, i8** %p, align 8
  store i8 %65, i8* %66
  %68 = load i32* %c, align 4
  %69 = call i32 @putchar(i32 %68)
  br label %70

; <label>:70                                      ; preds = %63, %62
  br label %71

; <label>:71                                      ; preds = %70, %48
  br label %72

; <label>:72                                      ; preds = %71
  br label %73

; <label>:73                                      ; preds = %72
  br label %74

; <label>:74                                      ; preds = %73, %11
  br label %4

; <label>:75                                      ; preds = %33, %26
  %76 = load i8** %1
  ret i8* %76
}

declare i32 @shellescape(i8*)

declare i32 @ichartostr(i8*, i8*, i32, i32)

define internal void @inserttoken(i8* %buf, i8* %start, i8* %tok, i8** %curchar) nounwind uwtable {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %copy = alloca [8192 x i8], align 16
  %p = alloca i8*, align 8
  %q = alloca i8*, align 8
  %ew = alloca i8*, align 8
  store i8* %buf, i8** %1, align 8
  store i8* %start, i8** %2, align 8
  store i8* %tok, i8** %3, align 8
  store i8** %curchar, i8*** %4, align 8
  %5 = getelementptr inbounds [8192 x i8]* %copy, i32 0, i32 0
  %6 = load i8** %1, align 8
  %7 = call i8* @strcpy(i8* %5, i8* %6) nounwind
  %8 = load i8** %1, align 8
  store i8* %8, i8** %p, align 8
  %9 = getelementptr inbounds [8192 x i8]* %copy, i32 0, i32 0
  store i8* %9, i8** %q, align 8
  br label %10

; <label>:10                                      ; preds = %18, %0
  %11 = load i8** %p, align 8
  %12 = load i8** %2, align 8
  %13 = icmp ne i8* %11, %12
  br i1 %13, label %14, label %23

; <label>:14                                      ; preds = %10
  %15 = load i8** %q, align 8
  %16 = load i8* %15
  %17 = load i8** %p, align 8
  store i8 %16, i8* %17
  br label %18

; <label>:18                                      ; preds = %14
  %19 = load i8** %p, align 8
  %20 = getelementptr inbounds i8* %19, i32 1
  store i8* %20, i8** %p, align 8
  %21 = load i8** %q, align 8
  %22 = getelementptr inbounds i8* %21, i32 1
  store i8* %22, i8** %q, align 8
  br label %10

; <label>:23                                      ; preds = %10
  %24 = load i8*** %4, align 8
  %25 = load i8** %24
  %26 = load i8** %2, align 8
  %27 = ptrtoint i8* %25 to i64
  %28 = ptrtoint i8* %26 to i64
  %29 = sub i64 %27, %28
  %30 = load i8** %q, align 8
  %31 = getelementptr inbounds i8* %30, i64 %29
  store i8* %31, i8** %q, align 8
  %32 = load i8** %3, align 8
  %33 = call i8* @skipoverword(i8* %32)
  store i8* %33, i8** %ew, align 8
  br label %34

; <label>:34                                      ; preds = %38, %23
  %35 = load i8** %3, align 8
  %36 = load i8** %ew, align 8
  %37 = icmp ult i8* %35, %36
  br i1 %37, label %38, label %44

; <label>:38                                      ; preds = %34
  %39 = load i8** %3, align 8
  %40 = getelementptr inbounds i8* %39, i32 1
  store i8* %40, i8** %3, align 8
  %41 = load i8* %39
  %42 = load i8** %p, align 8
  %43 = getelementptr inbounds i8* %42, i32 1
  store i8* %43, i8** %p, align 8
  store i8 %41, i8* %42
  br label %34

; <label>:44                                      ; preds = %34
  %45 = load i8** %p, align 8
  %46 = load i8*** %4, align 8
  store i8* %45, i8** %46
  %47 = load i8** %3, align 8
  %48 = load i8* %47
  %49 = icmp ne i8 %48, 0
  br i1 %49, label %50, label %68

; <label>:50                                      ; preds = %44
  %51 = load i8** %3, align 8
  %52 = load i8* %51
  %53 = load i8** %p, align 8
  %54 = getelementptr inbounds i8* %53, i32 1
  store i8* %54, i8** %p, align 8
  store i8 %52, i8* %53
  %55 = load i8** %3, align 8
  %56 = getelementptr inbounds i8* %55, i32 1
  store i8* %56, i8** %3, align 8
  store i8 0, i8* %55
  br label %57

; <label>:57                                      ; preds = %61, %50
  %58 = load i8** %3, align 8
  %59 = load i8* %58
  %60 = icmp ne i8 %59, 0
  br i1 %60, label %61, label %67

; <label>:61                                      ; preds = %57
  %62 = load i8** %3, align 8
  %63 = getelementptr inbounds i8* %62, i32 1
  store i8* %63, i8** %3, align 8
  %64 = load i8* %62
  %65 = load i8** %p, align 8
  %66 = getelementptr inbounds i8* %65, i32 1
  store i8* %66, i8** %p, align 8
  store i8 %64, i8* %65
  br label %57

; <label>:67                                      ; preds = %57
  br label %68

; <label>:68                                      ; preds = %67, %44
  br label %69

; <label>:69                                      ; preds = %77, %68
  %70 = load i8** %q, align 8
  %71 = getelementptr inbounds i8* %70, i32 1
  store i8* %71, i8** %q, align 8
  %72 = load i8* %70
  %73 = load i8** %p, align 8
  %74 = getelementptr inbounds i8* %73, i32 1
  store i8* %74, i8** %p, align 8
  store i8 %72, i8* %73
  %75 = sext i8 %72 to i32
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

; <label>:77                                      ; preds = %69
  br label %69

; <label>:78                                      ; preds = %69
  ret void
}

declare i32 @strtoichar(i8*, i8*, i32, i32)

declare i32 @sleep(...)

define internal void @lookharder(i8* %string) nounwind uwtable {
  %1 = alloca i8*, align 8
  %cmd = alloca [150 x i8], align 16
  %grepstr = alloca [100 x i8], align 16
  %g = alloca i8*, align 8
  %s = alloca i8*, align 8
  %wild = alloca i32, align 4
  store i8* %string, i8** %1, align 8
  store i32 0, i32* %wild, align 4
  %2 = getelementptr inbounds [100 x i8]* %grepstr, i32 0, i32 0
  store i8* %2, i8** %g, align 8
  %3 = load i8** %1, align 8
  store i8* %3, i8** %s, align 8
  br label %4

; <label>:4                                       ; preds = %27, %0
  %5 = load i8** %s, align 8
  %6 = load i8* %5
  %7 = sext i8 %6 to i32
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %30

; <label>:9                                       ; preds = %4
  %10 = load i8** %s, align 8
  %11 = load i8* %10
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 42
  br i1 %13, label %14, label %21

; <label>:14                                      ; preds = %9
  %15 = load i32* %wild, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %wild, align 4
  %17 = load i8** %g, align 8
  %18 = getelementptr inbounds i8* %17, i32 1
  store i8* %18, i8** %g, align 8
  store i8 46, i8* %17
  %19 = load i8** %g, align 8
  %20 = getelementptr inbounds i8* %19, i32 1
  store i8* %20, i8** %g, align 8
  store i8 42, i8* %19
  br label %26

; <label>:21                                      ; preds = %9
  %22 = load i8** %s, align 8
  %23 = load i8* %22
  %24 = load i8** %g, align 8
  %25 = getelementptr inbounds i8* %24, i32 1
  store i8* %25, i8** %g, align 8
  store i8 %23, i8* %24
  br label %26

; <label>:26                                      ; preds = %21, %14
  br label %27

; <label>:27                                      ; preds = %26
  %28 = load i8** %s, align 8
  %29 = getelementptr inbounds i8* %28, i32 1
  store i8* %29, i8** %s, align 8
  br label %4

; <label>:30                                      ; preds = %4
  %31 = load i8** %g, align 8
  store i8 0, i8* %31
  %32 = getelementptr inbounds [100 x i8]* %grepstr, i32 0, i64 0
  %33 = load i8* %32, align 1
  %34 = icmp ne i8 %33, 0
  br i1 %34, label %35, label %63

; <label>:35                                      ; preds = %30
  %36 = load i32* %wild, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %51, label %38

; <label>:38                                      ; preds = %35
  %39 = load i32* @lookharder.look, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %51

; <label>:41                                      ; preds = %38
  %42 = getelementptr inbounds [150 x i8]* %cmd, i32 0, i32 0
  %43 = getelementptr inbounds [100 x i8]* %grepstr, i32 0, i32 0
  %44 = call i32 (i8*, i8*, ...)* @sprintf(i8* %42, i8* getelementptr inbounds ([9 x i8]* @.str43, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str44, i32 0, i32 0), i8* %43, i8* getelementptr inbounds ([16 x i8]* @.str45, i32 0, i32 0)) nounwind
  %45 = getelementptr inbounds [150 x i8]* %cmd, i32 0, i32 0
  %46 = call i32 @shellescape(i8* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

; <label>:48                                      ; preds = %41
  br label %63

; <label>:49                                      ; preds = %41
  store i32 0, i32* @lookharder.look, align 4
  br label %50

; <label>:50                                      ; preds = %49
  br label %51

; <label>:51                                      ; preds = %50, %38, %35
  %52 = load i32* %wild, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

; <label>:54                                      ; preds = %51
  %55 = getelementptr inbounds [100 x i8]* %grepstr, i32 0, i32 0
  %56 = call i8* @strcat(i8* %55, i8* getelementptr inbounds ([3 x i8]* @.str46, i32 0, i32 0)) nounwind
  br label %57

; <label>:57                                      ; preds = %54, %51
  %58 = getelementptr inbounds [150 x i8]* %cmd, i32 0, i32 0
  %59 = getelementptr inbounds [100 x i8]* %grepstr, i32 0, i32 0
  %60 = call i32 (i8*, i8*, ...)* @sprintf(i8* %58, i8* getelementptr inbounds ([11 x i8]* @.str47, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8]* @.str48, i32 0, i32 0), i8* %59, i8* getelementptr inbounds ([16 x i8]* @.str45, i32 0, i32 0)) nounwind
  %61 = getelementptr inbounds [150 x i8]* %cmd, i32 0, i32 0
  %62 = call i32 @shellescape(i8* %61)
  br label %63

; <label>:63                                      ; preds = %57, %48, %30
  ret void
}

define i32 @casecmp(i8* %a, i8* %b, i32 %canonical) nounwind uwtable {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %ap = alloca i8*, align 8
  %bp = alloca i8*, align 8
  %inta = alloca [184 x i8], align 16
  %intb = alloca [184 x i8], align 16
  store i8* %a, i8** %2, align 8
  store i8* %b, i8** %3, align 8
  store i32 %canonical, i32* %4, align 4
  %5 = getelementptr inbounds [184 x i8]* %inta, i32 0, i32 0
  %6 = load i8** %2, align 8
  %7 = load i32* %4, align 4
  %8 = call i32 @strtoichar(i8* %5, i8* %6, i32 184, i32 %7)
  %9 = getelementptr inbounds [184 x i8]* %intb, i32 0, i32 0
  %10 = load i8** %3, align 8
  %11 = load i32* %4, align 4
  %12 = call i32 @strtoichar(i8* %9, i8* %10, i32 184, i32 %11)
  %13 = getelementptr inbounds [184 x i8]* %inta, i32 0, i32 0
  store i8* %13, i8** %ap, align 8
  %14 = getelementptr inbounds [184 x i8]* %intb, i32 0, i32 0
  store i8* %14, i8** %bp, align 8
  br label %15

; <label>:15                                      ; preds = %118, %0
  %16 = load i8** %ap, align 8
  %17 = load i8* %16
  %18 = zext i8 %17 to i32
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %123

; <label>:20                                      ; preds = %15
  %21 = load i8** %ap, align 8
  %22 = load i8* %21
  %23 = zext i8 %22 to i32
  %24 = load i8** %bp, align 8
  %25 = load i8* %24
  %26 = zext i8 %25 to i32
  %27 = icmp ne i32 %23, %26
  br i1 %27, label %28, label %117

; <label>:28                                      ; preds = %20
  %29 = load i8** %bp, align 8
  %30 = load i8* %29
  %31 = zext i8 %30 to i32
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %40

; <label>:33                                      ; preds = %28
  %34 = load i8** %ap, align 8
  %35 = load i8* %34
  %36 = zext i8 %35 to i64
  %37 = getelementptr inbounds [228 x i16]* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 20), i32 0, i64 %36
  %38 = load i16* %37, align 2
  %39 = zext i16 %38 to i32
  store i32 %39, i32* %1
  br label %172

; <label>:40                                      ; preds = %28
  %41 = load i8** %ap, align 8
  %42 = load i8* %41
  %43 = zext i8 %42 to i64
  %44 = getelementptr inbounds [228 x i8]* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 25), i32 0, i64 %43
  %45 = load i8* %44, align 1
  %46 = icmp ne i8 %45, 0
  br i1 %46, label %47, label %81

; <label>:47                                      ; preds = %40
  %48 = load i8** %bp, align 8
  %49 = load i8* %48
  %50 = zext i8 %49 to i64
  %51 = getelementptr inbounds [228 x i8]* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 25), i32 0, i64 %50
  %52 = load i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %66, label %55

; <label>:55                                      ; preds = %47
  %56 = load i8** %ap, align 8
  %57 = load i8* %56
  %58 = zext i8 %57 to i64
  %59 = getelementptr inbounds [228 x i8]* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 22), i32 0, i64 %58
  %60 = load i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = load i8** %bp, align 8
  %63 = load i8* %62
  %64 = zext i8 %63 to i32
  %65 = icmp ne i32 %61, %64
  br i1 %65, label %66, label %80

; <label>:66                                      ; preds = %55, %47
  %67 = load i8** %ap, align 8
  %68 = load i8* %67
  %69 = zext i8 %68 to i64
  %70 = getelementptr inbounds [228 x i16]* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 20), i32 0, i64 %69
  %71 = load i16* %70, align 2
  %72 = zext i16 %71 to i32
  %73 = load i8** %bp, align 8
  %74 = load i8* %73
  %75 = zext i8 %74 to i64
  %76 = getelementptr inbounds [228 x i16]* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 20), i32 0, i64 %75
  %77 = load i16* %76, align 2
  %78 = zext i16 %77 to i32
  %79 = sub nsw i32 %72, %78
  store i32 %79, i32* %1
  br label %172

; <label>:80                                      ; preds = %55
  br label %115

; <label>:81                                      ; preds = %40
  %82 = load i8** %bp, align 8
  %83 = load i8* %82
  %84 = zext i8 %83 to i64
  %85 = getelementptr inbounds [228 x i8]* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 24), i32 0, i64 %84
  %86 = load i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %100, label %89

; <label>:89                                      ; preds = %81
  %90 = load i8** %ap, align 8
  %91 = load i8* %90
  %92 = zext i8 %91 to i64
  %93 = getelementptr inbounds [228 x i8]* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 21), i32 0, i64 %92
  %94 = load i8* %93, align 1
  %95 = zext i8 %94 to i32
  %96 = load i8** %bp, align 8
  %97 = load i8* %96
  %98 = zext i8 %97 to i32
  %99 = icmp ne i32 %95, %98
  br i1 %99, label %100, label %114

; <label>:100                                     ; preds = %89, %81
  %101 = load i8** %ap, align 8
  %102 = load i8* %101
  %103 = zext i8 %102 to i64
  %104 = getelementptr inbounds [228 x i16]* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 20), i32 0, i64 %103
  %105 = load i16* %104, align 2
  %106 = zext i16 %105 to i32
  %107 = load i8** %bp, align 8
  %108 = load i8* %107
  %109 = zext i8 %108 to i64
  %110 = getelementptr inbounds [228 x i16]* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 20), i32 0, i64 %109
  %111 = load i16* %110, align 2
  %112 = zext i16 %111 to i32
  %113 = sub nsw i32 %106, %112
  store i32 %113, i32* %1
  br label %172

; <label>:114                                     ; preds = %89
  br label %115

; <label>:115                                     ; preds = %114, %80
  br label %116

; <label>:116                                     ; preds = %115
  br label %117

; <label>:117                                     ; preds = %116, %20
  br label %118

; <label>:118                                     ; preds = %117
  %119 = load i8** %ap, align 8
  %120 = getelementptr inbounds i8* %119, i32 1
  store i8* %120, i8** %ap, align 8
  %121 = load i8** %bp, align 8
  %122 = getelementptr inbounds i8* %121, i32 1
  store i8* %122, i8** %bp, align 8
  br label %15

; <label>:123                                     ; preds = %15
  %124 = load i8** %bp, align 8
  %125 = load i8* %124
  %126 = zext i8 %125 to i32
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %136

; <label>:128                                     ; preds = %123
  %129 = load i8** %bp, align 8
  %130 = load i8* %129
  %131 = zext i8 %130 to i64
  %132 = getelementptr inbounds [228 x i16]* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 20), i32 0, i64 %131
  %133 = load i16* %132, align 2
  %134 = zext i16 %133 to i32
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %1
  br label %172

; <label>:136                                     ; preds = %123
  %137 = getelementptr inbounds [184 x i8]* %inta, i32 0, i32 0
  store i8* %137, i8** %ap, align 8
  %138 = getelementptr inbounds [184 x i8]* %intb, i32 0, i32 0
  store i8* %138, i8** %bp, align 8
  br label %139

; <label>:139                                     ; preds = %166, %136
  %140 = load i8** %ap, align 8
  %141 = load i8* %140
  %142 = icmp ne i8 %141, 0
  br i1 %142, label %143, label %171

; <label>:143                                     ; preds = %139
  %144 = load i8** %ap, align 8
  %145 = load i8* %144
  %146 = zext i8 %145 to i32
  %147 = load i8** %bp, align 8
  %148 = load i8* %147
  %149 = zext i8 %148 to i32
  %150 = icmp ne i32 %146, %149
  br i1 %150, label %151, label %165

; <label>:151                                     ; preds = %143
  %152 = load i8** %ap, align 8
  %153 = load i8* %152
  %154 = zext i8 %153 to i64
  %155 = getelementptr inbounds [228 x i16]* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 20), i32 0, i64 %154
  %156 = load i16* %155, align 2
  %157 = zext i16 %156 to i32
  %158 = load i8** %bp, align 8
  %159 = load i8* %158
  %160 = zext i8 %159 to i64
  %161 = getelementptr inbounds [228 x i16]* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 20), i32 0, i64 %160
  %162 = load i16* %161, align 2
  %163 = zext i16 %162 to i32
  %164 = sub nsw i32 %157, %163
  store i32 %164, i32* %1
  br label %172

; <label>:165                                     ; preds = %143
  br label %166

; <label>:166                                     ; preds = %165
  %167 = load i8** %ap, align 8
  %168 = getelementptr inbounds i8* %167, i32 1
  store i8* %168, i8** %ap, align 8
  %169 = load i8** %bp, align 8
  %170 = getelementptr inbounds i8* %169, i32 1
  store i8* %170, i8** %bp, align 8
  br label %139

; <label>:171                                     ; preds = %139
  store i32 0, i32* %1
  br label %172

; <label>:172                                     ; preds = %171, %151, %128, %100, %66, %33
  %173 = load i32* %1
  ret i32 %173
}

define internal void @wrongcapital(i8* %word) nounwind uwtable {
  %1 = alloca i8*, align 8
  %newword = alloca [120 x i8], align 16
  store i8* %word, i8** %1, align 8
  %2 = load i8** %1, align 8
  %3 = call i32 @good(i8* %2, i32 0, i32 1, i32 0, i32 0)
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %13

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds [120 x i8]* %newword, i32 0, i32 0
  %7 = load i8** %1, align 8
  %8 = call i8* @strcpy(i8* %6, i8* %7) nounwind
  %9 = getelementptr inbounds [120 x i8]* %newword, i32 0, i32 0
  call void @upcase(i8* %9)
  %10 = getelementptr inbounds [120 x i8]* %newword, i32 0, i32 0
  %11 = load i8** %1, align 8
  %12 = call i32 @ins_cap(i8* %10, i8* %11)
  br label %13

; <label>:13                                      ; preds = %5, %0
  ret void
}

define internal void @missingletter(i8* %word) nounwind uwtable {
  %1 = alloca i8*, align 8
  %newword = alloca [121 x i8], align 16
  %p = alloca i8*, align 8
  %r = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %word, i8** %1, align 8
  %2 = getelementptr inbounds [121 x i8]* %newword, i32 0, i32 0
  %3 = getelementptr inbounds i8* %2, i64 1
  %4 = load i8** %1, align 8
  %5 = call i8* @strcpy(i8* %3, i8* %4) nounwind
  %6 = load i8** %1, align 8
  store i8* %6, i8** %p, align 8
  %7 = getelementptr inbounds [121 x i8]* %newword, i32 0, i32 0
  store i8* %7, i8** %r, align 8
  br label %8

; <label>:8                                       ; preds = %53, %0
  %9 = load i8** %p, align 8
  %10 = load i8* %9
  %11 = zext i8 %10 to i32
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %59

; <label>:13                                      ; preds = %8
  store i32 0, i32* %i, align 4
  br label %14

; <label>:14                                      ; preds = %50, %13
  %15 = load i32* %i, align 4
  %16 = load i32* @Trynum, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %53

; <label>:18                                      ; preds = %14
  %19 = load i32* %i, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [228 x i8]* @Try, i32 0, i64 %20
  %22 = load i8* %21, align 1
  %23 = zext i8 %22 to i64
  %24 = getelementptr inbounds [228 x i8]* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 26), i32 0, i64 %23
  %25 = load i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

; <label>:28                                      ; preds = %18
  %29 = load i8** %r, align 8
  %30 = getelementptr inbounds [121 x i8]* %newword, i32 0, i32 0
  %31 = icmp eq i8* %29, %30
  br i1 %31, label %32, label %33

; <label>:32                                      ; preds = %28
  br label %50

; <label>:33                                      ; preds = %28, %18
  %34 = load i32* %i, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [228 x i8]* @Try, i32 0, i64 %35
  %37 = load i8* %36, align 1
  %38 = load i8** %r, align 8
  store i8 %37, i8* %38
  %39 = getelementptr inbounds [121 x i8]* %newword, i32 0, i32 0
  %40 = call i32 @good(i8* %39, i32 0, i32 1, i32 0, i32 0)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

; <label>:42                                      ; preds = %33
  %43 = getelementptr inbounds [121 x i8]* %newword, i32 0, i32 0
  %44 = load i8** %1, align 8
  %45 = call i32 @ins_cap(i8* %43, i8* %44)
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

; <label>:47                                      ; preds = %42
  br label %94

; <label>:48                                      ; preds = %42
  br label %49

; <label>:49                                      ; preds = %48, %33
  br label %50

; <label>:50                                      ; preds = %49, %32
  %51 = load i32* %i, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %i, align 4
  br label %14

; <label>:53                                      ; preds = %14
  %54 = load i8** %p, align 8
  %55 = getelementptr inbounds i8* %54, i32 1
  store i8* %55, i8** %p, align 8
  %56 = load i8* %54
  %57 = load i8** %r, align 8
  %58 = getelementptr inbounds i8* %57, i32 1
  store i8* %58, i8** %r, align 8
  store i8 %56, i8* %57
  br label %8

; <label>:59                                      ; preds = %8
  store i32 0, i32* %i, align 4
  br label %60

; <label>:60                                      ; preds = %91, %59
  %61 = load i32* %i, align 4
  %62 = load i32* @Trynum, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %94

; <label>:64                                      ; preds = %60
  %65 = load i32* %i, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [228 x i8]* @Try, i32 0, i64 %66
  %68 = load i8* %67, align 1
  %69 = zext i8 %68 to i64
  %70 = getelementptr inbounds [228 x i8]* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 26), i32 0, i64 %69
  %71 = load i8* %70, align 1
  %72 = icmp ne i8 %71, 0
  br i1 %72, label %73, label %74

; <label>:73                                      ; preds = %64
  br label %91

; <label>:74                                      ; preds = %64
  %75 = load i32* %i, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [228 x i8]* @Try, i32 0, i64 %76
  %78 = load i8* %77, align 1
  %79 = load i8** %r, align 8
  store i8 %78, i8* %79
  %80 = getelementptr inbounds [121 x i8]* %newword, i32 0, i32 0
  %81 = call i32 @good(i8* %80, i32 0, i32 1, i32 0, i32 0)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %90

; <label>:83                                      ; preds = %74
  %84 = getelementptr inbounds [121 x i8]* %newword, i32 0, i32 0
  %85 = load i8** %1, align 8
  %86 = call i32 @ins_cap(i8* %84, i8* %85)
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %89

; <label>:88                                      ; preds = %83
  br label %94

; <label>:89                                      ; preds = %83
  br label %90

; <label>:90                                      ; preds = %89, %74
  br label %91

; <label>:91                                      ; preds = %90, %73
  %92 = load i32* %i, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %i, align 4
  br label %60

; <label>:94                                      ; preds = %88, %60, %47
  ret void
}

define internal void @transposedletter(i8* %word) nounwind uwtable {
  %1 = alloca i8*, align 8
  %newword = alloca [120 x i8], align 16
  %p = alloca i8*, align 8
  %temp = alloca i8, align 1
  store i8* %word, i8** %1, align 8
  %2 = getelementptr inbounds [120 x i8]* %newword, i32 0, i32 0
  %3 = load i8** %1, align 8
  %4 = call i8* @strcpy(i8* %2, i8* %3) nounwind
  %5 = getelementptr inbounds [120 x i8]* %newword, i32 0, i32 0
  store i8* %5, i8** %p, align 8
  br label %6

; <label>:6                                       ; preds = %42, %0
  %7 = load i8** %p, align 8
  %8 = getelementptr inbounds i8* %7, i64 1
  %9 = load i8* %8
  %10 = zext i8 %9 to i32
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %45

; <label>:12                                      ; preds = %6
  %13 = load i8** %p, align 8
  %14 = load i8* %13
  store i8 %14, i8* %temp, align 1
  %15 = load i8** %p, align 8
  %16 = getelementptr inbounds i8* %15, i64 1
  %17 = load i8* %16
  %18 = load i8** %p, align 8
  store i8 %17, i8* %18
  %19 = load i8* %temp, align 1
  %20 = load i8** %p, align 8
  %21 = getelementptr inbounds i8* %20, i64 1
  store i8 %19, i8* %21
  %22 = getelementptr inbounds [120 x i8]* %newword, i32 0, i32 0
  %23 = call i32 @good(i8* %22, i32 0, i32 1, i32 0, i32 0)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

; <label>:25                                      ; preds = %12
  %26 = getelementptr inbounds [120 x i8]* %newword, i32 0, i32 0
  %27 = load i8** %1, align 8
  %28 = call i32 @ins_cap(i8* %26, i8* %27)
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

; <label>:30                                      ; preds = %25
  br label %45

; <label>:31                                      ; preds = %25
  br label %32

; <label>:32                                      ; preds = %31, %12
  %33 = load i8** %p, align 8
  %34 = load i8* %33
  store i8 %34, i8* %temp, align 1
  %35 = load i8** %p, align 8
  %36 = getelementptr inbounds i8* %35, i64 1
  %37 = load i8* %36
  %38 = load i8** %p, align 8
  store i8 %37, i8* %38
  %39 = load i8* %temp, align 1
  %40 = load i8** %p, align 8
  %41 = getelementptr inbounds i8* %40, i64 1
  store i8 %39, i8* %41
  br label %42

; <label>:42                                      ; preds = %32
  %43 = load i8** %p, align 8
  %44 = getelementptr inbounds i8* %43, i32 1
  store i8* %44, i8** %p, align 8
  br label %6

; <label>:45                                      ; preds = %30, %6
  ret void
}

define internal void @extraletter(i8* %word) nounwind uwtable {
  %1 = alloca i8*, align 8
  %newword = alloca [120 x i8], align 16
  %p = alloca i8*, align 8
  %r = alloca i8*, align 8
  store i8* %word, i8** %1, align 8
  %2 = load i8** %1, align 8
  %3 = call i64 @strlen(i8* %2) nounwind readonly
  %4 = icmp ult i64 %3, 2
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %0
  br label %35

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds [120 x i8]* %newword, i32 0, i32 0
  %8 = load i8** %1, align 8
  %9 = getelementptr inbounds i8* %8, i64 1
  %10 = call i8* @strcpy(i8* %7, i8* %9) nounwind
  %11 = load i8** %1, align 8
  store i8* %11, i8** %p, align 8
  %12 = getelementptr inbounds [120 x i8]* %newword, i32 0, i32 0
  store i8* %12, i8** %r, align 8
  br label %13

; <label>:13                                      ; preds = %29, %6
  %14 = load i8** %p, align 8
  %15 = load i8* %14
  %16 = zext i8 %15 to i32
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %35

; <label>:18                                      ; preds = %13
  %19 = getelementptr inbounds [120 x i8]* %newword, i32 0, i32 0
  %20 = call i32 @good(i8* %19, i32 0, i32 1, i32 0, i32 0)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

; <label>:22                                      ; preds = %18
  %23 = getelementptr inbounds [120 x i8]* %newword, i32 0, i32 0
  %24 = load i8** %1, align 8
  %25 = call i32 @ins_cap(i8* %23, i8* %24)
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

; <label>:27                                      ; preds = %22
  br label %35

; <label>:28                                      ; preds = %22
  br label %29

; <label>:29                                      ; preds = %28, %18
  %30 = load i8** %p, align 8
  %31 = getelementptr inbounds i8* %30, i32 1
  store i8* %31, i8** %p, align 8
  %32 = load i8* %30
  %33 = load i8** %r, align 8
  %34 = getelementptr inbounds i8* %33, i32 1
  store i8* %34, i8** %r, align 8
  store i8 %32, i8* %33
  br label %13

; <label>:35                                      ; preds = %27, %13, %5
  ret void
}

define internal void @wrongletter(i8* %word) nounwind uwtable {
  %1 = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  %savechar = alloca i8, align 1
  %newword = alloca [120 x i8], align 16
  store i8* %word, i8** %1, align 8
  %2 = load i8** %1, align 8
  %3 = call i64 @strlen(i8* %2) nounwind readonly
  %4 = trunc i64 %3 to i32
  store i32 %4, i32* %n, align 4
  %5 = getelementptr inbounds [120 x i8]* %newword, i32 0, i32 0
  %6 = load i8** %1, align 8
  %7 = call i8* @strcpy(i8* %5, i8* %6) nounwind
  %8 = getelementptr inbounds [120 x i8]* %newword, i32 0, i32 0
  call void @upcase(i8* %8)
  store i32 0, i32* %i, align 4
  br label %9

; <label>:9                                       ; preds = %79, %0
  %10 = load i32* %i, align 4
  %11 = load i32* %n, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %82

; <label>:13                                      ; preds = %9
  %14 = load i32* %i, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [120 x i8]* %newword, i32 0, i64 %15
  %17 = load i8* %16, align 1
  store i8 %17, i8* %savechar, align 1
  store i32 0, i32* %j, align 4
  br label %18

; <label>:18                                      ; preds = %71, %13
  %19 = load i32* %j, align 4
  %20 = load i32* @Trynum, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %74

; <label>:22                                      ; preds = %18
  %23 = load i32* %j, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [228 x i8]* @Try, i32 0, i64 %24
  %26 = load i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = load i8* %savechar, align 1
  %29 = zext i8 %28 to i32
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %31, label %32

; <label>:31                                      ; preds = %22
  br label %71

; <label>:32                                      ; preds = %22
  %33 = load i32* %j, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [228 x i8]* @Try, i32 0, i64 %34
  %36 = load i8* %35, align 1
  %37 = zext i8 %36 to i64
  %38 = getelementptr inbounds [228 x i8]* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 26), i32 0, i64 %37
  %39 = load i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %51

; <label>:42                                      ; preds = %32
  %43 = load i32* %i, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %50, label %45

; <label>:45                                      ; preds = %42
  %46 = load i32* %i, align 4
  %47 = load i32* %n, align 4
  %48 = sub nsw i32 %47, 1
  %49 = icmp eq i32 %46, %48
  br i1 %49, label %50, label %51

; <label>:50                                      ; preds = %45, %42
  br label %71

; <label>:51                                      ; preds = %45, %32
  br label %52

; <label>:52                                      ; preds = %51
  %53 = load i32* %j, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [228 x i8]* @Try, i32 0, i64 %54
  %56 = load i8* %55, align 1
  %57 = load i32* %i, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [120 x i8]* %newword, i32 0, i64 %58
  store i8 %56, i8* %59, align 1
  %60 = getelementptr inbounds [120 x i8]* %newword, i32 0, i32 0
  %61 = call i32 @good(i8* %60, i32 0, i32 1, i32 0, i32 0)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %70

; <label>:63                                      ; preds = %52
  %64 = getelementptr inbounds [120 x i8]* %newword, i32 0, i32 0
  %65 = load i8** %1, align 8
  %66 = call i32 @ins_cap(i8* %64, i8* %65)
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

; <label>:68                                      ; preds = %63
  br label %82

; <label>:69                                      ; preds = %63
  br label %70

; <label>:70                                      ; preds = %69, %52
  br label %71

; <label>:71                                      ; preds = %70, %50, %31
  %72 = load i32* %j, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %j, align 4
  br label %18

; <label>:74                                      ; preds = %18
  %75 = load i8* %savechar, align 1
  %76 = load i32* %i, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [120 x i8]* %newword, i32 0, i64 %77
  store i8 %75, i8* %78, align 1
  br label %79

; <label>:79                                      ; preds = %74
  %80 = load i32* %i, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %i, align 4
  br label %9

; <label>:82                                      ; preds = %68, %9
  ret void
}

define internal void @missingspace(i8* %word) nounwind uwtable {
  %1 = alloca i8*, align 8
  %firsthalf = alloca [10 x [120 x i8]], align 16
  %firstno = alloca i32, align 4
  %firstp = alloca i8*, align 8
  %newword = alloca [121 x i8], align 16
  %nfirsthalf = alloca i32, align 4
  %nsecondhalf = alloca i32, align 4
  %p = alloca i8*, align 8
  %secondhalf = alloca [10 x [120 x i8]], align 16
  %secondno = alloca i32, align 4
  store i8* %word, i8** %1, align 8
  %2 = load i8** %1, align 8
  %3 = call i64 @strlen(i8* %2) nounwind readonly
  %4 = trunc i64 %3 to i32
  store i32 %4, i32* %nfirsthalf, align 4
  %5 = load i32* %nfirsthalf, align 4
  %6 = icmp slt i32 %5, 3
  br i1 %6, label %10, label %7

; <label>:7                                       ; preds = %0
  %8 = load i32* %nfirsthalf, align 4
  %9 = icmp sge i32 %8, 119
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %7, %0
  br label %106

; <label>:11                                      ; preds = %7
  %12 = getelementptr inbounds [121 x i8]* %newword, i32 0, i32 0
  %13 = getelementptr inbounds i8* %12, i64 1
  %14 = load i8** %1, align 8
  %15 = call i8* @strcpy(i8* %13, i8* %14) nounwind
  %16 = getelementptr inbounds [121 x i8]* %newword, i32 0, i32 0
  %17 = getelementptr inbounds i8* %16, i64 1
  store i8* %17, i8** %p, align 8
  br label %18

; <label>:18                                      ; preds = %103, %11
  %19 = load i8** %p, align 8
  %20 = getelementptr inbounds i8* %19, i64 1
  %21 = load i8* %20
  %22 = zext i8 %21 to i32
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %106

; <label>:24                                      ; preds = %18
  %25 = load i8** %p, align 8
  %26 = load i8* %25
  %27 = load i8** %p, align 8
  %28 = getelementptr inbounds i8* %27, i64 -1
  store i8 %26, i8* %28
  %29 = load i8** %p, align 8
  store i8 0, i8* %29
  %30 = getelementptr inbounds [121 x i8]* %newword, i32 0, i32 0
  %31 = call i32 @good(i8* %30, i32 0, i32 1, i32 0, i32 0)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %102

; <label>:33                                      ; preds = %24
  %34 = getelementptr inbounds [121 x i8]* %newword, i32 0, i32 0
  %35 = load i8** %1, align 8
  %36 = getelementptr inbounds [10 x [120 x i8]]* %firsthalf, i32 0, i32 0
  %37 = call i32 @save_cap(i8* %34, i8* %35, [120 x i8]* %36)
  store i32 %37, i32* %nfirsthalf, align 4
  %38 = load i8** %p, align 8
  %39 = getelementptr inbounds i8* %38, i64 1
  %40 = call i32 @good(i8* %39, i32 0, i32 1, i32 0, i32 0)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %101

; <label>:42                                      ; preds = %33
  %43 = load i8** %p, align 8
  %44 = getelementptr inbounds i8* %43, i64 1
  %45 = load i8** %p, align 8
  %46 = getelementptr inbounds i8* %45, i64 1
  %47 = getelementptr inbounds [10 x [120 x i8]]* %secondhalf, i32 0, i32 0
  %48 = call i32 @save_cap(i8* %44, i8* %46, [120 x i8]* %47)
  store i32 %48, i32* %nsecondhalf, align 4
  store i32 0, i32* %firstno, align 4
  br label %49

; <label>:49                                      ; preds = %97, %42
  %50 = load i32* %firstno, align 4
  %51 = load i32* %nfirsthalf, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %100

; <label>:53                                      ; preds = %49
  %54 = load i8** %p, align 8
  %55 = getelementptr inbounds [121 x i8]* %newword, i32 0, i32 0
  %56 = ptrtoint i8* %54 to i64
  %57 = ptrtoint i8* %55 to i64
  %58 = sub i64 %56, %57
  %59 = load i32* %firstno, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [10 x [120 x i8]]* %firsthalf, i32 0, i64 %60
  %62 = getelementptr inbounds [120 x i8]* %61, i32 0, i64 %58
  store i8* %62, i8** %firstp, align 8
  store i32 0, i32* %secondno, align 4
  br label %63

; <label>:63                                      ; preds = %93, %53
  %64 = load i32* %secondno, align 4
  %65 = load i32* %nsecondhalf, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %96

; <label>:67                                      ; preds = %63
  %68 = load i8** %firstp, align 8
  store i8 32, i8* %68
  %69 = load i8** %firstp, align 8
  %70 = getelementptr inbounds i8* %69, i64 1
  %71 = load i32* %secondno, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [10 x [120 x i8]]* %secondhalf, i32 0, i64 %72
  %74 = getelementptr inbounds [120 x i8]* %73, i32 0, i32 0
  %75 = call i8* @strcpy(i8* %70, i8* %74) nounwind
  %76 = load i32* %firstno, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [10 x [120 x i8]]* %firsthalf, i32 0, i64 %77
  %79 = getelementptr inbounds [120 x i8]* %78, i32 0, i32 0
  %80 = call i32 (...)* bitcast (i32 (i8*)* @insert to i32 (...)*)(i8* %79)
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %83

; <label>:82                                      ; preds = %67
  br label %106

; <label>:83                                      ; preds = %67
  %84 = load i8** %firstp, align 8
  store i8 45, i8* %84
  %85 = load i32* %firstno, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [10 x [120 x i8]]* %firsthalf, i32 0, i64 %86
  %88 = getelementptr inbounds [120 x i8]* %87, i32 0, i32 0
  %89 = call i32 (...)* bitcast (i32 (i8*)* @insert to i32 (...)*)(i8* %88)
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %92

; <label>:91                                      ; preds = %83
  br label %106

; <label>:92                                      ; preds = %83
  br label %93

; <label>:93                                      ; preds = %92
  %94 = load i32* %secondno, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %secondno, align 4
  br label %63

; <label>:96                                      ; preds = %63
  br label %97

; <label>:97                                      ; preds = %96
  %98 = load i32* %firstno, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %firstno, align 4
  br label %49

; <label>:100                                     ; preds = %49
  br label %101

; <label>:101                                     ; preds = %100, %33
  br label %102

; <label>:102                                     ; preds = %101, %24
  br label %103

; <label>:103                                     ; preds = %102
  %104 = load i8** %p, align 8
  %105 = getelementptr inbounds i8* %104, i32 1
  store i8* %105, i8** %p, align 8
  br label %18

; <label>:106                                     ; preds = %91, %82, %18, %10
  ret void
}

define internal void @tryveryhard(i8* %word) nounwind uwtable {
  %1 = alloca i8*, align 8
  store i8* %word, i8** %1, align 8
  %2 = load i8** %1, align 8
  %3 = call i32 @good(i8* %2, i32 1, i32 0, i32 0, i32 0)
  ret void
}

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)*)

define internal i32 @posscmp(i8* %a, i8* %b) nounwind uwtable {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  store i8* %a, i8** %1, align 8
  store i8* %b, i8** %2, align 8
  %3 = load i8** %1, align 8
  %4 = load i8** %2, align 8
  %5 = call i32 @casecmp(i8* %3, i8* %4, i32 0)
  ret i32 %5
}

declare i64 @whatcap(i8*)

define i32 @ins_root_cap(i8* %word, i8* %pattern, i32 %prestrip, i32 %preadd, i32 %sufstrip, i32 %sufadd, %struct.dent* %firstdent, %struct.flagent* %pfxent, %struct.flagent* %sufent) nounwind uwtable {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dent*, align 8
  %9 = alloca %struct.flagent*, align 8
  %10 = alloca %struct.flagent*, align 8
  %i = alloca i32, align 4
  %savearea = alloca [10 x [120 x i8]], align 16
  %nsaved = alloca i32, align 4
  store i8* %word, i8** %2, align 8
  store i8* %pattern, i8** %3, align 8
  store i32 %prestrip, i32* %4, align 4
  store i32 %preadd, i32* %5, align 4
  store i32 %sufstrip, i32* %6, align 4
  store i32 %sufadd, i32* %7, align 4
  store %struct.dent* %firstdent, %struct.dent** %8, align 8
  store %struct.flagent* %pfxent, %struct.flagent** %9, align 8
  store %struct.flagent* %sufent, %struct.flagent** %10, align 8
  store i32 0, i32* %nsaved, align 4
  %11 = load i8** %2, align 8
  %12 = load i8** %3, align 8
  %13 = load i32* %4, align 4
  %14 = load i32* %5, align 4
  %15 = load i32* %6, align 4
  %16 = load i32* %7, align 4
  %17 = load %struct.dent** %8, align 8
  %18 = load %struct.flagent** %9, align 8
  %19 = load %struct.flagent** %10, align 8
  %20 = getelementptr inbounds [10 x [120 x i8]]* %savearea, i32 0, i32 0
  call void @save_root_cap(i8* %11, i8* %12, i32 %13, i32 %14, i32 %15, i32 %16, %struct.dent* %17, %struct.flagent* %18, %struct.flagent* %19, [120 x i8]* %20, i32* %nsaved)
  store i32 0, i32* %i, align 4
  br label %21

; <label>:21                                      ; preds = %34, %0
  %22 = load i32* %i, align 4
  %23 = load i32* %nsaved, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %37

; <label>:25                                      ; preds = %21
  %26 = load i32* %i, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [10 x [120 x i8]]* %savearea, i32 0, i64 %27
  %29 = getelementptr inbounds [120 x i8]* %28, i32 0, i32 0
  %30 = call i32 (...)* bitcast (i32 (i8*)* @insert to i32 (...)*)(i8* %29)
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

; <label>:32                                      ; preds = %25
  store i32 -1, i32* %1
  br label %38

; <label>:33                                      ; preds = %25
  br label %34

; <label>:34                                      ; preds = %33
  %35 = load i32* %i, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %i, align 4
  br label %21

; <label>:37                                      ; preds = %21
  store i32 0, i32* %1
  br label %38

; <label>:38                                      ; preds = %37, %32
  %39 = load i32* %1
  ret i32 %39
}

define internal void @save_root_cap(i8* %word, i8* %pattern, i32 %prestrip, i32 %preadd, i32 %sufstrip, i32 %sufadd, %struct.dent* %firstdent, %struct.flagent* %pfxent, %struct.flagent* %sufent, [120 x i8]* %savearea, i32* %nsaved) nounwind uwtable {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dent*, align 8
  %8 = alloca %struct.flagent*, align 8
  %9 = alloca %struct.flagent*, align 8
  %10 = alloca [120 x i8]*, align 8
  %11 = alloca i32*, align 8
  %dent = alloca %struct.dent*, align 8
  %firstisupper = alloca i32, align 4
  %newword = alloca [184 x i8], align 16
  %p = alloca i8*, align 8
  %len = alloca i32, align 4
  %i = alloca i32, align 4
  %limit = alloca i32, align 4
  store i8* %word, i8** %1, align 8
  store i8* %pattern, i8** %2, align 8
  store i32 %prestrip, i32* %3, align 4
  store i32 %preadd, i32* %4, align 4
  store i32 %sufstrip, i32* %5, align 4
  store i32 %sufadd, i32* %6, align 4
  store %struct.dent* %firstdent, %struct.dent** %7, align 8
  store %struct.flagent* %pfxent, %struct.flagent** %8, align 8
  store %struct.flagent* %sufent, %struct.flagent** %9, align 8
  store [120 x i8]* %savearea, [120 x i8]** %10, align 8
  store i32* %nsaved, i32** %11, align 8
  %12 = load i32** %11, align 8
  %13 = load i32* %12
  %14 = icmp sge i32 %13, 10
  br i1 %14, label %15, label %16

; <label>:15                                      ; preds = %0
  br label %537

; <label>:16                                      ; preds = %0
  %17 = getelementptr inbounds [184 x i8]* %newword, i32 0, i32 0
  %18 = load i8** %1, align 8
  %19 = call i8* @strcpy(i8* %17, i8* %18) nounwind
  %20 = load i8** %2, align 8
  %21 = getelementptr inbounds i8* %20, i64 0
  %22 = load i8* %21
  %23 = zext i8 %22 to i64
  %24 = getelementptr inbounds [228 x i8]* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 24), i32 0, i64 %23
  %25 = load i8* %24, align 1
  %26 = sext i8 %25 to i32
  store i32 %26, i32* %firstisupper, align 4
  %27 = load %struct.dent** %7, align 8
  store %struct.dent* %27, %struct.dent** %dent, align 8
  %28 = load %struct.dent** %dent, align 8
  %29 = getelementptr inbounds %struct.dent* %28, i32 0, i32 2
  %30 = getelementptr inbounds [1 x i64]* %29, i32 0, i64 0
  %31 = load i64* %30, align 8
  %32 = and i64 %31, 1879048192
  %33 = icmp eq i64 %32, 268435456
  br i1 %33, label %34, label %47

; <label>:34                                      ; preds = %16
  %35 = getelementptr inbounds [184 x i8]* %newword, i32 0, i32 0
  call void @upcase(i8* %35)
  %36 = load i32** %11, align 8
  %37 = load i32* %36
  %38 = sext i32 %37 to i64
  %39 = load [120 x i8]** %10, align 8
  %40 = getelementptr inbounds [120 x i8]* %39, i64 %38
  %41 = getelementptr inbounds [120 x i8]* %40, i32 0, i32 0
  %42 = getelementptr inbounds [184 x i8]* %newword, i32 0, i32 0
  %43 = call i8* @strcpy(i8* %41, i8* %42) nounwind
  %44 = load i32** %11, align 8
  %45 = load i32* %44
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44
  br label %537

; <label>:47                                      ; preds = %16
  %48 = load i8** %2, align 8
  store i8* %48, i8** %p, align 8
  br label %49

; <label>:49                                      ; preds = %62, %47
  %50 = load i8** %p, align 8
  %51 = load i8* %50
  %52 = icmp ne i8 %51, 0
  br i1 %52, label %53, label %65

; <label>:53                                      ; preds = %49
  %54 = load i8** %p, align 8
  %55 = load i8* %54
  %56 = zext i8 %55 to i64
  %57 = getelementptr inbounds [228 x i8]* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 25), i32 0, i64 %56
  %58 = load i8* %57, align 1
  %59 = icmp ne i8 %58, 0
  br i1 %59, label %60, label %61

; <label>:60                                      ; preds = %53
  br label %65

; <label>:61                                      ; preds = %53
  br label %62

; <label>:62                                      ; preds = %61
  %63 = load i8** %p, align 8
  %64 = getelementptr inbounds i8* %63, i32 1
  store i8* %64, i8** %p, align 8
  br label %49

; <label>:65                                      ; preds = %60, %49
  %66 = load i8** %p, align 8
  %67 = load i8* %66
  %68 = zext i8 %67 to i32
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %83

; <label>:70                                      ; preds = %65
  %71 = getelementptr inbounds [184 x i8]* %newword, i32 0, i32 0
  call void @upcase(i8* %71)
  %72 = load i32** %11, align 8
  %73 = load i32* %72
  %74 = sext i32 %73 to i64
  %75 = load [120 x i8]** %10, align 8
  %76 = getelementptr inbounds [120 x i8]* %75, i64 %74
  %77 = getelementptr inbounds [120 x i8]* %76, i32 0, i32 0
  %78 = getelementptr inbounds [184 x i8]* %newword, i32 0, i32 0
  %79 = call i8* @strcpy(i8* %77, i8* %78) nounwind
  %80 = load i32** %11, align 8
  %81 = load i32* %80
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80
  br label %537

; <label>:83                                      ; preds = %65
  %84 = load i8** %2, align 8
  %85 = getelementptr inbounds i8* %84, i64 1
  store i8* %85, i8** %p, align 8
  br label %86

; <label>:86                                      ; preds = %99, %83
  %87 = load i8** %p, align 8
  %88 = load i8* %87
  %89 = icmp ne i8 %88, 0
  br i1 %89, label %90, label %102

; <label>:90                                      ; preds = %86
  %91 = load i8** %p, align 8
  %92 = load i8* %91
  %93 = zext i8 %92 to i64
  %94 = getelementptr inbounds [228 x i8]* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 24), i32 0, i64 %93
  %95 = load i8* %94, align 1
  %96 = icmp ne i8 %95, 0
  br i1 %96, label %97, label %98

; <label>:97                                      ; preds = %90
  br label %102

; <label>:98                                      ; preds = %90
  br label %99

; <label>:99                                      ; preds = %98
  %100 = load i8** %p, align 8
  %101 = getelementptr inbounds i8* %100, i32 1
  store i8* %101, i8** %p, align 8
  br label %86

; <label>:102                                     ; preds = %97, %86
  %103 = load i8** %p, align 8
  %104 = load i8* %103
  %105 = zext i8 %104 to i32
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %269

; <label>:107                                     ; preds = %102
  %108 = load i32* %firstisupper, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %144

; <label>:110                                     ; preds = %107
  %111 = load %struct.dent** %dent, align 8
  %112 = getelementptr inbounds %struct.dent* %111, i32 0, i32 2
  %113 = getelementptr inbounds [1 x i64]* %112, i32 0, i64 0
  %114 = load i64* %113, align 8
  %115 = and i64 %114, 805306368
  %116 = icmp eq i64 %115, 536870912
  br i1 %116, label %124, label %117

; <label>:117                                     ; preds = %110
  %118 = load %struct.dent** %dent, align 8
  %119 = getelementptr inbounds %struct.dent* %118, i32 0, i32 2
  %120 = getelementptr inbounds [1 x i64]* %119, i32 0, i64 0
  %121 = load i64* %120, align 8
  %122 = and i64 %121, 805306368
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %143

; <label>:124                                     ; preds = %117, %110
  %125 = getelementptr inbounds [184 x i8]* %newword, i32 0, i32 0
  call void @lowcase(i8* %125)
  %126 = getelementptr inbounds [184 x i8]* %newword, i32 0, i64 0
  %127 = load i8* %126, align 1
  %128 = zext i8 %127 to i64
  %129 = getelementptr inbounds [228 x i8]* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 22), i32 0, i64 %128
  %130 = load i8* %129, align 1
  %131 = getelementptr inbounds [184 x i8]* %newword, i32 0, i64 0
  store i8 %130, i8* %131, align 1
  %132 = load i32** %11, align 8
  %133 = load i32* %132
  %134 = sext i32 %133 to i64
  %135 = load [120 x i8]** %10, align 8
  %136 = getelementptr inbounds [120 x i8]* %135, i64 %134
  %137 = getelementptr inbounds [120 x i8]* %136, i32 0, i32 0
  %138 = getelementptr inbounds [184 x i8]* %newword, i32 0, i32 0
  %139 = call i8* @strcpy(i8* %137, i8* %138) nounwind
  %140 = load i32** %11, align 8
  %141 = load i32* %140
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %140
  br label %537

; <label>:143                                     ; preds = %117
  br label %165

; <label>:144                                     ; preds = %107
  %145 = load %struct.dent** %dent, align 8
  %146 = getelementptr inbounds %struct.dent* %145, i32 0, i32 2
  %147 = getelementptr inbounds [1 x i64]* %146, i32 0, i64 0
  %148 = load i64* %147, align 8
  %149 = and i64 %148, 805306368
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %151, label %164

; <label>:151                                     ; preds = %144
  %152 = getelementptr inbounds [184 x i8]* %newword, i32 0, i32 0
  call void @lowcase(i8* %152)
  %153 = load i32** %11, align 8
  %154 = load i32* %153
  %155 = sext i32 %154 to i64
  %156 = load [120 x i8]** %10, align 8
  %157 = getelementptr inbounds [120 x i8]* %156, i64 %155
  %158 = getelementptr inbounds [120 x i8]* %157, i32 0, i32 0
  %159 = getelementptr inbounds [184 x i8]* %newword, i32 0, i32 0
  %160 = call i8* @strcpy(i8* %158, i8* %159) nounwind
  %161 = load i32** %11, align 8
  %162 = load i32* %161
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %161
  br label %537

; <label>:164                                     ; preds = %144
  br label %165

; <label>:165                                     ; preds = %164, %143
  br label %166

; <label>:166                                     ; preds = %267, %215, %165
  %167 = load %struct.dent** %dent, align 8
  %168 = getelementptr inbounds %struct.dent* %167, i32 0, i32 2
  %169 = getelementptr inbounds [1 x i64]* %168, i32 0, i64 0
  %170 = load i64* %169, align 8
  %171 = and i64 %170, 1073741824
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %268

; <label>:173                                     ; preds = %166
  %174 = load %struct.dent** %dent, align 8
  %175 = getelementptr inbounds %struct.dent* %174, i32 0, i32 0
  %176 = load %struct.dent** %175, align 8
  store %struct.dent* %176, %struct.dent** %dent, align 8
  %177 = load %struct.dent** %dent, align 8
  %178 = getelementptr inbounds %struct.dent* %177, i32 0, i32 2
  %179 = getelementptr inbounds [1 x i64]* %178, i32 0, i64 0
  %180 = load i64* %179, align 8
  %181 = and i64 %180, 805306368
  %182 = icmp eq i64 %181, 805306368
  br i1 %182, label %215, label %183

; <label>:183                                     ; preds = %173
  %184 = load %struct.flagent** %8, align 8
  %185 = icmp eq %struct.flagent* %184, null
  br i1 %185, label %199, label %186

; <label>:186                                     ; preds = %183
  %187 = load %struct.dent** %dent, align 8
  %188 = getelementptr inbounds %struct.dent* %187, i32 0, i32 2
  %189 = getelementptr inbounds [1 x i64]* %188, i32 0, i64 0
  %190 = load i64* %189, align 8
  %191 = load %struct.flagent** %8, align 8
  %192 = getelementptr inbounds %struct.flagent* %191, i32 0, i32 2
  %193 = load i16* %192, align 2
  %194 = sext i16 %193 to i32
  %195 = zext i32 %194 to i64
  %196 = shl i64 1, %195
  %197 = and i64 %190, %196
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %215

; <label>:199                                     ; preds = %186, %183
  %200 = load %struct.flagent** %9, align 8
  %201 = icmp eq %struct.flagent* %200, null
  br i1 %201, label %216, label %202

; <label>:202                                     ; preds = %199
  %203 = load %struct.dent** %dent, align 8
  %204 = getelementptr inbounds %struct.dent* %203, i32 0, i32 2
  %205 = getelementptr inbounds [1 x i64]* %204, i32 0, i64 0
  %206 = load i64* %205, align 8
  %207 = load %struct.flagent** %9, align 8
  %208 = getelementptr inbounds %struct.flagent* %207, i32 0, i32 2
  %209 = load i16* %208, align 2
  %210 = sext i16 %209 to i32
  %211 = zext i32 %210 to i64
  %212 = shl i64 1, %211
  %213 = and i64 %206, %212
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %216, label %215

; <label>:215                                     ; preds = %202, %186, %173
  br label %166

; <label>:216                                     ; preds = %202, %199
  %217 = load i32* %firstisupper, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %246

; <label>:219                                     ; preds = %216
  %220 = load %struct.dent** %dent, align 8
  %221 = getelementptr inbounds %struct.dent* %220, i32 0, i32 2
  %222 = getelementptr inbounds [1 x i64]* %221, i32 0, i64 0
  %223 = load i64* %222, align 8
  %224 = and i64 %223, 805306368
  %225 = icmp eq i64 %224, 536870912
  br i1 %225, label %226, label %245

; <label>:226                                     ; preds = %219
  %227 = getelementptr inbounds [184 x i8]* %newword, i32 0, i32 0
  call void @lowcase(i8* %227)
  %228 = getelementptr inbounds [184 x i8]* %newword, i32 0, i64 0
  %229 = load i8* %228, align 1
  %230 = zext i8 %229 to i64
  %231 = getelementptr inbounds [228 x i8]* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 22), i32 0, i64 %230
  %232 = load i8* %231, align 1
  %233 = getelementptr inbounds [184 x i8]* %newword, i32 0, i64 0
  store i8 %232, i8* %233, align 1
  %234 = load i32** %11, align 8
  %235 = load i32* %234
  %236 = sext i32 %235 to i64
  %237 = load [120 x i8]** %10, align 8
  %238 = getelementptr inbounds [120 x i8]* %237, i64 %236
  %239 = getelementptr inbounds [120 x i8]* %238, i32 0, i32 0
  %240 = getelementptr inbounds [184 x i8]* %newword, i32 0, i32 0
  %241 = call i8* @strcpy(i8* %239, i8* %240) nounwind
  %242 = load i32** %11, align 8
  %243 = load i32* %242
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %242
  br label %537

; <label>:245                                     ; preds = %219
  br label %267

; <label>:246                                     ; preds = %216
  %247 = load %struct.dent** %dent, align 8
  %248 = getelementptr inbounds %struct.dent* %247, i32 0, i32 2
  %249 = getelementptr inbounds [1 x i64]* %248, i32 0, i64 0
  %250 = load i64* %249, align 8
  %251 = and i64 %250, 805306368
  %252 = icmp eq i64 %251, 0
  br i1 %252, label %253, label %266

; <label>:253                                     ; preds = %246
  %254 = getelementptr inbounds [184 x i8]* %newword, i32 0, i32 0
  call void @lowcase(i8* %254)
  %255 = load i32** %11, align 8
  %256 = load i32* %255
  %257 = sext i32 %256 to i64
  %258 = load [120 x i8]** %10, align 8
  %259 = getelementptr inbounds [120 x i8]* %258, i64 %257
  %260 = getelementptr inbounds [120 x i8]* %259, i32 0, i32 0
  %261 = getelementptr inbounds [184 x i8]* %newword, i32 0, i32 0
  %262 = call i8* @strcpy(i8* %260, i8* %261) nounwind
  %263 = load i32** %11, align 8
  %264 = load i32* %263
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %263
  br label %537

; <label>:266                                     ; preds = %246
  br label %267

; <label>:267                                     ; preds = %266, %245
  br label %166

; <label>:268                                     ; preds = %166
  br label %269

; <label>:269                                     ; preds = %268, %102
  %270 = load %struct.dent** %7, align 8
  store %struct.dent* %270, %struct.dent** %dent, align 8
  %271 = load %struct.dent** %dent, align 8
  %272 = getelementptr inbounds %struct.dent* %271, i32 0, i32 1
  %273 = load i8** %272, align 8
  %274 = call i8* @strtosichar(i8* %273, i32 1)
  store i8* %274, i8** %p, align 8
  %275 = load i8** %p, align 8
  %276 = call i64 @strlen(i8* %275) nounwind readonly
  %277 = trunc i64 %276 to i32
  store i32 %277, i32* %len, align 4
  %278 = load %struct.dent** %dent, align 8
  %279 = getelementptr inbounds %struct.dent* %278, i32 0, i32 2
  %280 = getelementptr inbounds [1 x i64]* %279, i32 0, i64 0
  %281 = load i64* %280, align 8
  %282 = and i64 %281, 1073741824
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %288

; <label>:284                                     ; preds = %269
  %285 = load %struct.dent** %dent, align 8
  %286 = getelementptr inbounds %struct.dent* %285, i32 0, i32 0
  %287 = load %struct.dent** %286, align 8
  store %struct.dent* %287, %struct.dent** %dent, align 8
  br label %288

; <label>:288                                     ; preds = %284, %269
  br label %289

; <label>:289                                     ; preds = %532, %288
  %290 = load %struct.flagent** %8, align 8
  %291 = icmp eq %struct.flagent* %290, null
  br i1 %291, label %305, label %292

; <label>:292                                     ; preds = %289
  %293 = load %struct.dent** %dent, align 8
  %294 = getelementptr inbounds %struct.dent* %293, i32 0, i32 2
  %295 = getelementptr inbounds [1 x i64]* %294, i32 0, i64 0
  %296 = load i64* %295, align 8
  %297 = load %struct.flagent** %8, align 8
  %298 = getelementptr inbounds %struct.flagent* %297, i32 0, i32 2
  %299 = load i16* %298, align 2
  %300 = sext i16 %299 to i32
  %301 = zext i32 %300 to i64
  %302 = shl i64 1, %301
  %303 = and i64 %296, %302
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %305, label %524

; <label>:305                                     ; preds = %292, %289
  %306 = load %struct.flagent** %9, align 8
  %307 = icmp eq %struct.flagent* %306, null
  br i1 %307, label %321, label %308

; <label>:308                                     ; preds = %305
  %309 = load %struct.dent** %dent, align 8
  %310 = getelementptr inbounds %struct.dent* %309, i32 0, i32 2
  %311 = getelementptr inbounds [1 x i64]* %310, i32 0, i64 0
  %312 = load i64* %311, align 8
  %313 = load %struct.flagent** %9, align 8
  %314 = getelementptr inbounds %struct.flagent* %313, i32 0, i32 2
  %315 = load i16* %314, align 2
  %316 = sext i16 %315 to i32
  %317 = zext i32 %316 to i64
  %318 = shl i64 1, %317
  %319 = and i64 %312, %318
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %321, label %524

; <label>:321                                     ; preds = %308, %305
  %322 = load %struct.dent** %dent, align 8
  %323 = getelementptr inbounds %struct.dent* %322, i32 0, i32 2
  %324 = getelementptr inbounds [1 x i64]* %323, i32 0, i64 0
  %325 = load i64* %324, align 8
  %326 = and i64 %325, 805306368
  %327 = icmp ne i64 %326, 805306368
  br i1 %327, label %328, label %363

; <label>:328                                     ; preds = %321
  %329 = getelementptr inbounds [184 x i8]* %newword, i32 0, i32 0
  call void @lowcase(i8* %329)
  %330 = load i32* %firstisupper, align 4
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %339, label %332

; <label>:332                                     ; preds = %328
  %333 = load %struct.dent** %dent, align 8
  %334 = getelementptr inbounds %struct.dent* %333, i32 0, i32 2
  %335 = getelementptr inbounds [1 x i64]* %334, i32 0, i64 0
  %336 = load i64* %335, align 8
  %337 = and i64 %336, 805306368
  %338 = icmp eq i64 %337, 536870912
  br i1 %338, label %339, label %346

; <label>:339                                     ; preds = %332, %328
  %340 = getelementptr inbounds [184 x i8]* %newword, i32 0, i64 0
  %341 = load i8* %340, align 1
  %342 = zext i8 %341 to i64
  %343 = getelementptr inbounds [228 x i8]* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 22), i32 0, i64 %342
  %344 = load i8* %343, align 1
  %345 = getelementptr inbounds [184 x i8]* %newword, i32 0, i64 0
  store i8 %344, i8* %345, align 1
  br label %346

; <label>:346                                     ; preds = %339, %332
  %347 = load i32** %11, align 8
  %348 = load i32* %347
  %349 = sext i32 %348 to i64
  %350 = load [120 x i8]** %10, align 8
  %351 = getelementptr inbounds [120 x i8]* %350, i64 %349
  %352 = getelementptr inbounds [120 x i8]* %351, i32 0, i32 0
  %353 = getelementptr inbounds [184 x i8]* %newword, i32 0, i32 0
  %354 = call i8* @strcpy(i8* %352, i8* %353) nounwind
  %355 = load i32** %11, align 8
  %356 = load i32* %355
  %357 = add nsw i32 %356, 1
  store i32 %357, i32* %355
  %358 = load i32** %11, align 8
  %359 = load i32* %358
  %360 = icmp sge i32 %359, 10
  br i1 %360, label %361, label %362

; <label>:361                                     ; preds = %346
  br label %537

; <label>:362                                     ; preds = %346
  br label %523

; <label>:363                                     ; preds = %321
  %364 = load %struct.dent** %dent, align 8
  %365 = getelementptr inbounds %struct.dent* %364, i32 0, i32 1
  %366 = load i8** %365, align 8
  %367 = call i8* @strtosichar(i8* %366, i32 1)
  store i8* %367, i8** %p, align 8
  %368 = load i8** %p, align 8
  %369 = load i32* %3, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds i8* %368, i64 %370
  %372 = getelementptr inbounds [184 x i8]* %newword, i32 0, i32 0
  %373 = load i32* %4, align 4
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds i8* %372, i64 %374
  %376 = load i32* %len, align 4
  %377 = load i32* %3, align 4
  %378 = sub nsw i32 %376, %377
  %379 = load i32* %5, align 4
  %380 = sub nsw i32 %378, %379
  %381 = sext i32 %380 to i64
  %382 = mul i64 %381, 1
  call void @bcopy(i8* %371, i8* %375, i64 %382) nounwind
  %383 = load i32* %3, align 4
  %384 = sext i32 %383 to i64
  %385 = load i8** %p, align 8
  %386 = getelementptr inbounds i8* %385, i64 %384
  %387 = load i8* %386
  %388 = zext i8 %387 to i64
  %389 = getelementptr inbounds [228 x i8]* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 24), i32 0, i64 %388
  %390 = load i8* %389, align 1
  %391 = icmp ne i8 %390, 0
  br i1 %391, label %392, label %412

; <label>:392                                     ; preds = %363
  store i32 0, i32* %i, align 4
  br label %393

; <label>:393                                     ; preds = %408, %392
  %394 = load i32* %i, align 4
  %395 = load i32* %4, align 4
  %396 = icmp slt i32 %394, %395
  br i1 %396, label %397, label %411

; <label>:397                                     ; preds = %393
  %398 = load i32* %i, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds [184 x i8]* %newword, i32 0, i64 %399
  %401 = load i8* %400, align 1
  %402 = zext i8 %401 to i64
  %403 = getelementptr inbounds [228 x i8]* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 22), i32 0, i64 %402
  %404 = load i8* %403, align 1
  %405 = load i32* %i, align 4
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds [184 x i8]* %newword, i32 0, i64 %406
  store i8 %404, i8* %407, align 1
  br label %408

; <label>:408                                     ; preds = %397
  %409 = load i32* %i, align 4
  %410 = add nsw i32 %409, 1
  store i32 %410, i32* %i, align 4
  br label %393

; <label>:411                                     ; preds = %393
  br label %432

; <label>:412                                     ; preds = %363
  store i32 0, i32* %i, align 4
  br label %413

; <label>:413                                     ; preds = %428, %412
  %414 = load i32* %i, align 4
  %415 = load i32* %4, align 4
  %416 = icmp slt i32 %414, %415
  br i1 %416, label %417, label %431

; <label>:417                                     ; preds = %413
  %418 = load i32* %i, align 4
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds [184 x i8]* %newword, i32 0, i64 %419
  %421 = load i8* %420, align 1
  %422 = zext i8 %421 to i64
  %423 = getelementptr inbounds [228 x i8]* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 21), i32 0, i64 %422
  %424 = load i8* %423, align 1
  %425 = load i32* %i, align 4
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds [184 x i8]* %newword, i32 0, i64 %426
  store i8 %424, i8* %427, align 1
  br label %428

; <label>:428                                     ; preds = %417
  %429 = load i32* %i, align 4
  %430 = add nsw i32 %429, 1
  store i32 %430, i32* %i, align 4
  br label %413

; <label>:431                                     ; preds = %413
  br label %432

; <label>:432                                     ; preds = %431, %411
  %433 = load i32* %len, align 4
  %434 = load i32* %4, align 4
  %435 = add nsw i32 %433, %434
  %436 = load i32* %6, align 4
  %437 = add nsw i32 %435, %436
  %438 = load i32* %3, align 4
  %439 = sub nsw i32 %437, %438
  %440 = load i32* %5, align 4
  %441 = sub nsw i32 %439, %440
  store i32 %441, i32* %limit, align 4
  %442 = load i32* %len, align 4
  %443 = load i32* %4, align 4
  %444 = add nsw i32 %442, %443
  %445 = load i32* %3, align 4
  %446 = sub nsw i32 %444, %445
  %447 = load i32* %5, align 4
  %448 = sub nsw i32 %446, %447
  store i32 %448, i32* %i, align 4
  %449 = load i32* %len, align 4
  %450 = load i32* %5, align 4
  %451 = sub nsw i32 %449, %450
  %452 = sub nsw i32 %451, 1
  %453 = load i8** %p, align 8
  %454 = sext i32 %452 to i64
  %455 = getelementptr inbounds i8* %453, i64 %454
  store i8* %455, i8** %p, align 8
  %456 = load i8** %p, align 8
  %457 = load i8* %456
  %458 = zext i8 %457 to i64
  %459 = getelementptr inbounds [228 x i8]* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 24), i32 0, i64 %458
  %460 = load i8* %459, align 1
  %461 = icmp ne i8 %460, 0
  br i1 %461, label %462, label %484

; <label>:462                                     ; preds = %432
  %463 = getelementptr inbounds [184 x i8]* %newword, i32 0, i32 0
  %464 = load i32* %i, align 4
  %465 = sext i32 %464 to i64
  %466 = getelementptr inbounds i8* %463, i64 %465
  store i8* %466, i8** %p, align 8
  br label %467

; <label>:467                                     ; preds = %478, %462
  %468 = load i32* %i, align 4
  %469 = load i32* %limit, align 4
  %470 = icmp slt i32 %468, %469
  br i1 %470, label %471, label %483

; <label>:471                                     ; preds = %467
  %472 = load i8** %p, align 8
  %473 = load i8* %472
  %474 = zext i8 %473 to i64
  %475 = getelementptr inbounds [228 x i8]* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 22), i32 0, i64 %474
  %476 = load i8* %475, align 1
  %477 = load i8** %p, align 8
  store i8 %476, i8* %477
  br label %478

; <label>:478                                     ; preds = %471
  %479 = load i32* %i, align 4
  %480 = add nsw i32 %479, 1
  store i32 %480, i32* %i, align 4
  %481 = load i8** %p, align 8
  %482 = getelementptr inbounds i8* %481, i32 1
  store i8* %482, i8** %p, align 8
  br label %467

; <label>:483                                     ; preds = %467
  br label %506

; <label>:484                                     ; preds = %432
  %485 = getelementptr inbounds [184 x i8]* %newword, i32 0, i32 0
  %486 = load i32* %i, align 4
  %487 = sext i32 %486 to i64
  %488 = getelementptr inbounds i8* %485, i64 %487
  store i8* %488, i8** %p, align 8
  br label %489

; <label>:489                                     ; preds = %500, %484
  %490 = load i32* %i, align 4
  %491 = load i32* %limit, align 4
  %492 = icmp slt i32 %490, %491
  br i1 %492, label %493, label %505

; <label>:493                                     ; preds = %489
  %494 = load i8** %p, align 8
  %495 = load i8* %494
  %496 = zext i8 %495 to i64
  %497 = getelementptr inbounds [228 x i8]* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 21), i32 0, i64 %496
  %498 = load i8* %497, align 1
  %499 = load i8** %p, align 8
  store i8 %498, i8* %499
  br label %500

; <label>:500                                     ; preds = %493
  %501 = load i32* %i, align 4
  %502 = add nsw i32 %501, 1
  store i32 %502, i32* %i, align 4
  %503 = load i8** %p, align 8
  %504 = getelementptr inbounds i8* %503, i32 1
  store i8* %504, i8** %p, align 8
  br label %489

; <label>:505                                     ; preds = %489
  br label %506

; <label>:506                                     ; preds = %505, %483
  %507 = load i32** %11, align 8
  %508 = load i32* %507
  %509 = sext i32 %508 to i64
  %510 = load [120 x i8]** %10, align 8
  %511 = getelementptr inbounds [120 x i8]* %510, i64 %509
  %512 = getelementptr inbounds [120 x i8]* %511, i32 0, i32 0
  %513 = getelementptr inbounds [184 x i8]* %newword, i32 0, i32 0
  %514 = call i8* @strcpy(i8* %512, i8* %513) nounwind
  %515 = load i32** %11, align 8
  %516 = load i32* %515
  %517 = add nsw i32 %516, 1
  store i32 %517, i32* %515
  %518 = load i32** %11, align 8
  %519 = load i32* %518
  %520 = icmp sge i32 %519, 10
  br i1 %520, label %521, label %522

; <label>:521                                     ; preds = %506
  br label %537

; <label>:522                                     ; preds = %506
  br label %523

; <label>:523                                     ; preds = %522, %362
  br label %524

; <label>:524                                     ; preds = %523, %308, %292
  %525 = load %struct.dent** %dent, align 8
  %526 = getelementptr inbounds %struct.dent* %525, i32 0, i32 2
  %527 = getelementptr inbounds [1 x i64]* %526, i32 0, i64 0
  %528 = load i64* %527, align 8
  %529 = and i64 %528, 1073741824
  %530 = icmp eq i64 %529, 0
  br i1 %530, label %531, label %532

; <label>:531                                     ; preds = %524
  br label %536

; <label>:532                                     ; preds = %524
  %533 = load %struct.dent** %dent, align 8
  %534 = getelementptr inbounds %struct.dent* %533, i32 0, i32 0
  %535 = load %struct.dent** %534, align 8
  store %struct.dent* %535, %struct.dent** %dent, align 8
  br label %289

; <label>:536                                     ; preds = %531
  br label %537

; <label>:537                                     ; preds = %536, %521, %361, %253, %226, %151, %124, %70, %34, %15
  ret void
}

define internal i32 @insert(i8* %word) nounwind uwtable {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %i = alloca i32, align 4
  %realword = alloca i8*, align 8
  store i8* %word, i8** %2, align 8
  %3 = load i8** %2, align 8
  %4 = call i8* @ichartosstr(i8* %3, i32 0)
  store i8* %4, i8** %realword, align 8
  store i32 0, i32* %i, align 4
  br label %5

; <label>:5                                       ; preds = %19, %0
  %6 = load i32* %i, align 4
  %7 = load i32* @pcount, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %22

; <label>:9                                       ; preds = %5
  %10 = load i32* %i, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [100 x [120 x i8]]* @possibilities, i32 0, i64 %11
  %13 = getelementptr inbounds [120 x i8]* %12, i32 0, i32 0
  %14 = load i8** %realword, align 8
  %15 = call i32 @strcmp(i8* %13, i8* %14) nounwind readonly
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

; <label>:17                                      ; preds = %9
  store i32 0, i32* %1
  br label %43

; <label>:18                                      ; preds = %9
  br label %19

; <label>:19                                      ; preds = %18
  %20 = load i32* %i, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %i, align 4
  br label %5

; <label>:22                                      ; preds = %5
  %23 = load i32* @pcount, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* @pcount, align 4
  %25 = sext i32 %23 to i64
  %26 = getelementptr inbounds [100 x [120 x i8]]* @possibilities, i32 0, i64 %25
  %27 = getelementptr inbounds [120 x i8]* %26, i32 0, i32 0
  %28 = load i8** %realword, align 8
  %29 = call i8* @strcpy(i8* %27, i8* %28) nounwind
  %30 = load i8** %realword, align 8
  %31 = call i64 @strlen(i8* %30) nounwind readonly
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %i, align 4
  %33 = load i32* %i, align 4
  %34 = load i32* @maxposslen, align 4
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %36, label %38

; <label>:36                                      ; preds = %22
  %37 = load i32* %i, align 4
  store i32 %37, i32* @maxposslen, align 4
  br label %38

; <label>:38                                      ; preds = %36, %22
  %39 = load i32* @pcount, align 4
  %40 = icmp sge i32 %39, 100
  br i1 %40, label %41, label %42

; <label>:41                                      ; preds = %38
  store i32 -1, i32* %1
  br label %43

; <label>:42                                      ; preds = %38
  store i32 0, i32* %1
  br label %43

; <label>:43                                      ; preds = %42, %41, %17
  %44 = load i32* %1
  ret i32 %44
}

define void @askmode() nounwind uwtable {
  %bufsize = alloca i32, align 4
  %ch = alloca i32, align 4
  %cp1 = alloca i8*, align 8
  %cp2 = alloca i8*, align 8
  %itok = alloca i8*, align 8
  %hadnl = alloca i32, align 4
  %1 = load i32* @fflag, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %3, label %13

; <label>:3                                       ; preds = %0
  %4 = load i8** @askfilename, align 8
  %5 = load %struct._IO_FILE** @stdout, align 8
  %6 = call %struct._IO_FILE* @freopen(i8* %4, i8* getelementptr inbounds ([2 x i8]* @.str38, i32 0, i32 0), %struct._IO_FILE* %5)
  %7 = icmp eq %struct._IO_FILE* %6, null
  br i1 %7, label %8, label %12

; <label>:8                                       ; preds = %3
  %9 = load %struct._IO_FILE** @stderr, align 8
  %10 = load i8** @askfilename, align 8
  %11 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([18 x i8]* @.str39, i32 0, i32 0), i8* %10)
  call void @exit(i32 1) noreturn nounwind
  unreachable

; <label>:12                                      ; preds = %3
  br label %13

; <label>:13                                      ; preds = %12, %0
  %14 = load i8** getelementptr inbounds ([40 x i8*]* @Version_ID, i32 0, i64 0), align 8
  %15 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str40, i32 0, i32 0), i8* %14)
  store i32 0, i32* @contextoffset, align 4
  br label %16

; <label>:16                                      ; preds = %229, %13
  %17 = load %struct._IO_FILE** @stdout, align 8
  %18 = call i32 @fflush(%struct._IO_FILE* %17)
  %19 = load i32* @contextoffset, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %27

; <label>:21                                      ; preds = %16
  %22 = load %struct._IO_FILE** @stdin, align 8
  %23 = call i8* @xgets(i8* getelementptr inbounds ([10 x [8192 x i8]]* @contextbufs, i32 0, i64 0, i32 0), i32 4096, %struct._IO_FILE* %22)
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %26

; <label>:25                                      ; preds = %21
  br label %230

; <label>:26                                      ; preds = %21
  br label %33

; <label>:27                                      ; preds = %16
  %28 = load %struct._IO_FILE** @stdin, align 8
  %29 = call i8* @fgets(i8* getelementptr inbounds ([10 x [8192 x i8]]* @contextbufs, i32 0, i64 0, i32 0), i32 4096, %struct._IO_FILE* %28)
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %32

; <label>:31                                      ; preds = %27
  br label %230

; <label>:32                                      ; preds = %27
  br label %33

; <label>:33                                      ; preds = %32, %26
  %34 = call i64 @strlen(i8* getelementptr inbounds ([10 x [8192 x i8]]* @contextbufs, i32 0, i64 0, i32 0)) nounwind readonly
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %bufsize, align 4
  %36 = load i32* %bufsize, align 4
  %37 = sub nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [8192 x i8]* getelementptr inbounds ([10 x [8192 x i8]]* @contextbufs, i32 0, i64 0), i32 0, i64 %38
  %40 = load i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 10
  br i1 %42, label %43, label %48

; <label>:43                                      ; preds = %33
  store i32 1, i32* %hadnl, align 4
  %44 = load i32* %bufsize, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %bufsize, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [8192 x i8]* getelementptr inbounds ([10 x [8192 x i8]]* @contextbufs, i32 0, i64 0), i32 0, i64 %46
  store i8 0, i8* %47, align 1
  br label %49

; <label>:48                                      ; preds = %33
  store i32 0, i32* %hadnl, align 4
  br label %49

; <label>:49                                      ; preds = %48, %43
  %50 = load i32* %bufsize, align 4
  %51 = sext i32 %50 to i64
  %52 = icmp eq i64 %51, 4095
  br i1 %52, label %53, label %109

; <label>:53                                      ; preds = %49
  %54 = load i32* %bufsize, align 4
  %55 = sub nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [8192 x i8]* getelementptr inbounds ([10 x [8192 x i8]]* @contextbufs, i32 0, i64 0), i32 0, i64 %56
  %58 = load i8* %57, align 1
  %59 = zext i8 %58 to i32
  store i32 %59, i32* %ch, align 4
  br label %60

; <label>:60                                      ; preds = %98, %53
  %61 = load i32* %bufsize, align 4
  %62 = sext i32 %61 to i64
  %63 = icmp ult i64 %62, 8191
  br i1 %63, label %64, label %90

; <label>:64                                      ; preds = %60
  %65 = load i32* %ch, align 4
  %66 = trunc i32 %65 to i8
  %67 = zext i8 %66 to i64
  %68 = getelementptr inbounds [228 x i8]* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 23), i32 0, i64 %67
  %69 = load i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %88, label %72

; <label>:72                                      ; preds = %64
  %73 = load i32* %ch, align 4
  %74 = trunc i32 %73 to i8
  %75 = zext i8 %74 to i64
  %76 = getelementptr inbounds [228 x i8]* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 26), i32 0, i64 %75
  %77 = load i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %88, label %80

; <label>:80                                      ; preds = %72
  %81 = load i32* %ch, align 4
  %82 = trunc i32 %81 to i8
  %83 = zext i8 %82 to i64
  %84 = getelementptr inbounds [128 x i8]* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 27), i32 0, i64 %83
  %85 = load i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp ne i32 %86, 0
  br label %88

; <label>:88                                      ; preds = %80, %72, %64
  %89 = phi i1 [ true, %72 ], [ true, %64 ], [ %87, %80 ]
  br label %90

; <label>:90                                      ; preds = %88, %60
  %91 = phi i1 [ false, %60 ], [ %89, %88 ]
  br i1 %91, label %92, label %108

; <label>:92                                      ; preds = %90
  %93 = load %struct._IO_FILE** @stdin, align 8
  %94 = call i32 @_IO_getc(%struct._IO_FILE* %93)
  store i32 %94, i32* %ch, align 4
  %95 = load i32* %ch, align 4
  %96 = icmp eq i32 %95, -1
  br i1 %96, label %97, label %98

; <label>:97                                      ; preds = %92
  br label %108

; <label>:98                                      ; preds = %92
  %99 = load i32* %ch, align 4
  %100 = trunc i32 %99 to i8
  %101 = load i32* %bufsize, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %bufsize, align 4
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds [8192 x i8]* getelementptr inbounds ([10 x [8192 x i8]]* @contextbufs, i32 0, i64 0), i32 0, i64 %103
  store i8 %100, i8* %104, align 1
  %105 = load i32* %bufsize, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [8192 x i8]* getelementptr inbounds ([10 x [8192 x i8]]* @contextbufs, i32 0, i64 0), i32 0, i64 %106
  store i8 0, i8* %107, align 1
  br label %60

; <label>:108                                     ; preds = %97, %90
  br label %109

; <label>:109                                     ; preds = %108, %49
  %110 = load i32* @contextoffset, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

; <label>:112                                     ; preds = %109
  %113 = load %struct._IO_FILE** @stdout, align 8
  call void @checkline(%struct._IO_FILE* %113)
  br label %210

; <label>:114                                     ; preds = %109
  %115 = load i8* getelementptr inbounds ([10 x [8192 x i8]]* @contextbufs, i32 0, i64 0, i64 0), align 1
  %116 = sext i8 %115 to i32
  %117 = icmp eq i32 %116, 42
  br i1 %117, label %122, label %118

; <label>:118                                     ; preds = %114
  %119 = load i8* getelementptr inbounds ([10 x [8192 x i8]]* @contextbufs, i32 0, i64 0, i64 0), align 1
  %120 = sext i8 %119 to i32
  %121 = icmp eq i32 %120, 64
  br i1 %121, label %122, label %129

; <label>:122                                     ; preds = %118, %114
  %123 = call i8* @strtosichar(i8* getelementptr inbounds ([10 x [8192 x i8]]* @contextbufs, i32 0, i64 0, i64 1), i32 0)
  %124 = call i8* @ichartosstr(i8* %123, i32 1)
  %125 = load i8* getelementptr inbounds ([10 x [8192 x i8]]* @contextbufs, i32 0, i64 0, i64 0), align 1
  %126 = sext i8 %125 to i32
  %127 = icmp eq i32 %126, 42
  %128 = zext i1 %127 to i32
  call void @treeinsert(i8* %124, i32 184, i32 %128)
  br label %209

; <label>:129                                     ; preds = %118
  %130 = load i8* getelementptr inbounds ([10 x [8192 x i8]]* @contextbufs, i32 0, i64 0, i64 0), align 1
  %131 = sext i8 %130 to i32
  %132 = icmp eq i32 %131, 38
  br i1 %132, label %133, label %138

; <label>:133                                     ; preds = %129
  %134 = call i8* @strtosichar(i8* getelementptr inbounds ([10 x [8192 x i8]]* @contextbufs, i32 0, i64 0, i64 1), i32 0)
  store i8* %134, i8** %itok, align 8
  %135 = load i8** %itok, align 8
  call void @lowcase(i8* %135)
  %136 = load i8** %itok, align 8
  %137 = call i8* @ichartosstr(i8* %136, i32 1)
  call void @treeinsert(i8* %137, i32 184, i32 1)
  br label %208

; <label>:138                                     ; preds = %129
  %139 = load i8* getelementptr inbounds ([10 x [8192 x i8]]* @contextbufs, i32 0, i64 0, i64 0), align 1
  %140 = sext i8 %139 to i32
  %141 = icmp eq i32 %140, 35
  br i1 %141, label %142, label %143

; <label>:142                                     ; preds = %138
  call void @treeoutput()
  store i32 0, i32* @math_mode, align 4
  store i8 80, i8* @LaTeX_Mode, align 1
  br label %207

; <label>:143                                     ; preds = %138
  %144 = load i8* getelementptr inbounds ([10 x [8192 x i8]]* @contextbufs, i32 0, i64 0, i64 0), align 1
  %145 = sext i8 %144 to i32
  %146 = icmp eq i32 %145, 33
  br i1 %146, label %147, label %148

; <label>:147                                     ; preds = %143
  store i32 1, i32* @terse, align 4
  br label %206

; <label>:148                                     ; preds = %143
  %149 = load i8* getelementptr inbounds ([10 x [8192 x i8]]* @contextbufs, i32 0, i64 0, i64 0), align 1
  %150 = sext i8 %149 to i32
  %151 = icmp eq i32 %150, 37
  br i1 %151, label %152, label %153

; <label>:152                                     ; preds = %148
  store i32 0, i32* @terse, align 4
  br label %205

; <label>:153                                     ; preds = %148
  %154 = load i8* getelementptr inbounds ([10 x [8192 x i8]]* @contextbufs, i32 0, i64 0, i64 0), align 1
  %155 = sext i8 %154 to i32
  %156 = icmp eq i32 %155, 45
  br i1 %156, label %157, label %158

; <label>:157                                     ; preds = %153
  store i32 0, i32* @math_mode, align 4
  store i8 80, i8* @LaTeX_Mode, align 1
  store i32 0, i32* @tflag, align 4
  br label %204

; <label>:158                                     ; preds = %153
  %159 = load i8* getelementptr inbounds ([10 x [8192 x i8]]* @contextbufs, i32 0, i64 0, i64 0), align 1
  %160 = sext i8 %159 to i32
  %161 = icmp eq i32 %160, 43
  br i1 %161, label %162, label %171

; <label>:162                                     ; preds = %158
  store i32 0, i32* @math_mode, align 4
  store i8 80, i8* @LaTeX_Mode, align 1
  %163 = call i32 @strcmp(i8* getelementptr inbounds ([10 x [8192 x i8]]* @contextbufs, i32 0, i64 0, i64 1), i8* getelementptr inbounds ([6 x i8]* @.str41, i32 0, i32 0)) nounwind readonly
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %168

; <label>:165                                     ; preds = %162
  %166 = call i32 @strcmp(i8* getelementptr inbounds ([10 x [8192 x i8]]* @contextbufs, i32 0, i64 0, i64 1), i8* getelementptr inbounds ([6 x i8]* @.str42, i32 0, i32 0)) nounwind readonly
  %167 = icmp ne i32 %166, 0
  br label %168

; <label>:168                                     ; preds = %165, %162
  %169 = phi i1 [ false, %162 ], [ %167, %165 ]
  %170 = zext i1 %169 to i32
  store i32 %170, i32* @tflag, align 4
  br label %203

; <label>:171                                     ; preds = %158
  %172 = load i8* getelementptr inbounds ([10 x [8192 x i8]]* @contextbufs, i32 0, i64 0, i64 0), align 1
  %173 = sext i8 %172 to i32
  %174 = icmp eq i32 %173, 126
  br i1 %174, label %175, label %181

; <label>:175                                     ; preds = %171
  %176 = call i32 @findfiletype(i8* getelementptr inbounds ([10 x [8192 x i8]]* @contextbufs, i32 0, i64 0, i64 1), i32 1, i32* null)
  store i32 %176, i32* @defdupchar, align 4
  %177 = load i32* @defdupchar, align 4
  %178 = icmp slt i32 %177, 0
  br i1 %178, label %179, label %180

; <label>:179                                     ; preds = %175
  store i32 0, i32* @defdupchar, align 4
  br label %180

; <label>:180                                     ; preds = %179, %175
  br label %202

; <label>:181                                     ; preds = %171
  %182 = load i8* getelementptr inbounds ([10 x [8192 x i8]]* @contextbufs, i32 0, i64 0, i64 0), align 1
  %183 = sext i8 %182 to i32
  %184 = icmp eq i32 %183, 94
  br i1 %184, label %185, label %200

; <label>:185                                     ; preds = %181
  store i8* getelementptr inbounds ([10 x [8192 x i8]]* @contextbufs, i32 0, i64 0, i32 0), i8** %cp1, align 8
  store i8* getelementptr inbounds ([10 x [8192 x i8]]* @contextbufs, i32 0, i64 0, i64 1), i8** %cp2, align 8
  br label %186

; <label>:186                                     ; preds = %194, %185
  %187 = load i8** %cp2, align 8
  %188 = getelementptr inbounds i8* %187, i32 1
  store i8* %188, i8** %cp2, align 8
  %189 = load i8* %187
  %190 = load i8** %cp1, align 8
  %191 = getelementptr inbounds i8* %190, i32 1
  store i8* %191, i8** %cp1, align 8
  store i8 %189, i8* %190
  %192 = sext i8 %189 to i32
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %195

; <label>:194                                     ; preds = %186
  br label %186

; <label>:195                                     ; preds = %186
  %196 = load i32* @contextoffset, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* @contextoffset, align 4
  %198 = load i32* %bufsize, align 4
  %199 = add nsw i32 %198, -1
  store i32 %199, i32* %bufsize, align 4
  br label %200

; <label>:200                                     ; preds = %195, %181
  %201 = load %struct._IO_FILE** @stdout, align 8
  call void @checkline(%struct._IO_FILE* %201)
  br label %202

; <label>:202                                     ; preds = %200, %180
  br label %203

; <label>:203                                     ; preds = %202, %168
  br label %204

; <label>:204                                     ; preds = %203, %157
  br label %205

; <label>:205                                     ; preds = %204, %152
  br label %206

; <label>:206                                     ; preds = %205, %147
  br label %207

; <label>:207                                     ; preds = %206, %142
  br label %208

; <label>:208                                     ; preds = %207, %133
  br label %209

; <label>:209                                     ; preds = %208, %122
  br label %210

; <label>:210                                     ; preds = %209, %112
  %211 = load i32* %hadnl, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %214

; <label>:213                                     ; preds = %210
  store i32 0, i32* @contextoffset, align 4
  br label %218

; <label>:214                                     ; preds = %210
  %215 = load i32* %bufsize, align 4
  %216 = load i32* @contextoffset, align 4
  %217 = add nsw i32 %216, %215
  store i32 %217, i32* @contextoffset, align 4
  br label %218

; <label>:218                                     ; preds = %214, %213
  %219 = load i32* @sflag, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %229

; <label>:221                                     ; preds = %218
  call void @stop()
  %222 = load i32* @fflag, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %228

; <label>:224                                     ; preds = %221
  %225 = load %struct._IO_FILE** @stdout, align 8
  call void @rewind(%struct._IO_FILE* %225)
  %226 = load i8** @askfilename, align 8
  %227 = call i32 (...)* @creat(i8* %226, i32 438)
  br label %228

; <label>:228                                     ; preds = %224, %221
  br label %229

; <label>:229                                     ; preds = %228, %218
  br label %16

; <label>:230                                     ; preds = %31, %25
  ret void
}

declare %struct._IO_FILE* @freopen(i8*, i8*, %struct._IO_FILE*)

declare void @exit(i32) noreturn nounwind

declare i8* @xgets(i8*, i32, %struct._IO_FILE*)

declare void @treeoutput()

declare i32 @strcmp(i8*, i8*) nounwind readonly

declare i32 @findfiletype(i8*, i32, i32*)

declare void @rewind(%struct._IO_FILE*)

declare i32 @creat(...)

define void @copyout(i8** %cc, i32 %cnt) nounwind uwtable {
  %1 = alloca i8**, align 8
  %2 = alloca i32, align 4
  store i8** %cc, i8*** %1, align 8
  store i32 %cnt, i32* %2, align 4
  br label %3

; <label>:3                                       ; preds = %27, %0
  %4 = load i32* %2, align 4
  %5 = add nsw i32 %4, -1
  store i32 %5, i32* %2, align 4
  %6 = icmp sge i32 %5, 0
  br i1 %6, label %7, label %31

; <label>:7                                       ; preds = %3
  %8 = load i8*** %1, align 8
  %9 = load i8** %8
  %10 = load i8* %9
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

; <label>:13                                      ; preds = %7
  br label %31

; <label>:14                                      ; preds = %7
  %15 = load i32* @aflag, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %27, label %17

; <label>:17                                      ; preds = %14
  %18 = load i32* @lflag, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %27, label %20

; <label>:20                                      ; preds = %17
  %21 = load i8*** %1, align 8
  %22 = load i8** %21
  %23 = load i8* %22
  %24 = sext i8 %23 to i32
  %25 = load %struct._IO_FILE** @outfile, align 8
  %26 = call i32 @_IO_putc(i32 %24, %struct._IO_FILE* %25)
  br label %27

; <label>:27                                      ; preds = %20, %17, %14
  %28 = load i8*** %1, align 8
  %29 = load i8** %28
  %30 = getelementptr inbounds i8* %29, i32 1
  store i8* %30, i8** %28
  br label %3

; <label>:31                                      ; preds = %13, %3
  ret void
}

declare i32 @_IO_putc(i32, %struct._IO_FILE*)

declare i32 @sprintf(i8*, i8*, ...) nounwind

declare i8* @strcat(i8*, i8*) nounwind

declare void @backup()

declare void @upcase(i8*)

declare void @bcopy(i8*, i8*, i64) nounwind

define internal i32 @ins_cap(i8* %word, i8* %pattern) nounwind uwtable {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %i = alloca i32, align 4
  %nsaved = alloca i32, align 4
  %savearea = alloca [10 x [120 x i8]], align 16
  store i8* %word, i8** %2, align 8
  store i8* %pattern, i8** %3, align 8
  %4 = load i8** %2, align 8
  %5 = load i8** %3, align 8
  %6 = getelementptr inbounds [10 x [120 x i8]]* %savearea, i32 0, i32 0
  %7 = call i32 @save_cap(i8* %4, i8* %5, [120 x i8]* %6)
  store i32 %7, i32* %nsaved, align 4
  store i32 0, i32* %i, align 4
  br label %8

; <label>:8                                       ; preds = %21, %0
  %9 = load i32* %i, align 4
  %10 = load i32* %nsaved, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %24

; <label>:12                                      ; preds = %8
  %13 = load i32* %i, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [10 x [120 x i8]]* %savearea, i32 0, i64 %14
  %16 = getelementptr inbounds [120 x i8]* %15, i32 0, i32 0
  %17 = call i32 (...)* bitcast (i32 (i8*)* @insert to i32 (...)*)(i8* %16)
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

; <label>:19                                      ; preds = %12
  store i32 -1, i32* %1
  br label %25

; <label>:20                                      ; preds = %12
  br label %21

; <label>:21                                      ; preds = %20
  %22 = load i32* %i, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %i, align 4
  br label %8

; <label>:24                                      ; preds = %8
  store i32 0, i32* %1
  br label %25

; <label>:25                                      ; preds = %24, %19
  %26 = load i32* %1
  ret i32 %26
}

define internal i32 @save_cap(i8* %word, i8* %pattern, [120 x i8]* %savearea) nounwind uwtable {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca [120 x i8]*, align 8
  %hitno = alloca i32, align 4
  %nsaved = alloca i32, align 4
  %preadd = alloca i32, align 4
  %prestrip = alloca i32, align 4
  %sufadd = alloca i32, align 4
  %sufstrip = alloca i32, align 4
  store i8* %word, i8** %2, align 8
  store i8* %pattern, i8** %3, align 8
  store [120 x i8]* %savearea, [120 x i8]** %4, align 8
  %5 = load i8** %2, align 8
  %6 = load i8* %5
  %7 = zext i8 %6 to i32
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %0
  store i32 0, i32* %1
  br label %96

; <label>:10                                      ; preds = %0
  %11 = load i32* @numhits, align 4
  store i32 %11, i32* %hitno, align 4
  store i32 0, i32* %nsaved, align 4
  br label %12

; <label>:12                                      ; preds = %71, %10
  %13 = load i32* %hitno, align 4
  %14 = add nsw i32 %13, -1
  store i32 %14, i32* %hitno, align 4
  %15 = icmp sge i32 %14, 0
  br i1 %15, label %16, label %19

; <label>:16                                      ; preds = %12
  %17 = load i32* %nsaved, align 4
  %18 = icmp slt i32 %17, 10
  br label %19

; <label>:19                                      ; preds = %16, %12
  %20 = phi i1 [ false, %12 ], [ %18, %16 ]
  br i1 %20, label %21, label %94

; <label>:21                                      ; preds = %19
  %22 = load i32* %hitno, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [10 x %struct.success]* @hits, i32 0, i64 %23
  %25 = getelementptr inbounds %struct.success* %24, i32 0, i32 1
  %26 = load %struct.flagent** %25, align 8
  %27 = icmp ne %struct.flagent* %26, null
  br i1 %27, label %28, label %45

; <label>:28                                      ; preds = %21
  %29 = load i32* %hitno, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [10 x %struct.success]* @hits, i32 0, i64 %30
  %32 = getelementptr inbounds %struct.success* %31, i32 0, i32 1
  %33 = load %struct.flagent** %32, align 8
  %34 = getelementptr inbounds %struct.flagent* %33, i32 0, i32 3
  %35 = load i16* %34, align 2
  %36 = sext i16 %35 to i32
  store i32 %36, i32* %prestrip, align 4
  %37 = load i32* %hitno, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [10 x %struct.success]* @hits, i32 0, i64 %38
  %40 = getelementptr inbounds %struct.success* %39, i32 0, i32 1
  %41 = load %struct.flagent** %40, align 8
  %42 = getelementptr inbounds %struct.flagent* %41, i32 0, i32 4
  %43 = load i16* %42, align 2
  %44 = sext i16 %43 to i32
  store i32 %44, i32* %preadd, align 4
  br label %46

; <label>:45                                      ; preds = %21
  store i32 0, i32* %preadd, align 4
  store i32 0, i32* %prestrip, align 4
  br label %46

; <label>:46                                      ; preds = %45, %28
  %47 = load i32* %hitno, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [10 x %struct.success]* @hits, i32 0, i64 %48
  %50 = getelementptr inbounds %struct.success* %49, i32 0, i32 2
  %51 = load %struct.flagent** %50, align 8
  %52 = icmp ne %struct.flagent* %51, null
  br i1 %52, label %53, label %70

; <label>:53                                      ; preds = %46
  %54 = load i32* %hitno, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [10 x %struct.success]* @hits, i32 0, i64 %55
  %57 = getelementptr inbounds %struct.success* %56, i32 0, i32 2
  %58 = load %struct.flagent** %57, align 8
  %59 = getelementptr inbounds %struct.flagent* %58, i32 0, i32 3
  %60 = load i16* %59, align 2
  %61 = sext i16 %60 to i32
  store i32 %61, i32* %sufstrip, align 4
  %62 = load i32* %hitno, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [10 x %struct.success]* @hits, i32 0, i64 %63
  %65 = getelementptr inbounds %struct.success* %64, i32 0, i32 2
  %66 = load %struct.flagent** %65, align 8
  %67 = getelementptr inbounds %struct.flagent* %66, i32 0, i32 4
  %68 = load i16* %67, align 2
  %69 = sext i16 %68 to i32
  store i32 %69, i32* %sufadd, align 4
  br label %71

; <label>:70                                      ; preds = %46
  store i32 0, i32* %sufstrip, align 4
  store i32 0, i32* %sufadd, align 4
  br label %71

; <label>:71                                      ; preds = %70, %53
  %72 = load i8** %2, align 8
  %73 = load i8** %3, align 8
  %74 = load i32* %prestrip, align 4
  %75 = load i32* %preadd, align 4
  %76 = load i32* %sufstrip, align 4
  %77 = load i32* %sufadd, align 4
  %78 = load i32* %hitno, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [10 x %struct.success]* @hits, i32 0, i64 %79
  %81 = getelementptr inbounds %struct.success* %80, i32 0, i32 0
  %82 = load %struct.dent** %81, align 8
  %83 = load i32* %hitno, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [10 x %struct.success]* @hits, i32 0, i64 %84
  %86 = getelementptr inbounds %struct.success* %85, i32 0, i32 1
  %87 = load %struct.flagent** %86, align 8
  %88 = load i32* %hitno, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [10 x %struct.success]* @hits, i32 0, i64 %89
  %91 = getelementptr inbounds %struct.success* %90, i32 0, i32 2
  %92 = load %struct.flagent** %91, align 8
  %93 = load [120 x i8]** %4, align 8
  call void @save_root_cap(i8* %72, i8* %73, i32 %74, i32 %75, i32 %76, i32 %77, %struct.dent* %82, %struct.flagent* %87, %struct.flagent* %92, [120 x i8]* %93, i32* %nsaved)
  br label %12

; <label>:94                                      ; preds = %19
  %95 = load i32* %nsaved, align 4
  store i32 %95, i32* %1
  br label %96

; <label>:96                                      ; preds = %94, %9
  %97 = load i32* %1
  ret i32 %97
}

declare i8* @skipoverword(i8*)

define internal i32 @show_char(i8** %cp, i32 %linew, i32 %output, i32 %maxw) nounwind uwtable {
  %1 = alloca i32, align 4
  %2 = alloca i8**, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %ch = alloca i32, align 4
  %i = alloca i32, align 4
  %len = alloca i32, align 4
  %ichar = alloca i8, align 1
  %width = alloca i32, align 4
  store i8** %cp, i8*** %2, align 8
  store i32 %linew, i32* %3, align 4
  store i32 %output, i32* %4, align 4
  store i32 %maxw, i32* %5, align 4
  %6 = load i8*** %2, align 8
  %7 = load i8** %6
  %8 = load i8* %7
  %9 = zext i8 %8 to i32
  store i32 %9, i32* %ch, align 4
  store i32 1, i32* %len, align 4
  %10 = load i8*** %2, align 8
  %11 = load i8** %10
  %12 = load i8* %11
  %13 = zext i8 %12 to i64
  %14 = getelementptr inbounds [128 x i8]* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 27), i32 0, i64 %13
  %15 = load i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %28

; <label>:18                                      ; preds = %0
  %19 = load i8*** %2, align 8
  %20 = load i8** %19
  %21 = call i32 @stringcharlen(i8* %20, i32 0)
  store i32 %21, i32* %len, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %24

; <label>:23                                      ; preds = %18
  br label %25

; <label>:24                                      ; preds = %18
  store i32 1, i32* %len, align 4
  br label %25

; <label>:25                                      ; preds = %24, %23
  %26 = phi i32 [ 1, %23 ], [ 0, %24 ]
  %27 = icmp ne i32 %26, 0
  br label %28

; <label>:28                                      ; preds = %25, %0
  %29 = phi i1 [ false, %0 ], [ %27, %25 ]
  br i1 %29, label %30, label %34

; <label>:30                                      ; preds = %28
  %31 = load i32* @laststringch, align 4
  %32 = add i32 128, %31
  %33 = trunc i32 %32 to i8
  store i8 %33, i8* %ichar, align 1
  br label %37

; <label>:34                                      ; preds = %28
  %35 = load i32* %ch, align 4
  %36 = trunc i32 %35 to i8
  store i8 %36, i8* %ichar, align 1
  br label %37

; <label>:37                                      ; preds = %34, %30
  %38 = load i32* @vflag, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %60, label %40

; <label>:40                                      ; preds = %37
  %41 = load i8* %ichar, align 1
  %42 = zext i8 %41 to i64
  %43 = getelementptr inbounds [228 x i8]* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 23), i32 0, i64 %42
  %44 = load i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %60

; <label>:47                                      ; preds = %40
  %48 = load i32* %len, align 4
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %60

; <label>:50                                      ; preds = %47
  %51 = load i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

; <label>:53                                      ; preds = %50
  %54 = load i32* %ch, align 4
  %55 = call i32 @putchar(i32 %54)
  br label %56

; <label>:56                                      ; preds = %53, %50
  %57 = load i8*** %2, align 8
  %58 = load i8** %57
  %59 = getelementptr inbounds i8* %58, i32 1
  store i8* %59, i8** %57
  store i32 1, i32* %1
  br label %147

; <label>:60                                      ; preds = %47, %40, %37
  %61 = load i32* %ch, align 4
  %62 = icmp eq i32 %61, 9
  br i1 %62, label %63, label %75

; <label>:63                                      ; preds = %60
  %64 = load i32* %4, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

; <label>:66                                      ; preds = %63
  %67 = call i32 @putchar(i32 9)
  br label %68

; <label>:68                                      ; preds = %66, %63
  %69 = load i8*** %2, align 8
  %70 = load i8** %69
  %71 = getelementptr inbounds i8* %70, i32 1
  store i8* %71, i8** %69
  %72 = load i32* %3, align 4
  %73 = and i32 %72, 7
  %74 = sub nsw i32 8, %73
  store i32 %74, i32* %1
  br label %147

; <label>:75                                      ; preds = %60
  store i32 0, i32* %width, align 4
  %76 = load i32* %5, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

; <label>:78                                      ; preds = %75
  %79 = load i32* %len, align 4
  %80 = load i32* %5, align 4
  %81 = icmp sgt i32 %79, %80
  br i1 %81, label %82, label %84

; <label>:82                                      ; preds = %78
  %83 = load i32* %5, align 4
  store i32 %83, i32* %len, align 4
  br label %84

; <label>:84                                      ; preds = %82, %78, %75
  store i32 0, i32* %i, align 4
  br label %85

; <label>:85                                      ; preds = %142, %84
  %86 = load i32* %i, align 4
  %87 = load i32* %len, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %145

; <label>:89                                      ; preds = %85
  %90 = load i8*** %2, align 8
  %91 = load i8** %90
  %92 = getelementptr inbounds i8* %91, i32 1
  store i8* %92, i8** %90
  %93 = load i8* %91
  %94 = zext i8 %93 to i32
  store i32 %94, i32* %ch, align 4
  %95 = load i32* %ch, align 4
  %96 = icmp sgt i32 %95, 127
  br i1 %96, label %97, label %108

; <label>:97                                      ; preds = %89
  %98 = load i32* %4, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

; <label>:100                                     ; preds = %97
  %101 = call i32 @putchar(i32 77)
  %102 = call i32 @putchar(i32 45)
  br label %103

; <label>:103                                     ; preds = %100, %97
  %104 = load i32* %width, align 4
  %105 = add nsw i32 %104, 2
  store i32 %105, i32* %width, align 4
  %106 = load i32* %ch, align 4
  %107 = and i32 %106, 127
  store i32 %107, i32* %ch, align 4
  br label %108

; <label>:108                                     ; preds = %103, %89
  %109 = load i32* %ch, align 4
  %110 = icmp slt i32 %109, 32
  br i1 %110, label %114, label %111

; <label>:111                                     ; preds = %108
  %112 = load i32* %ch, align 4
  %113 = icmp eq i32 %112, 127
  br i1 %113, label %114, label %132

; <label>:114                                     ; preds = %111, %108
  %115 = load i32* %4, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %129

; <label>:117                                     ; preds = %114
  %118 = call i32 @putchar(i32 94)
  %119 = load i32* %ch, align 4
  %120 = icmp eq i32 %119, 127
  br i1 %120, label %121, label %123

; <label>:121                                     ; preds = %117
  %122 = call i32 @putchar(i32 63)
  br label %128

; <label>:123                                     ; preds = %117
  %124 = load i32* %ch, align 4
  %125 = add nsw i32 %124, 65
  %126 = sub nsw i32 %125, 1
  %127 = call i32 @putchar(i32 %126)
  br label %128

; <label>:128                                     ; preds = %123, %121
  br label %129

; <label>:129                                     ; preds = %128, %114
  %130 = load i32* %width, align 4
  %131 = add nsw i32 %130, 2
  store i32 %131, i32* %width, align 4
  br label %141

; <label>:132                                     ; preds = %111
  %133 = load i32* %4, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %138

; <label>:135                                     ; preds = %132
  %136 = load i32* %ch, align 4
  %137 = call i32 @putchar(i32 %136)
  br label %138

; <label>:138                                     ; preds = %135, %132
  %139 = load i32* %width, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %width, align 4
  br label %141

; <label>:141                                     ; preds = %138, %129
  br label %142

; <label>:142                                     ; preds = %141
  %143 = load i32* %i, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %i, align 4
  br label %85

; <label>:145                                     ; preds = %85
  %146 = load i32* %width, align 4
  store i32 %146, i32* %1
  br label %147

; <label>:147                                     ; preds = %145, %68, %56
  %148 = load i32* %1
  ret i32 %148
}

declare i32 @stringcharlen(i8*, i32)

declare void @inverse()

declare void @normal()
