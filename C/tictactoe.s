	.file	"tictactoe.c"
	.text
	.globl	verificarGanador
	.type	verificarGanador, @function
verificarGanador:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	addq	$4, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L2
	movq	-8(%rbp), %rax
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L2
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L2
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	jmp	.L3
.L2:
	movq	-8(%rbp), %rax
	addq	$12, %rax
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	addq	$16, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L4
	movq	-8(%rbp), %rax
	addq	$12, %rax
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	addq	$20, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L4
	movq	-8(%rbp), %rax
	addq	$12, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L4
	movq	-8(%rbp), %rax
	movl	12(%rax), %eax
	jmp	.L3
.L4:
	movq	-8(%rbp), %rax
	addq	$24, %rax
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	addq	$28, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L5
	movq	-8(%rbp), %rax
	addq	$24, %rax
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	addq	$32, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L5
	movq	-8(%rbp), %rax
	addq	$24, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L5
	movq	-8(%rbp), %rax
	movl	24(%rax), %eax
	jmp	.L3
.L5:
	movq	-8(%rbp), %rax
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	addq	$12, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L6
	movq	-8(%rbp), %rax
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	addq	$24, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L6
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L6
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	jmp	.L3
.L6:
	movq	-8(%rbp), %rax
	addq	$4, %rax
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	addq	$16, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L7
	movq	-8(%rbp), %rax
	addq	$4, %rax
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	addq	$28, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L7
	movq	-8(%rbp), %rax
	addq	$4, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L7
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	jmp	.L3
.L7:
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	addq	$20, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L8
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	addq	$32, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L8
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L8
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	jmp	.L3
.L8:
	movq	-8(%rbp), %rax
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	addq	$16, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L9
	movq	-8(%rbp), %rax
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	addq	$32, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L9
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L9
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	jmp	.L3
.L9:
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	addq	$16, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L10
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	addq	$24, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L10
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L10
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	jmp	.L3
.L10:
	cmpl	$8, -12(%rbp)
	jle	.L11
	movl	$0, %eax
	jmp	.L3
.L11:
	movl	$-1, %eax
.L3:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	verificarGanador, .-verificarGanador
	.section	.rodata
.LC0:
	.string	"     |     |     "
.LC1:
	.string	"  %c  |  %c  |  %c  \n"
.LC2:
	.string	"_____|_____|_____"
	.text
	.globl	imprimirTablero
	.type	imprimirTablero, @function
imprimirTablero:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$10, %edi
	call	putchar
	movl	$.LC0, %edi
	call	puts
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %ecx
	movq	-16(%rbp), %rax
	addq	$4, %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %edx
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rsi
	movq	-8(%rbp), %rax
	addq	%rsi, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
	movl	$.LC2, %edi
	call	puts
	movl	$.LC0, %edi
	call	puts
	movq	-16(%rbp), %rax
	addq	$20, %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %ecx
	movq	-16(%rbp), %rax
	addq	$16, %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %edx
	movq	-16(%rbp), %rax
	addq	$12, %rax
	movl	(%rax), %eax
	movslq	%eax, %rsi
	movq	-8(%rbp), %rax
	addq	%rsi, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
	movl	$.LC2, %edi
	call	puts
	movl	$.LC0, %edi
	call	puts
	movq	-16(%rbp), %rax
	addq	$32, %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %ecx
	movq	-16(%rbp), %rax
	addq	$28, %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %edx
	movq	-16(%rbp), %rax
	addq	$24, %rax
	movl	(%rax), %eax
	movslq	%eax, %rsi
	movq	-8(%rbp), %rax
	addq	%rsi, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
	movl	$10, %edi
	call	putchar
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	imprimirTablero, .-imprimirTablero
	.section	.rodata
	.align 8
.LC3:
	.string	"Posicion no valida, vuelva a ingresar: "
	.align 8
.LC4:
	.string	"Posicion ya tomada, vuelva a ingresar: "
	.text
	.globl	jugar
	.type	jugar, @function
jugar:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	cmpl	$9, -12(%rbp)
	jg	.L14
	cmpl	$0, -12(%rbp)
	jg	.L15
.L14:
	movl	$.LC3, %edi
	movl	$0, %eax
	call	printf
	movl	$-1, %eax
	jmp	.L16
.L15:
	movl	-12(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L17
	movl	$.LC4, %edi
	movl	$0, %eax
	call	printf
	movl	$-1, %eax
	jmp	.L16
.L17:
	movl	-12(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movl	-16(%rbp), %eax
	movl	%eax, (%rdx)
	movl	$0, %eax
.L16:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	jugar, .-jugar
	.section	.rodata
.LC5:
	.string	"Bienvenido a TIC-TAC-TOE"
.LC6:
	.string	"Jugador %d es tu turno: \n"
	.align 8
.LC7:
	.string	"Ingresa la posicion en el tablero, del 1 al 9: "
.LC8:
	.string	"%d"
.LC9:
	.string	"\nEMPATE!!!"
.LC10:
	.string	"\nGANADOR ES: %d (%c)\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movb	$45, -16(%rbp)
	movb	$88, -15(%rbp)
	movb	$79, -14(%rbp)
	movl	$1, -76(%rbp)
	movl	$0, -72(%rbp)
	movl	$-1, -68(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	movl	$0, -32(%rbp)
	movl	$.LC5, %edi
	call	puts
	jmp	.L19
.L24:
	movl	-76(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC6, %edi
	movl	$0, %eax
	call	printf
	leaq	-64(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	imprimirTablero
	movl	$.LC7, %edi
	movl	$0, %eax
	call	printf
	leaq	-80(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC8, %edi
	movl	$0, %eax
	call	__isoc99_scanf
	jmp	.L20
.L21:
	leaq	-80(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC8, %edi
	movl	$0, %eax
	call	__isoc99_scanf
.L20:
	movl	-80(%rbp), %ecx
	movl	-76(%rbp), %edx
	leaq	-64(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	jugar
	cmpl	$-1, %eax
	je	.L21
	addl	$1, -72(%rbp)
	cmpl	$1, -76(%rbp)
	jne	.L22
	movl	$2, -76(%rbp)
	jmp	.L19
.L22:
	movl	$1, -76(%rbp)
.L19:
	movl	-72(%rbp), %edx
	leaq	-64(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	verificarGanador
	cmpl	$-1, %eax
	je	.L24
	movl	-72(%rbp), %edx
	leaq	-64(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	verificarGanador
	movl	%eax, -68(%rbp)
	cmpl	$0, -68(%rbp)
	jne	.L25
	movl	$.LC9, %edi
	call	puts
	jmp	.L26
.L25:
	movl	-68(%rbp), %eax
	cltq
	movzbl	-16(%rbp,%rax), %eax
	movsbl	%al, %edx
	movl	-68(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC10, %edi
	movl	$0, %eax
	call	printf
.L26:
	leaq	-64(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	imprimirTablero
	movl	$0, %eax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L28
	call	__stack_chk_fail
.L28:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
