	.file	"matrix.c"
	.text
	.section	.rodata
.LC0:
	.string	"    [1 2 3"
.LC1:
	.string	"]           [1 2 0]"
.LC2:
	.string	"A = |4 5 6"
.LC3:
	.string	"|       B = |3 4 5|"
.LC4:
	.string	"    [7 8 9"
.LC5:
	.string	"]           [0 6 7]\n"
.LC6:
	.string	"        ["
.LC7:
	.string	"%*d "
.LC8:
	.string	"%*d"
.LC9:
	.string	"]\nA*B+A = |"
.LC10:
	.string	"|\n        ["
.LC11:
	.string	"]\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$208, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$1, -192(%rbp)
	movl	$2, -188(%rbp)
	movl	$3, -184(%rbp)
	movl	$4, -180(%rbp)
	movl	$5, -176(%rbp)
	movl	$6, -172(%rbp)
	movl	$7, -168(%rbp)
	movl	$8, -164(%rbp)
	movl	$9, -160(%rbp)
	movl	$1, -144(%rbp)
	movl	$2, -140(%rbp)
	movl	$0, -136(%rbp)
	movl	$3, -132(%rbp)
	movl	$4, -128(%rbp)
	movl	$5, -124(%rbp)
	movl	$0, -120(%rbp)
	movl	$6, -116(%rbp)
	movl	$7, -112(%rbp)
	leaq	-144(%rbp), %rdx
	leaq	-192(%rbp), %rcx
	leaq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	matmult
	leaq	-192(%rbp), %rdx
	leaq	-96(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	matadd
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, -204(%rbp)
	jmp	.L2
.L5:
	cmpl	$2, -204(%rbp)
	je	.L3
	movl	-204(%rbp), %eax
	cltq
	movl	-48(%rbp,%rax,4), %eax
	movl	%eax, %edx
	movl	$3, %esi
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L4
.L3:
	movl	-204(%rbp), %eax
	cltq
	movl	-48(%rbp,%rax,4), %eax
	movl	%eax, %edx
	movl	$3, %esi
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
.L4:
	addl	$1, -204(%rbp)
.L2:
	cmpl	$2, -204(%rbp)
	jle	.L5
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, -200(%rbp)
	jmp	.L6
.L9:
	cmpl	$2, -200(%rbp)
	je	.L7
	movl	-200(%rbp), %eax
	cltq
	addq	$3, %rax
	movl	-48(%rbp,%rax,4), %eax
	movl	%eax, %edx
	movl	$3, %esi
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L8
.L7:
	movl	-200(%rbp), %eax
	cltq
	addq	$3, %rax
	movl	-48(%rbp,%rax,4), %eax
	movl	%eax, %edx
	movl	$3, %esi
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
.L8:
	addl	$1, -200(%rbp)
.L6:
	cmpl	$2, -200(%rbp)
	jle	.L9
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, -196(%rbp)
	jmp	.L10
.L13:
	cmpl	$2, -196(%rbp)
	je	.L11
	movl	-196(%rbp), %eax
	cltq
	addq	$6, %rax
	movl	-48(%rbp,%rax,4), %eax
	movl	%eax, %edx
	movl	$3, %esi
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L12
.L11:
	movl	-196(%rbp), %eax
	cltq
	addq	$6, %rax
	movl	-48(%rbp,%rax,4), %eax
	movl	%eax, %edx
	movl	$3, %esi
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
.L12:
	addl	$1, -196(%rbp)
.L10:
	cmpl	$2, -196(%rbp)
	jle	.L13
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L15
	call	__stack_chk_fail@PLT
.L15:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.globl	matmult
	.type	matmult, @function
matmult:
.LFB1:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	$0, -16(%rbp)
	movl	$0, -12(%rbp)
	jmp	.L17
.L22:
	movl	$0, -8(%rbp)
	jmp	.L18
.L21:
	movl	$0, -16(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L19
.L20:
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	cltq
	movl	(%rdx,%rax,4), %ecx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movl	-8(%rbp), %eax
	cltq
	movl	(%rdx,%rax,4), %eax
	imull	%ecx, %eax
	addl	%eax, -16(%rbp)
	addl	$1, -4(%rbp)
.L19:
	cmpl	$2, -4(%rbp)
	jle	.L20
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-8(%rbp), %eax
	cltq
	movl	-16(%rbp), %edx
	movl	%edx, (%rcx,%rax,4)
	addl	$1, -8(%rbp)
.L18:
	cmpl	$2, -8(%rbp)
	jle	.L21
	addl	$1, -12(%rbp)
.L17:
	cmpl	$2, -12(%rbp)
	jle	.L22
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	matmult, .-matmult
	.globl	matadd
	.type	matadd, @function
matadd:
.LFB2:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L24
.L27:
	movl	$0, -4(%rbp)
	jmp	.L25
.L26:
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	cltq
	movl	(%rdx,%rax,4), %esi
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	cltq
	movl	(%rdx,%rax,4), %ecx
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	addl	%esi, %ecx
	movl	-4(%rbp), %eax
	cltq
	movl	%ecx, (%rdx,%rax,4)
	addl	$1, -4(%rbp)
.L25:
	cmpl	$2, -4(%rbp)
	jle	.L26
	addl	$1, -8(%rbp)
.L24:
	cmpl	$2, -8(%rbp)
	jle	.L27
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	matadd, .-matadd
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
