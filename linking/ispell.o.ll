; ModuleID = 'ispell.o'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.hashheader = type { i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i8], [13 x i8], i8, i8, i8, [228 x i16], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [128 x i8], [100 x [11 x i8]], [100 x i32], [100 x i32], i16 }
%struct.success = type { %struct.dent*, %struct.flagent*, %struct.flagent* }
%struct.dent = type { %struct.dent*, i8*, [1 x i64] }
%struct.flagent = type { i8*, i8*, i16, i16, i16, i16, i16, [228 x i8] }
%struct.flagptr = type { %union.ptr_union, i32 }
%union.ptr_union = type { %struct.flagptr* }
%struct.strchartype = type { i8*, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@minimenusize = global i32 2, align 4
@eflag = global i32 0, align 4
@dumpflag = global i32 0, align 4
@fflag = global i32 0, align 4
@sflag = global i32 0, align 4
@vflag = global i32 0, align 4
@xflag = global i32 0, align 4
@deftflag = global i32 -1, align 4
@tflag = global i32 0, align 4
@prefstringchar = global i32 -1, align 4
@terse = global i32 0, align 4
@tempfile = global [4096 x i8] zeroinitializer, align 16
@minword = global i32 1, align 4
@sortit = global i32 1, align 4
@compoundflag = global i32 -1, align 4
@tryhardflag = global i32 -1, align 4
@currentfile = global i8* null, align 8
@math_mode = global i32 0, align 4
@LaTeX_Mode = global i8 80, align 1
@main.libdictname = internal global [13 x i8] zeroinitializer, align 1
@main.outbuf = internal global [8192 x i8] zeroinitializer, align 16
@Cmd = internal global i8* null, align 8
@Trynum = common global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"DICTIONARY\00", align 1
@hashname = common global [4096 x i8] zeroinitializer, align 16
@.str1 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str2 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str3 = private unnamed_addr constant [6 x i8] c".hash\00", align 1
@LibDict = internal global i8* null, align 8
@.str4 = private unnamed_addr constant [13 x i8] c"english.hash\00", align 1
@Version_ID = internal global [40 x i8*] [i8* getelementptr inbounds ([50 x i8]* @.str146, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8]* @.str147, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8]* @.str148, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8]* @.str149, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str150, i32 0, i32 0), i8* getelementptr inbounds ([72 x i8]* @.str151, i32 0, i32 0), i8* getelementptr inbounds ([72 x i8]* @.str152, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @.str153, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str150, i32 0, i32 0), i8* getelementptr inbounds ([71 x i8]* @.str154, i32 0, i32 0), i8* getelementptr inbounds ([70 x i8]* @.str155, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8]* @.str156, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8]* @.str157, i32 0, i32 0), i8* getelementptr inbounds ([72 x i8]* @.str158, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8]* @.str159, i32 0, i32 0), i8* getelementptr inbounds ([71 x i8]* @.str160, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8]* @.str161, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8]* @.str162, i32 0, i32 0), i8* getelementptr inbounds ([63 x i8]* @.str163, i32 0, i32 0), i8* getelementptr inbounds ([69 x i8]* @.str164, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8]* @.str165, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8]* @.str166, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8]* @.str167, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8]* @.str168, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8]* @.str169, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8]* @.str170, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str150, i32 0, i32 0), i8* getelementptr inbounds ([71 x i8]* @.str171, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8]* @.str172, i32 0, i32 0), i8* getelementptr inbounds ([71 x i8]* @.str173, i32 0, i32 0), i8* getelementptr inbounds ([71 x i8]* @.str174, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8]* @.str175, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8]* @.str176, i32 0, i32 0), i8* getelementptr inbounds ([72 x i8]* @.str177, i32 0, i32 0), i8* getelementptr inbounds ([72 x i8]* @.str178, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8]* @.str179, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8]* @.str180, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8]* @.str181, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8]* @.str182, i32 0, i32 0), i8* null], align 16
@.str5 = private unnamed_addr constant [5 x i8] c"(#) \00", align 1
@.str6 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str7 = private unnamed_addr constant [22 x i8] c"Compiled-in options:\0A\00", align 1
@.str8 = private unnamed_addr constant [13 x i8] c"\09!USG (BSD)\0A\00", align 1
@.str9 = private unnamed_addr constant [16 x i8] c"\09BAKEXT = \22%s\22\0A\00", align 1
@.str10 = private unnamed_addr constant [5 x i8] c".bak\00", align 1
@.str11 = private unnamed_addr constant [16 x i8] c"\09BINDIR = \22%s\22\0A\00", align 1
@.str12 = private unnamed_addr constant [15 x i8] c"/usr/local/bin\00", align 1
@.str13 = private unnamed_addr constant [17 x i8] c"\09!BOTTOMCONTEXT\0A\00", align 1
@.str14 = private unnamed_addr constant [9 x i8] c"\09CBREAK\0A\00", align 1
@.str15 = private unnamed_addr constant [12 x i8] c"\09CC = \22%s\22\0A\00", align 1
@.str16 = private unnamed_addr constant [3 x i8] c"cc\00", align 1
@.str17 = private unnamed_addr constant [16 x i8] c"\09CFLAGS = \22%s\22\0A\00", align 1
@.str18 = private unnamed_addr constant [3 x i8] c"-O\00", align 1
@.str19 = private unnamed_addr constant [19 x i8] c"\09!COMMANDFORSPACE\0A\00", align 1
@.str20 = private unnamed_addr constant [18 x i8] c"\09!CONTEXTROUNDUP\0A\00", align 1
@.str21 = private unnamed_addr constant [18 x i8] c"\09CONTEXTPCT = %d\0A\00", align 1
@.str22 = private unnamed_addr constant [21 x i8] c"\09COUNTSUFFIX = \22%s\22\0A\00", align 1
@.str23 = private unnamed_addr constant [5 x i8] c".cnt\00", align 1
@.str24 = private unnamed_addr constant [17 x i8] c"\09DEFHASH = \22%s\22\0A\00", align 1
@.str25 = private unnamed_addr constant [19 x i8] c"\09DEFINCSTR = \22%s\22\0A\00", align 1
@.str26 = private unnamed_addr constant [15 x i8] c"&Include_File&\00", align 1
@.str27 = private unnamed_addr constant [17 x i8] c"\09DEFLANG = \22%s\22\0A\00", align 1
@.str28 = private unnamed_addr constant [12 x i8] c"english.aff\00", align 1
@.str29 = private unnamed_addr constant [23 x i8] c"\09DEFNOBACKUPFLAG = %d\0A\00", align 1
@.str30 = private unnamed_addr constant [17 x i8] c"\09DEFPAFF = \22%s\22\0A\00", align 1
@.str31 = private unnamed_addr constant [6 x i8] c"words\00", align 1
@.str32 = private unnamed_addr constant [18 x i8] c"\09DEFPDICT = \22%s\22\0A\00", align 1
@.str33 = private unnamed_addr constant [9 x i8] c".ispell_\00", align 1
@.str34 = private unnamed_addr constant [18 x i8] c"\09DEFTEXFLAG = %d\0A\00", align 1
@.str35 = private unnamed_addr constant [18 x i8] c"\09EGREPCMD = \22%s\22\0A\00", align 1
@.str36 = private unnamed_addr constant [18 x i8] c"/usr/bin/egrep -i\00", align 1
@.str37 = private unnamed_addr constant [18 x i8] c"\09ELISPDIR = \22%s\22\0A\00", align 1
@.str38 = private unnamed_addr constant [31 x i8] c"/usr/local/lib/emacs/site-lisp\00", align 1
@.str39 = private unnamed_addr constant [15 x i8] c"\09EMACS = \22%s\22\0A\00", align 1
@.str40 = private unnamed_addr constant [6 x i8] c"emacs\00", align 1
@.str41 = private unnamed_addr constant [17 x i8] c"\09!EQUAL_COLUMNS\0A\00", align 1
@.str42 = private unnamed_addr constant [27 x i8] c"\09!GENERATE_LIBRARY_PROTOS\0A\00", align 1
@.str43 = private unnamed_addr constant [14 x i8] c"\09!HAS_RENAME\0A\00", align 1
@.str44 = private unnamed_addr constant [20 x i8] c"\09HASHSUFFIX = \22%s\22\0A\00", align 1
@.str45 = private unnamed_addr constant [14 x i8] c"\09HOME = \22%s\22\0A\00", align 1
@.str46 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str47 = private unnamed_addr constant [13 x i8] c"\09!IGNOREBIB\0A\00", align 1
@.str48 = private unnamed_addr constant [19 x i8] c"\09INCSTRVAR = \22%s\22\0A\00", align 1
@.str49 = private unnamed_addr constant [15 x i8] c"INCLUDE_STRING\00", align 1
@.str50 = private unnamed_addr constant [20 x i8] c"\09INPUTWORDLEN = %d\0A\00", align 1
@.str51 = private unnamed_addr constant [19 x i8] c"\09LANGUAGES = \22%s\22\0A\00", align 1
@.str52 = private unnamed_addr constant [81 x i8] c"{american,MASTERDICTS=american.med+,HASHFILES=americanmed+.hash,EXTRADICT=words}\00", align 1
@.str53 = private unnamed_addr constant [16 x i8] c"\09LIBDIR = \22%s\22\0A\00", align 1
@.str54 = private unnamed_addr constant [15 x i8] c"\09LIBES = \22%s\22\0A\00", align 1
@.str55 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str56 = private unnamed_addr constant [14 x i8] c"\09LINT = \22%s\22\0A\00", align 1
@.str57 = private unnamed_addr constant [5 x i8] c"lint\00", align 1
@.str58 = private unnamed_addr constant [19 x i8] c"\09LINTFLAGS = \22%s\22\0A\00", align 1
@.str59 = private unnamed_addr constant [14 x i8] c"\09LOOK = \22%s\22\0A\00", align 1
@.str60 = private unnamed_addr constant [9 x i8] c"look -df\00", align 1
@.str61 = private unnamed_addr constant [22 x i8] c"\09MAKE_SORTTMP = \22%s\22\0A\00", align 1
@.str62 = private unnamed_addr constant [18 x i8] c"-T ${TMPDIR-/tmp}\00", align 1
@.str63 = private unnamed_addr constant [24 x i8] c"\09MALLOC_INCREMENT = %d\0A\00", align 1
@.str64 = private unnamed_addr constant [17 x i8] c"\09MAN1DIR = \22%s\22\0A\00", align 1
@.str65 = private unnamed_addr constant [20 x i8] c"/usr/local/man/man1\00", align 1
@.str66 = private unnamed_addr constant [17 x i8] c"\09MAN1EXT = \22%s\22\0A\00", align 1
@.str67 = private unnamed_addr constant [3 x i8] c".1\00", align 1
@.str68 = private unnamed_addr constant [17 x i8] c"\09MAN4DIR = \22%s\22\0A\00", align 1
@.str69 = private unnamed_addr constant [20 x i8] c"/usr/local/man/man4\00", align 1
@.str70 = private unnamed_addr constant [17 x i8] c"\09MAN4EXT = \22%s\22\0A\00", align 1
@.str71 = private unnamed_addr constant [3 x i8] c".4\00", align 1
@.str72 = private unnamed_addr constant [16 x i8] c"\09MASKBITS = %d\0A\00", align 1
@.str73 = private unnamed_addr constant [16 x i8] c"\09MASKTYPE = %s\0A\00", align 1
@.str74 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@.str75 = private unnamed_addr constant [22 x i8] c"\09MASKTYPE_WIDTH = %d\0A\00", align 1
@.str76 = private unnamed_addr constant [20 x i8] c"\09MASTERHASH = \22%s\22\0A\00", align 1
@.str77 = private unnamed_addr constant [18 x i8] c"americanmed+.hash\00", align 1
@.str78 = private unnamed_addr constant [19 x i8] c"\09MAXAFFIXLEN = %d\0A\00", align 1
@.str79 = private unnamed_addr constant [18 x i8] c"\09MAXCONTEXT = %d\0A\00", align 1
@.str80 = private unnamed_addr constant [23 x i8] c"\09MAXINCLUDEFILES = %d\0A\00", align 1
@.str81 = private unnamed_addr constant [17 x i8] c"\09MAXNAMLEN = %d\0A\00", align 1
@.str82 = private unnamed_addr constant [18 x i8] c"\09MAXPATHLEN = %d\0A\00", align 1
@.str83 = private unnamed_addr constant [14 x i8] c"\09MAXPCT = %d\0A\00", align 1
@.str84 = private unnamed_addr constant [17 x i8] c"\09MAXSEARCH = %d\0A\00", align 1
@.str85 = private unnamed_addr constant [24 x i8] c"\09MAXSTRINGCHARLEN = %d\0A\00", align 1
@.str86 = private unnamed_addr constant [22 x i8] c"\09MAXSTRINGCHARS = %d\0A\00", align 1
@.str87 = private unnamed_addr constant [16 x i8] c"\09MAX_CAPS = %d\0A\00", align 1
@.str88 = private unnamed_addr constant [16 x i8] c"\09MAX_HITS = %d\0A\00", align 1
@.str89 = private unnamed_addr constant [23 x i8] c"\09MAX_SCREEN_SIZE = %d\0A\00", align 1
@.str90 = private unnamed_addr constant [18 x i8] c"\09MINCONTEXT = %d\0A\00", align 1
@.str91 = private unnamed_addr constant [11 x i8] c"\09MINIMENU\0A\00", align 1
@.str92 = private unnamed_addr constant [15 x i8] c"\09MINWORD = %d\0A\00", align 1
@.str93 = private unnamed_addr constant [27 x i8] c"\09MSDOS_BINARY_OPEN = 0x%x\0A\00", align 1
@.str94 = private unnamed_addr constant [15 x i8] c"\09MSGLANG = %s\0A\00", align 1
@.str95 = private unnamed_addr constant [8 x i8] c"english\00", align 1
@.str96 = private unnamed_addr constant [29 x i8] c"\09!NO_CAPITALIZATION_SUPPORT\0A\00", align 1
@.str97 = private unnamed_addr constant [26 x i8] c"\09!NO_STDLIB_H (STDLIB_H)\0A\00", align 1
@.str98 = private unnamed_addr constant [9 x i8] c"\09NO8BIT\0A\00", align 1
@.str99 = private unnamed_addr constant [19 x i8] c"\09NRSPECIAL = \22%s\22\0A\00", align 1
@.str100 = private unnamed_addr constant [6 x i8] c"().\5C*\00", align 1
@.str101 = private unnamed_addr constant [17 x i8] c"\09OLDPAFF = \22%s\22\0A\00", align 1
@.str102 = private unnamed_addr constant [18 x i8] c"\09OLDPDICT = \22%s\22\0A\00", align 1
@.str103 = private unnamed_addr constant [26 x i8] c"\09PDICTHOME = (undefined)\0A\00", align 1
@.str104 = private unnamed_addr constant [18 x i8] c"\09PDICTVAR = \22%s\22\0A\00", align 1
@.str105 = private unnamed_addr constant [9 x i8] c"WORDLIST\00", align 1
@.str106 = private unnamed_addr constant [25 x i8] c"\09!PIECEMEAL_HASH_WRITES\0A\00", align 1
@.str107 = private unnamed_addr constant [16 x i8] c"\09!REGEX_LOOKUP\0A\00", align 1
@.str108 = private unnamed_addr constant [16 x i8] c"\09REGLIB = \22%s\22\0A\00", align 1
@.str109 = private unnamed_addr constant [19 x i8] c"\09SIGNAL_TYPE = %s\0A\00", align 1
@.str110 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@.str111 = private unnamed_addr constant [20 x i8] c"\09SORTPERSONAL = %d\0A\00", align 1
@.str112 = private unnamed_addr constant [20 x i8] c"\09STATSUFFIX = \22%s\22\0A\00", align 1
@.str113 = private unnamed_addr constant [6 x i8] c".stat\00", align 1
@.str114 = private unnamed_addr constant [18 x i8] c"\09TEMPNAME = \22%s\22\0A\00", align 1
@.str115 = private unnamed_addr constant [18 x i8] c"/tmp/ispellXXXXXX\00", align 1
@.str116 = private unnamed_addr constant [17 x i8] c"\09TERMLIB = \22%s\22\0A\00", align 1
@.str117 = private unnamed_addr constant [20 x i8] c"\09TEXINFODIR = \22%s\22\0A\00", align 1
@.str118 = private unnamed_addr constant [16 x i8] c"/usr/local/info\00", align 1
@.str119 = private unnamed_addr constant [20 x i8] c"\09TEXSPECIAL = \22%s\22\0A\00", align 1
@.str120 = private unnamed_addr constant [14 x i8] c"()[]{}<>\5C$*.%\00", align 1
@.str121 = private unnamed_addr constant [15 x i8] c"\09!TRUNCATEBAK\0A\00", align 1
@.str122 = private unnamed_addr constant [9 x i8] c"\09!USESH\0A\00", align 1
@.str123 = private unnamed_addr constant [15 x i8] c"\09WORDS = \22%s\22\0A\00", align 1
@.str124 = private unnamed_addr constant [16 x i8] c"/usr/dict/words\00", align 1
@.str125 = private unnamed_addr constant [14 x i8] c"\09YACC = \22%s\22\0A\00", align 1
@.str126 = private unnamed_addr constant [5 x i8] c"yacc\00", align 1
@.str127 = private unnamed_addr constant [6 x i8] c"nroff\00", align 1
@.str128 = private unnamed_addr constant [4 x i8] c"tex\00", align 1
@incfileflag = common global i32 0, align 4
@aflag = common global i32 0, align 4
@nodictflag = common global i32 0, align 4
@cflag = common global i32 0, align 4
@lflag = common global i32 0, align 4
@askfilename = common global i8* null, align 8
@contextsize = common global i32 0, align 4
@stderr = external global %struct._IO_FILE*
@.str129 = private unnamed_addr constant [40 x i8] c"ispell:  specified file does not exist\0A\00", align 1
@.str130 = private unnamed_addr constant [39 x i8] c"ispell:  specified files do not exist\0A\00", align 1
@.str131 = private unnamed_addr constant [43 x i8] c"ispell:  unrecognized formatter type '%s'\0A\00", align 1
@defdupchar = common global i32 0, align 4
@hashheader = common global %struct.hashheader zeroinitializer, align 4
@stdout = external global %struct._IO_FILE*
@stdin = external global %struct._IO_FILE*
@infile = common global %struct._IO_FILE* null, align 8
@outfile = common global %struct._IO_FILE* null, align 8
@BC = common global i8* null, align 8
@cd = common global i8* null, align 8
@cl = common global i8* null, align 8
@cm = common global i8* null, align 8
@ho = common global i8* null, align 8
@nd = common global i8* null, align 8
@so = common global i8* null, align 8
@se = common global i8* null, align 8
@sg = common global i32 0, align 4
@ti = common global i8* null, align 8
@te = common global i8* null, align 8
@li = common global i32 0, align 4
@co = common global i32 0, align 4
@contextbufs = common global [10 x [8192 x i8]] zeroinitializer, align 16
@contextoffset = common global i32 0, align 4
@currentchar = common global i8* null, align 8
@ctoken = common global [120 x i8] zeroinitializer, align 16
@itoken = common global [120 x i8] zeroinitializer, align 16
@termcap = common global [2048 x i8] zeroinitializer, align 16
@termstr = common global [2048 x i8] zeroinitializer, align 16
@termptr = common global i8* null, align 8
@numhits = common global i32 0, align 4
@hits = common global [10 x %struct.success] zeroinitializer, align 16
@hashstrings = common global i8* null, align 8
@hashtbl = common global %struct.dent* null, align 8
@hashsize = common global i32 0, align 4
@uerasechar = common global i32 0, align 4
@ukillchar = common global i32 0, align 4
@laststringch = common global i32 0, align 4
@numpflags = common global i32 0, align 4
@numsflags = common global i32 0, align 4
@pflagindex = common global [228 x %struct.flagptr] zeroinitializer, align 16
@pflaglist = common global %struct.flagent* null, align 8
@sflagindex = common global [228 x %struct.flagptr] zeroinitializer, align 16
@sflaglist = common global %struct.flagent* null, align 8
@chartypes = common global %struct.strchartype* null, align 8
@changes = common global i32 0, align 4
@readonly = common global i32 0, align 4
@quit = common global i32 0, align 4
@possibilities = common global [100 x [120 x i8]] zeroinitializer, align 16
@pcount = common global i32 0, align 4
@maxposslen = common global i32 0, align 4
@easypossibilities = common global i32 0, align 4
@Try = common global [228 x i8] zeroinitializer, align 16
@.str132 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str133 = private unnamed_addr constant [38 x i8] c"\0D\0AIllegal affix flag character '%c'\0D\0A\00", align 1
@.str134 = private unnamed_addr constant [51 x i8] c"\0D\0AWord '%s' too long at line %d of %s, truncated\0D\0A\00", align 1
@.str135 = private unnamed_addr constant [83 x i8] c"/home/arka3/repos/test-suite/MultiSource/Benchmarks/MiBench/office-ispell/ispell.c\00", align 1
@.str136 = private unnamed_addr constant [4 x i8] c" %f\00", align 1
@.str137 = private unnamed_addr constant [5 x i8] c".tex\00", align 1
@.str138 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str139 = private unnamed_addr constant [16 x i8] c"Can't open %s\0D\0A\00", align 1
@.str140 = private unnamed_addr constant [30 x i8] c"Warning:  Can't write to %s\0D\0A\00", align 1
@.str141 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str142 = private unnamed_addr constant [18 x i8] c"Can't create %s\0D\0A\00", align 1
@.str143 = private unnamed_addr constant [15 x i8] c"temporary file\00", align 1
@.str144 = private unnamed_addr constant [34 x i8] c"temporary file disappeared (%s)\0D\0A\00", align 1
@.str145 = private unnamed_addr constant [7 x i8] c"%.*s%s\00", align 1
@.str146 = private unnamed_addr constant [50 x i8] c"@(#) International Ispell Version 3.1.20 10/10/95\00", align 1
@.str147 = private unnamed_addr constant [44 x i8] c"@(#) Copyright (c), 1983, by Pace Willisson\00", align 1
@.str148 = private unnamed_addr constant [64 x i8] c"@(#) International version Copyright (c) 1987, 1988, 1990-1995,\00", align 1
@.str149 = private unnamed_addr constant [65 x i8] c"@(#) by Geoff Kuenning, Granada Hills, CA.  All rights reserved.\00", align 1
@.str150 = private unnamed_addr constant [5 x i8] c"@(#)\00", align 1
@.str151 = private unnamed_addr constant [72 x i8] c"@(#) Redistribution and use in source and binary forms, with or without\00", align 1
@.str152 = private unnamed_addr constant [72 x i8] c"@(#) modification, are permitted provided that the following conditions\00", align 1
@.str153 = private unnamed_addr constant [14 x i8] c"@(#) are met:\00", align 1
@.str154 = private unnamed_addr constant [71 x i8] c"@(#) 1. Redistributions of source code must retain the above copyright\00", align 1
@.str155 = private unnamed_addr constant [70 x i8] c"@(#)    notice, this list of conditions and the following disclaimer.\00", align 1
@.str156 = private unnamed_addr constant [64 x i8] c"@(#) 2. Redistributions in binary form must reproduce the above\00", align 1
@.str157 = private unnamed_addr constant [68 x i8] c"@(#)    copyright notice, this list of conditions and the following\00", align 1
@.str158 = private unnamed_addr constant [72 x i8] c"@(#)    disclaimer in the documentation and/or other materials provided\00", align 1
@.str159 = private unnamed_addr constant [31 x i8] c"@(#)    with the distribution.\00", align 1
@.str160 = private unnamed_addr constant [71 x i8] c"@(#) 3. All modifications to the source code must be clearly marked as\00", align 1
@.str161 = private unnamed_addr constant [68 x i8] c"@(#)    such.  Binary redistributions based on modified source code\00", align 1
@.str162 = private unnamed_addr constant [73 x i8] c"@(#)    must be clearly marked as modified versions in the documentation\00", align 1
@.str163 = private unnamed_addr constant [63 x i8] c"@(#)    and/or other materials provided with the distribution.\00", align 1
@.str164 = private unnamed_addr constant [69 x i8] c"@(#) 4. All advertising materials mentioning features or use of this\00", align 1
@.str165 = private unnamed_addr constant [60 x i8] c"@(#)    software must display the following acknowledgment:\00", align 1
@.str166 = private unnamed_addr constant [73 x i8] c"@(#)      This product includes software developed by Geoff Kuenning and\00", align 1
@.str167 = private unnamed_addr constant [37 x i8] c"@(#)      other unpaid contributors.\00", align 1
@.str168 = private unnamed_addr constant [73 x i8] c"@(#) 5. The name of Geoff Kuenning may not be used to endorse or promote\00", align 1
@.str169 = private unnamed_addr constant [67 x i8] c"@(#)    products derived from this software without specific prior\00", align 1
@.str170 = private unnamed_addr constant [28 x i8] c"@(#)    written permission.\00", align 1
@.str171 = private unnamed_addr constant [71 x i8] c"@(#) THIS SOFTWARE IS PROVIDED BY GEOFF KUENNING AND CONTRIBUTORS ``AS\00", align 1
@.str172 = private unnamed_addr constant [68 x i8] c"@(#) IS'' AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT\00", align 1
@.str173 = private unnamed_addr constant [71 x i8] c"@(#) LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS\00", align 1
@.str174 = private unnamed_addr constant [71 x i8] c"@(#) FOR A PARTICULAR PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL GEOFF\00", align 1
@.str175 = private unnamed_addr constant [66 x i8] c"@(#) KUENNING OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,\00", align 1
@.str176 = private unnamed_addr constant [62 x i8] c"@(#) INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES\00", align 1
@.str177 = private unnamed_addr constant [72 x i8] c"@(#) (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR\00", align 1
@.str178 = private unnamed_addr constant [72 x i8] c"@(#) SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)\00", align 1
@.str179 = private unnamed_addr constant [73 x i8] c"@(#) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,\00", align 1
@.str180 = private unnamed_addr constant [67 x i8] c"@(#) STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)\00", align 1
@.str181 = private unnamed_addr constant [73 x i8] c"@(#) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED\00", align 1
@.str182 = private unnamed_addr constant [40 x i8] c"@(#) OF THE POSSIBILITY OF SUCH DAMAGE.\00", align 1
@.str183 = private unnamed_addr constant [137 x i8] c"Usage: %s [-dfile | -pfile | -wchars | -Wn | -t | -n | -x | -b | -S | -B | -C | -P | -m | -Lcontext | -M | -N | -Ttype | -V] file .....\0A\00", align 1
@.str184 = private unnamed_addr constant [67 x i8] c"       %s [-dfile | -pfile | -wchars | -Wn | -t | -n | -Ttype] -l\0A\00", align 1
@.str185 = private unnamed_addr constant [98 x i8] c"       %s [-dfile | -pfile | -ffile | -Wn | -t | -n | -s | -B | -C | -P | -m | -Ttype] {-a | -A}\0A\00", align 1
@.str186 = private unnamed_addr constant [39 x i8] c"       %s [-dfile] [-wchars | -Wn] -c\0A\00", align 1
@.str187 = private unnamed_addr constant [38 x i8] c"       %s [-dfile] [-wchars] -e[1-4]\0A\00", align 1
@.str188 = private unnamed_addr constant [33 x i8] c"       %s [-dfile] [-wchars] -D\0A\00", align 1
@.str189 = private unnamed_addr constant [14 x i8] c"       %s -v\0A\00", align 1

define i32 @main(i32 %argc, i8** %argv) nounwind uwtable {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %p = alloca i8*, align 8
  %cpd = alloca i8*, align 8
  %versionp = alloca i8**, align 8
  %wchars = alloca i8*, align 8
  %preftype = alloca i8*, align 8
  %argno = alloca i32, align 4
  %arglen = alloca i32, align 4
  store i32 0, i32* %1
  store i32 %argc, i32* %2, align 4
  store i8** %argv, i8*** %3, align 8
  store i8* null, i8** %wchars, align 8
  store i8* null, i8** %preftype, align 8
  %4 = load i8*** %3, align 8
  %5 = load i8** %4
  store i8* %5, i8** @Cmd, align 8
  store i32 0, i32* @Trynum, align 4
  %6 = call i8* @getenv(i8* getelementptr inbounds ([11 x i8]* @.str, i32 0, i32 0)) nounwind
  store i8* %6, i8** %p, align 8
  %7 = load i8** %p, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %47

; <label>:9                                       ; preds = %0
  %10 = load i8** %p, align 8
  %11 = call i8* @index(i8* %10, i32 47) nounwind readonly
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %16

; <label>:13                                      ; preds = %9
  %14 = load i8** %p, align 8
  %15 = call i8* @strcpy(i8* getelementptr inbounds ([4096 x i8]* @hashname, i32 0, i32 0), i8* %14) nounwind
  br label %19

; <label>:16                                      ; preds = %9
  %17 = load i8** %p, align 8
  %18 = call i32 (i8*, i8*, ...)* @sprintf(i8* getelementptr inbounds ([4096 x i8]* @hashname, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str2, i32 0, i32 0), i8* %17) nounwind
  br label %19

; <label>:19                                      ; preds = %16, %13
  %20 = load i8** %p, align 8
  %21 = call i8* @strcpy(i8* getelementptr inbounds ([13 x i8]* @main.libdictname, i32 0, i32 0), i8* %20) nounwind
  %22 = load i8** %p, align 8
  %23 = call i8* @rindex(i8* %22, i32 46) nounwind readonly
  store i8* %23, i8** %p, align 8
  %24 = load i8** %p, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %30, label %26

; <label>:26                                      ; preds = %19
  %27 = load i8** %p, align 8
  %28 = call i32 @strcmp(i8* %27, i8* getelementptr inbounds ([6 x i8]* @.str3, i32 0, i32 0)) nounwind readonly
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

; <label>:30                                      ; preds = %26, %19
  %31 = call i8* @strcat(i8* getelementptr inbounds ([4096 x i8]* @hashname, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str3, i32 0, i32 0)) nounwind
  br label %32

; <label>:32                                      ; preds = %30, %26
  %33 = call i8* @rindex(i8* getelementptr inbounds ([13 x i8]* @main.libdictname, i32 0, i32 0), i32 47) nounwind readonly
  store i8* %33, i8** @LibDict, align 8
  %34 = load i8** @LibDict, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %39

; <label>:36                                      ; preds = %32
  %37 = load i8** @LibDict, align 8
  %38 = getelementptr inbounds i8* %37, i32 1
  store i8* %38, i8** @LibDict, align 8
  br label %40

; <label>:39                                      ; preds = %32
  store i8* getelementptr inbounds ([13 x i8]* @main.libdictname, i32 0, i32 0), i8** @LibDict, align 8
  br label %40

; <label>:40                                      ; preds = %39, %36
  %41 = call i8* @rindex(i8* getelementptr inbounds ([13 x i8]* @main.libdictname, i32 0, i32 0), i32 46) nounwind readonly
  store i8* %41, i8** %p, align 8
  %42 = load i8** %p, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %46

; <label>:44                                      ; preds = %40
  %45 = load i8** %p, align 8
  store i8 0, i8* %45
  br label %46

; <label>:46                                      ; preds = %44, %40
  br label %49

; <label>:47                                      ; preds = %0
  %48 = call i32 (i8*, i8*, ...)* @sprintf(i8* getelementptr inbounds ([4096 x i8]* @hashname, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @.str4, i32 0, i32 0)) nounwind
  br label %49

; <label>:49                                      ; preds = %47, %46
  store i8* null, i8** %cpd, align 8
  %50 = load i8*** %3, align 8
  %51 = getelementptr inbounds i8** %50, i32 1
  store i8** %51, i8*** %3, align 8
  %52 = load i32* %2, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %2, align 4
  br label %54

; <label>:54                                      ; preds = %560, %49
  %55 = load i32* %2, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

; <label>:57                                      ; preds = %54
  %58 = load i8*** %3, align 8
  %59 = load i8** %58
  %60 = load i8* %59
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 45
  br label %63

; <label>:63                                      ; preds = %57, %54
  %64 = phi i1 [ false, %54 ], [ %62, %57 ]
  br i1 %64, label %65, label %565

; <label>:65                                      ; preds = %63
  %66 = load i8*** %3, align 8
  %67 = load i8** %66
  %68 = call i64 @strlen(i8* %67) nounwind readonly
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %arglen, align 4
  %70 = load i8*** %3, align 8
  %71 = load i8** %70
  %72 = getelementptr inbounds i8* %71, i64 1
  %73 = load i8* %72
  %74 = sext i8 %73 to i32
  switch i32 %74, label %559 [
    i32 118, label %75
    i32 110, label %191
    i32 116, label %200
    i32 84, label %209
    i32 65, label %230
    i32 97, label %235
    i32 68, label %242
    i32 101, label %251
    i32 99, label %297
    i32 98, label %308
    i32 120, label %313
    i32 102, label %318
    i32 76, label %347
    i32 108, label %369
    i32 115, label %376
    i32 83, label %383
    i32 66, label %388
    i32 67, label %393
    i32 80, label %398
    i32 109, label %403
    i32 78, label %408
    i32 77, label %413
    i32 112, label %418
    i32 100, label %444
    i32 86, label %509
    i32 119, label %514
    i32 87, label %534
  ]

; <label>:75                                      ; preds = %65
  %76 = load i32* %arglen, align 4
  %77 = icmp sgt i32 %76, 3
  br i1 %77, label %78, label %79

; <label>:78                                      ; preds = %75
  call void @usage()
  br label %79

; <label>:79                                      ; preds = %78, %75
  store i8** getelementptr inbounds ([40 x i8*]* @Version_ID, i32 0, i32 0), i8*** %versionp, align 8
  br label %80

; <label>:80                                      ; preds = %94, %79
  %81 = load i8*** %versionp, align 8
  %82 = load i8** %81
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %97

; <label>:84                                      ; preds = %80
  %85 = load i8*** %versionp, align 8
  %86 = getelementptr inbounds i8** %85, i32 1
  store i8** %86, i8*** %versionp, align 8
  %87 = load i8** %85
  store i8* %87, i8** %p, align 8
  %88 = load i8** %p, align 8
  %89 = call i32 @strncmp(i8* %88, i8* getelementptr inbounds ([5 x i8]* @.str5, i32 0, i32 0), i64 5) nounwind readonly
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %94

; <label>:91                                      ; preds = %84
  %92 = load i8** %p, align 8
  %93 = getelementptr inbounds i8* %92, i64 5
  store i8* %93, i8** %p, align 8
  br label %94

; <label>:94                                      ; preds = %91, %84
  %95 = load i8** %p, align 8
  %96 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str6, i32 0, i32 0), i8* %95)
  br label %80

; <label>:97                                      ; preds = %80
  %98 = load i8*** %3, align 8
  %99 = load i8** %98
  %100 = getelementptr inbounds i8* %99, i64 2
  %101 = load i8* %100
  %102 = sext i8 %101 to i32
  %103 = icmp eq i32 %102, 118
  br i1 %103, label %104, label %190

; <label>:104                                     ; preds = %97
  %105 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([22 x i8]* @.str7, i32 0, i32 0))
  %106 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([13 x i8]* @.str8, i32 0, i32 0))
  %107 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([16 x i8]* @.str9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str10, i32 0, i32 0))
  %108 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([16 x i8]* @.str11, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @.str12, i32 0, i32 0))
  %109 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([17 x i8]* @.str13, i32 0, i32 0))
  %110 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([9 x i8]* @.str14, i32 0, i32 0))
  %111 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([12 x i8]* @.str15, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str16, i32 0, i32 0))
  %112 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([16 x i8]* @.str17, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str18, i32 0, i32 0))
  %113 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([19 x i8]* @.str19, i32 0, i32 0))
  %114 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([18 x i8]* @.str20, i32 0, i32 0))
  %115 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([18 x i8]* @.str21, i32 0, i32 0), i32 10)
  %116 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([21 x i8]* @.str22, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str23, i32 0, i32 0))
  %117 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([17 x i8]* @.str24, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @.str4, i32 0, i32 0))
  %118 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([19 x i8]* @.str25, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @.str26, i32 0, i32 0))
  %119 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([17 x i8]* @.str27, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str28, i32 0, i32 0))
  %120 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @.str29, i32 0, i32 0), i32 0)
  %121 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([17 x i8]* @.str30, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str31, i32 0, i32 0))
  %122 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([18 x i8]* @.str32, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str33, i32 0, i32 0))
  %123 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([18 x i8]* @.str34, i32 0, i32 0), i32 0)
  %124 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([18 x i8]* @.str35, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8]* @.str36, i32 0, i32 0))
  %125 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([18 x i8]* @.str37, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8]* @.str38, i32 0, i32 0))
  %126 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @.str39, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str40, i32 0, i32 0))
  %127 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([17 x i8]* @.str41, i32 0, i32 0))
  %128 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([27 x i8]* @.str42, i32 0, i32 0))
  %129 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([14 x i8]* @.str43, i32 0, i32 0))
  %130 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([20 x i8]* @.str44, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str3, i32 0, i32 0))
  %131 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([14 x i8]* @.str45, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str46, i32 0, i32 0))
  %132 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([13 x i8]* @.str47, i32 0, i32 0))
  %133 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([19 x i8]* @.str48, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @.str49, i32 0, i32 0))
  %134 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([20 x i8]* @.str50, i32 0, i32 0), i32 100)
  %135 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([19 x i8]* @.str51, i32 0, i32 0), i8* getelementptr inbounds ([81 x i8]* @.str52, i32 0, i32 0))
  %136 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([16 x i8]* @.str53, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str2, i32 0, i32 0))
  %137 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @.str54, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str55, i32 0, i32 0))
  %138 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([14 x i8]* @.str56, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str57, i32 0, i32 0))
  %139 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([19 x i8]* @.str58, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str55, i32 0, i32 0))
  %140 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([14 x i8]* @.str59, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str60, i32 0, i32 0))
  %141 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([22 x i8]* @.str61, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8]* @.str62, i32 0, i32 0))
  %142 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([24 x i8]* @.str63, i32 0, i32 0), i32 4088)
  %143 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([17 x i8]* @.str64, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8]* @.str65, i32 0, i32 0))
  %144 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([17 x i8]* @.str66, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str67, i32 0, i32 0))
  %145 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([17 x i8]* @.str68, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8]* @.str69, i32 0, i32 0))
  %146 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([17 x i8]* @.str70, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str71, i32 0, i32 0))
  %147 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([16 x i8]* @.str72, i32 0, i32 0), i32 32)
  %148 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([16 x i8]* @.str73, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str74, i32 0, i32 0))
  %149 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([22 x i8]* @.str75, i32 0, i32 0), i32 32)
  %150 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([20 x i8]* @.str76, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8]* @.str77, i32 0, i32 0))
  %151 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([19 x i8]* @.str78, i32 0, i32 0), i32 20)
  %152 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([18 x i8]* @.str79, i32 0, i32 0), i32 10)
  %153 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @.str80, i32 0, i32 0), i32 5)
  %154 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([17 x i8]* @.str81, i32 0, i32 0), i32 255)
  %155 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([18 x i8]* @.str82, i32 0, i32 0), i32 4096)
  %156 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([14 x i8]* @.str83, i32 0, i32 0), i32 70)
  %157 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([17 x i8]* @.str84, i32 0, i32 0), i32 4)
  %158 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([24 x i8]* @.str85, i32 0, i32 0), i32 10)
  %159 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([22 x i8]* @.str86, i32 0, i32 0), i32 100)
  %160 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([16 x i8]* @.str87, i32 0, i32 0), i32 10)
  %161 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([16 x i8]* @.str88, i32 0, i32 0), i32 10)
  %162 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @.str89, i32 0, i32 0), i32 0)
  %163 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([18 x i8]* @.str90, i32 0, i32 0), i32 2)
  %164 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str91, i32 0, i32 0))
  %165 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @.str92, i32 0, i32 0), i32 1)
  %166 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([27 x i8]* @.str93, i32 0, i32 0), i32 0)
  %167 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @.str94, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str95, i32 0, i32 0))
  %168 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([29 x i8]* @.str96, i32 0, i32 0))
  %169 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([26 x i8]* @.str97, i32 0, i32 0))
  %170 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([9 x i8]* @.str98, i32 0, i32 0))
  %171 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([19 x i8]* @.str99, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str100, i32 0, i32 0))
  %172 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([17 x i8]* @.str101, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str31, i32 0, i32 0))
  %173 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([18 x i8]* @.str102, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str33, i32 0, i32 0))
  %174 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([26 x i8]* @.str103, i32 0, i32 0))
  %175 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([18 x i8]* @.str104, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str105, i32 0, i32 0))
  %176 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str106, i32 0, i32 0))
  %177 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([16 x i8]* @.str107, i32 0, i32 0))
  %178 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([16 x i8]* @.str108, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str55, i32 0, i32 0))
  %179 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([19 x i8]* @.str109, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str110, i32 0, i32 0))
  %180 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([20 x i8]* @.str111, i32 0, i32 0), i32 1000)
  %181 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([20 x i8]* @.str112, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str113, i32 0, i32 0))
  %182 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([18 x i8]* @.str114, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8]* @.str115, i32 0, i32 0))
  %183 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([17 x i8]* @.str116, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str55, i32 0, i32 0))
  %184 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([20 x i8]* @.str117, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8]* @.str118, i32 0, i32 0))
  %185 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([20 x i8]* @.str119, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @.str120, i32 0, i32 0))
  %186 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @.str121, i32 0, i32 0))
  %187 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([9 x i8]* @.str122, i32 0, i32 0))
  %188 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @.str123, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8]* @.str124, i32 0, i32 0))
  %189 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([14 x i8]* @.str125, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str126, i32 0, i32 0))
  br label %190

; <label>:190                                     ; preds = %104, %97
  call void @exit(i32 0) noreturn nounwind
  unreachable

; <label>:191                                     ; preds = %65
  %192 = load i32* %arglen, align 4
  %193 = icmp sgt i32 %192, 2
  br i1 %193, label %194, label %195

; <label>:194                                     ; preds = %191
  call void @usage()
  br label %195

; <label>:195                                     ; preds = %194, %191
  store i32 0, i32* @tflag, align 4
  store i32 0, i32* @deftflag, align 4
  %196 = load i8** %preftype, align 8
  %197 = icmp eq i8* %196, null
  br i1 %197, label %198, label %199

; <label>:198                                     ; preds = %195
  store i8* getelementptr inbounds ([6 x i8]* @.str127, i32 0, i32 0), i8** %preftype, align 8
  br label %199

; <label>:199                                     ; preds = %198, %195
  br label %560

; <label>:200                                     ; preds = %65
  %201 = load i32* %arglen, align 4
  %202 = icmp sgt i32 %201, 2
  br i1 %202, label %203, label %204

; <label>:203                                     ; preds = %200
  call void @usage()
  br label %204

; <label>:204                                     ; preds = %203, %200
  store i32 1, i32* @tflag, align 4
  store i32 1, i32* @deftflag, align 4
  %205 = load i8** %preftype, align 8
  %206 = icmp eq i8* %205, null
  br i1 %206, label %207, label %208

; <label>:207                                     ; preds = %204
  store i8* getelementptr inbounds ([4 x i8]* @.str128, i32 0, i32 0), i8** %preftype, align 8
  br label %208

; <label>:208                                     ; preds = %207, %204
  br label %560

; <label>:209                                     ; preds = %65
  %210 = load i8*** %3, align 8
  %211 = load i8** %210
  %212 = getelementptr inbounds i8* %211, i64 2
  store i8* %212, i8** %p, align 8
  %213 = load i8** %p, align 8
  %214 = load i8* %213
  %215 = sext i8 %214 to i32
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %228

; <label>:217                                     ; preds = %209
  %218 = load i8*** %3, align 8
  %219 = getelementptr inbounds i8** %218, i32 1
  store i8** %219, i8*** %3, align 8
  %220 = load i32* %2, align 4
  %221 = add nsw i32 %220, -1
  store i32 %221, i32* %2, align 4
  %222 = load i32* %2, align 4
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %225

; <label>:224                                     ; preds = %217
  call void @usage()
  br label %225

; <label>:225                                     ; preds = %224, %217
  %226 = load i8*** %3, align 8
  %227 = load i8** %226
  store i8* %227, i8** %p, align 8
  br label %228

; <label>:228                                     ; preds = %225, %209
  %229 = load i8** %p, align 8
  store i8* %229, i8** %preftype, align 8
  br label %560

; <label>:230                                     ; preds = %65
  %231 = load i32* %arglen, align 4
  %232 = icmp sgt i32 %231, 2
  br i1 %232, label %233, label %234

; <label>:233                                     ; preds = %230
  call void @usage()
  br label %234

; <label>:234                                     ; preds = %233, %230
  store i32 1, i32* @incfileflag, align 4
  store i32 1, i32* @aflag, align 4
  br label %560

; <label>:235                                     ; preds = %65
  %236 = load i32* %arglen, align 4
  %237 = icmp sgt i32 %236, 2
  br i1 %237, label %238, label %239

; <label>:238                                     ; preds = %235
  call void @usage()
  br label %239

; <label>:239                                     ; preds = %238, %235
  %240 = load i32* @aflag, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* @aflag, align 4
  br label %560

; <label>:242                                     ; preds = %65
  %243 = load i32* %arglen, align 4
  %244 = icmp sgt i32 %243, 2
  br i1 %244, label %245, label %246

; <label>:245                                     ; preds = %242
  call void @usage()
  br label %246

; <label>:246                                     ; preds = %245, %242
  %247 = load i32* @dumpflag, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* @dumpflag, align 4
  %249 = load i32* @nodictflag, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* @nodictflag, align 4
  br label %560

; <label>:251                                     ; preds = %65
  %252 = load i32* %arglen, align 4
  %253 = icmp sgt i32 %252, 3
  br i1 %253, label %254, label %255

; <label>:254                                     ; preds = %251
  call void @usage()
  br label %255

; <label>:255                                     ; preds = %254, %251
  store i32 1, i32* @eflag, align 4
  %256 = load i8*** %3, align 8
  %257 = load i8** %256
  %258 = getelementptr inbounds i8* %257, i64 2
  %259 = load i8* %258
  %260 = sext i8 %259 to i32
  %261 = icmp eq i32 %260, 101
  br i1 %261, label %262, label %263

; <label>:262                                     ; preds = %255
  store i32 2, i32* @eflag, align 4
  br label %294

; <label>:263                                     ; preds = %255
  %264 = load i8*** %3, align 8
  %265 = load i8** %264
  %266 = getelementptr inbounds i8* %265, i64 2
  %267 = load i8* %266
  %268 = sext i8 %267 to i32
  %269 = icmp sge i32 %268, 49
  br i1 %269, label %270, label %284

; <label>:270                                     ; preds = %263
  %271 = load i8*** %3, align 8
  %272 = load i8** %271
  %273 = getelementptr inbounds i8* %272, i64 2
  %274 = load i8* %273
  %275 = sext i8 %274 to i32
  %276 = icmp sle i32 %275, 52
  br i1 %276, label %277, label %284

; <label>:277                                     ; preds = %270
  %278 = load i8*** %3, align 8
  %279 = load i8** %278
  %280 = getelementptr inbounds i8* %279, i64 2
  %281 = load i8* %280
  %282 = sext i8 %281 to i32
  %283 = sub nsw i32 %282, 48
  store i32 %283, i32* @eflag, align 4
  br label %293

; <label>:284                                     ; preds = %270, %263
  %285 = load i8*** %3, align 8
  %286 = load i8** %285
  %287 = getelementptr inbounds i8* %286, i64 2
  %288 = load i8* %287
  %289 = sext i8 %288 to i32
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %292

; <label>:291                                     ; preds = %284
  call void @usage()
  br label %292

; <label>:292                                     ; preds = %291, %284
  br label %293

; <label>:293                                     ; preds = %292, %277
  br label %294

; <label>:294                                     ; preds = %293, %262
  %295 = load i32* @nodictflag, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* @nodictflag, align 4
  br label %560

; <label>:297                                     ; preds = %65
  %298 = load i32* %arglen, align 4
  %299 = icmp sgt i32 %298, 2
  br i1 %299, label %300, label %301

; <label>:300                                     ; preds = %297
  call void @usage()
  br label %301

; <label>:301                                     ; preds = %300, %297
  %302 = load i32* @cflag, align 4
  %303 = add nsw i32 %302, 1
  store i32 %303, i32* @cflag, align 4
  %304 = load i32* @lflag, align 4
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* @lflag, align 4
  %306 = load i32* @nodictflag, align 4
  %307 = add nsw i32 %306, 1
  store i32 %307, i32* @nodictflag, align 4
  br label %560

; <label>:308                                     ; preds = %65
  %309 = load i32* %arglen, align 4
  %310 = icmp sgt i32 %309, 2
  br i1 %310, label %311, label %312

; <label>:311                                     ; preds = %308
  call void @usage()
  br label %312

; <label>:312                                     ; preds = %311, %308
  store i32 0, i32* @xflag, align 4
  br label %560

; <label>:313                                     ; preds = %65
  %314 = load i32* %arglen, align 4
  %315 = icmp sgt i32 %314, 2
  br i1 %315, label %316, label %317

; <label>:316                                     ; preds = %313
  call void @usage()
  br label %317

; <label>:317                                     ; preds = %316, %313
  store i32 1, i32* @xflag, align 4
  br label %560

; <label>:318                                     ; preds = %65
  %319 = load i32* @fflag, align 4
  %320 = add nsw i32 %319, 1
  store i32 %320, i32* @fflag, align 4
  %321 = load i8*** %3, align 8
  %322 = load i8** %321
  %323 = getelementptr inbounds i8* %322, i64 2
  store i8* %323, i8** %p, align 8
  %324 = load i8** %p, align 8
  %325 = load i8* %324
  %326 = sext i8 %325 to i32
  %327 = icmp eq i32 %326, 0
  br i1 %327, label %328, label %339

; <label>:328                                     ; preds = %318
  %329 = load i8*** %3, align 8
  %330 = getelementptr inbounds i8** %329, i32 1
  store i8** %330, i8*** %3, align 8
  %331 = load i32* %2, align 4
  %332 = add nsw i32 %331, -1
  store i32 %332, i32* %2, align 4
  %333 = load i32* %2, align 4
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %335, label %336

; <label>:335                                     ; preds = %328
  call void @usage()
  br label %336

; <label>:336                                     ; preds = %335, %328
  %337 = load i8*** %3, align 8
  %338 = load i8** %337
  store i8* %338, i8** %p, align 8
  br label %339

; <label>:339                                     ; preds = %336, %318
  %340 = load i8** %p, align 8
  store i8* %340, i8** @askfilename, align 8
  %341 = load i8** @askfilename, align 8
  %342 = load i8* %341
  %343 = sext i8 %342 to i32
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %345, label %346

; <label>:345                                     ; preds = %339
  store i8* null, i8** @askfilename, align 8
  br label %346

; <label>:346                                     ; preds = %345, %339
  br label %560

; <label>:347                                     ; preds = %65
  %348 = load i8*** %3, align 8
  %349 = load i8** %348
  %350 = getelementptr inbounds i8* %349, i64 2
  store i8* %350, i8** %p, align 8
  %351 = load i8** %p, align 8
  %352 = load i8* %351
  %353 = sext i8 %352 to i32
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %355, label %366

; <label>:355                                     ; preds = %347
  %356 = load i8*** %3, align 8
  %357 = getelementptr inbounds i8** %356, i32 1
  store i8** %357, i8*** %3, align 8
  %358 = load i32* %2, align 4
  %359 = add nsw i32 %358, -1
  store i32 %359, i32* %2, align 4
  %360 = load i32* %2, align 4
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %362, label %363

; <label>:362                                     ; preds = %355
  call void @usage()
  br label %363

; <label>:363                                     ; preds = %362, %355
  %364 = load i8*** %3, align 8
  %365 = load i8** %364
  store i8* %365, i8** %p, align 8
  br label %366

; <label>:366                                     ; preds = %363, %347
  %367 = load i8** %p, align 8
  %368 = call i32 @atoi(i8* %367) nounwind readonly
  store i32 %368, i32* @contextsize, align 4
  br label %560

; <label>:369                                     ; preds = %65
  %370 = load i32* %arglen, align 4
  %371 = icmp sgt i32 %370, 2
  br i1 %371, label %372, label %373

; <label>:372                                     ; preds = %369
  call void @usage()
  br label %373

; <label>:373                                     ; preds = %372, %369
  %374 = load i32* @lflag, align 4
  %375 = add nsw i32 %374, 1
  store i32 %375, i32* @lflag, align 4
  br label %560

; <label>:376                                     ; preds = %65
  %377 = load i32* %arglen, align 4
  %378 = icmp sgt i32 %377, 2
  br i1 %378, label %379, label %380

; <label>:379                                     ; preds = %376
  call void @usage()
  br label %380

; <label>:380                                     ; preds = %379, %376
  %381 = load i32* @sflag, align 4
  %382 = add nsw i32 %381, 1
  store i32 %382, i32* @sflag, align 4
  br label %560

; <label>:383                                     ; preds = %65
  %384 = load i32* %arglen, align 4
  %385 = icmp sgt i32 %384, 2
  br i1 %385, label %386, label %387

; <label>:386                                     ; preds = %383
  call void @usage()
  br label %387

; <label>:387                                     ; preds = %386, %383
  store i32 0, i32* @sortit, align 4
  br label %560

; <label>:388                                     ; preds = %65
  %389 = load i32* %arglen, align 4
  %390 = icmp sgt i32 %389, 2
  br i1 %390, label %391, label %392

; <label>:391                                     ; preds = %388
  call void @usage()
  br label %392

; <label>:392                                     ; preds = %391, %388
  store i32 0, i32* @compoundflag, align 4
  br label %560

; <label>:393                                     ; preds = %65
  %394 = load i32* %arglen, align 4
  %395 = icmp sgt i32 %394, 2
  br i1 %395, label %396, label %397

; <label>:396                                     ; preds = %393
  call void @usage()
  br label %397

; <label>:397                                     ; preds = %396, %393
  store i32 1, i32* @compoundflag, align 4
  br label %560

; <label>:398                                     ; preds = %65
  %399 = load i32* %arglen, align 4
  %400 = icmp sgt i32 %399, 2
  br i1 %400, label %401, label %402

; <label>:401                                     ; preds = %398
  call void @usage()
  br label %402

; <label>:402                                     ; preds = %401, %398
  store i32 0, i32* @tryhardflag, align 4
  br label %560

; <label>:403                                     ; preds = %65
  %404 = load i32* %arglen, align 4
  %405 = icmp sgt i32 %404, 2
  br i1 %405, label %406, label %407

; <label>:406                                     ; preds = %403
  call void @usage()
  br label %407

; <label>:407                                     ; preds = %406, %403
  store i32 1, i32* @tryhardflag, align 4
  br label %560

; <label>:408                                     ; preds = %65
  %409 = load i32* %arglen, align 4
  %410 = icmp sgt i32 %409, 2
  br i1 %410, label %411, label %412

; <label>:411                                     ; preds = %408
  call void @usage()
  br label %412

; <label>:412                                     ; preds = %411, %408
  store i32 0, i32* @minimenusize, align 4
  br label %560

; <label>:413                                     ; preds = %65
  %414 = load i32* %arglen, align 4
  %415 = icmp sgt i32 %414, 2
  br i1 %415, label %416, label %417

; <label>:416                                     ; preds = %413
  call void @usage()
  br label %417

; <label>:417                                     ; preds = %416, %413
  store i32 2, i32* @minimenusize, align 4
  br label %560

; <label>:418                                     ; preds = %65
  %419 = load i8*** %3, align 8
  %420 = load i8** %419
  %421 = getelementptr inbounds i8* %420, i64 2
  store i8* %421, i8** %cpd, align 8
  %422 = load i8** %cpd, align 8
  %423 = load i8* %422
  %424 = sext i8 %423 to i32
  %425 = icmp eq i32 %424, 0
  br i1 %425, label %426, label %443

; <label>:426                                     ; preds = %418
  %427 = load i8*** %3, align 8
  %428 = getelementptr inbounds i8** %427, i32 1
  store i8** %428, i8*** %3, align 8
  %429 = load i32* %2, align 4
  %430 = add nsw i32 %429, -1
  store i32 %430, i32* %2, align 4
  %431 = load i32* %2, align 4
  %432 = icmp eq i32 %431, 0
  br i1 %432, label %433, label %434

; <label>:433                                     ; preds = %426
  call void @usage()
  br label %434

; <label>:434                                     ; preds = %433, %426
  %435 = load i8*** %3, align 8
  %436 = load i8** %435
  store i8* %436, i8** %cpd, align 8
  %437 = load i8** %cpd, align 8
  %438 = load i8* %437
  %439 = sext i8 %438 to i32
  %440 = icmp eq i32 %439, 0
  br i1 %440, label %441, label %442

; <label>:441                                     ; preds = %434
  store i8* null, i8** %cpd, align 8
  br label %442

; <label>:442                                     ; preds = %441, %434
  br label %443

; <label>:443                                     ; preds = %442, %418
  store i8* null, i8** @LibDict, align 8
  br label %560

; <label>:444                                     ; preds = %65
  %445 = load i8*** %3, align 8
  %446 = load i8** %445
  %447 = getelementptr inbounds i8* %446, i64 2
  store i8* %447, i8** %p, align 8
  %448 = load i8** %p, align 8
  %449 = load i8* %448
  %450 = sext i8 %449 to i32
  %451 = icmp eq i32 %450, 0
  br i1 %451, label %452, label %463

; <label>:452                                     ; preds = %444
  %453 = load i8*** %3, align 8
  %454 = getelementptr inbounds i8** %453, i32 1
  store i8** %454, i8*** %3, align 8
  %455 = load i32* %2, align 4
  %456 = add nsw i32 %455, -1
  store i32 %456, i32* %2, align 4
  %457 = load i32* %2, align 4
  %458 = icmp eq i32 %457, 0
  br i1 %458, label %459, label %460

; <label>:459                                     ; preds = %452
  call void @usage()
  br label %460

; <label>:460                                     ; preds = %459, %452
  %461 = load i8*** %3, align 8
  %462 = load i8** %461
  store i8* %462, i8** %p, align 8
  br label %463

; <label>:463                                     ; preds = %460, %444
  %464 = load i8** %p, align 8
  %465 = call i8* @index(i8* %464, i32 47) nounwind readonly
  %466 = icmp ne i8* %465, null
  br i1 %466, label %467, label %470

; <label>:467                                     ; preds = %463
  %468 = load i8** %p, align 8
  %469 = call i8* @strcpy(i8* getelementptr inbounds ([4096 x i8]* @hashname, i32 0, i32 0), i8* %468) nounwind
  br label %473

; <label>:470                                     ; preds = %463
  %471 = load i8** %p, align 8
  %472 = call i32 (i8*, i8*, ...)* @sprintf(i8* getelementptr inbounds ([4096 x i8]* @hashname, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str2, i32 0, i32 0), i8* %471) nounwind
  br label %473

; <label>:473                                     ; preds = %470, %467
  %474 = load i8** %cpd, align 8
  %475 = icmp eq i8* %474, null
  br i1 %475, label %476, label %483

; <label>:476                                     ; preds = %473
  %477 = load i8** %p, align 8
  %478 = load i8* %477
  %479 = sext i8 %478 to i32
  %480 = icmp ne i32 %479, 0
  br i1 %480, label %481, label %483

; <label>:481                                     ; preds = %476
  %482 = load i8** %p, align 8
  store i8* %482, i8** @LibDict, align 8
  br label %483

; <label>:483                                     ; preds = %481, %476, %473
  %484 = load i8** %p, align 8
  %485 = call i8* @rindex(i8* %484, i32 46) nounwind readonly
  store i8* %485, i8** %p, align 8
  %486 = load i8** %p, align 8
  %487 = icmp ne i8* %486, null
  br i1 %487, label %488, label %494

; <label>:488                                     ; preds = %483
  %489 = load i8** %p, align 8
  %490 = call i32 @strcmp(i8* %489, i8* getelementptr inbounds ([6 x i8]* @.str3, i32 0, i32 0)) nounwind readonly
  %491 = icmp eq i32 %490, 0
  br i1 %491, label %492, label %494

; <label>:492                                     ; preds = %488
  %493 = load i8** %p, align 8
  store i8 0, i8* %493
  br label %496

; <label>:494                                     ; preds = %488, %483
  %495 = call i8* @strcat(i8* getelementptr inbounds ([4096 x i8]* @hashname, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str3, i32 0, i32 0)) nounwind
  br label %496

; <label>:496                                     ; preds = %494, %492
  %497 = load i8** @LibDict, align 8
  %498 = icmp ne i8* %497, null
  br i1 %498, label %499, label %508

; <label>:499                                     ; preds = %496
  %500 = load i8** @LibDict, align 8
  %501 = call i8* @rindex(i8* %500, i32 47) nounwind readonly
  store i8* %501, i8** %p, align 8
  %502 = load i8** %p, align 8
  %503 = icmp ne i8* %502, null
  br i1 %503, label %504, label %507

; <label>:504                                     ; preds = %499
  %505 = load i8** %p, align 8
  %506 = getelementptr inbounds i8* %505, i64 1
  store i8* %506, i8** @LibDict, align 8
  br label %507

; <label>:507                                     ; preds = %504, %499
  br label %508

; <label>:508                                     ; preds = %507, %496
  br label %560

; <label>:509                                     ; preds = %65
  %510 = load i32* %arglen, align 4
  %511 = icmp sgt i32 %510, 2
  br i1 %511, label %512, label %513

; <label>:512                                     ; preds = %509
  call void @usage()
  br label %513

; <label>:513                                     ; preds = %512, %509
  store i32 1, i32* @vflag, align 4
  br label %560

; <label>:514                                     ; preds = %65
  %515 = load i8*** %3, align 8
  %516 = load i8** %515
  %517 = getelementptr inbounds i8* %516, i64 2
  store i8* %517, i8** %wchars, align 8
  %518 = load i8** %wchars, align 8
  %519 = load i8* %518
  %520 = sext i8 %519 to i32
  %521 = icmp eq i32 %520, 0
  br i1 %521, label %522, label %533

; <label>:522                                     ; preds = %514
  %523 = load i8*** %3, align 8
  %524 = getelementptr inbounds i8** %523, i32 1
  store i8** %524, i8*** %3, align 8
  %525 = load i32* %2, align 4
  %526 = add nsw i32 %525, -1
  store i32 %526, i32* %2, align 4
  %527 = load i32* %2, align 4
  %528 = icmp eq i32 %527, 0
  br i1 %528, label %529, label %530

; <label>:529                                     ; preds = %522
  call void @usage()
  br label %530

; <label>:530                                     ; preds = %529, %522
  %531 = load i8*** %3, align 8
  %532 = load i8** %531
  store i8* %532, i8** %wchars, align 8
  br label %533

; <label>:533                                     ; preds = %530, %514
  br label %560

; <label>:534                                     ; preds = %65
  %535 = load i8*** %3, align 8
  %536 = load i8** %535
  %537 = getelementptr inbounds i8* %536, i64 2
  %538 = load i8* %537
  %539 = sext i8 %538 to i32
  %540 = icmp eq i32 %539, 0
  br i1 %540, label %541, label %553

; <label>:541                                     ; preds = %534
  %542 = load i8*** %3, align 8
  %543 = getelementptr inbounds i8** %542, i32 1
  store i8** %543, i8*** %3, align 8
  %544 = load i32* %2, align 4
  %545 = add nsw i32 %544, -1
  store i32 %545, i32* %2, align 4
  %546 = load i32* %2, align 4
  %547 = icmp eq i32 %546, 0
  br i1 %547, label %548, label %549

; <label>:548                                     ; preds = %541
  call void @usage()
  br label %549

; <label>:549                                     ; preds = %548, %541
  %550 = load i8*** %3, align 8
  %551 = load i8** %550
  %552 = call i32 @atoi(i8* %551) nounwind readonly
  store i32 %552, i32* @minword, align 4
  br label %558

; <label>:553                                     ; preds = %534
  %554 = load i8*** %3, align 8
  %555 = load i8** %554
  %556 = getelementptr inbounds i8* %555, i64 2
  %557 = call i32 @atoi(i8* %556) nounwind readonly
  store i32 %557, i32* @minword, align 4
  br label %558

; <label>:558                                     ; preds = %553, %549
  br label %560

; <label>:559                                     ; preds = %65
  call void @usage()
  br label %560

; <label>:560                                     ; preds = %559, %558, %533, %513, %508, %443, %417, %412, %407, %402, %397, %392, %387, %380, %373, %366, %346, %317, %312, %301, %294, %246, %239, %234, %228, %208, %199
  %561 = load i8*** %3, align 8
  %562 = getelementptr inbounds i8** %561, i32 1
  store i8** %562, i8*** %3, align 8
  %563 = load i32* %2, align 4
  %564 = add nsw i32 %563, -1
  store i32 %564, i32* %2, align 4
  br label %54

; <label>:565                                     ; preds = %63
  %566 = load i32* %2, align 4
  %567 = icmp ne i32 %566, 0
  br i1 %567, label %581, label %568

; <label>:568                                     ; preds = %565
  %569 = load i32* @lflag, align 4
  %570 = icmp ne i32 %569, 0
  br i1 %570, label %581, label %571

; <label>:571                                     ; preds = %568
  %572 = load i32* @aflag, align 4
  %573 = icmp ne i32 %572, 0
  br i1 %573, label %581, label %574

; <label>:574                                     ; preds = %571
  %575 = load i32* @eflag, align 4
  %576 = icmp ne i32 %575, 0
  br i1 %576, label %581, label %577

; <label>:577                                     ; preds = %574
  %578 = load i32* @dumpflag, align 4
  %579 = icmp ne i32 %578, 0
  br i1 %579, label %581, label %580

; <label>:580                                     ; preds = %577
  call void @usage()
  br label %581

; <label>:581                                     ; preds = %580, %577, %574, %571, %568, %565
  store i32 0, i32* %argno, align 4
  br label %582

; <label>:582                                     ; preds = %596, %581
  %583 = load i32* %argno, align 4
  %584 = load i32* %2, align 4
  %585 = icmp slt i32 %583, %584
  br i1 %585, label %586, label %599

; <label>:586                                     ; preds = %582
  %587 = load i32* %argno, align 4
  %588 = sext i32 %587 to i64
  %589 = load i8*** %3, align 8
  %590 = getelementptr inbounds i8** %589, i64 %588
  %591 = load i8** %590
  %592 = call i32 (...)* @access(i8* %591, i32 4)
  %593 = icmp sge i32 %592, 0
  br i1 %593, label %594, label %595

; <label>:594                                     ; preds = %586
  br label %599

; <label>:595                                     ; preds = %586
  br label %596

; <label>:596                                     ; preds = %595
  %597 = load i32* %argno, align 4
  %598 = add nsw i32 %597, 1
  store i32 %598, i32* %argno, align 4
  br label %582

; <label>:599                                     ; preds = %594, %582
  %600 = load i32* %argno, align 4
  %601 = load i32* %2, align 4
  %602 = icmp sge i32 %600, %601
  br i1 %602, label %603, label %621

; <label>:603                                     ; preds = %599
  %604 = load i32* @lflag, align 4
  %605 = icmp ne i32 %604, 0
  br i1 %605, label %621, label %606

; <label>:606                                     ; preds = %603
  %607 = load i32* @aflag, align 4
  %608 = icmp ne i32 %607, 0
  br i1 %608, label %621, label %609

; <label>:609                                     ; preds = %606
  %610 = load i32* @eflag, align 4
  %611 = icmp ne i32 %610, 0
  br i1 %611, label %621, label %612

; <label>:612                                     ; preds = %609
  %613 = load i32* @dumpflag, align 4
  %614 = icmp ne i32 %613, 0
  br i1 %614, label %621, label %615

; <label>:615                                     ; preds = %612
  %616 = load %struct._IO_FILE** @stderr, align 8
  %617 = load i32* %2, align 4
  %618 = icmp eq i32 %617, 1
  %619 = select i1 %618, i8* getelementptr inbounds ([40 x i8]* @.str129, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8]* @.str130, i32 0, i32 0)
  %620 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %616, i8* %619)
  call void @exit(i32 1) noreturn nounwind
  unreachable

; <label>:621                                     ; preds = %612, %609, %606, %603, %599
  %622 = call i32 @linit()
  %623 = icmp slt i32 %622, 0
  br i1 %623, label %624, label %625

; <label>:624                                     ; preds = %621
  call void @exit(i32 1) noreturn nounwind
  unreachable

; <label>:625                                     ; preds = %621
  %626 = load i8** %preftype, align 8
  %627 = icmp ne i8* %626, null
  br i1 %627, label %628, label %649

; <label>:628                                     ; preds = %625
  %629 = load i8** %preftype, align 8
  %630 = load i32* @deftflag, align 4
  %631 = icmp slt i32 %630, 0
  %632 = select i1 %631, i32* @deftflag, i32* null
  %633 = call i32 @findfiletype(i8* %629, i32 1, i32* %632)
  store i32 %633, i32* @prefstringchar, align 4
  %634 = load i32* @prefstringchar, align 4
  %635 = icmp slt i32 %634, 0
  br i1 %635, label %636, label %648

; <label>:636                                     ; preds = %628
  %637 = load i8** %preftype, align 8
  %638 = call i32 @strcmp(i8* %637, i8* getelementptr inbounds ([4 x i8]* @.str128, i32 0, i32 0)) nounwind readonly
  %639 = icmp ne i32 %638, 0
  br i1 %639, label %640, label %648

; <label>:640                                     ; preds = %636
  %641 = load i8** %preftype, align 8
  %642 = call i32 @strcmp(i8* %641, i8* getelementptr inbounds ([6 x i8]* @.str127, i32 0, i32 0)) nounwind readonly
  %643 = icmp ne i32 %642, 0
  br i1 %643, label %644, label %648

; <label>:644                                     ; preds = %640
  %645 = load %struct._IO_FILE** @stderr, align 8
  %646 = load i8** %preftype, align 8
  %647 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %645, i8* getelementptr inbounds ([43 x i8]* @.str131, i32 0, i32 0), i8* %646)
  call void @exit(i32 1) noreturn nounwind
  unreachable

; <label>:648                                     ; preds = %640, %636, %628
  br label %649

; <label>:649                                     ; preds = %648, %625
  %650 = load i32* @prefstringchar, align 4
  %651 = icmp slt i32 %650, 0
  br i1 %651, label %652, label %653

; <label>:652                                     ; preds = %649
  store i32 0, i32* @defdupchar, align 4
  br label %655

; <label>:653                                     ; preds = %649
  %654 = load i32* @prefstringchar, align 4
  store i32 %654, i32* @defdupchar, align 4
  br label %655

; <label>:655                                     ; preds = %653, %652
  %656 = load i32* @compoundflag, align 4
  %657 = icmp slt i32 %656, 0
  br i1 %657, label %658, label %661

; <label>:658                                     ; preds = %655
  %659 = load i8* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 17), align 1
  %660 = sext i8 %659 to i32
  store i32 %660, i32* @compoundflag, align 4
  br label %661

; <label>:661                                     ; preds = %658, %655
  %662 = load i32* @tryhardflag, align 4
  %663 = icmp slt i32 %662, 0
  br i1 %663, label %664, label %667

; <label>:664                                     ; preds = %661
  %665 = load i8* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 18), align 1
  %666 = sext i8 %665 to i32
  store i32 %666, i32* @tryhardflag, align 4
  br label %667

; <label>:667                                     ; preds = %664, %661
  %668 = load i8** %wchars, align 8
  call void (...)* bitcast (void (i8*)* @initckch to void (...)*)(i8* %668)
  %669 = load i8** @LibDict, align 8
  %670 = icmp eq i8* %669, null
  br i1 %670, label %671, label %683

; <label>:671                                     ; preds = %667
  %672 = call i8* @strcpy(i8* getelementptr inbounds ([13 x i8]* @main.libdictname, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @.str4, i32 0, i32 0)) nounwind
  store i8* getelementptr inbounds ([13 x i8]* @main.libdictname, i32 0, i32 0), i8** @LibDict, align 8
  %673 = call i8* @rindex(i8* getelementptr inbounds ([13 x i8]* @main.libdictname, i32 0, i32 0), i32 46) nounwind readonly
  store i8* %673, i8** %p, align 8
  %674 = load i8** %p, align 8
  %675 = icmp ne i8* %674, null
  br i1 %675, label %676, label %682

; <label>:676                                     ; preds = %671
  %677 = load i8** %p, align 8
  %678 = call i32 @strcmp(i8* %677, i8* getelementptr inbounds ([6 x i8]* @.str3, i32 0, i32 0)) nounwind readonly
  %679 = icmp eq i32 %678, 0
  br i1 %679, label %680, label %682

; <label>:680                                     ; preds = %676
  %681 = load i8** %p, align 8
  store i8 0, i8* %681
  br label %682

; <label>:682                                     ; preds = %680, %676, %671
  br label %683

; <label>:683                                     ; preds = %682, %667
  %684 = load i32* @nodictflag, align 4
  %685 = icmp ne i32 %684, 0
  br i1 %685, label %689, label %686

; <label>:686                                     ; preds = %683
  %687 = load i8** %cpd, align 8
  %688 = load i8** @LibDict, align 8
  call void @treeinit(i8* %687, i8* %688)
  br label %689

; <label>:689                                     ; preds = %686, %683
  %690 = load i32* @aflag, align 4
  %691 = icmp ne i32 %690, 0
  br i1 %691, label %692, label %693

; <label>:692                                     ; preds = %689
  call void @askmode()
  call void @treeoutput()
  call void @exit(i32 0) noreturn nounwind
  unreachable

; <label>:693                                     ; preds = %689
  %694 = load i32* @eflag, align 4
  %695 = icmp ne i32 %694, 0
  br i1 %695, label %696, label %698

; <label>:696                                     ; preds = %693
  %697 = load i32* @eflag, align 4
  call void @expandmode(i32 %697)
  call void @exit(i32 0) noreturn nounwind
  unreachable

; <label>:698                                     ; preds = %693
  %699 = load i32* @dumpflag, align 4
  %700 = icmp ne i32 %699, 0
  br i1 %700, label %701, label %702

; <label>:701                                     ; preds = %698
  call void @dumpmode()
  call void @exit(i32 0) noreturn nounwind
  unreachable

; <label>:702                                     ; preds = %698
  br label %703

; <label>:703                                     ; preds = %702
  br label %704

; <label>:704                                     ; preds = %703
  %705 = load %struct._IO_FILE** @stdout, align 8
  call void @setbuf(%struct._IO_FILE* %705, i8* getelementptr inbounds ([8192 x i8]* @main.outbuf, i32 0, i32 0)) nounwind
  %706 = load i32* @lflag, align 4
  %707 = icmp ne i32 %706, 0
  br i1 %707, label %708, label %711

; <label>:708                                     ; preds = %704
  %709 = load %struct._IO_FILE** @stdin, align 8
  store %struct._IO_FILE* %709, %struct._IO_FILE** @infile, align 8
  %710 = load %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %710, %struct._IO_FILE** @outfile, align 8
  call void @checkfile()
  call void @exit(i32 0) noreturn nounwind
  unreachable

; <label>:711                                     ; preds = %704
  call void @terminit()
  br label %712

; <label>:712                                     ; preds = %716, %711
  %713 = load i32* %2, align 4
  %714 = add nsw i32 %713, -1
  store i32 %714, i32* %2, align 4
  %715 = icmp ne i32 %713, 0
  br i1 %715, label %716, label %720

; <label>:716                                     ; preds = %712
  %717 = load i8*** %3, align 8
  %718 = getelementptr inbounds i8** %717, i32 1
  store i8** %718, i8*** %3, align 8
  %719 = load i8** %717
  call void @dofile(i8* %719)
  br label %712

; <label>:720                                     ; preds = %712
  call void @done(i32 0)
  ret i32 0
}

declare i8* @getenv(i8*) nounwind

declare i8* @index(i8*, i32) nounwind readonly

declare i8* @strcpy(i8*, i8*) nounwind

declare i32 @sprintf(i8*, i8*, ...) nounwind

declare i8* @rindex(i8*, i32) nounwind readonly

declare i32 @strcmp(i8*, i8*) nounwind readonly

declare i8* @strcat(i8*, i8*) nounwind

declare i64 @strlen(i8*) nounwind readonly

define internal void @usage() nounwind uwtable {
  %1 = load %struct._IO_FILE** @stderr, align 8
  %2 = load i8** @Cmd, align 8
  %3 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([137 x i8]* @.str183, i32 0, i32 0), i8* %2)
  %4 = load %struct._IO_FILE** @stderr, align 8
  %5 = load i8** @Cmd, align 8
  %6 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([67 x i8]* @.str184, i32 0, i32 0), i8* %5)
  %7 = load %struct._IO_FILE** @stderr, align 8
  %8 = load i8** @Cmd, align 8
  %9 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([98 x i8]* @.str185, i32 0, i32 0), i8* %8)
  %10 = load %struct._IO_FILE** @stderr, align 8
  %11 = load i8** @Cmd, align 8
  %12 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([39 x i8]* @.str186, i32 0, i32 0), i8* %11)
  %13 = load %struct._IO_FILE** @stderr, align 8
  %14 = load i8** @Cmd, align 8
  %15 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([38 x i8]* @.str187, i32 0, i32 0), i8* %14)
  %16 = load %struct._IO_FILE** @stderr, align 8
  %17 = load i8** @Cmd, align 8
  %18 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([33 x i8]* @.str188, i32 0, i32 0), i8* %17)
  %19 = load %struct._IO_FILE** @stderr, align 8
  %20 = load i8** @Cmd, align 8
  %21 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([14 x i8]* @.str189, i32 0, i32 0), i8* %20)
  call void @givehelp(i32 0)
  call void @exit(i32 1) noreturn nounwind
  unreachable
                                                  ; No predecessors!
  ret void
}

declare i32 @strncmp(i8*, i8*, i64) nounwind readonly

declare i32 @printf(i8*, ...)

declare void @exit(i32) noreturn nounwind

declare i32 @atoi(i8*) nounwind readonly

declare i32 @access(...)

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...)

declare i32 @linit()

declare i32 @findfiletype(i8*, i32, i32*)

define internal void @initckch(i8* %wchars) nounwind uwtable {
  %1 = alloca i8*, align 8
  %c = alloca i8, align 1
  %num = alloca [4 x i8], align 1
  store i8* %wchars, i8** %1, align 8
  store i8 0, i8* %c, align 1
  br label %2

; <label>:2                                       ; preds = %45, %0
  %3 = load i8* %c, align 1
  %4 = zext i8 %3 to i32
  %5 = load i32* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 12), align 4
  %6 = add nsw i32 128, %5
  %7 = trunc i32 %6 to i8
  %8 = zext i8 %7 to i32
  %9 = icmp slt i32 %4, %8
  br i1 %9, label %10, label %48

; <label>:10                                      ; preds = %2
  %11 = load i8* %c, align 1
  %12 = zext i8 %11 to i64
  %13 = getelementptr inbounds [228 x i8]* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 23), i32 0, i64 %12
  %14 = load i8* %13, align 1
  %15 = icmp ne i8 %14, 0
  br i1 %15, label %16, label %30

; <label>:16                                      ; preds = %10
  %17 = load i8* %c, align 1
  %18 = zext i8 %17 to i64
  %19 = getelementptr inbounds [228 x i8]* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 25), i32 0, i64 %18
  %20 = load i8* %19, align 1
  %21 = icmp ne i8 %20, 0
  br i1 %21, label %29, label %22

; <label>:22                                      ; preds = %16
  %23 = load i8* %c, align 1
  %24 = load i32* @Trynum, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [228 x i8]* @Try, i32 0, i64 %25
  store i8 %23, i8* %26, align 1
  %27 = load i32* @Trynum, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* @Trynum, align 4
  br label %29

; <label>:29                                      ; preds = %22, %16
  br label %44

; <label>:30                                      ; preds = %10
  %31 = load i8* %c, align 1
  %32 = zext i8 %31 to i64
  %33 = getelementptr inbounds [228 x i8]* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 26), i32 0, i64 %32
  %34 = load i8* %33, align 1
  %35 = icmp ne i8 %34, 0
  br i1 %35, label %36, label %43

; <label>:36                                      ; preds = %30
  %37 = load i8* %c, align 1
  %38 = load i32* @Trynum, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [228 x i8]* @Try, i32 0, i64 %39
  store i8 %37, i8* %40, align 1
  %41 = load i32* @Trynum, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* @Trynum, align 4
  br label %43

; <label>:43                                      ; preds = %36, %30
  br label %44

; <label>:44                                      ; preds = %43, %29
  br label %45

; <label>:45                                      ; preds = %44
  %46 = load i8* %c, align 1
  %47 = add i8 %46, 1
  store i8 %47, i8* %c, align 1
  br label %2

; <label>:48                                      ; preds = %2
  %49 = load i8** %1, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %229

; <label>:51                                      ; preds = %48
  br label %52

; <label>:52                                      ; preds = %227, %51
  %53 = load i32* @Trynum, align 4
  %54 = icmp slt i32 %53, 128
  br i1 %54, label %55, label %60

; <label>:55                                      ; preds = %52
  %56 = load i8** %1, align 8
  %57 = load i8* %56
  %58 = sext i8 %57 to i32
  %59 = icmp ne i32 %58, 0
  br label %60

; <label>:60                                      ; preds = %55, %52
  %61 = phi i1 [ false, %52 ], [ %59, %55 ]
  br i1 %61, label %62, label %228

; <label>:62                                      ; preds = %60
  %63 = load i8** %1, align 8
  %64 = load i8* %63
  %65 = sext i8 %64 to i32
  %66 = icmp ne i32 %65, 110
  br i1 %66, label %67, label %77

; <label>:67                                      ; preds = %62
  %68 = load i8** %1, align 8
  %69 = load i8* %68
  %70 = sext i8 %69 to i32
  %71 = icmp ne i32 %70, 92
  br i1 %71, label %72, label %77

; <label>:72                                      ; preds = %67
  %73 = load i8** %1, align 8
  %74 = load i8* %73
  store i8 %74, i8* %c, align 1
  %75 = load i8** %1, align 8
  %76 = getelementptr inbounds i8* %75, i32 1
  store i8* %76, i8** %1, align 8
  br label %201

; <label>:77                                      ; preds = %67, %62
  %78 = load i8** %1, align 8
  %79 = getelementptr inbounds i8* %78, i32 1
  store i8* %79, i8** %1, align 8
  %80 = getelementptr inbounds [4 x i8]* %num, i32 0, i64 0
  store i8 0, i8* %80, align 1
  %81 = getelementptr inbounds [4 x i8]* %num, i32 0, i64 1
  store i8 0, i8* %81, align 1
  %82 = getelementptr inbounds [4 x i8]* %num, i32 0, i64 2
  store i8 0, i8* %82, align 1
  %83 = getelementptr inbounds [4 x i8]* %num, i32 0, i64 3
  store i8 0, i8* %83, align 1
  %84 = load i8** %1, align 8
  %85 = getelementptr inbounds i8* %84, i64 0
  %86 = load i8* %85
  %87 = sext i8 %86 to i32
  %88 = sext i32 %87 to i64
  %89 = call i16** @__ctype_b_loc() nounwind readnone
  %90 = load i16** %89
  %91 = getelementptr inbounds i16* %90, i64 %88
  %92 = load i16* %91
  %93 = zext i16 %92 to i32
  %94 = and i32 %93, 2048
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %137

; <label>:96                                      ; preds = %77
  %97 = load i8** %1, align 8
  %98 = getelementptr inbounds i8* %97, i64 0
  %99 = load i8* %98
  %100 = getelementptr inbounds [4 x i8]* %num, i32 0, i64 0
  store i8 %99, i8* %100, align 1
  %101 = load i8** %1, align 8
  %102 = getelementptr inbounds i8* %101, i64 1
  %103 = load i8* %102
  %104 = sext i8 %103 to i32
  %105 = sext i32 %104 to i64
  %106 = call i16** @__ctype_b_loc() nounwind readnone
  %107 = load i16** %106
  %108 = getelementptr inbounds i16* %107, i64 %105
  %109 = load i16* %108
  %110 = zext i16 %109 to i32
  %111 = and i32 %110, 2048
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %136

; <label>:113                                     ; preds = %96
  %114 = load i8** %1, align 8
  %115 = getelementptr inbounds i8* %114, i64 1
  %116 = load i8* %115
  %117 = getelementptr inbounds [4 x i8]* %num, i32 0, i64 1
  store i8 %116, i8* %117, align 1
  %118 = load i8** %1, align 8
  %119 = getelementptr inbounds i8* %118, i64 2
  %120 = load i8* %119
  %121 = sext i8 %120 to i32
  %122 = sext i32 %121 to i64
  %123 = call i16** @__ctype_b_loc() nounwind readnone
  %124 = load i16** %123
  %125 = getelementptr inbounds i16* %124, i64 %122
  %126 = load i16* %125
  %127 = zext i16 %126 to i32
  %128 = and i32 %127, 2048
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %135

; <label>:130                                     ; preds = %113
  %131 = load i8** %1, align 8
  %132 = getelementptr inbounds i8* %131, i64 2
  %133 = load i8* %132
  %134 = getelementptr inbounds [4 x i8]* %num, i32 0, i64 2
  store i8 %133, i8* %134, align 1
  br label %135

; <label>:135                                     ; preds = %130, %113
  br label %136

; <label>:136                                     ; preds = %135, %96
  br label %137

; <label>:137                                     ; preds = %136, %77
  %138 = load i8** %1, align 8
  %139 = getelementptr inbounds i8* %138, i64 -1
  %140 = load i8* %139
  %141 = sext i8 %140 to i32
  %142 = icmp eq i32 %141, 110
  br i1 %142, label %143, label %151

; <label>:143                                     ; preds = %137
  %144 = getelementptr inbounds [4 x i8]* %num, i32 0, i32 0
  %145 = call i64 @strlen(i8* %144) nounwind readonly
  %146 = load i8** %1, align 8
  %147 = getelementptr inbounds i8* %146, i64 %145
  store i8* %147, i8** %1, align 8
  %148 = getelementptr inbounds [4 x i8]* %num, i32 0, i32 0
  %149 = call i32 @atoi(i8* %148) nounwind readonly
  %150 = trunc i32 %149 to i8
  store i8 %150, i8* %c, align 1
  br label %200

; <label>:151                                     ; preds = %137
  %152 = getelementptr inbounds [4 x i8]* %num, i32 0, i32 0
  %153 = call i64 @strlen(i8* %152) nounwind readonly
  %154 = load i8** %1, align 8
  %155 = getelementptr inbounds i8* %154, i64 %153
  store i8* %155, i8** %1, align 8
  store i8 0, i8* %c, align 1
  %156 = getelementptr inbounds [4 x i8]* %num, i32 0, i64 0
  %157 = load i8* %156, align 1
  %158 = icmp ne i8 %157, 0
  br i1 %158, label %159, label %165

; <label>:159                                     ; preds = %151
  %160 = getelementptr inbounds [4 x i8]* %num, i32 0, i64 0
  %161 = load i8* %160, align 1
  %162 = sext i8 %161 to i32
  %163 = sub nsw i32 %162, 48
  %164 = trunc i32 %163 to i8
  store i8 %164, i8* %c, align 1
  br label %165

; <label>:165                                     ; preds = %159, %151
  %166 = getelementptr inbounds [4 x i8]* %num, i32 0, i64 1
  %167 = load i8* %166, align 1
  %168 = icmp ne i8 %167, 0
  br i1 %168, label %169, label %182

; <label>:169                                     ; preds = %165
  %170 = load i8* %c, align 1
  %171 = zext i8 %170 to i32
  %172 = shl i32 %171, 3
  %173 = trunc i32 %172 to i8
  store i8 %173, i8* %c, align 1
  %174 = getelementptr inbounds [4 x i8]* %num, i32 0, i64 1
  %175 = load i8* %174, align 1
  %176 = sext i8 %175 to i32
  %177 = sub nsw i32 %176, 48
  %178 = load i8* %c, align 1
  %179 = zext i8 %178 to i32
  %180 = add nsw i32 %179, %177
  %181 = trunc i32 %180 to i8
  store i8 %181, i8* %c, align 1
  br label %182

; <label>:182                                     ; preds = %169, %165
  %183 = getelementptr inbounds [4 x i8]* %num, i32 0, i64 2
  %184 = load i8* %183, align 1
  %185 = icmp ne i8 %184, 0
  br i1 %185, label %186, label %199

; <label>:186                                     ; preds = %182
  %187 = load i8* %c, align 1
  %188 = zext i8 %187 to i32
  %189 = shl i32 %188, 3
  %190 = trunc i32 %189 to i8
  store i8 %190, i8* %c, align 1
  %191 = getelementptr inbounds [4 x i8]* %num, i32 0, i64 2
  %192 = load i8* %191, align 1
  %193 = sext i8 %192 to i32
  %194 = sub nsw i32 %193, 48
  %195 = load i8* %c, align 1
  %196 = zext i8 %195 to i32
  %197 = add nsw i32 %196, %194
  %198 = trunc i32 %197 to i8
  store i8 %198, i8* %c, align 1
  br label %199

; <label>:199                                     ; preds = %186, %182
  br label %200

; <label>:200                                     ; preds = %199, %143
  br label %201

; <label>:201                                     ; preds = %200, %72
  %202 = load i8* %c, align 1
  %203 = zext i8 %202 to i32
  %204 = and i32 %203, 127
  %205 = trunc i32 %204 to i8
  store i8 %205, i8* %c, align 1
  %206 = load i8* %c, align 1
  %207 = zext i8 %206 to i64
  %208 = getelementptr inbounds [228 x i8]* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 23), i32 0, i64 %207
  %209 = load i8* %208, align 1
  %210 = icmp ne i8 %209, 0
  br i1 %210, label %227, label %211

; <label>:211                                     ; preds = %201
  %212 = load i8* %c, align 1
  %213 = zext i8 %212 to i64
  %214 = getelementptr inbounds [228 x i8]* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 23), i32 0, i64 %213
  store i8 1, i8* %214, align 1
  %215 = load i32* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 11), align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 11), align 4
  %217 = trunc i32 %215 to i16
  %218 = load i8* %c, align 1
  %219 = zext i8 %218 to i64
  %220 = getelementptr inbounds [228 x i16]* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 20), i32 0, i64 %219
  store i16 %217, i16* %220, align 2
  %221 = load i8* %c, align 1
  %222 = load i32* @Trynum, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds [228 x i8]* @Try, i32 0, i64 %223
  store i8 %221, i8* %224, align 1
  %225 = load i32* @Trynum, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* @Trynum, align 4
  br label %227

; <label>:227                                     ; preds = %211, %201
  br label %52

; <label>:228                                     ; preds = %60
  br label %229

; <label>:229                                     ; preds = %228, %48
  ret void
}

declare void @treeinit(i8*, i8*)

declare void @askmode()

declare void @treeoutput()

define internal void @expandmode(i32 %option) nounwind uwtable {
  %1 = alloca i32, align 4
  %buf = alloca [8192 x i8], align 16
  %explength = alloca i32, align 4
  %flagp = alloca i8*, align 8
  %ibuf = alloca [8192 x i8], align 16
  %mask = alloca [1 x i64], align 8
  %origbuf = alloca [8192 x i8], align 16
  %ratiobuf = alloca [20 x i8], align 16
  %rootlength = alloca i32, align 4
  %temp = alloca i32, align 4
  store i32 %option, i32* %1, align 4
  br label %2

; <label>:2                                       ; preds = %180, %0
  %3 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i32 0
  %4 = load %struct._IO_FILE** @stdin, align 8
  %5 = call i8* @xgets(i8* %3, i32 8192, %struct._IO_FILE* %4)
  %6 = icmp ne i8* %5, null
  br i1 %6, label %7, label %182

; <label>:7                                       ; preds = %2
  %8 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i32 0
  %9 = call i64 @strlen(i8* %8) nounwind readonly
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %rootlength, align 4
  %11 = load i32* %rootlength, align 4
  %12 = sub nsw i32 %11, 1
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i64 %13
  %15 = load i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 10
  br i1 %17, label %18, label %23

; <label>:18                                      ; preds = %7
  %19 = load i32* %rootlength, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* %rootlength, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i64 %21
  store i8 0, i8* %22, align 1
  br label %23

; <label>:23                                      ; preds = %18, %7
  %24 = getelementptr inbounds [8192 x i8]* %origbuf, i32 0, i32 0
  %25 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i32 0
  %26 = call i8* @strcpy(i8* %24, i8* %25) nounwind
  %27 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i32 0
  %28 = load i8* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 19), align 1
  %29 = sext i8 %28 to i32
  %30 = call i8* @index(i8* %27, i32 %29) nounwind readonly
  store i8* %30, i8** %flagp, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %41

; <label>:32                                      ; preds = %23
  %33 = load i8** %flagp, align 8
  %34 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i32 0
  %35 = ptrtoint i8* %33 to i64
  %36 = ptrtoint i8* %34 to i64
  %37 = sub i64 %35, %36
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %rootlength, align 4
  %39 = load i8** %flagp, align 8
  %40 = getelementptr inbounds i8* %39, i32 1
  store i8* %40, i8** %flagp, align 8
  store i8 0, i8* %39
  br label %41

; <label>:41                                      ; preds = %32, %23
  %42 = load i32* %1, align 4
  %43 = icmp eq i32 %42, 2
  br i1 %43, label %50, label %44

; <label>:44                                      ; preds = %41
  %45 = load i32* %1, align 4
  %46 = icmp eq i32 %45, 3
  br i1 %46, label %50, label %47

; <label>:47                                      ; preds = %44
  %48 = load i32* %1, align 4
  %49 = icmp eq i32 %48, 4
  br i1 %49, label %50, label %53

; <label>:50                                      ; preds = %47, %44, %41
  %51 = getelementptr inbounds [8192 x i8]* %origbuf, i32 0, i32 0
  %52 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str132, i32 0, i32 0), i8* %51)
  br label %53

; <label>:53                                      ; preds = %50, %47
  %54 = load i8** %flagp, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %66

; <label>:56                                      ; preds = %53
  %57 = load i8** %flagp, align 8
  %58 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i32 0
  %59 = ptrtoint i8* %57 to i64
  %60 = ptrtoint i8* %58 to i64
  %61 = sub i64 %59, %60
  %62 = icmp sgt i64 %61, 100
  br i1 %62, label %63, label %65

; <label>:63                                      ; preds = %56
  %64 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i64 100
  store i8 0, i8* %64, align 1
  br label %65

; <label>:65                                      ; preds = %63, %56
  br label %74

; <label>:66                                      ; preds = %53
  %67 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i32 0
  %68 = call i64 @strlen(i8* %67) nounwind readonly
  %69 = trunc i64 %68 to i32
  %70 = icmp sgt i32 %69, 99
  br i1 %70, label %71, label %73

; <label>:71                                      ; preds = %66
  %72 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i64 100
  store i8 0, i8* %72, align 1
  br label %73

; <label>:73                                      ; preds = %71, %66
  br label %74

; <label>:74                                      ; preds = %73, %65
  %75 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i32 0
  %76 = load %struct._IO_FILE** @stdout, align 8
  %77 = call i32 @fputs(i8* %75, %struct._IO_FILE* %76)
  %78 = load i8** %flagp, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %180

; <label>:80                                      ; preds = %74
  %81 = getelementptr inbounds [1 x i64]* %mask, i32 0, i32 0
  %82 = bitcast i64* %81 to i8*
  call void @llvm.memset.p0i8.i64(i8* %82, i8 0, i64 8, i32 1, i1 false)
  br label %83

; <label>:83                                      ; preds = %130, %80
  %84 = load i8** %flagp, align 8
  %85 = load i8* %84
  %86 = sext i8 %85 to i32
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

; <label>:88                                      ; preds = %83
  %89 = load i8** %flagp, align 8
  %90 = load i8* %89
  %91 = sext i8 %90 to i32
  %92 = icmp ne i32 %91, 10
  br label %93

; <label>:93                                      ; preds = %88, %83
  %94 = phi i1 [ false, %83 ], [ %92, %88 ]
  br i1 %94, label %95, label %131

; <label>:95                                      ; preds = %93
  %96 = load i8** %flagp, align 8
  %97 = load i8* %96
  %98 = zext i8 %97 to i32
  %99 = sub nsw i32 %98, 65
  store i32 %99, i32* %temp, align 4
  %100 = load i32* %temp, align 4
  %101 = icmp sge i32 %100, 0
  br i1 %101, label %102, label %112

; <label>:102                                     ; preds = %95
  %103 = load i32* %temp, align 4
  %104 = icmp sle i32 %103, 26
  br i1 %104, label %105, label %112

; <label>:105                                     ; preds = %102
  %106 = load i32* %temp, align 4
  %107 = zext i32 %106 to i64
  %108 = shl i64 1, %107
  %109 = getelementptr inbounds [1 x i64]* %mask, i32 0, i64 0
  %110 = load i64* %109, align 8
  %111 = or i64 %110, %108
  store i64 %111, i64* %109, align 8
  br label %118

; <label>:112                                     ; preds = %102, %95
  %113 = load %struct._IO_FILE** @stderr, align 8
  %114 = load i8** %flagp, align 8
  %115 = load i8* %114
  %116 = zext i8 %115 to i32
  %117 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %113, i8* getelementptr inbounds ([38 x i8]* @.str133, i32 0, i32 0), i32 %116)
  br label %118

; <label>:118                                     ; preds = %112, %105
  %119 = load i8** %flagp, align 8
  %120 = getelementptr inbounds i8* %119, i32 1
  store i8* %120, i8** %flagp, align 8
  %121 = load i8** %flagp, align 8
  %122 = load i8* %121
  %123 = sext i8 %122 to i32
  %124 = load i8* getelementptr inbounds (%struct.hashheader* @hashheader, i32 0, i32 19), align 1
  %125 = sext i8 %124 to i32
  %126 = icmp eq i32 %123, %125
  br i1 %126, label %127, label %130

; <label>:127                                     ; preds = %118
  %128 = load i8** %flagp, align 8
  %129 = getelementptr inbounds i8* %128, i32 1
  store i8* %129, i8** %flagp, align 8
  br label %130

; <label>:130                                     ; preds = %127, %118
  br label %83

; <label>:131                                     ; preds = %93
  %132 = getelementptr inbounds [8192 x i8]* %ibuf, i32 0, i32 0
  %133 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i32 0
  %134 = call i32 @strtoichar(i8* %132, i8* %133, i32 8192, i32 1)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %140

; <label>:136                                     ; preds = %131
  %137 = load %struct._IO_FILE** @stderr, align 8
  %138 = getelementptr inbounds [8192 x i8]* %buf, i32 0, i32 0
  %139 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %137, i8* getelementptr inbounds ([51 x i8]* @.str134, i32 0, i32 0), i8* %138, i32 997, i8* getelementptr inbounds ([83 x i8]* @.str135, i32 0, i32 0))
  br label %140

; <label>:140                                     ; preds = %136, %131
  %141 = getelementptr inbounds [8192 x i8]* %origbuf, i32 0, i32 0
  %142 = getelementptr inbounds [8192 x i8]* %ibuf, i32 0, i32 0
  %143 = getelementptr inbounds [1 x i64]* %mask, i32 0, i32 0
  %144 = load i32* %1, align 4
  %145 = call i32 @expand_pre(i8* %141, i8* %142, i64* %143, i32 %144, i8* getelementptr inbounds ([1 x i8]* @.str55, i32 0, i32 0))
  store i32 %145, i32* %explength, align 4
  %146 = getelementptr inbounds [8192 x i8]* %origbuf, i32 0, i32 0
  %147 = getelementptr inbounds [8192 x i8]* %ibuf, i32 0, i32 0
  %148 = getelementptr inbounds [1 x i64]* %mask, i32 0, i32 0
  %149 = load i32* %1, align 4
  %150 = call i32 @expand_suf(i8* %146, i8* %147, i64* %148, i32 0, i32 %149, i8* getelementptr inbounds ([1 x i8]* @.str55, i32 0, i32 0))
  %151 = load i32* %explength, align 4
  %152 = add nsw i32 %151, %150
  store i32 %152, i32* %explength, align 4
  %153 = load i32* %rootlength, align 4
  %154 = load i32* %explength, align 4
  %155 = add nsw i32 %154, %153
  store i32 %155, i32* %explength, align 4
  %156 = load i32* %1, align 4
  %157 = icmp eq i32 %156, 4
  br i1 %157, label %158, label %179

; <label>:158                                     ; preds = %140
  %159 = getelementptr inbounds [20 x i8]* %ratiobuf, i32 0, i32 0
  %160 = load i32* %explength, align 4
  %161 = sitofp i32 %160 to double
  %162 = load i32* %rootlength, align 4
  %163 = sitofp i32 %162 to double
  %164 = fdiv double %161, %163
  %165 = call i32 (i8*, i8*, ...)* @sprintf(i8* %159, i8* getelementptr inbounds ([4 x i8]* @.str136, i32 0, i32 0), double %164) nounwind
  %166 = getelementptr inbounds [20 x i8]* %ratiobuf, i32 0, i32 0
  %167 = load %struct._IO_FILE** @stdout, align 8
  %168 = call i32 @fputs(i8* %166, %struct._IO_FILE* %167)
  %169 = getelementptr inbounds [8192 x i8]* %origbuf, i32 0, i32 0
  %170 = getelementptr inbounds [8192 x i8]* %ibuf, i32 0, i32 0
  %171 = getelementptr inbounds [1 x i64]* %mask, i32 0, i32 0
  %172 = getelementptr inbounds [20 x i8]* %ratiobuf, i32 0, i32 0
  %173 = call i32 @expand_pre(i8* %169, i8* %170, i64* %171, i32 3, i8* %172)
  %174 = getelementptr inbounds [8192 x i8]* %origbuf, i32 0, i32 0
  %175 = getelementptr inbounds [8192 x i8]* %ibuf, i32 0, i32 0
  %176 = getelementptr inbounds [1 x i64]* %mask, i32 0, i32 0
  %177 = getelementptr inbounds [20 x i8]* %ratiobuf, i32 0, i32 0
  %178 = call i32 @expand_suf(i8* %174, i8* %175, i64* %176, i32 0, i32 3, i8* %177)
  br label %179

; <label>:179                                     ; preds = %158, %140
  br label %180

; <label>:180                                     ; preds = %179, %74
  %181 = call i32 @putchar(i32 10)
  br label %2

; <label>:182                                     ; preds = %2
  ret void
}

declare void @dumpmode()

declare void @setbuf(%struct._IO_FILE*, i8*) nounwind

declare void @checkfile()

declare void @terminit()

define internal void @dofile(i8* %filename) nounwind uwtable {
  %1 = alloca i8*, align 8
  %statbuf = alloca %struct.stat, align 8
  %cp = alloca i8*, align 8
  store i8* %filename, i8** %1, align 8
  %2 = load i8** %1, align 8
  store i8* %2, i8** @currentfile, align 8
  %3 = load i32* @deftflag, align 4
  store i32 %3, i32* @tflag, align 4
  %4 = load i32* @tflag, align 4
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %17

; <label>:6                                       ; preds = %0
  %7 = load i8** %1, align 8
  %8 = call i8* @rindex(i8* %7, i32 46) nounwind readonly
  store i8* %8, i8** %cp, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %14

; <label>:10                                      ; preds = %6
  %11 = load i8** %cp, align 8
  %12 = call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([5 x i8]* @.str137, i32 0, i32 0)) nounwind readonly
  %13 = icmp eq i32 %12, 0
  br label %14

; <label>:14                                      ; preds = %10, %6
  %15 = phi i1 [ false, %6 ], [ %13, %10 ]
  %16 = zext i1 %15 to i32
  store i32 %16, i32* @tflag, align 4
  br label %17

; <label>:17                                      ; preds = %14, %0
  %18 = load i32* @prefstringchar, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %30

; <label>:20                                      ; preds = %17
  %21 = load i8** %1, align 8
  %22 = load i32* @deftflag, align 4
  %23 = icmp slt i32 %22, 0
  %24 = select i1 %23, i32* @tflag, i32* null
  %25 = call i32 @findfiletype(i8* %21, i32 0, i32* %24)
  store i32 %25, i32* @defdupchar, align 4
  %26 = load i32* @defdupchar, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

; <label>:28                                      ; preds = %20
  store i32 0, i32* @defdupchar, align 4
  br label %29

; <label>:29                                      ; preds = %28, %20
  br label %30

; <label>:30                                      ; preds = %29, %17
  %31 = load i8** %1, align 8
  %32 = call %struct._IO_FILE* @fopen(i8* %31, i8* getelementptr inbounds ([2 x i8]* @.str138, i32 0, i32 0))
  store %struct._IO_FILE* %32, %struct._IO_FILE** @infile, align 8
  %33 = icmp eq %struct._IO_FILE* %32, null
  br i1 %33, label %34, label %39

; <label>:34                                      ; preds = %30
  %35 = load %struct._IO_FILE** @stderr, align 8
  %36 = load i8** %1, align 8
  %37 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([16 x i8]* @.str139, i32 0, i32 0), i8* %36)
  %38 = call i32 (...)* @sleep(i32 2)
  br label %94

; <label>:39                                      ; preds = %30
  %40 = load i8** %1, align 8
  %41 = call i32 (...)* @access(i8* %40, i32 2)
  %42 = icmp slt i32 %41, 0
  %43 = zext i1 %42 to i32
  store i32 %43, i32* @readonly, align 4
  %44 = load i32* @readonly, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

; <label>:46                                      ; preds = %39
  %47 = load %struct._IO_FILE** @stderr, align 8
  %48 = load i8** %1, align 8
  %49 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %47, i8* getelementptr inbounds ([30 x i8]* @.str140, i32 0, i32 0), i8* %48)
  %50 = call i32 (...)* @sleep(i32 2)
  br label %51

; <label>:51                                      ; preds = %46, %39
  %52 = load %struct._IO_FILE** @infile, align 8
  %53 = call i32 @fileno(%struct._IO_FILE* %52) nounwind
  %54 = call i32 @fstat(i32 %53, %struct.stat* %statbuf) nounwind
  %55 = call i8* @strcpy(i8* getelementptr inbounds ([4096 x i8]* @tempfile, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8]* @.str115, i32 0, i32 0)) nounwind
  %56 = call i8* @mktemp(i8* getelementptr inbounds ([4096 x i8]* @tempfile, i32 0, i32 0)) nounwind
  %57 = icmp eq i8* %56, null
  br i1 %57, label %65, label %58

; <label>:58                                      ; preds = %51
  %59 = load i8* getelementptr inbounds ([4096 x i8]* @tempfile, i32 0, i64 0), align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %65, label %62

; <label>:62                                      ; preds = %58
  %63 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([4096 x i8]* @tempfile, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str141, i32 0, i32 0))
  store %struct._IO_FILE* %63, %struct._IO_FILE** @outfile, align 8
  %64 = icmp eq %struct._IO_FILE* %63, null
  br i1 %64, label %65, label %73

; <label>:65                                      ; preds = %62, %58, %51
  %66 = load %struct._IO_FILE** @stderr, align 8
  %67 = load i8* getelementptr inbounds ([4096 x i8]* @tempfile, i32 0, i64 0), align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 0
  %70 = select i1 %69, i8* getelementptr inbounds ([15 x i8]* @.str143, i32 0, i32 0), i8* getelementptr inbounds ([4096 x i8]* @tempfile, i32 0, i32 0)
  %71 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %66, i8* getelementptr inbounds ([18 x i8]* @.str142, i32 0, i32 0), i8* %70)
  %72 = call i32 (...)* @sleep(i32 2)
  br label %94

; <label>:73                                      ; preds = %62
  %74 = getelementptr inbounds %struct.stat* %statbuf, i32 0, i32 3
  %75 = load i32* %74, align 4
  %76 = call i32 @chmod(i8* getelementptr inbounds ([4096 x i8]* @tempfile, i32 0, i32 0), i32 %75) nounwind
  store i32 0, i32* @quit, align 4
  store i32 0, i32* @changes, align 4
  call void @checkfile()
  %77 = load %struct._IO_FILE** @infile, align 8
  %78 = call i32 @fclose(%struct._IO_FILE* %77)
  %79 = load %struct._IO_FILE** @outfile, align 8
  %80 = call i32 @fclose(%struct._IO_FILE* %79)
  %81 = load i32* @cflag, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

; <label>:83                                      ; preds = %73
  call void @treeoutput()
  br label %84

; <label>:84                                      ; preds = %83, %73
  %85 = load i32* @changes, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %92

; <label>:87                                      ; preds = %84
  %88 = load i32* @readonly, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %92, label %90

; <label>:90                                      ; preds = %87
  %91 = load i8** %1, align 8
  call void @update_file(i8* %91, %struct.stat* %statbuf)
  br label %92

; <label>:92                                      ; preds = %90, %87, %84
  %93 = call i32 (...)* @unlink(i8* getelementptr inbounds ([4096 x i8]* @tempfile, i32 0, i32 0))
  br label %94

; <label>:94                                      ; preds = %92, %65, %34
  ret void
}

declare void @done(i32)

declare i8* @xgets(i8*, i32, %struct._IO_FILE*)

declare i32 @fputs(i8*, %struct._IO_FILE*)

declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) nounwind

declare i32 @strtoichar(i8*, i8*, i32, i32)

declare i32 @expand_pre(i8*, i8*, i64*, i32, i8*)

declare i32 @expand_suf(i8*, i8*, i64*, i32, i32, i8*)

declare i32 @putchar(i32)

declare %struct._IO_FILE* @fopen(i8*, i8*)

declare i32 @sleep(...)

declare i32 @fstat(i32, %struct.stat*) nounwind

declare i32 @fileno(%struct._IO_FILE*) nounwind

declare i8* @mktemp(i8*) nounwind

declare i32 @chmod(i8*, i32) nounwind

declare i32 @fclose(%struct._IO_FILE*)

define internal void @update_file(i8* %filename, %struct.stat* %statbuf) nounwind uwtable {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.stat*, align 8
  %bakfile = alloca [4096 x i8], align 16
  %c = alloca i32, align 4
  %pathtail = alloca i8*, align 8
  store i8* %filename, i8** %1, align 8
  store %struct.stat* %statbuf, %struct.stat** %2, align 8
  %3 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([4096 x i8]* @tempfile, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str138, i32 0, i32 0))
  store %struct._IO_FILE* %3, %struct._IO_FILE** @infile, align 8
  %4 = icmp eq %struct._IO_FILE* %3, null
  br i1 %4, label %5, label %9

; <label>:5                                       ; preds = %0
  %6 = load %struct._IO_FILE** @stderr, align 8
  %7 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([34 x i8]* @.str144, i32 0, i32 0), i8* getelementptr inbounds ([4096 x i8]* @tempfile, i32 0, i32 0))
  %8 = call i32 (...)* @sleep(i32 2)
  br label %88

; <label>:9                                       ; preds = %0
  %10 = getelementptr inbounds [4096 x i8]* %bakfile, i32 0, i32 0
  %11 = load i8** %1, align 8
  %12 = call i32 (i8*, i8*, ...)* @sprintf(i8* %10, i8* getelementptr inbounds ([7 x i8]* @.str145, i32 0, i32 0), i32 4091, i8* %11, i8* getelementptr inbounds ([5 x i8]* @.str10, i32 0, i32 0)) nounwind
  %13 = getelementptr inbounds [4096 x i8]* %bakfile, i32 0, i32 0
  %14 = call i8* @rindex(i8* %13, i32 47) nounwind readonly
  store i8* %14, i8** %pathtail, align 8
  %15 = load i8** %pathtail, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %19

; <label>:17                                      ; preds = %9
  %18 = getelementptr inbounds [4096 x i8]* %bakfile, i32 0, i32 0
  store i8* %18, i8** %pathtail, align 8
  br label %22

; <label>:19                                      ; preds = %9
  %20 = load i8** %pathtail, align 8
  %21 = getelementptr inbounds i8* %20, i32 1
  store i8* %21, i8** %pathtail, align 8
  br label %22

; <label>:22                                      ; preds = %19, %17
  %23 = load i8** %1, align 8
  %24 = getelementptr inbounds [4096 x i8]* %bakfile, i32 0, i32 0
  %25 = load i8** %pathtail, align 8
  %26 = getelementptr inbounds [4096 x i8]* %bakfile, i32 0, i32 0
  %27 = ptrtoint i8* %25 to i64
  %28 = ptrtoint i8* %26 to i64
  %29 = sub i64 %27, %28
  %30 = add nsw i64 %29, 255
  %31 = call i32 @strncmp(i8* %23, i8* %24, i64 %30) nounwind readonly
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

; <label>:33                                      ; preds = %22
  %34 = getelementptr inbounds [4096 x i8]* %bakfile, i32 0, i32 0
  %35 = call i32 (...)* @unlink(i8* %34)
  br label %36

; <label>:36                                      ; preds = %33, %22
  %37 = load i8** %1, align 8
  %38 = getelementptr inbounds [4096 x i8]* %bakfile, i32 0, i32 0
  %39 = call i32 (...)* @link(i8* %37, i8* %38)
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %44

; <label>:41                                      ; preds = %36
  %42 = load i8** %1, align 8
  %43 = call i32 (...)* @unlink(i8* %42)
  br label %44

; <label>:44                                      ; preds = %41, %36
  %45 = load i8** %1, align 8
  %46 = call %struct._IO_FILE* @fopen(i8* %45, i8* getelementptr inbounds ([2 x i8]* @.str141, i32 0, i32 0))
  store %struct._IO_FILE* %46, %struct._IO_FILE** @outfile, align 8
  %47 = icmp eq %struct._IO_FILE* %46, null
  br i1 %47, label %48, label %53

; <label>:48                                      ; preds = %44
  %49 = load %struct._IO_FILE** @stderr, align 8
  %50 = load i8** %1, align 8
  %51 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %49, i8* getelementptr inbounds ([18 x i8]* @.str142, i32 0, i32 0), i8* %50)
  %52 = call i32 (...)* @sleep(i32 2)
  br label %88

; <label>:53                                      ; preds = %44
  %54 = load i8** %1, align 8
  %55 = load %struct.stat** %2, align 8
  %56 = getelementptr inbounds %struct.stat* %55, i32 0, i32 3
  %57 = load i32* %56, align 4
  %58 = call i32 @chmod(i8* %54, i32 %57) nounwind
  br label %59

; <label>:59                                      ; preds = %63, %53
  %60 = load %struct._IO_FILE** @infile, align 8
  %61 = call i32 @_IO_getc(%struct._IO_FILE* %60)
  store i32 %61, i32* %c, align 4
  %62 = icmp ne i32 %61, -1
  br i1 %62, label %63, label %67

; <label>:63                                      ; preds = %59
  %64 = load i32* %c, align 4
  %65 = load %struct._IO_FILE** @outfile, align 8
  %66 = call i32 @_IO_putc(i32 %64, %struct._IO_FILE* %65)
  br label %59

; <label>:67                                      ; preds = %59
  %68 = load %struct._IO_FILE** @infile, align 8
  %69 = call i32 @fclose(%struct._IO_FILE* %68)
  %70 = load %struct._IO_FILE** @outfile, align 8
  %71 = call i32 @fclose(%struct._IO_FILE* %70)
  %72 = load i32* @xflag, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %88

; <label>:74                                      ; preds = %67
  %75 = load i8** %1, align 8
  %76 = getelementptr inbounds [4096 x i8]* %bakfile, i32 0, i32 0
  %77 = load i8** %pathtail, align 8
  %78 = getelementptr inbounds [4096 x i8]* %bakfile, i32 0, i32 0
  %79 = ptrtoint i8* %77 to i64
  %80 = ptrtoint i8* %78 to i64
  %81 = sub i64 %79, %80
  %82 = add nsw i64 %81, 255
  %83 = call i32 @strncmp(i8* %75, i8* %76, i64 %82) nounwind readonly
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

; <label>:85                                      ; preds = %74
  %86 = getelementptr inbounds [4096 x i8]* %bakfile, i32 0, i32 0
  %87 = call i32 (...)* @unlink(i8* %86)
  br label %88

; <label>:88                                      ; preds = %85, %74, %67, %48, %5
  ret void
}

declare i32 @unlink(...)

declare i32 @link(...)

declare i32 @_IO_getc(%struct._IO_FILE*)

declare i32 @_IO_putc(i32, %struct._IO_FILE*)

declare i16** @__ctype_b_loc() nounwind readnone

declare void @givehelp(i32)
