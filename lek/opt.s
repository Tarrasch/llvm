	.file	"opt.o"
	.text
	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:
	ud2
.Ltmp0:
	.size	main, .Ltmp0-main
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	 "array[%d]=%d\n"
	.size	.L.str, 14


	.section	".note.GNU-stack","",@progbits
