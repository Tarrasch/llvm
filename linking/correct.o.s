	.file	"correct.o"
	.text
	.globl	givehelp
	.align	16, 0x90
	.type	givehelp,@function
givehelp:                               # @givehelp
	.cfi_startproc
# BB#0:
	subq	$24, %rsp
.Ltmp1:
	.cfi_def_cfa_offset 32
	movl	%edi, 20(%rsp)
	testl	%edi, %edi
	je	.LBB0_2
# BB#1:
	callq	erase
	movq	stdout(%rip), %rax
	jmp	.LBB0_3
.LBB0_2:
	movq	stderr(%rip), %rax
.LBB0_3:
	movq	%rax, 8(%rsp)
	movq	8(%rsp), %rdi
	movl	$.L.str, %esi
	xorb	%al, %al
	callq	fprintf
	movq	8(%rsp), %rdi
	movl	$.L.str1, %esi
	xorb	%al, %al
	callq	fprintf
	movq	8(%rsp), %rdi
	movl	$.L.str2, %esi
	xorb	%al, %al
	callq	fprintf
	movq	8(%rsp), %rdi
	movl	$.L.str3, %esi
	xorb	%al, %al
	callq	fprintf
	movq	8(%rsp), %rdi
	movl	$.L.str4, %esi
	xorb	%al, %al
	callq	fprintf
	movq	8(%rsp), %rdi
	movl	$.L.str5, %esi
	xorb	%al, %al
	callq	fprintf
	movq	8(%rsp), %rdi
	movl	$.L.str5, %esi
	xorb	%al, %al
	callq	fprintf
	movq	8(%rsp), %rdi
	movl	$.L.str5, %esi
	xorb	%al, %al
	callq	fprintf
	movq	8(%rsp), %rdi
	movl	$.L.str5, %esi
	xorb	%al, %al
	callq	fprintf
	movq	8(%rsp), %rdi
	movl	$.L.str6, %esi
	xorb	%al, %al
	callq	fprintf
	movq	8(%rsp), %rdi
	movl	$.L.str7, %esi
	xorb	%al, %al
	callq	fprintf
	movq	8(%rsp), %rdi
	movl	$.L.str8, %esi
	xorb	%al, %al
	callq	fprintf
	movq	8(%rsp), %rdi
	movl	$.L.str9, %esi
	xorb	%al, %al
	callq	fprintf
	movq	8(%rsp), %rdi
	movl	$.L.str10, %esi
	xorb	%al, %al
	callq	fprintf
	movq	8(%rsp), %rdi
	movl	$.L.str11, %esi
	xorb	%al, %al
	callq	fprintf
	movq	8(%rsp), %rdi
	movl	$.L.str12, %esi
	xorb	%al, %al
	callq	fprintf
	movq	8(%rsp), %rdi
	movl	$.L.str13, %esi
	xorb	%al, %al
	callq	fprintf
	movq	8(%rsp), %rdi
	movl	$.L.str14, %esi
	xorb	%al, %al
	callq	fprintf
	movq	8(%rsp), %rdi
	movl	$.L.str15, %esi
	xorb	%al, %al
	callq	fprintf
	movq	8(%rsp), %rdi
	movl	$.L.str16, %esi
	xorb	%al, %al
	callq	fprintf
	movq	8(%rsp), %rdi
	movl	$.L.str17, %esi
	xorb	%al, %al
	callq	fprintf
	movq	8(%rsp), %rdi
	movl	$.L.str18, %esi
	xorb	%al, %al
	callq	fprintf
	movq	8(%rsp), %rdi
	movl	$.L.str19, %esi
	xorb	%al, %al
	callq	fprintf
	cmpl	$0, 20(%rsp)
	je	.LBB0_6
# BB#4:
	movq	8(%rsp), %rdi
	movl	$.L.str20, %esi
	xorb	%al, %al
	callq	fprintf
	movq	8(%rsp), %rdi
	movl	$.L.str21, %esi
	xorb	%al, %al
	callq	fprintf
	movq	8(%rsp), %rdi
	callq	fflush
	.align	16, 0x90
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	callq	getchar
	cmpl	$32, %eax
	jne	.LBB0_5
.LBB0_6:
	addq	$24, %rsp
	ret
.Ltmp2:
	.size	givehelp, .Ltmp2-givehelp
	.cfi_endproc

	.globl	checkfile
	.align	16, 0x90
	.type	checkfile,@function
checkfile:                              # @checkfile
	.cfi_startproc
# BB#0:
	subq	$24, %rsp
.Ltmp4:
	.cfi_def_cfa_offset 32
	movl	$0, 20(%rsp)
	jmp	.LBB1_1
	.align	16, 0x90
.LBB1_2:                                #   in Loop: Header=BB1_1 Depth=1
	movslq	20(%rsp), %rax
	shlq	$13, %rax
	movb	$0, contextbufs(%rax)
	incl	20(%rsp)
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	movl	20(%rsp), %eax
	cmpl	contextsize(%rip), %eax
	jge	.LBB1_4
	jmp	.LBB1_2
	.align	16, 0x90
.LBB1_3:                                #   in Loop: Header=BB1_4 Depth=1
	movq	outfile(%rip), %rdi
	callq	checkline
.LBB1_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_5 Depth 2
                                        #     Child Loop BB1_13 Depth 2
	movl	contextsize(%rip), %eax
	movl	%eax, 20(%rsp)
	jmp	.LBB1_5
	.align	16, 0x90
.LBB1_6:                                #   in Loop: Header=BB1_5 Depth=2
	movslq	20(%rsp), %rax
	movq	%rax, %rcx
	shlq	$13, %rcx
	leaq	contextbufs(%rcx), %rdi
	decl	%eax
	movslq	%eax, %rax
	shlq	$13, %rax
	leaq	contextbufs(%rax), %rsi
	callq	strcpy
.LBB1_5:                                #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	20(%rsp), %eax
	decl	%eax
	movl	%eax, 20(%rsp)
	testl	%eax, %eax
	jg	.LBB1_6
# BB#7:                                 #   in Loop: Header=BB1_4 Depth=1
	cmpl	$0, quit(%rip)
	jne	.LBB1_8
# BB#10:                                #   in Loop: Header=BB1_4 Depth=1
	movq	infile(%rip), %rdx
	movl	$contextbufs, %edi
	movl	$4096, %esi             # imm = 0x1000
	callq	fgets
	testq	%rax, %rax
	je	.LBB1_20
# BB#11:                                #   in Loop: Header=BB1_4 Depth=1
	movl	$contextbufs, %edi
	callq	strlen
	movl	%eax, 16(%rsp)
	movslq	16(%rsp), %rax
	cmpq	$4095, %rax             # imm = 0xFFF
	jne	.LBB1_3
# BB#12:                                #   in Loop: Header=BB1_4 Depth=1
	movl	16(%rsp), %eax
	decl	%eax
	movslq	%eax, %rax
	movzbl	contextbufs(%rax), %eax
	movl	%eax, 12(%rsp)
	jmp	.LBB1_13
	.align	16, 0x90
.LBB1_19:                               #   in Loop: Header=BB1_13 Depth=2
	movslq	16(%rsp), %rax
	leal	1(%rax), %ecx
	movb	12(%rsp), %dl
	movl	%ecx, 16(%rsp)
	movb	%dl, contextbufs(%rax)
	movslq	16(%rsp), %rax
	movb	$0, contextbufs(%rax)
.LBB1_13:                               #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorb	%al, %al
	movslq	16(%rsp), %rcx
	cmpq	$8190, %rcx             # imm = 0x1FFE
	ja	.LBB1_17
# BB#14:                                #   in Loop: Header=BB1_13 Depth=2
	movzbl	12(%rsp), %eax
	movsbl	hashheader+982(%rax), %ecx
	movb	$1, %al
	testl	%ecx, %ecx
	jne	.LBB1_17
# BB#15:                                #   in Loop: Header=BB1_13 Depth=2
	movzbl	12(%rsp), %ecx
	movsbl	hashheader+1666(%rcx), %ecx
	testl	%ecx, %ecx
	jne	.LBB1_17
# BB#16:                                #   in Loop: Header=BB1_13 Depth=2
	movzbl	12(%rsp), %eax
	movsbl	hashheader+1894(%rax), %eax
	testl	%eax, %eax
	setne	%al
	.align	16, 0x90
.LBB1_17:                               #   in Loop: Header=BB1_13 Depth=2
	cmpb	$1, %al
	jne	.LBB1_3
# BB#18:                                #   in Loop: Header=BB1_13 Depth=2
	movq	infile(%rip), %rdi
	callq	_IO_getc
	movl	%eax, 12(%rsp)
	cmpl	$-1, %eax
	je	.LBB1_3
	jmp	.LBB1_19
	.align	16, 0x90
.LBB1_9:                                #   in Loop: Header=BB1_8 Depth=1
	movq	outfile(%rip), %rsi
	movl	$contextbufs, %edi
	callq	fputs
.LBB1_8:                                # =>This Inner Loop Header: Depth=1
	movq	infile(%rip), %rdx
	movl	$contextbufs, %edi
	movl	$8192, %esi             # imm = 0x2000
	callq	fgets
	testq	%rax, %rax
	jne	.LBB1_9
.LBB1_20:
	addq	$24, %rsp
	ret
.Ltmp5:
	.size	checkfile, .Ltmp5-checkfile
	.cfi_endproc

	.globl	correct
	.align	16, 0x90
	.type	correct,@function
correct:                                # @correct
	.cfi_startproc
# BB#0:
	pushq	%r15
.Ltmp12:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp13:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp14:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp15:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp16:
	.cfi_def_cfa_offset 48
	subq	$384, %rsp              # imm = 0x180
.Ltmp17:
	.cfi_def_cfa_offset 432
.Ltmp18:
	.cfi_offset %rbx, -48
.Ltmp19:
	.cfi_offset %r12, -40
.Ltmp20:
	.cfi_offset %r13, -32
.Ltmp21:
	.cfi_offset %r14, -24
.Ltmp22:
	.cfi_offset %r15, -16
	movq	%rdi, 376(%rsp)
	movl	%esi, 372(%rsp)
	movq	%rdx, 360(%rsp)
	movl	%ecx, 356(%rsp)
	movq	%r8, 344(%rsp)
	movq	(%r8), %rbx
	movq	376(%rsp), %rdi
	callq	strlen
	subq	%rax, %rbx
	movq	%rbx, 312(%rsp)
	movq	360(%rsp), %rdi
	callq	strlen
	movslq	minword(%rip), %rcx
	cmpq	%rcx, %rax
	jbe	.LBB2_102
# BB#1:
	movl	$contextbufs, %r13d
	leaq	112(%rsp), %r14
	leaq	(%rsp), %r15
	jmp	.LBB2_2
	.align	16, 0x90
.LBB2_65:                               #   in Loop: Header=BB2_2 Depth=1
	callq	stop
	callq	erase
.LBB2_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_11 Depth 2
                                        #     Child Loop BB2_20 Depth 2
                                        #     Child Loop BB2_24 Depth 2
                                        #     Child Loop BB2_33 Depth 2
	movq	360(%rsp), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	callq	good
	testl	%eax, %eax
	jne	.LBB2_102
# BB#3:                                 #   in Loop: Header=BB2_2 Depth=1
	movq	360(%rsp), %rdi
	xorl	%esi, %esi
	callq	compoundgood
	testl	%eax, %eax
	jne	.LBB2_102
# BB#4:                                 #   in Loop: Header=BB2_2 Depth=1
	callq	erase
	movq	376(%rsp), %rsi
	movl	$.L.str22, %edi
	xorb	%al, %al
	callq	printf
	cmpq	$0, currentfile(%rip)
	je	.LBB2_6
# BB#5:                                 #   in Loop: Header=BB2_2 Depth=1
	movq	currentfile(%rip), %rsi
	movl	$.L.str23, %edi
	xorb	%al, %al
	callq	printf
.LBB2_6:                                #   in Loop: Header=BB2_2 Depth=1
	cmpl	$0, readonly(%rip)
	je	.LBB2_8
# BB#7:                                 #   in Loop: Header=BB2_2 Depth=1
	movl	$.L.str24, %edi
	movl	$.L.str25, %esi
	xorb	%al, %al
	callq	printf
.LBB2_8:                                #   in Loop: Header=BB2_2 Depth=1
	movl	$.L.str20, %edi
	xorb	%al, %al
	callq	printf
	movq	360(%rsp), %rdi
	callq	makepossibilities
	movl	li(%rip), %eax
	subl	contextsize(%rip), %eax
	addl	$-4, %eax
	subl	minimenusize(%rip), %eax
	movl	%eax, 332(%rsp)
	movl	maxposslen(%rip), %ecx
	addl	$8, %ecx
	movl	co(%rip), %eax
	cltd
	idivl	%ecx
	movl	%eax, 328(%rsp)
	imull	332(%rsp), %eax
	cmpl	%eax, pcount(%rip)
	jle	.LBB2_10
# BB#9:                                 #   in Loop: Header=BB2_2 Depth=1
	movl	328(%rsp), %eax
	imull	332(%rsp), %eax
	movl	%eax, pcount(%rip)
.LBB2_10:                               #   in Loop: Header=BB2_2 Depth=1
	movl	$0, 336(%rsp)
	jmp	.LBB2_11
	.align	16, 0x90
.LBB2_13:                               #   in Loop: Header=BB2_11 Depth=2
	movslq	336(%rsp), %rax
	imulq	$120, %rax, %rax
	leaq	possibilities(%rax), %rsi
	movl	$.L.str26, %edi
	xorb	%al, %al
	callq	printf
	incl	336(%rsp)
.LBB2_11:                               #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	336(%rsp), %eax
	cmpl	pcount(%rip), %eax
	jge	.LBB2_19
# BB#12:                                #   in Loop: Header=BB2_11 Depth=2
	movl	336(%rsp), %eax
	cltd
	idivl	332(%rsp)
	movl	contextsize(%rip), %ecx
	leal	3(%rcx,%rdx), %edi
	movl	maxposslen(%rip), %esi
	addl	$8, %esi
	imull	%eax, %esi
	callq	move
	movl	336(%rsp), %eax
	cmpl	easypossibilities(%rip), %eax
	jge	.LBB2_13
# BB#14:                                #   in Loop: Header=BB2_11 Depth=2
	cmpl	$10, easypossibilities(%rip)
	jl	.LBB2_18
# BB#15:                                #   in Loop: Header=BB2_11 Depth=2
	cmpl	$9, 336(%rsp)
	jg	.LBB2_18
# BB#16:                                #   in Loop: Header=BB2_11 Depth=2
	movslq	336(%rsp), %rsi
	imulq	$120, %rsi, %rax
	leaq	possibilities(%rax), %rdx
	movl	$.L.str27, %edi
	jmp	.LBB2_17
	.align	16, 0x90
.LBB2_18:                               #   in Loop: Header=BB2_11 Depth=2
	movslq	336(%rsp), %rsi
	imulq	$120, %rsi, %rax
	leaq	possibilities(%rax), %rdx
	movl	$.L.str28, %edi
.LBB2_17:                               #   in Loop: Header=BB2_11 Depth=2
                                        # kill: ESI<def> ESI<kill> RSI<kill>
	xorb	%al, %al
	callq	printf
	incl	336(%rsp)
	jmp	.LBB2_11
	.align	16, 0x90
.LBB2_19:                               #   in Loop: Header=BB2_2 Depth=1
	movl	$2, %edi
	xorl	%esi, %esi
	callq	move
	movl	contextsize(%rip), %eax
	movl	%eax, 336(%rsp)
	jmp	.LBB2_20
	.align	16, 0x90
.LBB2_21:                               #   in Loop: Header=BB2_20 Depth=2
	movslq	336(%rsp), %rax
	shlq	$13, %rax
	leaq	contextbufs(%rax), %rdi
	movq	%rdi, %rsi
	xorl	%edx, %edx
	callq	show_line
.LBB2_20:                               #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	336(%rsp), %eax
	decl	%eax
	movl	%eax, 336(%rsp)
	testl	%eax, %eax
	jg	.LBB2_21
# BB#22:                                #   in Loop: Header=BB2_2 Depth=1
	movq	$contextbufs, 320(%rsp)
	movq	344(%rsp), %rax
	movq	(%rax), %rsi
	movl	$contextbufs, %edi
	callq	line_size
	movl	sg(%rip), %ecx
	addl	%ecx, %ecx
	movl	co(%rip), %edx
	subl	%ecx, %edx
	decl	%edx
	cmpl	%edx, %eax
	jle	.LBB2_31
# BB#23:                                #   in Loop: Header=BB2_2 Depth=1
	movl	co(%rip), %ecx
	movl	%ecx, %eax
	shrl	$31, %eax
	addl	%ecx, %eax
	sarl	%eax
	movslq	%eax, %rax
	movq	312(%rsp), %rcx
	subq	%rax, %rcx
	movq	%rcx, 320(%rsp)
	jmp	.LBB2_24
	.align	16, 0x90
.LBB2_26:                               #   in Loop: Header=BB2_24 Depth=2
	movl	336(%rsp), %eax
	subl	co(%rip), %eax
	movslq	%eax, %rax
	addq	%rax, 320(%rsp)
.LBB2_24:                               #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	320(%rsp), %rax
	cmpq	312(%rsp), %rax
	jae	.LBB2_27
# BB#25:                                #   in Loop: Header=BB2_24 Depth=2
	movq	344(%rsp), %rax
	movq	(%rax), %rsi
	movq	320(%rsp), %rdi
	callq	line_size
	leal	1(%rax), %ecx
	movl	%ecx, 336(%rsp)
	movl	sg(%rip), %ecx
	leal	1(%rax,%rcx,2), %eax
	cmpl	co(%rip), %eax
	jg	.LBB2_26
.LBB2_27:                               #   in Loop: Header=BB2_2 Depth=1
	movq	320(%rsp), %rax
	cmpq	312(%rsp), %rax
	jbe	.LBB2_29
# BB#28:                                #   in Loop: Header=BB2_2 Depth=1
	movq	312(%rsp), %rax
	movq	%rax, 320(%rsp)
.LBB2_29:                               #   in Loop: Header=BB2_2 Depth=1
	cmpq	%r13, 320(%rsp)
	jae	.LBB2_31
# BB#30:                                #   in Loop: Header=BB2_2 Depth=1
	movq	$contextbufs, 320(%rsp)
.LBB2_31:                               #   in Loop: Header=BB2_2 Depth=1
	movq	312(%rsp), %r12
	movq	320(%rsp), %rbx
	movq	376(%rsp), %rdi
	callq	strlen
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movl	%eax, %edx
	callq	show_line
	cmpl	$0, minimenusize(%rip)
	je	.LBB2_33
# BB#32:                                #   in Loop: Header=BB2_2 Depth=1
	movl	li(%rip), %edi
	addl	$-2, %edi
	xorl	%esi, %esi
	callq	move
	movl	$.L.str29, %edi
	xorb	%al, %al
	callq	printf
	jmp	.LBB2_33
	.align	16, 0x90
.LBB2_94:                               #   in Loop: Header=BB2_33 Depth=2
	movl	$7, %edi
	callq	putchar
.LBB2_33:                               #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	stdout(%rip), %rdi
	callq	fflush
	callq	getchar
                                        # kill: EAX<def> EAX<kill> RAX<def>
	andl	$127, %eax
	movl	%eax, 340(%rsp)
	cmpl	$25, %eax
	ja	.LBB2_37
# BB#34:                                #   in Loop: Header=BB2_33 Depth=2
	cmpl	$10, %eax
	je	.LBB2_33
# BB#35:                                #   in Loop: Header=BB2_33 Depth=2
	cmpl	$13, %eax
	je	.LBB2_33
# BB#36:                                #   in Loop: Header=BB2_33 Depth=2
	cmpl	$12, %eax
	jne	.LBB2_94
	jmp	.LBB2_2
	.align	16, 0x90
.LBB2_37:                               #   in Loop: Header=BB2_33 Depth=2
	cmpl	$47, %eax
	ja	.LBB2_43
# BB#38:                                #   in Loop: Header=BB2_33 Depth=2
	cmpl	$26, %eax
	je	.LBB2_65
# BB#39:                                #   in Loop: Header=BB2_33 Depth=2
	cmpl	$32, %eax
	je	.LBB2_101
# BB#40:                                #   in Loop: Header=BB2_33 Depth=2
	cmpl	$33, %eax
	jne	.LBB2_94
	jmp	.LBB2_41
	.align	16, 0x90
.LBB2_43:                               #   in Loop: Header=BB2_33 Depth=2
	cmpl	$72, %eax
	ja	.LBB2_47
# BB#44:                                #   in Loop: Header=BB2_33 Depth=2
	leal	-48(%rax), %ecx
	cmpl	$10, %ecx
	jae	.LBB2_45
# BB#85:                                #   in Loop: Header=BB2_33 Depth=2
	movl	340(%rsp), %eax
	addl	$-48, %eax
	movl	%eax, 336(%rsp)
	cmpl	$10, easypossibilities(%rip)
	jl	.LBB2_89
# BB#86:                                #   in Loop: Header=BB2_33 Depth=2
	callq	getchar
	andl	$127, %eax
	movl	%eax, 340(%rsp)
	cmpl	$48, %eax
	jl	.LBB2_92
# BB#87:                                #   in Loop: Header=BB2_33 Depth=2
	cmpl	$57, 340(%rsp)
	jg	.LBB2_92
# BB#88:                                #   in Loop: Header=BB2_33 Depth=2
	movl	340(%rsp), %eax
	imull	$10, 336(%rsp), %ecx
	leal	-48(%rcx,%rax), %eax
	movl	%eax, 336(%rsp)
	jmp	.LBB2_89
.LBB2_47:                               #   in Loop: Header=BB2_33 Depth=2
	cmpl	$75, %eax
	ja	.LBB2_49
# BB#48:                                #   in Loop: Header=BB2_33 Depth=2
	cmpl	$73, %eax
	jne	.LBB2_94
	jmp	.LBB2_73
.LBB2_49:                               #   in Loop: Header=BB2_33 Depth=2
	cmpl	$80, %eax
	ja	.LBB2_51
# BB#50:                                #   in Loop: Header=BB2_33 Depth=2
	cmpl	$76, %eax
	jne	.LBB2_94
	jmp	.LBB2_96
.LBB2_92:                               #   in Loop: Header=BB2_33 Depth=2
	cmpl	$13, 340(%rsp)
	je	.LBB2_89
# BB#93:                                #   in Loop: Header=BB2_33 Depth=2
	cmpl	$10, 340(%rsp)
	jne	.LBB2_94
.LBB2_89:                               #   in Loop: Header=BB2_33 Depth=2
	movl	336(%rsp), %eax
	cmpl	easypossibilities(%rip), %eax
	jge	.LBB2_94
	jmp	.LBB2_90
.LBB2_51:                               #   in Loop: Header=BB2_33 Depth=2
	cmpl	$119, %eax
	ja	.LBB2_99
# BB#52:                                #   in Loop: Header=BB2_33 Depth=2
	cmpl	$116, %eax
	ja	.LBB2_75
# BB#53:                                #   in Loop: Header=BB2_33 Depth=2
	cmpl	$112, %eax
	ja	.LBB2_59
# BB#54:                                #   in Loop: Header=BB2_33 Depth=2
	cmpl	$107, %eax
	ja	.LBB2_95
# BB#55:                                #   in Loop: Header=BB2_33 Depth=2
	cmpl	$104, %eax
	ja	.LBB2_72
# BB#56:                                #   in Loop: Header=BB2_33 Depth=2
	cmpl	$96, %eax
	ja	.LBB2_77
# BB#57:                                #   in Loop: Header=BB2_33 Depth=2
	addl	$-81, %eax
	cmpl	$7, %eax
	ja	.LBB2_94
# BB#58:                                #   in Loop: Header=BB2_33 Depth=2
	jmpq	*.LJTI2_0(,%rax,8)
.LBB2_99:                               #   in Loop: Header=BB2_33 Depth=2
	cmpl	$120, %eax
	jne	.LBB2_94
	jmp	.LBB2_100
.LBB2_75:                               #   in Loop: Header=BB2_33 Depth=2
	cmpl	$117, %eax
	jne	.LBB2_94
	jmp	.LBB2_76
.LBB2_59:                               #   in Loop: Header=BB2_33 Depth=2
	cmpl	$113, %eax
	je	.LBB2_66
# BB#60:                                #   in Loop: Header=BB2_33 Depth=2
	cmpl	$114, %eax
	jne	.LBB2_94
	jmp	.LBB2_61
.LBB2_95:                               #   in Loop: Header=BB2_33 Depth=2
	cmpl	$108, %eax
	jne	.LBB2_94
	jmp	.LBB2_96
.LBB2_45:                               #   in Loop: Header=BB2_33 Depth=2
	cmpl	$63, %eax
	je	.LBB2_79
# BB#46:                                #   in Loop: Header=BB2_33 Depth=2
	cmpl	$65, %eax
	jne	.LBB2_94
	jmp	.LBB2_78
.LBB2_72:                               #   in Loop: Header=BB2_33 Depth=2
	cmpl	$105, %eax
	jne	.LBB2_94
	jmp	.LBB2_73
.LBB2_77:                               #   in Loop: Header=BB2_33 Depth=2
	cmpl	$97, %eax
	jne	.LBB2_94
	jmp	.LBB2_78
.LBB2_41:                               #   in Loop: Header=BB2_2 Depth=1
	movl	li(%rip), %edi
	decl	%edi
	xorl	%esi, %esi
	callq	move
	movl	$33, %edi
	callq	putchar
	movq	%r14, %rdi
	callq	getline_ispell
	testq	%rax, %rax
	jne	.LBB2_80
# BB#42:                                #   in Loop: Header=BB2_2 Depth=1
	movl	$7, %edi
	callq	putchar
	callq	erase
	movq	stdout(%rip), %rdi
	callq	fflush
	jmp	.LBB2_2
.LBB2_80:                               #   in Loop: Header=BB2_2 Depth=1
	movl	$.L.str31, %edi
	xorb	%al, %al
	callq	printf
	movq	stdout(%rip), %rdi
	callq	fflush
	movq	%r14, %rdi
	callq	shellescape
	callq	erase
	jmp	.LBB2_2
.LBB2_66:                               #   in Loop: Header=BB2_2 Depth=1
	cmpl	$0, changes(%rip)
	je	.LBB2_68
# BB#67:                                #   in Loop: Header=BB2_2 Depth=1
	movl	$.L.str30, %edi
	xorb	%al, %al
	callq	printf
	movq	stdout(%rip), %rdi
	callq	fflush
	callq	getchar
	andl	$127, %eax
	movl	%eax, 340(%rsp)
	jmp	.LBB2_69
.LBB2_96:                               #   in Loop: Header=BB2_2 Depth=1
	movl	li(%rip), %edi
	decl	%edi
	xorl	%esi, %esi
	callq	move
	movl	$.L.str37, %edi
	xorb	%al, %al
	callq	printf
	movq	%r15, %rdi
	callq	getline_ispell
	testq	%rax, %rax
	jne	.LBB2_98
# BB#97:                                #   in Loop: Header=BB2_2 Depth=1
	movl	$7, %edi
	callq	putchar
	callq	erase
	jmp	.LBB2_2
.LBB2_68:                               #   in Loop: Header=BB2_2 Depth=1
	movl	$121, 340(%rsp)
.LBB2_69:                               #   in Loop: Header=BB2_2 Depth=1
	cmpl	$121, 340(%rsp)
	je	.LBB2_71
# BB#70:                                #   in Loop: Header=BB2_2 Depth=1
	cmpl	$89, 340(%rsp)
	jne	.LBB2_2
.LBB2_71:                               #   in Loop: Header=BB2_2 Depth=1
	callq	erase
	movq	stdout(%rip), %rdi
	callq	fflush
	xorl	%edi, %edi
	callq	done
	jmp	.LBB2_2
.LBB2_79:                               #   in Loop: Header=BB2_2 Depth=1
	movl	$1, %edi
	xorb	%al, %al
	callq	givehelp
	jmp	.LBB2_2
.LBB2_98:                               #   in Loop: Header=BB2_2 Depth=1
	movl	$.L.str31, %edi
	xorb	%al, %al
	callq	printf
	movq	stdout(%rip), %rdi
	callq	fflush
	movq	%r15, %rdi
	callq	lookharder
	callq	erase
	jmp	.LBB2_2
.LBB2_61:                               #   in Loop: Header=BB2_2 Depth=1
	movl	li(%rip), %edi
	decl	%edi
	xorl	%esi, %esi
	callq	move
	cmpl	$0, readonly(%rip)
	je	.LBB2_63
# BB#62:                                #   in Loop: Header=BB2_2 Depth=1
	movl	$7, %edi
	callq	putchar
	movl	$.L.str32, %edi
	movl	$.L.str25, %esi
	xorb	%al, %al
	callq	printf
.LBB2_63:                               #   in Loop: Header=BB2_2 Depth=1
	movl	$.L.str33, %edi
	xorb	%al, %al
	callq	printf
	movq	376(%rsp), %rdi
	callq	getline_ispell
	testq	%rax, %rax
	jne	.LBB2_81
# BB#64:                                #   in Loop: Header=BB2_2 Depth=1
	movl	$7, %edi
	callq	putchar
	movl	372(%rsp), %edx
	movq	360(%rsp), %rsi
	movq	376(%rsp), %rdi
	xorl	%ecx, %ecx
	callq	ichartostr
	jmp	.LBB2_84
.LBB2_81:                               #   in Loop: Header=BB2_2 Depth=1
	movq	344(%rsp), %rcx
	movq	376(%rsp), %rdx
	movq	312(%rsp), %rsi
	movl	$contextbufs, %edi
	callq	inserttoken
	movl	356(%rsp), %edx
	movq	376(%rsp), %rsi
	movq	360(%rsp), %rdi
	xorl	%ecx, %ecx
	callq	strtoichar
	testl	%eax, %eax
	je	.LBB2_83
# BB#82:                                #   in Loop: Header=BB2_2 Depth=1
	movl	$7, %edi
	callq	putchar
	movq	376(%rsp), %rsi
	movl	$.L.str34, %edi
	movl	$493, %edx              # imm = 0x1ED
	movl	$.L.str35, %ecx
	xorb	%al, %al
	callq	printf
.LBB2_83:                               #   in Loop: Header=BB2_2 Depth=1
	movl	$1, changes(%rip)
.LBB2_84:                               #   in Loop: Header=BB2_2 Depth=1
	callq	erase
	movq	360(%rsp), %rdi
	callq	strlen
	movslq	minword(%rip), %rcx
	cmpq	%rcx, %rax
	ja	.LBB2_2
	jmp	.LBB2_102
.LBB2_73:
	movq	376(%rsp), %rdi
	xorl	%esi, %esi
	callq	strtosichar
	movq	%rax, %rdi
.LBB2_74:
	movl	$1, %esi
	callq	ichartosstr
	movq	%rax, %rdi
	movl	$184, %esi
	movl	$1, %edx
	callq	treeinsert
	callq	erase
	movq	stdout(%rip), %rdi
	callq	fflush
	movl	$1, changes(%rip)
	jmp	.LBB2_102
.LBB2_90:
	movq	376(%rsp), %rdi
	movslq	336(%rsp), %rax
	imulq	$120, %rax, %rax
	leaq	possibilities(%rax), %rsi
	callq	strcpy
	movl	$1, changes(%rip)
	movq	344(%rsp), %rcx
	movq	376(%rsp), %rdx
	movq	312(%rsp), %rsi
	movl	$contextbufs, %edi
	callq	inserttoken
	callq	erase
	cmpl	$0, readonly(%rip)
	je	.LBB2_102
# BB#91:
	movl	li(%rip), %edi
	decl	%edi
	xorl	%esi, %esi
	callq	move
	movl	$7, %edi
	callq	putchar
	movl	$.L.str36, %edi
	movl	$.L.str25, %esi
	xorb	%al, %al
	callq	printf
	movq	stdout(%rip), %rdi
	callq	fflush
	movl	$2, %edi
	xorb	%al, %al
	callq	sleep
	jmp	.LBB2_102
.LBB2_100:
	movl	$1, quit(%rip)
	jmp	.LBB2_101
.LBB2_76:
	movq	376(%rsp), %rdi
	xorl	%esi, %esi
	callq	strtosichar
	movq	%rax, 360(%rsp)
	movq	%rax, %rdi
	callq	lowcase
	movq	360(%rsp), %rdi
	jmp	.LBB2_74
.LBB2_78:
	movq	376(%rsp), %rdi
	xorl	%esi, %esi
	callq	strtosichar
	movq	%rax, %rdi
	movl	$1, %esi
	callq	ichartosstr
	movq	%rax, %rdi
	movl	$184, %esi
	xorl	%edx, %edx
	callq	treeinsert
.LBB2_101:
	callq	erase
	movq	stdout(%rip), %rdi
	callq	fflush
.LBB2_102:
	addq	$384, %rsp              # imm = 0x180
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.Ltmp23:
	.size	correct, .Ltmp23-correct
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI2_0:
	.quad	.LBB2_66
	.quad	.LBB2_61
	.quad	.LBB2_94
	.quad	.LBB2_94
	.quad	.LBB2_76
	.quad	.LBB2_94
	.quad	.LBB2_94
	.quad	.LBB2_100

	.text
	.globl	compoundgood
	.align	16, 0x90
	.type	compoundgood,@function
compoundgood:                           # @compoundgood
	.cfi_startproc
# BB#0:
	pushq	%rbx
.Ltmp26:
	.cfi_def_cfa_offset 16
	subq	$176, %rsp
.Ltmp27:
	.cfi_def_cfa_offset 192
.Ltmp28:
	.cfi_offset %rbx, -16
	movq	%rdi, 160(%rsp)
	movl	%esi, 156(%rsp)
	cmpl	$0, compoundflag(%rip)
	je	.LBB3_17
# BB#1:
	movq	160(%rsp), %rdi
	callq	strlen
	movswl	hashheader+8(%rip), %ecx
	addl	%ecx, %ecx
	movslq	%ecx, %rcx
	cmpq	%rcx, %rax
	jb	.LBB3_17
# BB#2:
	movq	160(%rsp), %rsi
	leaq	32(%rsp), %rbx
	movq	%rbx, %rdi
	callq	strcpy
	movswq	hashheader+8(%rip), %rax
	leaq	32(%rsp,%rax), %rax
	movq	%rax, 24(%rsp)
	jmp	.LBB3_3
	.align	16, 0x90
.LBB3_16:                               #   in Loop: Header=BB3_3 Depth=1
	incq	24(%rsp)
.LBB3_3:                                # =>This Inner Loop Header: Depth=1
	movswl	hashheader+8(%rip), %eax
	decl	%eax
	movslq	%eax, %rax
	movq	24(%rsp), %rcx
	movzbl	(%rcx,%rax), %eax
	testl	%eax, %eax
	je	.LBB3_17
# BB#4:                                 #   in Loop: Header=BB3_3 Depth=1
	movq	24(%rsp), %rax
	movb	(%rax), %al
	movb	%al, 23(%rsp)
	movq	24(%rsp), %rax
	movb	$0, (%rax)
	movl	156(%rsp), %ecx
	movq	%rbx, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	movl	$2, %r8d
	callq	good
	testl	%eax, %eax
	je	.LBB3_15
# BB#5:                                 #   in Loop: Header=BB3_3 Depth=1
	movq	24(%rsp), %rax
	movb	23(%rsp), %cl
	movb	%cl, (%rax)
	movq	24(%rsp), %rdi
	xorl	%esi, %esi
	movl	$1, %edx
	movl	$2, %ecx
	xorl	%r8d, %r8d
	callq	good
	testl	%eax, %eax
	jne	.LBB3_7
# BB#6:                                 #   in Loop: Header=BB3_3 Depth=1
	movq	24(%rsp), %rdi
	movl	$2, %esi
	xorb	%al, %al
	callq	compoundgood
	testl	%eax, %eax
	je	.LBB3_16
.LBB3_7:                                #   in Loop: Header=BB3_3 Depth=1
	movq	24(%rsp), %rdi
	callq	whatcap
	movq	%rax, 8(%rsp)
	movq	%rbx, %rdi
	callq	whatcap
	cmpq	$268435455, %rax        # imm = 0xFFFFFFF
	ja	.LBB3_9
# BB#8:                                 #   in Loop: Header=BB3_3 Depth=1
	testq	%rax, %rax
	jne	.LBB3_16
	jmp	.LBB3_12
	.align	16, 0x90
.LBB3_15:                               #   in Loop: Header=BB3_3 Depth=1
	movq	24(%rsp), %rax
	movb	23(%rsp), %cl
	movb	%cl, (%rax)
	jmp	.LBB3_16
.LBB3_9:                                #   in Loop: Header=BB3_3 Depth=1
	cmpq	$268435456, %rax        # imm = 0x10000000
	je	.LBB3_14
# BB#10:                                #   in Loop: Header=BB3_3 Depth=1
	cmpq	$536870912, %rax        # imm = 0x20000000
	je	.LBB3_12
# BB#11:                                #   in Loop: Header=BB3_3 Depth=1
	cmpq	$805306368, %rax        # imm = 0x30000000
	jne	.LBB3_16
.LBB3_12:
	cmpq	$0, 8(%rsp)
	jmp	.LBB3_13
.LBB3_17:
	movl	$0, 172(%rsp)
	jmp	.LBB3_18
.LBB3_14:
	cmpq	$268435456, 8(%rsp)     # imm = 0x10000000
.LBB3_13:
	sete	%al
	movzbl	%al, %eax
	movl	%eax, 172(%rsp)
.LBB3_18:
	movl	172(%rsp), %eax
	addq	$176, %rsp
	popq	%rbx
	ret
.Ltmp29:
	.size	compoundgood, .Ltmp29-compoundgood
	.cfi_endproc

	.globl	makepossibilities
	.align	16, 0x90
	.type	makepossibilities,@function
makepossibilities:                      # @makepossibilities
	.cfi_startproc
# BB#0:
	subq	$24, %rsp
.Ltmp31:
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movl	$0, 12(%rsp)
	jmp	.LBB4_1
	.align	16, 0x90
.LBB4_2:                                #   in Loop: Header=BB4_1 Depth=1
	movslq	12(%rsp), %rax
	imulq	$120, %rax, %rax
	movb	$0, possibilities(%rax)
	incl	12(%rsp)
.LBB4_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$99, 12(%rsp)
	jle	.LBB4_2
# BB#3:
	movl	$0, pcount(%rip)
	movl	$0, maxposslen(%rip)
	movl	$0, easypossibilities(%rip)
	movq	16(%rsp), %rdi
	callq	wrongcapital
	cmpl	$99, pcount(%rip)
	jg	.LBB4_5
# BB#4:
	movq	16(%rsp), %rdi
	callq	missingletter
.LBB4_5:
	cmpl	$99, pcount(%rip)
	jg	.LBB4_7
# BB#6:
	movq	16(%rsp), %rdi
	callq	transposedletter
.LBB4_7:
	cmpl	$99, pcount(%rip)
	jg	.LBB4_9
# BB#8:
	movq	16(%rsp), %rdi
	callq	extraletter
.LBB4_9:
	cmpl	$99, pcount(%rip)
	jg	.LBB4_11
# BB#10:
	movq	16(%rsp), %rdi
	callq	wrongletter
.LBB4_11:
	cmpl	$1, compoundflag(%rip)
	je	.LBB4_14
# BB#12:
	cmpl	$99, pcount(%rip)
	jg	.LBB4_14
# BB#13:
	movq	16(%rsp), %rdi
	callq	missingspace
.LBB4_14:
	movl	pcount(%rip), %eax
	movl	%eax, easypossibilities(%rip)
	testl	%eax, %eax
	je	.LBB4_16
# BB#15:
	cmpl	$0, tryhardflag(%rip)
	je	.LBB4_17
.LBB4_16:
	movq	16(%rsp), %rdi
	callq	tryveryhard
.LBB4_17:
	cmpl	$0, sortit(%rip)
	jne	.LBB4_19
# BB#18:
	movl	pcount(%rip), %eax
	cmpl	easypossibilities(%rip), %eax
	jle	.LBB4_25
.LBB4_19:
	cmpl	$0, pcount(%rip)
	je	.LBB4_25
# BB#20:
	cmpl	$0, easypossibilities(%rip)
	jle	.LBB4_23
# BB#21:
	cmpl	$0, sortit(%rip)
	je	.LBB4_23
# BB#22:
	movl	easypossibilities(%rip), %esi
	movl	$possibilities, %edi
	movl	$120, %edx
	movl	$posscmp, %ecx
	callq	qsort
.LBB4_23:
	movl	pcount(%rip), %eax
	cmpl	easypossibilities(%rip), %eax
	jle	.LBB4_25
# BB#24:
	movslq	easypossibilities(%rip), %rax
	movl	pcount(%rip), %esi
	subl	%eax, %esi
	imulq	$120, %rax, %rax
	leaq	possibilities(%rax), %rdi
	movl	$120, %edx
	movl	$posscmp, %ecx
	callq	qsort
.LBB4_25:
	addq	$24, %rsp
	ret
.Ltmp32:
	.size	makepossibilities, .Ltmp32-makepossibilities
	.cfi_endproc

	.align	16, 0x90
	.type	show_line,@function
show_line:                              # @show_line
	.cfi_startproc
# BB#0:
	pushq	%rbx
.Ltmp35:
	.cfi_def_cfa_offset 16
	subq	$32, %rsp
.Ltmp36:
	.cfi_def_cfa_offset 48
.Ltmp37:
	.cfi_offset %rbx, -16
	movq	%rdi, 24(%rsp)
	movq	%rsi, 16(%rsp)
	movl	%edx, 12(%rsp)
	xorl	%eax, %eax
	testl	%edx, %edx
	je	.LBB5_2
# BB#1:
	movl	sg(%rip), %eax
	addl	%eax, %eax
.LBB5_2:
	movl	%eax, 8(%rsp)
	leaq	24(%rsp), %rbx
	jmp	.LBB5_3
	.align	16, 0x90
.LBB5_6:                                #   in Loop: Header=BB5_3 Depth=1
	movl	16(%rsp), %ecx
	subl	24(%rsp), %ecx
	movl	8(%rsp), %esi
	movq	%rbx, %rdi
	movl	$1, %edx
	callq	show_char
	addl	%eax, 8(%rsp)
.LBB5_3:                                # =>This Inner Loop Header: Depth=1
	xorb	%al, %al
	movq	24(%rsp), %rcx
	cmpq	16(%rsp), %rcx
	jae	.LBB5_5
# BB#4:                                 #   in Loop: Header=BB5_3 Depth=1
	movl	co(%rip), %eax
	decl	%eax
	cmpl	%eax, 8(%rsp)
	setl	%al
.LBB5_5:                                #   in Loop: Header=BB5_3 Depth=1
	cmpb	$1, %al
	je	.LBB5_6
# BB#7:
	cmpl	$0, 12(%rsp)
	je	.LBB5_14
# BB#8:
	callq	inverse
	movslq	12(%rsp), %rax
	addq	%rax, 16(%rsp)
	leaq	24(%rsp), %rbx
	jmp	.LBB5_9
	.align	16, 0x90
.LBB5_12:                               #   in Loop: Header=BB5_9 Depth=1
	movl	16(%rsp), %ecx
	subl	24(%rsp), %ecx
	movl	8(%rsp), %esi
	movq	%rbx, %rdi
	movl	$1, %edx
	callq	show_char
	addl	%eax, 8(%rsp)
.LBB5_9:                                # =>This Inner Loop Header: Depth=1
	xorb	%al, %al
	movq	24(%rsp), %rcx
	cmpq	16(%rsp), %rcx
	jae	.LBB5_11
# BB#10:                                #   in Loop: Header=BB5_9 Depth=1
	movl	co(%rip), %eax
	decl	%eax
	cmpl	%eax, 8(%rsp)
	setl	%al
.LBB5_11:                               #   in Loop: Header=BB5_9 Depth=1
	cmpb	$1, %al
	je	.LBB5_12
# BB#13:
	callq	normal
	jmp	.LBB5_14
	.align	16, 0x90
.LBB5_17:                               #   in Loop: Header=BB5_14 Depth=1
	movl	8(%rsp), %esi
	leaq	24(%rsp), %rdi
	movl	$1, %edx
	xorl	%ecx, %ecx
	callq	show_char
	addl	%eax, 8(%rsp)
.LBB5_14:                               # =>This Inner Loop Header: Depth=1
	movq	24(%rsp), %rax
	movsbl	(%rax), %ecx
	xorb	%al, %al
	testl	%ecx, %ecx
	je	.LBB5_16
# BB#15:                                #   in Loop: Header=BB5_14 Depth=1
	movl	co(%rip), %eax
	decl	%eax
	cmpl	%eax, 8(%rsp)
	setl	%al
.LBB5_16:                               #   in Loop: Header=BB5_14 Depth=1
	cmpb	$1, %al
	je	.LBB5_17
# BB#18:
	movl	$.L.str31, %edi
	xorb	%al, %al
	callq	printf
	addq	$32, %rsp
	popq	%rbx
	ret
.Ltmp38:
	.size	show_line, .Ltmp38-show_line
	.cfi_endproc

	.align	16, 0x90
	.type	line_size,@function
line_size:                              # @line_size
	.cfi_startproc
# BB#0:
	pushq	%rbx
.Ltmp41:
	.cfi_def_cfa_offset 16
	subq	$32, %rsp
.Ltmp42:
	.cfi_def_cfa_offset 48
.Ltmp43:
	.cfi_offset %rbx, -16
	movq	%rdi, 24(%rsp)
	movq	%rsi, 16(%rsp)
	movl	$0, 12(%rsp)
	leaq	24(%rsp), %rbx
	jmp	.LBB6_1
	.align	16, 0x90
.LBB6_4:                                #   in Loop: Header=BB6_1 Depth=1
	movl	16(%rsp), %ecx
	subl	24(%rsp), %ecx
	movl	12(%rsp), %esi
	movq	%rbx, %rdi
	xorl	%edx, %edx
	xorb	%al, %al
	callq	show_char
	addl	%eax, 12(%rsp)
.LBB6_1:                                # =>This Inner Loop Header: Depth=1
	movq	24(%rsp), %rax
	cmpq	16(%rsp), %rax
	movb	$0, %al
	jae	.LBB6_3
# BB#2:                                 #   in Loop: Header=BB6_1 Depth=1
	movq	24(%rsp), %rax
	movsbl	(%rax), %eax
	testl	%eax, %eax
	setne	%al
.LBB6_3:                                #   in Loop: Header=BB6_1 Depth=1
	cmpb	$1, %al
	je	.LBB6_4
# BB#5:
	movl	12(%rsp), %eax
	addq	$32, %rsp
	popq	%rbx
	ret
.Ltmp44:
	.size	line_size, .Ltmp44-line_size
	.cfi_endproc

	.align	16, 0x90
	.type	getline_ispell,@function
getline_ispell:                         # @getline_ispell
	.cfi_startproc
# BB#0:
	subq	$40, %rsp
.Ltmp46:
	.cfi_def_cfa_offset 48
	movq	%rdi, 24(%rsp)
	movq	%rdi, 16(%rsp)
	jmp	.LBB7_1
	.align	16, 0x90
.LBB7_2:                                #   in Loop: Header=BB7_1 Depth=1
	movl	$92, %edi
	callq	putchar
	movq	stdout(%rip), %rdi
	callq	fflush
	callq	getchar
	andl	$127, %eax
	movl	%eax, 12(%rsp)
	callq	backup
	movl	12(%rsp), %edi
	callq	putchar
	movq	16(%rsp), %rax
	leaq	1(%rax), %rcx
	movb	12(%rsp), %dl
	movq	%rcx, 16(%rsp)
	movb	%dl, (%rax)
.LBB7_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_13 Depth 2
	movq	stdout(%rip), %rdi
	callq	fflush
	callq	getchar
	andl	$127, %eax
	movl	%eax, 12(%rsp)
	cmpl	$92, %eax
	je	.LBB7_2
# BB#3:                                 #   in Loop: Header=BB7_1 Depth=1
	cmpl	$7, 12(%rsp)
	je	.LBB7_4
# BB#5:                                 #   in Loop: Header=BB7_1 Depth=1
	cmpl	$10, 12(%rsp)
	je	.LBB7_7
# BB#6:                                 #   in Loop: Header=BB7_1 Depth=1
	cmpl	$13, 12(%rsp)
	je	.LBB7_7
# BB#9:                                 #   in Loop: Header=BB7_1 Depth=1
	movl	12(%rsp), %eax
	cmpl	uerasechar(%rip), %eax
	jne	.LBB7_12
# BB#10:                                #   in Loop: Header=BB7_1 Depth=1
	movq	16(%rsp), %rax
	cmpq	24(%rsp), %rax
	je	.LBB7_1
# BB#11:                                #   in Loop: Header=BB7_1 Depth=1
	decq	16(%rsp)
	callq	backup
	movl	$32, %edi
	callq	putchar
	callq	backup
	jmp	.LBB7_1
	.align	16, 0x90
.LBB7_12:                               #   in Loop: Header=BB7_1 Depth=1
	movl	12(%rsp), %eax
	cmpl	ukillchar(%rip), %eax
	je	.LBB7_13
# BB#15:                                #   in Loop: Header=BB7_1 Depth=1
	movq	16(%rsp), %rax
	leaq	1(%rax), %rcx
	movb	12(%rsp), %dl
	movq	%rcx, 16(%rsp)
	movb	%dl, (%rax)
	movl	12(%rsp), %edi
	callq	putchar
	jmp	.LBB7_1
	.align	16, 0x90
.LBB7_14:                               #   in Loop: Header=BB7_13 Depth=2
	decq	16(%rsp)
	callq	backup
	movl	$32, %edi
	callq	putchar
	callq	backup
.LBB7_13:                               #   Parent Loop BB7_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rsp), %rax
	cmpq	24(%rsp), %rax
	je	.LBB7_1
	jmp	.LBB7_14
.LBB7_7:
	movq	16(%rsp), %rax
	movb	$0, (%rax)
	movq	24(%rsp), %rax
	movq	%rax, 32(%rsp)
	jmp	.LBB7_8
.LBB7_4:
	movq	$0, 32(%rsp)
.LBB7_8:
	movq	32(%rsp), %rax
	addq	$40, %rsp
	ret
.Ltmp47:
	.size	getline_ispell, .Ltmp47-getline_ispell
	.cfi_endproc

	.align	16, 0x90
	.type	inserttoken,@function
inserttoken:                            # @inserttoken
	.cfi_startproc
# BB#0:
	pushq	%rbx
.Ltmp50:
	.cfi_def_cfa_offset 16
	subq	$8256, %rsp             # imm = 0x2040
.Ltmp51:
	.cfi_def_cfa_offset 8272
.Ltmp52:
	.cfi_offset %rbx, -16
	movq	%rdi, 8248(%rsp)
	movq	%rsi, 8240(%rsp)
	movq	%rdx, 8232(%rsp)
	movq	%rcx, 8224(%rsp)
	movq	8248(%rsp), %rsi
	leaq	32(%rsp), %rbx
	movq	%rbx, %rdi
	callq	strcpy
	movq	8248(%rsp), %rax
	movq	%rax, 24(%rsp)
	movq	%rbx, 16(%rsp)
	jmp	.LBB8_1
	.align	16, 0x90
.LBB8_2:                                #   in Loop: Header=BB8_1 Depth=1
	movq	16(%rsp), %rax
	movb	(%rax), %al
	movq	24(%rsp), %rcx
	movb	%al, (%rcx)
	incq	24(%rsp)
	incq	16(%rsp)
.LBB8_1:                                # =>This Inner Loop Header: Depth=1
	movq	24(%rsp), %rax
	cmpq	8240(%rsp), %rax
	jne	.LBB8_2
# BB#3:
	movq	8224(%rsp), %rax
	movq	(%rax), %rax
	subq	8240(%rsp), %rax
	addq	%rax, 16(%rsp)
	movq	8232(%rsp), %rdi
	callq	skipoverword
	movq	%rax, 8(%rsp)
	jmp	.LBB8_4
	.align	16, 0x90
.LBB8_5:                                #   in Loop: Header=BB8_4 Depth=1
	movq	8232(%rsp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 8232(%rsp)
	movb	(%rax), %al
	movq	24(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, 24(%rsp)
	movb	%al, (%rcx)
.LBB8_4:                                # =>This Inner Loop Header: Depth=1
	movq	8232(%rsp), %rax
	cmpq	8(%rsp), %rax
	jb	.LBB8_5
# BB#6:
	movq	8224(%rsp), %rax
	movq	24(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	8232(%rsp), %rax
	cmpb	$0, (%rax)
	je	.LBB8_10
# BB#7:
	movq	8232(%rsp), %rax
	movb	(%rax), %al
	movq	24(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, 24(%rsp)
	movb	%al, (%rcx)
	movq	8232(%rsp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 8232(%rsp)
	movb	$0, (%rax)
	jmp	.LBB8_8
	.align	16, 0x90
.LBB8_9:                                #   in Loop: Header=BB8_8 Depth=1
	movq	8232(%rsp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 8232(%rsp)
	movb	(%rax), %al
	movq	24(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, 24(%rsp)
	movb	%al, (%rcx)
.LBB8_8:                                # =>This Inner Loop Header: Depth=1
	movq	8232(%rsp), %rax
	cmpb	$0, (%rax)
	jne	.LBB8_9
	.align	16, 0x90
.LBB8_10:                               # =>This Inner Loop Header: Depth=1
	movq	16(%rsp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 16(%rsp)
	movsbl	(%rax), %eax
	movq	24(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, 24(%rsp)
	movb	%al, (%rcx)
	testl	%eax, %eax
	jne	.LBB8_10
# BB#11:
	addq	$8256, %rsp             # imm = 0x2040
	popq	%rbx
	ret
.Ltmp53:
	.size	inserttoken, .Ltmp53-inserttoken
	.cfi_endproc

	.align	16, 0x90
	.type	lookharder,@function
lookharder:                             # @lookharder
	.cfi_startproc
# BB#0:
	pushq	%rbx
.Ltmp56:
	.cfi_def_cfa_offset 16
	subq	$304, %rsp              # imm = 0x130
.Ltmp57:
	.cfi_def_cfa_offset 320
.Ltmp58:
	.cfi_offset %rbx, -16
	movq	%rdi, 296(%rsp)
	movl	$0, 12(%rsp)
	leaq	32(%rsp), %rax
	movq	%rax, 24(%rsp)
	movq	296(%rsp), %rax
	movq	%rax, 16(%rsp)
	jmp	.LBB9_1
	.align	16, 0x90
.LBB9_3:                                #   in Loop: Header=BB9_1 Depth=1
	incl	12(%rsp)
	movq	24(%rsp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 24(%rsp)
	movb	$46, (%rax)
	movq	24(%rsp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 24(%rsp)
	movb	$42, (%rax)
	incq	16(%rsp)
.LBB9_1:                                # =>This Inner Loop Header: Depth=1
	movq	16(%rsp), %rax
	movsbl	(%rax), %eax
	testl	%eax, %eax
	je	.LBB9_5
# BB#2:                                 #   in Loop: Header=BB9_1 Depth=1
	movq	16(%rsp), %rax
	movsbl	(%rax), %eax
	cmpl	$42, %eax
	je	.LBB9_3
# BB#4:                                 #   in Loop: Header=BB9_1 Depth=1
	movq	16(%rsp), %rax
	movb	(%rax), %al
	movq	24(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, 24(%rsp)
	movb	%al, (%rcx)
	incq	16(%rsp)
	jmp	.LBB9_1
.LBB9_5:
	movq	24(%rsp), %rax
	movb	$0, (%rax)
	cmpb	$0, 32(%rsp)
	je	.LBB9_13
# BB#6:
	cmpl	$0, 12(%rsp)
	jne	.LBB9_10
# BB#7:
	cmpl	$0, lookharder.look(%rip)
	je	.LBB9_10
# BB#8:
	leaq	144(%rsp), %rbx
	leaq	32(%rsp), %rcx
	movq	%rbx, %rdi
	movl	$.L.str43, %esi
	movl	$.L.str44, %edx
	movl	$.L.str45, %r8d
	xorb	%al, %al
	callq	sprintf
	movq	%rbx, %rdi
	callq	shellescape
	testl	%eax, %eax
	jne	.LBB9_13
# BB#9:
	movl	$0, lookharder.look(%rip)
.LBB9_10:
	cmpl	$0, 12(%rsp)
	jne	.LBB9_12
# BB#11:
	leaq	32(%rsp), %rdi
	movl	$.L.str46, %esi
	callq	strcat
.LBB9_12:
	leaq	144(%rsp), %rbx
	leaq	32(%rsp), %rcx
	movq	%rbx, %rdi
	movl	$.L.str47, %esi
	movl	$.L.str48, %edx
	movl	$.L.str45, %r8d
	xorb	%al, %al
	callq	sprintf
	movq	%rbx, %rdi
	callq	shellescape
.LBB9_13:
	addq	$304, %rsp              # imm = 0x130
	popq	%rbx
	ret
.Ltmp59:
	.size	lookharder, .Ltmp59-lookharder
	.cfi_endproc

	.globl	casecmp
	.align	16, 0x90
	.type	casecmp,@function
casecmp:                                # @casecmp
	.cfi_startproc
# BB#0:
	pushq	%r14
.Ltmp63:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp64:
	.cfi_def_cfa_offset 24
	subq	$424, %rsp              # imm = 0x1A8
.Ltmp65:
	.cfi_def_cfa_offset 448
.Ltmp66:
	.cfi_offset %rbx, -24
.Ltmp67:
	.cfi_offset %r14, -16
	movl	%edx, %eax
	movq	%rdi, 408(%rsp)
	movq	%rsi, 400(%rsp)
	movl	%eax, 396(%rsp)
	movq	408(%rsp), %rsi
	leaq	192(%rsp), %r14
	movq	%r14, %rdi
	movl	$184, %edx
	movl	%eax, %ecx
	callq	strtoichar
	leaq	(%rsp), %rbx
	movl	396(%rsp), %ecx
	movq	400(%rsp), %rsi
	movq	%rbx, %rdi
	movl	$184, %edx
	callq	strtoichar
	movq	%r14, 384(%rsp)
	movq	%rbx, 376(%rsp)
	jmp	.LBB10_1
	.align	16, 0x90
.LBB10_12:                              #   in Loop: Header=BB10_1 Depth=1
	incq	384(%rsp)
	incq	376(%rsp)
.LBB10_1:                               # =>This Inner Loop Header: Depth=1
	movq	384(%rsp), %rax
	movzbl	(%rax), %eax
	testl	%eax, %eax
	je	.LBB10_13
# BB#2:                                 #   in Loop: Header=BB10_1 Depth=1
	movq	376(%rsp), %rax
	movzbl	(%rax), %eax
	movq	384(%rsp), %rcx
	movzbl	(%rcx), %ecx
	cmpl	%eax, %ecx
	je	.LBB10_12
# BB#3:                                 #   in Loop: Header=BB10_1 Depth=1
	movq	376(%rsp), %rax
	movzbl	(%rax), %eax
	testl	%eax, %eax
	je	.LBB10_4
# BB#5:                                 #   in Loop: Header=BB10_1 Depth=1
	movq	384(%rsp), %rax
	movzbl	(%rax), %eax
	cmpb	$0, hashheader+1438(%rax)
	je	.LBB10_10
# BB#6:                                 #   in Loop: Header=BB10_1 Depth=1
	movq	376(%rsp), %rax
	movzbl	(%rax), %eax
	movsbl	hashheader+1438(%rax), %eax
	testl	%eax, %eax
	jne	.LBB10_9
# BB#7:                                 #   in Loop: Header=BB10_1 Depth=1
	movq	376(%rsp), %rax
	movzbl	(%rax), %eax
	movq	384(%rsp), %rcx
	movzbl	(%rcx), %ecx
	movzbl	hashheader+754(%rcx), %ecx
	jmp	.LBB10_8
	.align	16, 0x90
.LBB10_10:                              #   in Loop: Header=BB10_1 Depth=1
	movq	376(%rsp), %rax
	movzbl	(%rax), %eax
	movsbl	hashheader+1210(%rax), %eax
	testl	%eax, %eax
	jne	.LBB10_9
# BB#11:                                #   in Loop: Header=BB10_1 Depth=1
	movq	376(%rsp), %rax
	movzbl	(%rax), %eax
	movq	384(%rsp), %rcx
	movzbl	(%rcx), %ecx
	movzbl	hashheader+526(%rcx), %ecx
.LBB10_8:                               #   in Loop: Header=BB10_1 Depth=1
	cmpl	%eax, %ecx
	je	.LBB10_12
	jmp	.LBB10_9
.LBB10_13:
	movq	376(%rsp), %rax
	movzbl	(%rax), %eax
	testl	%eax, %eax
	je	.LBB10_15
# BB#14:
	movq	376(%rsp), %rax
	movzbl	(%rax), %eax
	movzwl	hashheader+70(%rax,%rax), %eax
	negl	%eax
	movl	%eax, 420(%rsp)
	jmp	.LBB10_20
.LBB10_4:
	movq	384(%rsp), %rax
	movzbl	(%rax), %eax
	movzwl	hashheader+70(%rax,%rax), %eax
	movl	%eax, 420(%rsp)
	jmp	.LBB10_20
.LBB10_15:
	movq	%r14, 384(%rsp)
	movq	%rbx, 376(%rsp)
	jmp	.LBB10_16
	.align	16, 0x90
.LBB10_18:                              #   in Loop: Header=BB10_16 Depth=1
	incq	384(%rsp)
	incq	376(%rsp)
.LBB10_16:                              # =>This Inner Loop Header: Depth=1
	movq	384(%rsp), %rax
	cmpb	$0, (%rax)
	je	.LBB10_19
# BB#17:                                #   in Loop: Header=BB10_16 Depth=1
	movq	376(%rsp), %rax
	movzbl	(%rax), %eax
	movq	384(%rsp), %rcx
	movzbl	(%rcx), %ecx
	cmpl	%eax, %ecx
	je	.LBB10_18
.LBB10_9:
	movq	376(%rsp), %rax
	movzbl	(%rax), %eax
	movzwl	hashheader+70(%rax,%rax), %eax
	movq	384(%rsp), %rcx
	movzbl	(%rcx), %ecx
	movzwl	hashheader+70(%rcx,%rcx), %ecx
	subl	%eax, %ecx
	movl	%ecx, 420(%rsp)
.LBB10_20:
	movl	420(%rsp), %eax
	addq	$424, %rsp              # imm = 0x1A8
	popq	%rbx
	popq	%r14
	ret
.LBB10_19:
	movl	$0, 420(%rsp)
	jmp	.LBB10_20
.Ltmp68:
	.size	casecmp, .Ltmp68-casecmp
	.cfi_endproc

	.align	16, 0x90
	.type	wrongcapital,@function
wrongcapital:                           # @wrongcapital
	.cfi_startproc
# BB#0:
	pushq	%rbx
.Ltmp71:
	.cfi_def_cfa_offset 16
	subq	$128, %rsp
.Ltmp72:
	.cfi_def_cfa_offset 144
.Ltmp73:
	.cfi_offset %rbx, -16
	movq	%rdi, 120(%rsp)
	xorl	%esi, %esi
	movl	$1, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	callq	good
	testl	%eax, %eax
	je	.LBB11_2
# BB#1:
	movq	120(%rsp), %rsi
	leaq	(%rsp), %rbx
	movq	%rbx, %rdi
	callq	strcpy
	movq	%rbx, %rdi
	callq	upcase
	movq	120(%rsp), %rsi
	movq	%rbx, %rdi
	callq	ins_cap
.LBB11_2:
	addq	$128, %rsp
	popq	%rbx
	ret
.Ltmp74:
	.size	wrongcapital, .Ltmp74-wrongcapital
	.cfi_endproc

	.align	16, 0x90
	.type	missingletter,@function
missingletter:                          # @missingletter
	.cfi_startproc
# BB#0:
	pushq	%rbx
.Ltmp77:
	.cfi_def_cfa_offset 16
	subq	$176, %rsp
.Ltmp78:
	.cfi_def_cfa_offset 192
.Ltmp79:
	.cfi_offset %rbx, -16
	movq	%rdi, %rax
	movq	%rax, 168(%rsp)
	leaq	33(%rsp), %rdi
	movq	%rax, %rsi
	callq	strcpy
	movq	168(%rsp), %rax
	movq	%rax, 24(%rsp)
	leaq	32(%rsp), %rbx
	movq	%rbx, 16(%rsp)
	jmp	.LBB12_1
	.align	16, 0x90
.LBB12_9:                               #   in Loop: Header=BB12_1 Depth=1
	movq	24(%rsp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 24(%rsp)
	movb	(%rax), %al
	movq	16(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, 16(%rsp)
	movb	%al, (%rcx)
.LBB12_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_3 Depth 2
	movq	24(%rsp), %rax
	movzbl	(%rax), %eax
	testl	%eax, %eax
	je	.LBB12_10
# BB#2:                                 #   in Loop: Header=BB12_1 Depth=1
	movl	$0, 12(%rsp)
	jmp	.LBB12_3
	.align	16, 0x90
.LBB12_8:                               #   in Loop: Header=BB12_3 Depth=2
	incl	12(%rsp)
.LBB12_3:                               #   Parent Loop BB12_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	12(%rsp), %eax
	cmpl	Trynum(%rip), %eax
	jge	.LBB12_9
# BB#4:                                 #   in Loop: Header=BB12_3 Depth=2
	movslq	12(%rsp), %rax
	movzbl	Try(%rax), %eax
	movsbl	hashheader+1666(%rax), %eax
	testl	%eax, %eax
	je	.LBB12_6
# BB#5:                                 #   in Loop: Header=BB12_3 Depth=2
	cmpq	%rbx, 16(%rsp)
	je	.LBB12_8
.LBB12_6:                               #   in Loop: Header=BB12_3 Depth=2
	movslq	12(%rsp), %rax
	movb	Try(%rax), %al
	movq	16(%rsp), %rcx
	movb	%al, (%rcx)
	movq	%rbx, %rdi
	xorl	%esi, %esi
	movl	$1, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	callq	good
	testl	%eax, %eax
	je	.LBB12_8
# BB#7:                                 #   in Loop: Header=BB12_3 Depth=2
	movq	168(%rsp), %rsi
	movq	%rbx, %rdi
	callq	ins_cap
	testl	%eax, %eax
	js	.LBB12_16
	jmp	.LBB12_8
.LBB12_10:
	movl	$0, 12(%rsp)
	leaq	32(%rsp), %rbx
	jmp	.LBB12_11
	.align	16, 0x90
.LBB12_15:                              #   in Loop: Header=BB12_11 Depth=1
	incl	12(%rsp)
.LBB12_11:                              # =>This Inner Loop Header: Depth=1
	movl	12(%rsp), %eax
	cmpl	Trynum(%rip), %eax
	jge	.LBB12_16
# BB#12:                                #   in Loop: Header=BB12_11 Depth=1
	movslq	12(%rsp), %rax
	movzbl	Try(%rax), %eax
	cmpb	$0, hashheader+1666(%rax)
	jne	.LBB12_15
# BB#13:                                #   in Loop: Header=BB12_11 Depth=1
	movslq	12(%rsp), %rax
	movb	Try(%rax), %al
	movq	16(%rsp), %rcx
	movb	%al, (%rcx)
	movq	%rbx, %rdi
	xorl	%esi, %esi
	movl	$1, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	callq	good
	testl	%eax, %eax
	je	.LBB12_15
# BB#14:                                #   in Loop: Header=BB12_11 Depth=1
	movq	168(%rsp), %rsi
	movq	%rbx, %rdi
	callq	ins_cap
	testl	%eax, %eax
	jns	.LBB12_15
.LBB12_16:
	addq	$176, %rsp
	popq	%rbx
	ret
.Ltmp80:
	.size	missingletter, .Ltmp80-missingletter
	.cfi_endproc

	.align	16, 0x90
	.type	transposedletter,@function
transposedletter:                       # @transposedletter
	.cfi_startproc
# BB#0:
	pushq	%rbx
.Ltmp83:
	.cfi_def_cfa_offset 16
	subq	$144, %rsp
.Ltmp84:
	.cfi_def_cfa_offset 160
.Ltmp85:
	.cfi_offset %rbx, -16
	movq	%rdi, %rax
	movq	%rax, 136(%rsp)
	leaq	16(%rsp), %rbx
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	strcpy
	movq	%rbx, 8(%rsp)
	jmp	.LBB13_1
	.align	16, 0x90
.LBB13_4:                               #   in Loop: Header=BB13_1 Depth=1
	movq	8(%rsp), %rax
	movb	(%rax), %al
	movb	%al, 7(%rsp)
	movq	8(%rsp), %rax
	movb	1(%rax), %cl
	movb	%cl, (%rax)
	movq	8(%rsp), %rax
	movb	7(%rsp), %cl
	movb	%cl, 1(%rax)
	incq	8(%rsp)
.LBB13_1:                               # =>This Inner Loop Header: Depth=1
	movq	8(%rsp), %rax
	movzbl	1(%rax), %eax
	testl	%eax, %eax
	je	.LBB13_5
# BB#2:                                 #   in Loop: Header=BB13_1 Depth=1
	movq	8(%rsp), %rax
	movb	(%rax), %al
	movb	%al, 7(%rsp)
	movq	8(%rsp), %rax
	movb	1(%rax), %cl
	movb	%cl, (%rax)
	movq	8(%rsp), %rax
	movb	7(%rsp), %cl
	movb	%cl, 1(%rax)
	movq	%rbx, %rdi
	xorl	%esi, %esi
	movl	$1, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	callq	good
	testl	%eax, %eax
	je	.LBB13_4
# BB#3:                                 #   in Loop: Header=BB13_1 Depth=1
	movq	136(%rsp), %rsi
	movq	%rbx, %rdi
	callq	ins_cap
	testl	%eax, %eax
	jns	.LBB13_4
.LBB13_5:
	addq	$144, %rsp
	popq	%rbx
	ret
.Ltmp86:
	.size	transposedletter, .Ltmp86-transposedletter
	.cfi_endproc

	.align	16, 0x90
	.type	extraletter,@function
extraletter:                            # @extraletter
	.cfi_startproc
# BB#0:
	pushq	%rbx
.Ltmp89:
	.cfi_def_cfa_offset 16
	subq	$144, %rsp
.Ltmp90:
	.cfi_def_cfa_offset 160
.Ltmp91:
	.cfi_offset %rbx, -16
	movq	%rdi, 136(%rsp)
	callq	strlen
	cmpq	$2, %rax
	jb	.LBB14_6
# BB#1:
	movq	136(%rsp), %rsi
	incq	%rsi
	leaq	16(%rsp), %rbx
	movq	%rbx, %rdi
	callq	strcpy
	movq	136(%rsp), %rax
	movq	%rax, 8(%rsp)
	movq	%rbx, (%rsp)
	jmp	.LBB14_2
	.align	16, 0x90
.LBB14_5:                               #   in Loop: Header=BB14_2 Depth=1
	movq	8(%rsp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movb	(%rax), %al
	movq	(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rsp)
	movb	%al, (%rcx)
.LBB14_2:                               # =>This Inner Loop Header: Depth=1
	movq	8(%rsp), %rax
	movzbl	(%rax), %eax
	testl	%eax, %eax
	je	.LBB14_6
# BB#3:                                 #   in Loop: Header=BB14_2 Depth=1
	movq	%rbx, %rdi
	xorl	%esi, %esi
	movl	$1, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	callq	good
	testl	%eax, %eax
	je	.LBB14_5
# BB#4:                                 #   in Loop: Header=BB14_2 Depth=1
	movq	136(%rsp), %rsi
	movq	%rbx, %rdi
	callq	ins_cap
	testl	%eax, %eax
	jns	.LBB14_5
.LBB14_6:
	addq	$144, %rsp
	popq	%rbx
	ret
.Ltmp92:
	.size	extraletter, .Ltmp92-extraletter
	.cfi_endproc

	.align	16, 0x90
	.type	wrongletter,@function
wrongletter:                            # @wrongletter
	.cfi_startproc
# BB#0:
	pushq	%rbx
.Ltmp95:
	.cfi_def_cfa_offset 16
	subq	$144, %rsp
.Ltmp96:
	.cfi_def_cfa_offset 160
.Ltmp97:
	.cfi_offset %rbx, -16
	movq	%rdi, 136(%rsp)
	callq	strlen
	movl	%eax, 124(%rsp)
	movq	136(%rsp), %rsi
	leaq	(%rsp), %rbx
	movq	%rbx, %rdi
	callq	strcpy
	movq	%rbx, %rdi
	callq	upcase
	movl	$0, 132(%rsp)
	jmp	.LBB15_1
	.align	16, 0x90
.LBB15_11:                              #   in Loop: Header=BB15_1 Depth=1
	movslq	132(%rsp), %rax
	movb	123(%rsp), %cl
	movb	%cl, (%rsp,%rax)
	incl	132(%rsp)
.LBB15_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_3 Depth 2
	movl	132(%rsp), %eax
	cmpl	124(%rsp), %eax
	jge	.LBB15_12
# BB#2:                                 #   in Loop: Header=BB15_1 Depth=1
	movslq	132(%rsp), %rax
	movb	(%rsp,%rax), %al
	movb	%al, 123(%rsp)
	movl	$0, 128(%rsp)
	jmp	.LBB15_3
	.align	16, 0x90
.LBB15_10:                              #   in Loop: Header=BB15_3 Depth=2
	incl	128(%rsp)
.LBB15_3:                               #   Parent Loop BB15_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	128(%rsp), %eax
	cmpl	Trynum(%rip), %eax
	jge	.LBB15_11
# BB#4:                                 #   in Loop: Header=BB15_3 Depth=2
	movslq	128(%rsp), %rax
	movzbl	Try(%rax), %eax
	movzbl	123(%rsp), %ecx
	cmpl	%ecx, %eax
	je	.LBB15_10
# BB#5:                                 #   in Loop: Header=BB15_3 Depth=2
	movslq	128(%rsp), %rax
	movzbl	Try(%rax), %eax
	movsbl	hashheader+1666(%rax), %eax
	testl	%eax, %eax
	je	.LBB15_8
# BB#6:                                 #   in Loop: Header=BB15_3 Depth=2
	cmpl	$0, 132(%rsp)
	je	.LBB15_10
# BB#7:                                 #   in Loop: Header=BB15_3 Depth=2
	movl	124(%rsp), %eax
	decl	%eax
	cmpl	%eax, 132(%rsp)
	je	.LBB15_10
	.align	16, 0x90
.LBB15_8:                               #   in Loop: Header=BB15_3 Depth=2
	movslq	128(%rsp), %rax
	movb	Try(%rax), %al
	movslq	132(%rsp), %rcx
	movb	%al, (%rsp,%rcx)
	movq	%rbx, %rdi
	xorl	%esi, %esi
	movl	$1, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	callq	good
	testl	%eax, %eax
	je	.LBB15_10
# BB#9:                                 #   in Loop: Header=BB15_3 Depth=2
	movq	136(%rsp), %rsi
	movq	%rbx, %rdi
	callq	ins_cap
	testl	%eax, %eax
	jns	.LBB15_10
.LBB15_12:
	addq	$144, %rsp
	popq	%rbx
	ret
.Ltmp98:
	.size	wrongletter, .Ltmp98-wrongletter
	.cfi_endproc

	.align	16, 0x90
	.type	missingspace,@function
missingspace:                           # @missingspace
	.cfi_startproc
# BB#0:
	pushq	%r15
.Ltmp103:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp104:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp105:
	.cfi_def_cfa_offset 32
	subq	$2592, %rsp             # imm = 0xA20
.Ltmp106:
	.cfi_def_cfa_offset 2624
.Ltmp107:
	.cfi_offset %rbx, -32
.Ltmp108:
	.cfi_offset %r14, -24
.Ltmp109:
	.cfi_offset %r15, -16
	movq	%rdi, 2584(%rsp)
	callq	strlen
	movl	%eax, 1228(%rsp)
	cmpl	$3, %eax
	jl	.LBB16_15
# BB#1:
	cmpl	$118, 1228(%rsp)
	jg	.LBB16_15
# BB#2:
	movq	2584(%rsp), %rsi
	leaq	1233(%rsp), %rbx
	movq	%rbx, %rdi
	callq	strcpy
	movq	%rbx, 1216(%rsp)
	leaq	1232(%rsp), %rbx
	leaq	1376(%rsp), %r14
	leaq	16(%rsp), %r15
	jmp	.LBB16_3
	.align	16, 0x90
.LBB16_14:                              #   in Loop: Header=BB16_3 Depth=1
	incq	1216(%rsp)
.LBB16_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_7 Depth 2
                                        #       Child Loop BB16_9 Depth 3
	movq	1216(%rsp), %rax
	movzbl	1(%rax), %eax
	testl	%eax, %eax
	je	.LBB16_15
# BB#4:                                 #   in Loop: Header=BB16_3 Depth=1
	movq	1216(%rsp), %rax
	movb	(%rax), %cl
	movb	%cl, -1(%rax)
	movq	1216(%rsp), %rax
	movb	$0, (%rax)
	movq	%rbx, %rdi
	xorl	%esi, %esi
	movl	$1, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	callq	good
	testl	%eax, %eax
	je	.LBB16_14
# BB#5:                                 #   in Loop: Header=BB16_3 Depth=1
	movq	2584(%rsp), %rsi
	movq	%rbx, %rdi
	movq	%r14, %rdx
	callq	save_cap
	movl	%eax, 1228(%rsp)
	movq	1216(%rsp), %rdi
	incq	%rdi
	xorl	%esi, %esi
	movl	$1, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	callq	good
	testl	%eax, %eax
	je	.LBB16_14
# BB#6:                                 #   in Loop: Header=BB16_3 Depth=1
	movq	1216(%rsp), %rdi
	incq	%rdi
	movq	%rdi, %rsi
	movq	%r15, %rdx
	callq	save_cap
	movl	%eax, 1224(%rsp)
	movl	$0, 1372(%rsp)
	jmp	.LBB16_7
.LBB16_13:                              #   in Loop: Header=BB16_7 Depth=2
	incl	1372(%rsp)
.LBB16_7:                               #   Parent Loop BB16_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB16_9 Depth 3
	movl	1372(%rsp), %eax
	cmpl	1228(%rsp), %eax
	jge	.LBB16_14
# BB#8:                                 #   in Loop: Header=BB16_7 Depth=2
	movq	1216(%rsp), %rax
	subq	%rbx, %rax
	movslq	1372(%rsp), %rcx
	imulq	$120, %rcx, %rcx
	leaq	1376(%rsp,%rcx), %rcx
	addq	%rax, %rcx
	movq	%rcx, 1360(%rsp)
	movl	$0, 12(%rsp)
	jmp	.LBB16_9
	.align	16, 0x90
.LBB16_12:                              #   in Loop: Header=BB16_9 Depth=3
	incl	12(%rsp)
.LBB16_9:                               #   Parent Loop BB16_3 Depth=1
                                        #     Parent Loop BB16_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	12(%rsp), %eax
	cmpl	1224(%rsp), %eax
	jge	.LBB16_13
# BB#10:                                #   in Loop: Header=BB16_9 Depth=3
	movq	1360(%rsp), %rax
	movb	$32, (%rax)
	movslq	12(%rsp), %rax
	movq	1360(%rsp), %rdi
	incq	%rdi
	imulq	$120, %rax, %rax
	leaq	16(%rsp,%rax), %rsi
	callq	strcpy
	movslq	1372(%rsp), %rax
	imulq	$120, %rax, %rax
	leaq	1376(%rsp,%rax), %rdi
	xorb	%al, %al
	callq	insert
	testl	%eax, %eax
	js	.LBB16_15
# BB#11:                                #   in Loop: Header=BB16_9 Depth=3
	movq	1360(%rsp), %rax
	movb	$45, (%rax)
	movslq	1372(%rsp), %rax
	imulq	$120, %rax, %rax
	leaq	1376(%rsp,%rax), %rdi
	xorb	%al, %al
	callq	insert
	testl	%eax, %eax
	jns	.LBB16_12
.LBB16_15:
	addq	$2592, %rsp             # imm = 0xA20
	popq	%rbx
	popq	%r14
	popq	%r15
	ret
.Ltmp110:
	.size	missingspace, .Ltmp110-missingspace
	.cfi_endproc

	.align	16, 0x90
	.type	tryveryhard,@function
tryveryhard:                            # @tryveryhard
	.cfi_startproc
# BB#0:
	pushq	%rax
.Ltmp112:
	.cfi_def_cfa_offset 16
	movq	%rdi, (%rsp)
	movl	$1, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	callq	good
	popq	%rax
	ret
.Ltmp113:
	.size	tryveryhard, .Ltmp113-tryveryhard
	.cfi_endproc

	.align	16, 0x90
	.type	posscmp,@function
posscmp:                                # @posscmp
	.cfi_startproc
# BB#0:
	subq	$24, %rsp
.Ltmp115:
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	%rsi, 8(%rsp)
	movq	16(%rsp), %rdi
	xorl	%edx, %edx
	callq	casecmp
	addq	$24, %rsp
	ret
.Ltmp116:
	.size	posscmp, .Ltmp116-posscmp
	.cfi_endproc

	.globl	ins_root_cap
	.align	16, 0x90
	.type	ins_root_cap,@function
ins_root_cap:                           # @ins_root_cap
	.cfi_startproc
# BB#0:
	pushq	%r14
.Ltmp120:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp121:
	.cfi_def_cfa_offset 24
	subq	$1320, %rsp             # imm = 0x528
.Ltmp122:
	.cfi_def_cfa_offset 1344
.Ltmp123:
	.cfi_offset %rbx, -24
.Ltmp124:
	.cfi_offset %r14, -16
	movq	%rdi, 1304(%rsp)
	movq	%rsi, 1296(%rsp)
	movl	%edx, 1292(%rsp)
	movl	%ecx, 1288(%rsp)
	movl	%r8d, 1284(%rsp)
	movl	%r9d, 1280(%rsp)
	movq	1360(%rsp), %rax
	movq	1352(%rsp), %rcx
	movq	1344(%rsp), %rdx
	leaq	48(%rsp), %r10
	movq	%rdx, 1272(%rsp)
	movq	%rcx, 1264(%rsp)
	movq	%rax, 1256(%rsp)
	movl	$0, 44(%rsp)
	movl	1280(%rsp), %r9d
	movl	1284(%rsp), %r8d
	movl	1288(%rsp), %ecx
	movl	1292(%rsp), %edx
	movq	1296(%rsp), %rsi
	movq	1304(%rsp), %rdi
	movq	1272(%rsp), %r11
	movq	1264(%rsp), %r14
	movq	1256(%rsp), %rbx
	leaq	44(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	%r10, 24(%rsp)
	movq	%rbx, 16(%rsp)
	movq	%r14, 8(%rsp)
	movq	%r11, (%rsp)
	callq	save_root_cap
	movl	$0, 1252(%rsp)
	jmp	.LBB19_1
	.align	16, 0x90
.LBB19_4:                               #   in Loop: Header=BB19_1 Depth=1
	incl	1252(%rsp)
.LBB19_1:                               # =>This Inner Loop Header: Depth=1
	movl	1252(%rsp), %eax
	cmpl	44(%rsp), %eax
	jge	.LBB19_5
# BB#2:                                 #   in Loop: Header=BB19_1 Depth=1
	movslq	1252(%rsp), %rax
	imulq	$120, %rax, %rax
	leaq	48(%rsp,%rax), %rdi
	xorb	%al, %al
	callq	insert
	testl	%eax, %eax
	jns	.LBB19_4
# BB#3:
	movl	$-1, 1316(%rsp)
	jmp	.LBB19_6
.LBB19_5:
	movl	$0, 1316(%rsp)
.LBB19_6:
	movl	1316(%rsp), %eax
	addq	$1320, %rsp             # imm = 0x528
	popq	%rbx
	popq	%r14
	ret
.Ltmp125:
	.size	ins_root_cap, .Ltmp125-ins_root_cap
	.cfi_endproc

	.align	16, 0x90
	.type	save_root_cap,@function
save_root_cap:                          # @save_root_cap
	.cfi_startproc
# BB#0:
	pushq	%rbx
.Ltmp128:
	.cfi_def_cfa_offset 16
	subq	$304, %rsp              # imm = 0x130
.Ltmp129:
	.cfi_def_cfa_offset 320
.Ltmp130:
	.cfi_offset %rbx, -16
	movq	%rdi, 296(%rsp)
	movq	%rsi, 288(%rsp)
	movl	%edx, 284(%rsp)
	movl	%ecx, 280(%rsp)
	movl	%r8d, 276(%rsp)
	movl	%r9d, 272(%rsp)
	movq	352(%rsp), %rax
	movq	344(%rsp), %rcx
	movq	336(%rsp), %rdx
	movq	328(%rsp), %rsi
	movq	320(%rsp), %rdi
	movq	%rdi, 264(%rsp)
	movq	%rsi, 256(%rsp)
	movq	%rdx, 248(%rsp)
	movq	%rcx, 240(%rsp)
	movq	%rax, 232(%rsp)
	cmpl	$9, (%rax)
	jg	.LBB20_40
# BB#1:
	movq	296(%rsp), %rsi
	leaq	32(%rsp), %rdi
	callq	strcpy
	movq	288(%rsp), %rax
	movzbl	(%rax), %eax
	movsbl	hashheader+1210(%rax), %eax
	movl	%eax, 220(%rsp)
	movl	$1879048192, %eax       # imm = 0x70000000
	movq	264(%rsp), %rcx
	movq	%rcx, 224(%rsp)
	andq	16(%rcx), %rax
	cmpq	$268435456, %rax        # imm = 0x10000000
	je	.LBB20_2
# BB#4:
	movq	288(%rsp), %rax
	movq	%rax, 24(%rsp)
	jmp	.LBB20_5
	.align	16, 0x90
.LBB20_7:                               #   in Loop: Header=BB20_5 Depth=1
	incq	24(%rsp)
.LBB20_5:                               # =>This Inner Loop Header: Depth=1
	movq	24(%rsp), %rax
	cmpb	$0, (%rax)
	je	.LBB20_8
# BB#6:                                 #   in Loop: Header=BB20_5 Depth=1
	movq	24(%rsp), %rax
	movzbl	(%rax), %eax
	cmpb	$0, hashheader+1438(%rax)
	je	.LBB20_7
.LBB20_8:
	movq	24(%rsp), %rax
	movzbl	(%rax), %eax
	testl	%eax, %eax
	je	.LBB20_2
# BB#9:
	movq	288(%rsp), %rax
	incq	%rax
	movq	%rax, 24(%rsp)
	jmp	.LBB20_10
	.align	16, 0x90
.LBB20_12:                              #   in Loop: Header=BB20_10 Depth=1
	incq	24(%rsp)
.LBB20_10:                              # =>This Inner Loop Header: Depth=1
	movq	24(%rsp), %rax
	cmpb	$0, (%rax)
	je	.LBB20_13
# BB#11:                                #   in Loop: Header=BB20_10 Depth=1
	movq	24(%rsp), %rax
	movzbl	(%rax), %eax
	cmpb	$0, hashheader+1210(%rax)
	je	.LBB20_12
.LBB20_13:
	movq	24(%rsp), %rax
	movzbl	(%rax), %eax
	testl	%eax, %eax
	jne	.LBB20_28
# BB#14:
	cmpl	$0, 220(%rsp)
	je	.LBB20_18
# BB#15:
	movq	224(%rsp), %rax
	movl	$805306368, %ecx        # imm = 0x30000000
	andq	16(%rax), %rcx
	cmpq	$536870912, %rcx        # imm = 0x20000000
	je	.LBB20_17
# BB#16:
	movq	224(%rsp), %rax
	testb	$48, 19(%rax)
	jne	.LBB20_20
	jmp	.LBB20_17
.LBB20_2:
	leaq	32(%rsp), %rbx
	movq	%rbx, %rdi
	callq	upcase
.LBB20_3:
	movq	232(%rsp), %rax
	movslq	(%rax), %rax
	imulq	$120, %rax, %rdi
	addq	240(%rsp), %rdi
	movq	%rbx, %rsi
	callq	strcpy
	movq	232(%rsp), %rax
	incl	(%rax)
.LBB20_40:
	addq	$304, %rsp              # imm = 0x130
	popq	%rbx
	ret
.LBB20_17:
	leaq	32(%rsp), %rbx
	movq	%rbx, %rdi
	callq	lowcase
	movzbl	32(%rsp), %eax
	movb	hashheader+754(%rax), %al
	movb	%al, 32(%rsp)
	jmp	.LBB20_3
.LBB20_18:
	movq	224(%rsp), %rax
	testb	$48, 19(%rax)
	je	.LBB20_19
.LBB20_20:                              # =>This Inner Loop Header: Depth=1
	movq	224(%rsp), %rax
	testb	$64, 19(%rax)
	je	.LBB20_28
# BB#21:                                #   in Loop: Header=BB20_20 Depth=1
	movq	224(%rsp), %rax
	movq	(%rax), %rax
	movq	%rax, 224(%rsp)
	movl	$805306368, %ecx        # imm = 0x30000000
	andq	16(%rax), %rcx
	cmpq	$805306368, %rcx        # imm = 0x30000000
	je	.LBB20_20
# BB#22:                                #   in Loop: Header=BB20_20 Depth=1
	cmpq	$0, 256(%rsp)
	je	.LBB20_24
# BB#23:                                #   in Loop: Header=BB20_20 Depth=1
	movq	256(%rsp), %rax
	movzbl	16(%rax), %eax
	movq	224(%rsp), %rcx
	movq	16(%rcx), %rcx
	btq	%rax, %rcx
	jae	.LBB20_20
.LBB20_24:                              #   in Loop: Header=BB20_20 Depth=1
	cmpq	$0, 248(%rsp)
	je	.LBB20_26
# BB#25:                                #   in Loop: Header=BB20_20 Depth=1
	movq	248(%rsp), %rax
	movzbl	16(%rax), %eax
	movq	224(%rsp), %rcx
	movq	16(%rcx), %rcx
	btq	%rax, %rcx
	jae	.LBB20_20
.LBB20_26:                              #   in Loop: Header=BB20_20 Depth=1
	cmpl	$0, 220(%rsp)
	je	.LBB20_18
# BB#27:                                #   in Loop: Header=BB20_20 Depth=1
	movq	224(%rsp), %rax
	movl	$805306368, %ecx        # imm = 0x30000000
	andq	16(%rax), %rcx
	cmpq	$536870912, %rcx        # imm = 0x20000000
	jne	.LBB20_20
	jmp	.LBB20_17
.LBB20_28:
	movq	264(%rsp), %rax
	movq	%rax, 224(%rsp)
	movq	8(%rax), %rdi
	movl	$1, %esi
	callq	strtosichar
	movq	%rax, 24(%rsp)
	movq	%rax, %rdi
	callq	strlen
	movl	%eax, 20(%rsp)
	movq	224(%rsp), %rax
	testb	$64, 19(%rax)
	je	.LBB20_30
	jmp	.LBB20_29
.LBB20_19:
	leaq	32(%rsp), %rbx
	movq	%rbx, %rdi
	callq	lowcase
	jmp	.LBB20_3
.LBB20_29:
	movq	224(%rsp), %rax
	movq	(%rax), %rax
	movq	%rax, 224(%rsp)
.LBB20_30:
	cmpq	$0, 256(%rsp)
	je	.LBB20_32
# BB#31:
	movq	256(%rsp), %rax
	movzbl	16(%rax), %eax
	movq	224(%rsp), %rcx
	movq	16(%rcx), %rcx
	btq	%rax, %rcx
	jae	.LBB20_39
.LBB20_32:
	cmpq	$0, 248(%rsp)
	je	.LBB20_34
# BB#33:
	movq	248(%rsp), %rax
	movzbl	16(%rax), %eax
	movq	224(%rsp), %rcx
	movq	16(%rcx), %rcx
	btq	%rax, %rcx
	jae	.LBB20_39
.LBB20_34:
	movq	224(%rsp), %rax
	movl	$805306368, %ecx        # imm = 0x30000000
	andq	16(%rax), %rcx
	cmpq	$805306368, %rcx        # imm = 0x30000000
	je	.LBB20_41
# BB#35:
	leaq	32(%rsp), %rdi
	callq	lowcase
	cmpl	$0, 220(%rsp)
	jne	.LBB20_37
# BB#36:
	movq	224(%rsp), %rax
	movl	$805306368, %ecx        # imm = 0x30000000
	andq	16(%rax), %rcx
	cmpq	$536870912, %rcx        # imm = 0x20000000
	jne	.LBB20_38
.LBB20_37:
	movzbl	32(%rsp), %eax
	movb	hashheader+754(%rax), %al
	movb	%al, 32(%rsp)
	jmp	.LBB20_38
.LBB20_41:
	movq	224(%rsp), %rax
	movq	8(%rax), %rdi
	movl	$1, %esi
	callq	strtosichar
	movq	%rax, 24(%rsp)
	movslq	284(%rsp), %rdx
	movl	20(%rsp), %ecx
	movq	%rdx, %rdi
	addq	%rax, %rdi
	subl	%edx, %ecx
	subl	276(%rsp), %ecx
	movslq	%ecx, %rdx
	movslq	280(%rsp), %rax
	leaq	32(%rsp,%rax), %rsi
	callq	bcopy
	movslq	284(%rsp), %rax
	movq	24(%rsp), %rcx
	movzbl	(%rcx,%rax), %eax
	cmpb	$0, hashheader+1210(%rax)
	je	.LBB20_45
# BB#42:
	movl	$0, 16(%rsp)
	jmp	.LBB20_43
	.align	16, 0x90
.LBB20_44:                              #   in Loop: Header=BB20_43 Depth=1
	movslq	16(%rsp), %rax
	movzbl	32(%rsp,%rax), %ecx
	movb	hashheader+754(%rcx), %cl
	movb	%cl, 32(%rsp,%rax)
	incl	16(%rsp)
.LBB20_43:                              # =>This Inner Loop Header: Depth=1
	movl	16(%rsp), %eax
	cmpl	280(%rsp), %eax
	jge	.LBB20_48
	jmp	.LBB20_44
.LBB20_45:
	movl	$0, 16(%rsp)
	jmp	.LBB20_46
	.align	16, 0x90
.LBB20_47:                              #   in Loop: Header=BB20_46 Depth=1
	movslq	16(%rsp), %rax
	movzbl	32(%rsp,%rax), %ecx
	movb	hashheader+526(%rcx), %cl
	movb	%cl, 32(%rsp,%rax)
	incl	16(%rsp)
.LBB20_46:                              # =>This Inner Loop Header: Depth=1
	movl	16(%rsp), %eax
	cmpl	280(%rsp), %eax
	jl	.LBB20_47
.LBB20_48:
	movl	20(%rsp), %eax
	addl	280(%rsp), %eax
	addl	272(%rsp), %eax
	subl	284(%rsp), %eax
	subl	276(%rsp), %eax
	movl	%eax, 12(%rsp)
	movl	20(%rsp), %eax
	addl	280(%rsp), %eax
	subl	284(%rsp), %eax
	subl	276(%rsp), %eax
	movl	%eax, 16(%rsp)
	movl	20(%rsp), %eax
	subl	276(%rsp), %eax
	decl	%eax
	movslq	%eax, %rax
	movq	24(%rsp), %rcx
	leaq	(%rcx,%rax), %rdx
	movq	%rdx, 24(%rsp)
	movzbl	(%rcx,%rax), %eax
	cmpb	$0, hashheader+1210(%rax)
	je	.LBB20_52
# BB#49:
	movslq	16(%rsp), %rax
	leaq	32(%rsp,%rax), %rax
	movq	%rax, 24(%rsp)
	jmp	.LBB20_50
	.align	16, 0x90
.LBB20_51:                              #   in Loop: Header=BB20_50 Depth=1
	movq	24(%rsp), %rax
	movzbl	(%rax), %ecx
	movb	hashheader+754(%rcx), %cl
	movb	%cl, (%rax)
	incl	16(%rsp)
	incq	24(%rsp)
.LBB20_50:                              # =>This Inner Loop Header: Depth=1
	movl	16(%rsp), %eax
	cmpl	12(%rsp), %eax
	jge	.LBB20_38
	jmp	.LBB20_51
.LBB20_52:
	movslq	16(%rsp), %rax
	leaq	32(%rsp,%rax), %rax
	movq	%rax, 24(%rsp)
	jmp	.LBB20_53
	.align	16, 0x90
.LBB20_54:                              #   in Loop: Header=BB20_53 Depth=1
	movq	24(%rsp), %rax
	movzbl	(%rax), %ecx
	movb	hashheader+526(%rcx), %cl
	movb	%cl, (%rax)
	incl	16(%rsp)
	incq	24(%rsp)
.LBB20_53:                              # =>This Inner Loop Header: Depth=1
	movl	16(%rsp), %eax
	cmpl	12(%rsp), %eax
	jl	.LBB20_54
.LBB20_38:
	movq	232(%rsp), %rax
	movslq	(%rax), %rax
	imulq	$120, %rax, %rdi
	addq	240(%rsp), %rdi
	leaq	32(%rsp), %rsi
	callq	strcpy
	movq	232(%rsp), %rax
	incl	(%rax)
	movq	232(%rsp), %rax
	cmpl	$9, (%rax)
	jg	.LBB20_40
.LBB20_39:
	movq	224(%rsp), %rax
	testb	$64, 19(%rax)
	jne	.LBB20_29
	jmp	.LBB20_40
.Ltmp131:
	.size	save_root_cap, .Ltmp131-save_root_cap
	.cfi_endproc

	.align	16, 0x90
	.type	insert,@function
insert:                                 # @insert
	.cfi_startproc
# BB#0:
	subq	$40, %rsp
.Ltmp133:
	.cfi_def_cfa_offset 48
	movq	%rdi, 24(%rsp)
	xorl	%esi, %esi
	callq	ichartosstr
	movq	%rax, 8(%rsp)
	movl	$0, 20(%rsp)
	jmp	.LBB21_1
	.align	16, 0x90
.LBB21_3:                               #   in Loop: Header=BB21_1 Depth=1
	incl	20(%rsp)
.LBB21_1:                               # =>This Inner Loop Header: Depth=1
	movl	20(%rsp), %eax
	cmpl	pcount(%rip), %eax
	jge	.LBB21_4
# BB#2:                                 #   in Loop: Header=BB21_1 Depth=1
	movq	8(%rsp), %rsi
	movslq	20(%rsp), %rax
	imulq	$120, %rax, %rax
	leaq	possibilities(%rax), %rdi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB21_8
	jmp	.LBB21_3
.LBB21_4:
	movslq	pcount(%rip), %rax
	leal	1(%rax), %ecx
	movl	%ecx, pcount(%rip)
	movq	8(%rsp), %rsi
	imulq	$120, %rax, %rax
	leaq	possibilities(%rax), %rdi
	callq	strcpy
	movq	8(%rsp), %rdi
	callq	strlen
	movl	%eax, 20(%rsp)
	cmpl	maxposslen(%rip), %eax
	jle	.LBB21_6
# BB#5:
	movl	20(%rsp), %eax
	movl	%eax, maxposslen(%rip)
.LBB21_6:
	cmpl	$100, pcount(%rip)
	jl	.LBB21_8
# BB#7:
	movl	$-1, 36(%rsp)
	jmp	.LBB21_9
.LBB21_8:
	movl	$0, 36(%rsp)
.LBB21_9:
	movl	36(%rsp), %eax
	addq	$40, %rsp
	ret
.Ltmp134:
	.size	insert, .Ltmp134-insert
	.cfi_endproc

	.globl	askmode
	.align	16, 0x90
	.type	askmode,@function
askmode:                                # @askmode
	.cfi_startproc
# BB#0:
	subq	$40, %rsp
.Ltmp136:
	.cfi_def_cfa_offset 48
	cmpl	$0, fflag(%rip)
	je	.LBB22_2
# BB#1:
	movq	stdout(%rip), %rdx
	movq	askfilename(%rip), %rdi
	movl	$.L.str38, %esi
	callq	freopen
	testq	%rax, %rax
	je	.LBB22_52
.LBB22_2:
	movq	Version_ID(%rip), %rsi
	movl	$.L.str40, %edi
	xorb	%al, %al
	callq	printf
	movl	$0, contextoffset(%rip)
	jmp	.LBB22_3
	.align	16, 0x90
.LBB22_50:                              #   in Loop: Header=BB22_3 Depth=1
	movq	stdout(%rip), %rdi
	callq	rewind
	movq	askfilename(%rip), %rdi
	movl	$438, %esi              # imm = 0x1B6
	xorb	%al, %al
	callq	creat
.LBB22_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_12 Depth 2
                                        #     Child Loop BB22_42 Depth 2
	movq	stdout(%rip), %rdi
	callq	fflush
	cmpl	$0, contextoffset(%rip)
	jne	.LBB22_5
# BB#4:                                 #   in Loop: Header=BB22_3 Depth=1
	movq	stdin(%rip), %rdx
	movl	$contextbufs, %edi
	movl	$4096, %esi             # imm = 0x1000
	callq	xgets
	jmp	.LBB22_6
	.align	16, 0x90
.LBB22_5:                               #   in Loop: Header=BB22_3 Depth=1
	movq	stdin(%rip), %rdx
	movl	$contextbufs, %edi
	movl	$4096, %esi             # imm = 0x1000
	callq	fgets
.LBB22_6:                               #   in Loop: Header=BB22_3 Depth=1
	testq	%rax, %rax
	je	.LBB22_51
# BB#7:                                 #   in Loop: Header=BB22_3 Depth=1
	movl	$contextbufs, %edi
	callq	strlen
	movl	%eax, 36(%rsp)
	decl	%eax
	movslq	%eax, %rax
	movsbl	contextbufs(%rax), %eax
	cmpl	$10, %eax
	jne	.LBB22_9
# BB#8:                                 #   in Loop: Header=BB22_3 Depth=1
	movl	$1, 4(%rsp)
	movl	36(%rsp), %eax
	decl	%eax
	movl	%eax, 36(%rsp)
	movslq	%eax, %rax
	movb	$0, contextbufs(%rax)
	jmp	.LBB22_10
	.align	16, 0x90
.LBB22_9:                               #   in Loop: Header=BB22_3 Depth=1
	movl	$0, 4(%rsp)
.LBB22_10:                              #   in Loop: Header=BB22_3 Depth=1
	movslq	36(%rsp), %rax
	cmpq	$4095, %rax             # imm = 0xFFF
	jne	.LBB22_19
# BB#11:                                #   in Loop: Header=BB22_3 Depth=1
	movl	36(%rsp), %eax
	decl	%eax
	movslq	%eax, %rax
	movzbl	contextbufs(%rax), %eax
	movl	%eax, 32(%rsp)
	jmp	.LBB22_12
	.align	16, 0x90
.LBB22_18:                              #   in Loop: Header=BB22_12 Depth=2
	movslq	36(%rsp), %rax
	leal	1(%rax), %ecx
	movb	32(%rsp), %dl
	movl	%ecx, 36(%rsp)
	movb	%dl, contextbufs(%rax)
	movslq	36(%rsp), %rax
	movb	$0, contextbufs(%rax)
.LBB22_12:                              #   Parent Loop BB22_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorb	%al, %al
	movslq	36(%rsp), %rcx
	cmpq	$8190, %rcx             # imm = 0x1FFE
	ja	.LBB22_16
# BB#13:                                #   in Loop: Header=BB22_12 Depth=2
	movzbl	32(%rsp), %eax
	movsbl	hashheader+982(%rax), %ecx
	movb	$1, %al
	testl	%ecx, %ecx
	jne	.LBB22_16
# BB#14:                                #   in Loop: Header=BB22_12 Depth=2
	movzbl	32(%rsp), %ecx
	movsbl	hashheader+1666(%rcx), %ecx
	testl	%ecx, %ecx
	jne	.LBB22_16
# BB#15:                                #   in Loop: Header=BB22_12 Depth=2
	movzbl	32(%rsp), %eax
	movsbl	hashheader+1894(%rax), %eax
	testl	%eax, %eax
	setne	%al
	.align	16, 0x90
.LBB22_16:                              #   in Loop: Header=BB22_12 Depth=2
	cmpb	$1, %al
	jne	.LBB22_19
# BB#17:                                #   in Loop: Header=BB22_12 Depth=2
	movq	stdin(%rip), %rdi
	callq	_IO_getc
	movl	%eax, 32(%rsp)
	cmpl	$-1, %eax
	jne	.LBB22_18
.LBB22_19:                              #   in Loop: Header=BB22_3 Depth=1
	cmpl	$0, contextoffset(%rip)
	jne	.LBB22_44
# BB#20:                                #   in Loop: Header=BB22_3 Depth=1
	movsbl	contextbufs(%rip), %eax
	cmpl	$42, %eax
	je	.LBB22_22
# BB#21:                                #   in Loop: Header=BB22_3 Depth=1
	movsbl	contextbufs(%rip), %eax
	cmpl	$64, %eax
	jne	.LBB22_23
.LBB22_22:                              #   in Loop: Header=BB22_3 Depth=1
	movl	$contextbufs+1, %edi
	xorl	%esi, %esi
	callq	strtosichar
	movq	%rax, %rdi
	movl	$1, %esi
	callq	ichartosstr
	movsbl	contextbufs(%rip), %ecx
	cmpl	$42, %ecx
	sete	%cl
	movzbl	%cl, %edx
	movq	%rax, %rdi
	movl	$184, %esi
	callq	treeinsert
	jmp	.LBB22_45
.LBB22_23:                              #   in Loop: Header=BB22_3 Depth=1
	movsbl	contextbufs(%rip), %eax
	cmpl	$38, %eax
	jne	.LBB22_25
# BB#24:                                #   in Loop: Header=BB22_3 Depth=1
	movl	$contextbufs+1, %edi
	xorl	%esi, %esi
	callq	strtosichar
	movq	%rax, 8(%rsp)
	movq	%rax, %rdi
	callq	lowcase
	movq	8(%rsp), %rdi
	movl	$1, %esi
	callq	ichartosstr
	movq	%rax, %rdi
	movl	$184, %esi
	movl	$1, %edx
	callq	treeinsert
	jmp	.LBB22_45
.LBB22_25:                              #   in Loop: Header=BB22_3 Depth=1
	movsbl	contextbufs(%rip), %eax
	cmpl	$35, %eax
	jne	.LBB22_27
# BB#26:                                #   in Loop: Header=BB22_3 Depth=1
	callq	treeoutput
	movl	$0, math_mode(%rip)
	movb	$80, LaTeX_Mode(%rip)
	jmp	.LBB22_45
.LBB22_27:                              #   in Loop: Header=BB22_3 Depth=1
	movsbl	contextbufs(%rip), %eax
	cmpl	$33, %eax
	jne	.LBB22_29
# BB#28:                                #   in Loop: Header=BB22_3 Depth=1
	movl	$1, terse(%rip)
	jmp	.LBB22_45
.LBB22_29:                              #   in Loop: Header=BB22_3 Depth=1
	movsbl	contextbufs(%rip), %eax
	cmpl	$37, %eax
	jne	.LBB22_31
# BB#30:                                #   in Loop: Header=BB22_3 Depth=1
	movl	$0, terse(%rip)
	jmp	.LBB22_45
.LBB22_31:                              #   in Loop: Header=BB22_3 Depth=1
	movsbl	contextbufs(%rip), %eax
	cmpl	$45, %eax
	jne	.LBB22_33
# BB#32:                                #   in Loop: Header=BB22_3 Depth=1
	movl	$0, math_mode(%rip)
	movb	$80, LaTeX_Mode(%rip)
	movl	$0, tflag(%rip)
	jmp	.LBB22_45
.LBB22_33:                              #   in Loop: Header=BB22_3 Depth=1
	movsbl	contextbufs(%rip), %eax
	cmpl	$43, %eax
	jne	.LBB22_37
# BB#34:                                #   in Loop: Header=BB22_3 Depth=1
	movl	$0, math_mode(%rip)
	movb	$80, LaTeX_Mode(%rip)
	movl	$contextbufs+1, %edi
	movl	$.L.str41, %esi
	callq	strcmp
	xorb	%cl, %cl
	testl	%eax, %eax
	je	.LBB22_36
# BB#35:                                #   in Loop: Header=BB22_3 Depth=1
	movl	$contextbufs+1, %edi
	movl	$.L.str42, %esi
	callq	strcmp
	testl	%eax, %eax
	setne	%cl
.LBB22_36:                              #   in Loop: Header=BB22_3 Depth=1
	movzbl	%cl, %eax
	movl	%eax, tflag(%rip)
	jmp	.LBB22_45
.LBB22_37:                              #   in Loop: Header=BB22_3 Depth=1
	movsbl	contextbufs(%rip), %eax
	cmpl	$126, %eax
	jne	.LBB22_40
# BB#38:                                #   in Loop: Header=BB22_3 Depth=1
	movl	$contextbufs+1, %edi
	movl	$1, %esi
	xorl	%edx, %edx
	callq	findfiletype
	movl	%eax, defdupchar(%rip)
	testl	%eax, %eax
	jns	.LBB22_45
# BB#39:                                #   in Loop: Header=BB22_3 Depth=1
	movl	$0, defdupchar(%rip)
	jmp	.LBB22_45
.LBB22_40:                              #   in Loop: Header=BB22_3 Depth=1
	movsbl	contextbufs(%rip), %eax
	cmpl	$94, %eax
	jne	.LBB22_44
# BB#41:                                #   in Loop: Header=BB22_3 Depth=1
	movq	$contextbufs, 24(%rsp)
	movq	$contextbufs+1, 16(%rsp)
	.align	16, 0x90
.LBB22_42:                              #   Parent Loop BB22_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rsp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 16(%rsp)
	movsbl	(%rax), %eax
	movq	24(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, 24(%rsp)
	movb	%al, (%rcx)
	testl	%eax, %eax
	jne	.LBB22_42
# BB#43:                                #   in Loop: Header=BB22_3 Depth=1
	incl	contextoffset(%rip)
	decl	36(%rsp)
	.align	16, 0x90
.LBB22_44:                              #   in Loop: Header=BB22_3 Depth=1
	movq	stdout(%rip), %rdi
	callq	checkline
.LBB22_45:                              #   in Loop: Header=BB22_3 Depth=1
	cmpl	$0, 4(%rsp)
	je	.LBB22_47
# BB#46:                                #   in Loop: Header=BB22_3 Depth=1
	movl	$0, contextoffset(%rip)
	jmp	.LBB22_48
	.align	16, 0x90
.LBB22_47:                              #   in Loop: Header=BB22_3 Depth=1
	movl	36(%rsp), %eax
	addl	%eax, contextoffset(%rip)
.LBB22_48:                              #   in Loop: Header=BB22_3 Depth=1
	cmpl	$0, sflag(%rip)
	je	.LBB22_3
# BB#49:                                #   in Loop: Header=BB22_3 Depth=1
	callq	stop
	cmpl	$0, fflag(%rip)
	je	.LBB22_3
	jmp	.LBB22_50
.LBB22_51:
	addq	$40, %rsp
	ret
.LBB22_52:
	movq	askfilename(%rip), %rdx
	movq	stderr(%rip), %rdi
	movl	$.L.str39, %esi
	xorb	%al, %al
	callq	fprintf
	movl	$1, %edi
	callq	exit
.Ltmp137:
	.size	askmode, .Ltmp137-askmode
	.cfi_endproc

	.globl	copyout
	.align	16, 0x90
	.type	copyout,@function
copyout:                                # @copyout
	.cfi_startproc
# BB#0:
	subq	$24, %rsp
.Ltmp139:
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movl	%esi, 12(%rsp)
	jmp	.LBB23_1
	.align	16, 0x90
.LBB23_6:                               #   in Loop: Header=BB23_1 Depth=1
	movq	16(%rsp), %rax
	incq	(%rax)
.LBB23_1:                               # =>This Inner Loop Header: Depth=1
	decl	12(%rsp)
	js	.LBB23_7
# BB#2:                                 #   in Loop: Header=BB23_1 Depth=1
	movq	16(%rsp), %rax
	movq	(%rax), %rax
	movsbl	(%rax), %eax
	testl	%eax, %eax
	je	.LBB23_7
# BB#3:                                 #   in Loop: Header=BB23_1 Depth=1
	cmpl	$0, aflag(%rip)
	jne	.LBB23_6
# BB#4:                                 #   in Loop: Header=BB23_1 Depth=1
	cmpl	$0, lflag(%rip)
	jne	.LBB23_6
# BB#5:                                 #   in Loop: Header=BB23_1 Depth=1
	movq	16(%rsp), %rax
	movq	(%rax), %rax
	movsbl	(%rax), %edi
	movq	outfile(%rip), %rsi
	callq	_IO_putc
	jmp	.LBB23_6
.LBB23_7:
	addq	$24, %rsp
	ret
.Ltmp140:
	.size	copyout, .Ltmp140-copyout
	.cfi_endproc

	.align	16, 0x90
	.type	ins_cap,@function
ins_cap:                                # @ins_cap
	.cfi_startproc
# BB#0:
	subq	$1240, %rsp             # imm = 0x4D8
.Ltmp142:
	.cfi_def_cfa_offset 1248
	movq	%rdi, 1224(%rsp)
	movq	%rsi, 1216(%rsp)
	movq	1224(%rsp), %rdi
	leaq	(%rsp), %rdx
	callq	save_cap
	movl	%eax, 1208(%rsp)
	movl	$0, 1212(%rsp)
	jmp	.LBB24_1
	.align	16, 0x90
.LBB24_4:                               #   in Loop: Header=BB24_1 Depth=1
	incl	1212(%rsp)
.LBB24_1:                               # =>This Inner Loop Header: Depth=1
	movl	1212(%rsp), %eax
	cmpl	1208(%rsp), %eax
	jge	.LBB24_5
# BB#2:                                 #   in Loop: Header=BB24_1 Depth=1
	movslq	1212(%rsp), %rax
	imulq	$120, %rax, %rax
	leaq	(%rsp,%rax), %rdi
	xorb	%al, %al
	callq	insert
	testl	%eax, %eax
	jns	.LBB24_4
# BB#3:
	movl	$-1, 1236(%rsp)
	jmp	.LBB24_6
.LBB24_5:
	movl	$0, 1236(%rsp)
.LBB24_6:
	movl	1236(%rsp), %eax
	addq	$1240, %rsp             # imm = 0x4D8
	ret
.Ltmp143:
	.size	ins_cap, .Ltmp143-ins_cap
	.cfi_endproc

	.align	16, 0x90
	.type	save_cap,@function
save_cap:                               # @save_cap
	.cfi_startproc
# BB#0:
	pushq	%r14
.Ltmp147:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp148:
	.cfi_def_cfa_offset 24
	subq	$104, %rsp
.Ltmp149:
	.cfi_def_cfa_offset 128
.Ltmp150:
	.cfi_offset %rbx, -24
.Ltmp151:
	.cfi_offset %r14, -16
	movq	%rdi, 88(%rsp)
	movq	%rsi, 80(%rsp)
	movq	%rdx, 72(%rsp)
	movq	88(%rsp), %rax
	movzbl	(%rax), %eax
	testl	%eax, %eax
	je	.LBB25_1
# BB#2:
	movl	numhits(%rip), %eax
	movl	%eax, 68(%rsp)
	movl	$0, 64(%rsp)
	leaq	64(%rsp), %r14
	jmp	.LBB25_3
	.align	16, 0x90
.LBB25_12:                              #   in Loop: Header=BB25_3 Depth=1
	movslq	68(%rsp), %rax
	leaq	(%rax,%rax,2), %rax
	movq	hits(,%rax,8), %r10
	movq	hits+8(,%rax,8), %r11
	movq	hits+16(,%rax,8), %rax
	movl	52(%rsp), %r9d
	movl	48(%rsp), %r8d
	movl	60(%rsp), %ecx
	movl	56(%rsp), %edx
	movq	80(%rsp), %rsi
	movq	88(%rsp), %rdi
	movq	72(%rsp), %rbx
	movq	%r14, 32(%rsp)
	movq	%rbx, 24(%rsp)
	movq	%rax, 16(%rsp)
	movq	%r11, 8(%rsp)
	movq	%r10, (%rsp)
	callq	save_root_cap
.LBB25_3:                               # =>This Inner Loop Header: Depth=1
	xorb	%al, %al
	decl	68(%rsp)
	js	.LBB25_5
# BB#4:                                 #   in Loop: Header=BB25_3 Depth=1
	cmpl	$10, 64(%rsp)
	setl	%al
.LBB25_5:                               #   in Loop: Header=BB25_3 Depth=1
	cmpb	$1, %al
	jne	.LBB25_13
# BB#6:                                 #   in Loop: Header=BB25_3 Depth=1
	movslq	68(%rsp), %rax
	leaq	(%rax,%rax,2), %rax
	cmpq	$0, hits+8(,%rax,8)
	je	.LBB25_8
# BB#7:                                 #   in Loop: Header=BB25_3 Depth=1
	movslq	68(%rsp), %rax
	leaq	(%rax,%rax,2), %rax
	movq	hits+8(,%rax,8), %rax
	movswl	18(%rax), %eax
	movl	%eax, 56(%rsp)
	movslq	68(%rsp), %rax
	leaq	(%rax,%rax,2), %rax
	movq	hits+8(,%rax,8), %rax
	movswl	20(%rax), %eax
	movl	%eax, 60(%rsp)
	jmp	.LBB25_9
	.align	16, 0x90
.LBB25_8:                               #   in Loop: Header=BB25_3 Depth=1
	movl	$0, 60(%rsp)
	movl	$0, 56(%rsp)
.LBB25_9:                               #   in Loop: Header=BB25_3 Depth=1
	movslq	68(%rsp), %rax
	leaq	(%rax,%rax,2), %rax
	cmpq	$0, hits+16(,%rax,8)
	je	.LBB25_11
# BB#10:                                #   in Loop: Header=BB25_3 Depth=1
	movslq	68(%rsp), %rax
	leaq	(%rax,%rax,2), %rax
	movq	hits+16(,%rax,8), %rax
	movswl	18(%rax), %eax
	movl	%eax, 48(%rsp)
	movslq	68(%rsp), %rax
	leaq	(%rax,%rax,2), %rax
	movq	hits+16(,%rax,8), %rax
	movswl	20(%rax), %eax
	movl	%eax, 52(%rsp)
	jmp	.LBB25_12
	.align	16, 0x90
.LBB25_11:                              #   in Loop: Header=BB25_3 Depth=1
	movl	$0, 48(%rsp)
	movl	$0, 52(%rsp)
	jmp	.LBB25_12
.LBB25_13:
	movl	64(%rsp), %eax
	movl	%eax, 100(%rsp)
	jmp	.LBB25_14
.LBB25_1:
	movl	$0, 100(%rsp)
.LBB25_14:
	movl	100(%rsp), %eax
	addq	$104, %rsp
	popq	%rbx
	popq	%r14
	ret
.Ltmp152:
	.size	save_cap, .Ltmp152-save_cap
	.cfi_endproc

	.align	16, 0x90
	.type	show_char,@function
show_char:                              # @show_char
	.cfi_startproc
# BB#0:
	subq	$56, %rsp
.Ltmp154:
	.cfi_def_cfa_offset 64
	movq	%rdi, 40(%rsp)
	movl	%esi, 36(%rsp)
	movl	%edx, 32(%rsp)
	movl	%ecx, 28(%rsp)
	movq	40(%rsp), %rax
	movq	(%rax), %rcx
	xorb	%al, %al
	movzbl	(%rcx), %ecx
	movl	%ecx, 24(%rsp)
	movl	$1, 16(%rsp)
	movq	40(%rsp), %rcx
	movq	(%rcx), %rcx
	movzbl	(%rcx), %ecx
	movsbl	hashheader+1894(%rcx), %ecx
	testl	%ecx, %ecx
	je	.LBB26_4
# BB#1:
	movq	40(%rsp), %rax
	movq	(%rax), %rdi
	xorl	%esi, %esi
	callq	stringcharlen
	movl	%eax, 16(%rsp)
	movl	$1, %ecx
	testl	%eax, %eax
	jg	.LBB26_3
# BB#2:
	movl	$1, 16(%rsp)
	xorl	%ecx, %ecx
.LBB26_3:
	testl	%ecx, %ecx
	setne	%al
.LBB26_4:
	cmpb	$1, %al
	jne	.LBB26_6
# BB#5:
	movl	$128, %eax
	addl	laststringch(%rip), %eax
	movb	%al, 15(%rsp)
	jmp	.LBB26_7
.LBB26_6:
	movb	24(%rsp), %al
	movb	%al, 15(%rsp)
.LBB26_7:
	cmpl	$0, vflag(%rip)
	jne	.LBB26_13
# BB#8:
	movzbl	15(%rsp), %eax
	movsbl	hashheader+982(%rax), %eax
	testl	%eax, %eax
	je	.LBB26_13
# BB#9:
	cmpl	$1, 16(%rsp)
	jne	.LBB26_13
# BB#10:
	cmpl	$0, 32(%rsp)
	je	.LBB26_12
# BB#11:
	movl	24(%rsp), %edi
	callq	putchar
.LBB26_12:
	movq	40(%rsp), %rax
	incq	(%rax)
	movl	$1, 52(%rsp)
	jmp	.LBB26_38
.LBB26_13:
	cmpl	$9, 24(%rsp)
	jne	.LBB26_17
# BB#14:
	cmpl	$0, 32(%rsp)
	je	.LBB26_16
# BB#15:
	movl	$9, %edi
	callq	putchar
.LBB26_16:
	movq	40(%rsp), %rax
	incq	(%rax)
	movl	36(%rsp), %eax
	andl	$7, %eax
	movl	$8, %ecx
	subl	%eax, %ecx
	movl	%ecx, 52(%rsp)
	jmp	.LBB26_38
.LBB26_17:
	movl	$0, 8(%rsp)
	cmpl	$0, 28(%rsp)
	je	.LBB26_20
# BB#18:
	movl	16(%rsp), %eax
	cmpl	28(%rsp), %eax
	jle	.LBB26_20
# BB#19:
	movl	28(%rsp), %eax
	movl	%eax, 16(%rsp)
.LBB26_20:
	movl	$0, 20(%rsp)
	jmp	.LBB26_21
	.align	16, 0x90
.LBB26_33:                              #   in Loop: Header=BB26_21 Depth=1
	addl	$2, 8(%rsp)
	incl	20(%rsp)
.LBB26_21:                              # =>This Inner Loop Header: Depth=1
	movl	20(%rsp), %eax
	cmpl	16(%rsp), %eax
	jge	.LBB26_37
# BB#22:                                #   in Loop: Header=BB26_21 Depth=1
	movq	40(%rsp), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movzbl	(%rcx), %eax
	movl	%eax, 24(%rsp)
	cmpl	$128, %eax
	jl	.LBB26_26
# BB#23:                                #   in Loop: Header=BB26_21 Depth=1
	cmpl	$0, 32(%rsp)
	je	.LBB26_25
# BB#24:                                #   in Loop: Header=BB26_21 Depth=1
	movl	$77, %edi
	callq	putchar
	movl	$45, %edi
	callq	putchar
.LBB26_25:                              #   in Loop: Header=BB26_21 Depth=1
	addl	$2, 8(%rsp)
	andl	$127, 24(%rsp)
.LBB26_26:                              #   in Loop: Header=BB26_21 Depth=1
	cmpl	$32, 24(%rsp)
	jl	.LBB26_28
# BB#27:                                #   in Loop: Header=BB26_21 Depth=1
	cmpl	$127, 24(%rsp)
	jne	.LBB26_34
.LBB26_28:                              #   in Loop: Header=BB26_21 Depth=1
	cmpl	$0, 32(%rsp)
	je	.LBB26_33
# BB#29:                                #   in Loop: Header=BB26_21 Depth=1
	movl	$94, %edi
	callq	putchar
	cmpl	$127, 24(%rsp)
	jne	.LBB26_31
# BB#30:                                #   in Loop: Header=BB26_21 Depth=1
	movl	$63, %edi
	jmp	.LBB26_32
	.align	16, 0x90
.LBB26_34:                              #   in Loop: Header=BB26_21 Depth=1
	cmpl	$0, 32(%rsp)
	je	.LBB26_36
# BB#35:                                #   in Loop: Header=BB26_21 Depth=1
	movl	24(%rsp), %edi
	callq	putchar
.LBB26_36:                              #   in Loop: Header=BB26_21 Depth=1
	incl	8(%rsp)
	incl	20(%rsp)
	jmp	.LBB26_21
.LBB26_31:                              #   in Loop: Header=BB26_21 Depth=1
	movl	24(%rsp), %edi
	addl	$64, %edi
.LBB26_32:                              #   in Loop: Header=BB26_21 Depth=1
	callq	putchar
	jmp	.LBB26_33
.LBB26_37:
	movl	8(%rsp), %eax
	movl	%eax, 52(%rsp)
.LBB26_38:
	movl	52(%rsp), %eax
	addq	$56, %rsp
	ret
.Ltmp155:
	.size	show_char, .Ltmp155-show_char
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	 "Whenever a word is found that is not in the dictionary,\r\n"
	.size	.L.str, 58

	.type	.L.str1,@object         # @.str1
.L.str1:
	.asciz	 "it is printed on the first line of the screen.  If the dictionary\r\n"
	.size	.L.str1, 68

	.type	.L.str2,@object         # @.str2
.L.str2:
	.asciz	 "contains any similar words, they are listed with a number\r\n"
	.size	.L.str2, 60

	.type	.L.str3,@object         # @.str3
.L.str3:
	.asciz	 "next to each one.  You have the option of replacing the word\r\n"
	.size	.L.str3, 63

	.type	.L.str4,@object         # @.str4
.L.str4:
	.asciz	 "completely, or choosing one of the suggested words.\r\n"
	.size	.L.str4, 54

	.type	.L.str5,@object         # @.str5
.L.str5:
	.zero	1
	.size	.L.str5, 1

	.type	.L.str6,@object         # @.str6
.L.str6:
	.asciz	 "\r\nCommands are:\r\n\r\n"
	.size	.L.str6, 20

	.type	.L.str7,@object         # @.str7
.L.str7:
	.asciz	 "R       Replace the misspelled word completely.\r\n"
	.size	.L.str7, 50

	.type	.L.str8,@object         # @.str8
.L.str8:
	.asciz	 "Space   Accept the word this time only.\r\n"
	.size	.L.str8, 42

	.type	.L.str9,@object         # @.str9
.L.str9:
	.asciz	 "A       Accept the word for the rest of this session.\r\n"
	.size	.L.str9, 56

	.type	.L.str10,@object        # @.str10
.L.str10:
	.asciz	 "I       Accept the word, and put it in your private dictionary.\r\n"
	.size	.L.str10, 66

	.type	.L.str11,@object        # @.str11
.L.str11:
	.asciz	 "U       Accept and add lowercase version to private dictionary.\r\n"
	.size	.L.str11, 66

	.type	.L.str12,@object        # @.str12
.L.str12:
	.asciz	 "0-n     Replace with one of the suggested words.\r\n"
	.size	.L.str12, 51

	.type	.L.str13,@object        # @.str13
.L.str13:
	.asciz	 "L       Look up words in system dictionary.\r\n"
	.size	.L.str13, 46

	.type	.L.str14,@object        # @.str14
.L.str14:
	.asciz	 "X       Write the rest of this file, ignoring misspellings,\r\n        and start next file.\r\n"
	.size	.L.str14, 92

	.type	.L.str15,@object        # @.str15
.L.str15:
	.asciz	 "Q       Quit immediately.  Asks for confirmation.\r\n        Leaves file unchanged.\r\n"
	.size	.L.str15, 84

	.type	.L.str16,@object        # @.str16
.L.str16:
	.asciz	 "!       Shell escape.\r\n"
	.size	.L.str16, 24

	.type	.L.str17,@object        # @.str17
.L.str17:
	.asciz	 "^L      Redraw screen.\r\n"
	.size	.L.str17, 25

	.type	.L.str18,@object        # @.str18
.L.str18:
	.asciz	 "^Z      Suspend program.\r\n"
	.size	.L.str18, 27

	.type	.L.str19,@object        # @.str19
.L.str19:
	.asciz	 "?       Show this help screen.\r\n"
	.size	.L.str19, 33

	.type	.L.str20,@object        # @.str20
.L.str20:
	.asciz	 "\r\n\r\n"
	.size	.L.str20, 5

	.type	.L.str21,@object        # @.str21
.L.str21:
	.asciz	 "-- Type space to continue --"
	.size	.L.str21, 29

	.type	.L.str22,@object        # @.str22
.L.str22:
	.asciz	 "    %s"
	.size	.L.str22, 7

	.type	.L.str23,@object        # @.str23
.L.str23:
	.asciz	 "              File: %s"
	.size	.L.str23, 23

	.type	.L.str24,@object        # @.str24
.L.str24:
	.asciz	 " %s"
	.size	.L.str24, 4

	.type	.L.str25,@object        # @.str25
.L.str25:
	.asciz	 "[READONLY]"
	.size	.L.str25, 11

	.type	.L.str26,@object        # @.str26
.L.str26:
	.asciz	 "??: %s"
	.size	.L.str26, 7

	.type	.L.str27,@object        # @.str27
.L.str27:
	.asciz	 "0%d: %s"
	.size	.L.str27, 8

	.type	.L.str28,@object        # @.str28
.L.str28:
	.asciz	 "%2d: %s"
	.size	.L.str28, 8

	.type	.L.str29,@object        # @.str29
.L.str29:
	.asciz	 "[SP] <number> R)epl A)ccept I)nsert L)ookup U)ncap Q)uit e(X)it or ? for help\r\n"
	.size	.L.str29, 80

	.type	.L.str30,@object        # @.str30
.L.str30:
	.asciz	 "Are you sure you want to throw away your changes? "
	.size	.L.str30, 51

	.type	.L.str31,@object        # @.str31
.L.str31:
	.asciz	 "\r\n"
	.size	.L.str31, 3

	.type	.L.str32,@object        # @.str32
.L.str32:
	.asciz	 "%s "
	.size	.L.str32, 4

	.type	.L.str33,@object        # @.str33
.L.str33:
	.asciz	 "Replace with: "
	.size	.L.str33, 15

	.type	.L.str34,@object        # @.str34
.L.str34:
	.asciz	 "\r\nWord '%s' too long at line %d of %s, truncated\r\n"
	.size	.L.str34, 51

	.type	.L.str35,@object        # @.str35
.L.str35:
	.asciz	 "/home/arka3/repos/test-suite/MultiSource/Benchmarks/MiBench/office-ispell/correct.c"
	.size	.L.str35, 84

	.type	.L.str36,@object        # @.str36
.L.str36:
	.asciz	 "%s"
	.size	.L.str36, 3

	.type	.L.str37,@object        # @.str37
.L.str37:
	.asciz	 "Lookup string ('*' is wildcard): "
	.size	.L.str37, 34

	.type	.L.str38,@object        # @.str38
.L.str38:
	.asciz	 "w"
	.size	.L.str38, 2

	.type	.L.str39,@object        # @.str39
.L.str39:
	.asciz	 "Can't create %s\r\n"
	.size	.L.str39, 18

	.type	.L.str40,@object        # @.str40
.L.str40:
	.asciz	 "%s\n"
	.size	.L.str40, 4

	.type	Version_ID,@object      # @Version_ID
	.data
	.align	16
Version_ID:
	.quad	.L.str49
	.quad	.L.str50
	.quad	.L.str51
	.quad	.L.str52
	.quad	.L.str53
	.quad	.L.str54
	.quad	.L.str55
	.quad	.L.str56
	.quad	.L.str53
	.quad	.L.str57
	.quad	.L.str58
	.quad	.L.str59
	.quad	.L.str60
	.quad	.L.str61
	.quad	.L.str62
	.quad	.L.str63
	.quad	.L.str64
	.quad	.L.str65
	.quad	.L.str66
	.quad	.L.str67
	.quad	.L.str68
	.quad	.L.str69
	.quad	.L.str70
	.quad	.L.str71
	.quad	.L.str72
	.quad	.L.str73
	.quad	.L.str53
	.quad	.L.str74
	.quad	.L.str75
	.quad	.L.str76
	.quad	.L.str77
	.quad	.L.str78
	.quad	.L.str79
	.quad	.L.str80
	.quad	.L.str81
	.quad	.L.str82
	.quad	.L.str83
	.quad	.L.str84
	.quad	.L.str85
	.quad	0
	.size	Version_ID, 320

	.type	.L.str41,@object        # @.str41
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str41:
	.asciz	 "nroff"
	.size	.L.str41, 6

	.type	.L.str42,@object        # @.str42
.L.str42:
	.asciz	 "troff"
	.size	.L.str42, 6

	.type	lookharder.look,@object # @lookharder.look
	.data
	.align	4
lookharder.look:
	.long	4294967295              # 0xffffffff
	.size	lookharder.look, 4

	.type	.L.str43,@object        # @.str43
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str43:
	.asciz	 "%s %s %s"
	.size	.L.str43, 9

	.type	.L.str44,@object        # @.str44
.L.str44:
	.asciz	 "look -df"
	.size	.L.str44, 9

	.type	.L.str45,@object        # @.str45
.L.str45:
	.asciz	 "/usr/dict/words"
	.size	.L.str45, 16

	.type	.L.str46,@object        # @.str46
.L.str46:
	.asciz	 ".*"
	.size	.L.str46, 3

	.type	.L.str47,@object        # @.str47
.L.str47:
	.asciz	 "%s ^%s$ %s"
	.size	.L.str47, 11

	.type	.L.str48,@object        # @.str48
.L.str48:
	.asciz	 "/usr/bin/egrep -i"
	.size	.L.str48, 18

	.type	.L.str49,@object        # @.str49
.L.str49:
	.asciz	 "@(#) International Ispell Version 3.1.20 10/10/95"
	.size	.L.str49, 50

	.type	.L.str50,@object        # @.str50
.L.str50:
	.asciz	 "@(#) Copyright (c), 1983, by Pace Willisson"
	.size	.L.str50, 44

	.type	.L.str51,@object        # @.str51
.L.str51:
	.asciz	 "@(#) International version Copyright (c) 1987, 1988, 1990-1995,"
	.size	.L.str51, 64

	.type	.L.str52,@object        # @.str52
.L.str52:
	.asciz	 "@(#) by Geoff Kuenning, Granada Hills, CA.  All rights reserved."
	.size	.L.str52, 65

	.type	.L.str53,@object        # @.str53
.L.str53:
	.asciz	 "@(#)"
	.size	.L.str53, 5

	.type	.L.str54,@object        # @.str54
.L.str54:
	.asciz	 "@(#) Redistribution and use in source and binary forms, with or without"
	.size	.L.str54, 72

	.type	.L.str55,@object        # @.str55
.L.str55:
	.asciz	 "@(#) modification, are permitted provided that the following conditions"
	.size	.L.str55, 72

	.type	.L.str56,@object        # @.str56
.L.str56:
	.asciz	 "@(#) are met:"
	.size	.L.str56, 14

	.type	.L.str57,@object        # @.str57
.L.str57:
	.asciz	 "@(#) 1. Redistributions of source code must retain the above copyright"
	.size	.L.str57, 71

	.type	.L.str58,@object        # @.str58
.L.str58:
	.asciz	 "@(#)    notice, this list of conditions and the following disclaimer."
	.size	.L.str58, 70

	.type	.L.str59,@object        # @.str59
.L.str59:
	.asciz	 "@(#) 2. Redistributions in binary form must reproduce the above"
	.size	.L.str59, 64

	.type	.L.str60,@object        # @.str60
.L.str60:
	.asciz	 "@(#)    copyright notice, this list of conditions and the following"
	.size	.L.str60, 68

	.type	.L.str61,@object        # @.str61
.L.str61:
	.asciz	 "@(#)    disclaimer in the documentation and/or other materials provided"
	.size	.L.str61, 72

	.type	.L.str62,@object        # @.str62
.L.str62:
	.asciz	 "@(#)    with the distribution."
	.size	.L.str62, 31

	.type	.L.str63,@object        # @.str63
.L.str63:
	.asciz	 "@(#) 3. All modifications to the source code must be clearly marked as"
	.size	.L.str63, 71

	.type	.L.str64,@object        # @.str64
.L.str64:
	.asciz	 "@(#)    such.  Binary redistributions based on modified source code"
	.size	.L.str64, 68

	.type	.L.str65,@object        # @.str65
.L.str65:
	.asciz	 "@(#)    must be clearly marked as modified versions in the documentation"
	.size	.L.str65, 73

	.type	.L.str66,@object        # @.str66
.L.str66:
	.asciz	 "@(#)    and/or other materials provided with the distribution."
	.size	.L.str66, 63

	.type	.L.str67,@object        # @.str67
.L.str67:
	.asciz	 "@(#) 4. All advertising materials mentioning features or use of this"
	.size	.L.str67, 69

	.type	.L.str68,@object        # @.str68
.L.str68:
	.asciz	 "@(#)    software must display the following acknowledgment:"
	.size	.L.str68, 60

	.type	.L.str69,@object        # @.str69
.L.str69:
	.asciz	 "@(#)      This product includes software developed by Geoff Kuenning and"
	.size	.L.str69, 73

	.type	.L.str70,@object        # @.str70
.L.str70:
	.asciz	 "@(#)      other unpaid contributors."
	.size	.L.str70, 37

	.type	.L.str71,@object        # @.str71
.L.str71:
	.asciz	 "@(#) 5. The name of Geoff Kuenning may not be used to endorse or promote"
	.size	.L.str71, 73

	.type	.L.str72,@object        # @.str72
.L.str72:
	.asciz	 "@(#)    products derived from this software without specific prior"
	.size	.L.str72, 67

	.type	.L.str73,@object        # @.str73
.L.str73:
	.asciz	 "@(#)    written permission."
	.size	.L.str73, 28

	.type	.L.str74,@object        # @.str74
.L.str74:
	.asciz	 "@(#) THIS SOFTWARE IS PROVIDED BY GEOFF KUENNING AND CONTRIBUTORS ``AS"
	.size	.L.str74, 71

	.type	.L.str75,@object        # @.str75
.L.str75:
	.asciz	 "@(#) IS'' AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT"
	.size	.L.str75, 68

	.type	.L.str76,@object        # @.str76
.L.str76:
	.asciz	 "@(#) LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS"
	.size	.L.str76, 71

	.type	.L.str77,@object        # @.str77
.L.str77:
	.asciz	 "@(#) FOR A PARTICULAR PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL GEOFF"
	.size	.L.str77, 71

	.type	.L.str78,@object        # @.str78
.L.str78:
	.asciz	 "@(#) KUENNING OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,"
	.size	.L.str78, 66

	.type	.L.str79,@object        # @.str79
.L.str79:
	.asciz	 "@(#) INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES"
	.size	.L.str79, 62

	.type	.L.str80,@object        # @.str80
.L.str80:
	.asciz	 "@(#) (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR"
	.size	.L.str80, 72

	.type	.L.str81,@object        # @.str81
.L.str81:
	.asciz	 "@(#) SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)"
	.size	.L.str81, 72

	.type	.L.str82,@object        # @.str82
.L.str82:
	.asciz	 "@(#) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,"
	.size	.L.str82, 73

	.type	.L.str83,@object        # @.str83
.L.str83:
	.asciz	 "@(#) STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)"
	.size	.L.str83, 67

	.type	.L.str84,@object        # @.str84
.L.str84:
	.asciz	 "@(#) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED"
	.size	.L.str84, 73

	.type	.L.str85,@object        # @.str85
.L.str85:
	.asciz	 "@(#) OF THE POSSIBILITY OF SUCH DAMAGE."
	.size	.L.str85, 40


	.section	".note.GNU-stack","",@progbits
