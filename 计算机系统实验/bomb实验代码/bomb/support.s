	.file	"support.c"
	.text
	.globl	input_strings
	.bss
	.align 32
	.type	input_strings, @object
	.size	input_strings, 1600
input_strings:
	.zero	1600
	.globl	num_input_strings
	.align 4
	.type	num_input_strings, @object
	.size	num_input_strings, 4
num_input_strings:
	.zero	4
	.globl	scratch
	.align 32
	.type	scratch, @object
	.size	scratch, 80
scratch:
	.zero	80
	.section	.rodata
.LC0:
	.string	"string len must be 10. "
.LC1:
	.string	"student id  satrt with U. "
.LC2:
	.string	"stuid must be digitals. "
	.text
	.globl	check_student_id
	.type	check_student_id, @function
check_student_id:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	cmpq	$10, %rax
	je	.L2
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$0, %eax
	jmp	.L3
.L2:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$85, %al
	je	.L4
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$117, %al
	je	.L4
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$0, %eax
	jmp	.L3
.L4:
	movl	$1, -4(%rbp)
	jmp	.L5
.L8:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	jle	.L6
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$57, %al
	jle	.L7
.L6:
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$0, %eax
	jmp	.L3
.L7:
	addl	$1, -4(%rbp)
.L5:
	cmpl	$9, -4(%rbp)
	jle	.L8
	movl	$1, %eax
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	check_student_id, .-check_student_id
	.section	.rodata
	.align 8
.LC3:
	.string	"So you think you can stop the bomb with ctrl-c, do you?"
.LC4:
	.string	"Well..."
.LC5:
	.string	"OK. :-)"
	.text
	.type	sig_handler, @function
sig_handler:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$3, %edi
	call	sleep@PLT
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	stdout(%rip), %rax
	movq	%rax, %rdi
	call	fflush@PLT
	movl	$1, %edi
	call	sleep@PLT
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$16, %edi
	call	exit@PLT
	.cfi_endproc
.LFE7:
	.size	sig_handler, .-sig_handler
	.section	.rodata
.LC6:
	.string	"Invalid phase%s\n"
	.text
	.globl	invalid_phase
	.type	invalid_phase, @function
invalid_phase:
.LFB8:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$8, %edi
	call	exit@PLT
	.cfi_endproc
.LFE8:
	.size	invalid_phase, .-invalid_phase
	.section	.rodata
.LC7:
	.string	"%d %d %d %d %d %d"
	.text
	.globl	read_six_numbers
	.type	read_six_numbers, @function
read_six_numbers:
.LFB9:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	20(%rax), %rdi
	movq	-32(%rbp), %rax
	leaq	16(%rax), %rsi
	movq	-32(%rbp), %rax
	leaq	12(%rax), %r9
	movq	-32(%rbp), %rax
	leaq	8(%rax), %r8
	movq	-32(%rbp), %rax
	leaq	4(%rax), %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	pushq	%rdi
	pushq	%rsi
	leaq	.LC7(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_sscanf@PLT
	addq	$16, %rsp
	movl	%eax, -4(%rbp)
	cmpl	$5, -4(%rbp)
	jg	.L13
	call	explode_bomb
.L13:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	read_six_numbers, .-read_six_numbers
	.globl	string_length
	.type	string_length, @function
string_length:
.LFB10:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$0, -12(%rbp)
	jmp	.L15
.L16:
	addq	$1, -8(%rbp)
	addl	$1, -12(%rbp)
.L15:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L16
	movl	-12(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	string_length, .-string_length
	.globl	strings_not_equal
	.type	strings_not_equal, @function
strings_not_equal:
.LFB11:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	string_length
	movl	%eax, %ebx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	string_length
	cmpl	%eax, %ebx
	je	.L19
	movl	$1, %eax
	jmp	.L20
.L19:
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L21
.L23:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	je	.L22
	movl	$1, %eax
	jmp	.L20
.L22:
	addq	$1, -24(%rbp)
	addq	$1, -16(%rbp)
.L21:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L23
	movl	$0, %eax
.L20:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	strings_not_equal, .-strings_not_equal
	.globl	initialize_bomb
	.type	initialize_bomb, @function
initialize_bomb:
.LFB12:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	initialize_bomb, .-initialize_bomb
	.globl	initialize_bomb_solve
	.type	initialize_bomb_solve, @function
initialize_bomb_solve:
.LFB13:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	initialize_bomb_solve, .-initialize_bomb_solve
	.globl	blank_line
	.type	blank_line, @function
blank_line:
.LFB14:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	jmp	.L27
.L29:
	call	__ctype_b_loc@PLT
	movq	(%rax), %rcx
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movzbl	(%rax), %eax
	movsbq	%al, %rax
	addq	%rax, %rax
	addq	%rcx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$8192, %eax
	testl	%eax, %eax
	jne	.L27
	movl	$0, %eax
	jmp	.L28
.L27:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L29
	movl	$1, %eax
.L28:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	blank_line, .-blank_line
	.globl	skip
	.type	skip, @function
skip:
.LFB15:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
.L34:
	movq	infile(%rip), %rdx
	movl	num_input_strings(%rip), %eax
	movslq	%eax, %rcx
	movq	%rcx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	salq	$4, %rax
	leaq	input_strings(%rip), %rcx
	addq	%rcx, %rax
	movl	$80, %esi
	movq	%rax, %rdi
	call	fgets@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L31
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	blank_line
	testl	%eax, %eax
	jne	.L34
.L31:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	skip, .-skip
	.section	.rodata
.LC8:
	.string	"Error: Premature EOF on stdin"
.LC9:
	.string	"GRADE_BOMB"
.LC10:
	.string	"Error: Input line too long"
	.text
	.globl	read_line
	.type	read_line, @function
read_line:
.LFB16:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$0, %eax
	call	skip
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L37
	movq	infile(%rip), %rdx
	movq	stdin(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L38
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$8, %edi
	call	exit@PLT
.L38:
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	call	getenv@PLT
	testq	%rax, %rax
	je	.L39
	movl	$0, %edi
	call	exit@PLT
.L39:
	movq	stdin(%rip), %rax
	movq	%rax, infile(%rip)
	movl	$0, %eax
	call	skip
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L37
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$0, %edi
	call	exit@PLT
.L37:
	movl	num_input_strings(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	leaq	input_strings(%rip), %rdx
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -12(%rbp)
	cmpl	$78, -12(%rbp)
	jle	.L40
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	num_input_strings(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, num_input_strings(%rip)
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	leaq	input_strings(%rip), %rdx
	addq	%rdx, %rax
	movabsq	$7164793191628679722, %rsi
	movabsq	$11868310583211105, %rdi
	movq	%rsi, (%rax)
	movq	%rdi, 8(%rax)
	call	explode_bomb
.L40:
	movl	num_input_strings(%rip), %eax
	movl	-12(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	leaq	(%rax,%rcx), %rdx
	leaq	input_strings(%rip), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movl	num_input_strings(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, num_input_strings(%rip)
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	leaq	input_strings(%rip), %rdx
	addq	%rdx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	read_line, .-read_line
	.section	.rodata
.LC11:
	.string	"\nBOOM!!!"
.LC12:
	.string	"The bomb has blown up."
	.text
	.globl	explode_bomb
	.type	explode_bomb, @function
explode_bomb:
.LFB17:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$8, %edi
	call	exit@PLT
	.cfi_endproc
.LFE17:
	.size	explode_bomb, .-explode_bomb
	.section	.rodata
.LC13:
	.string	"%d %d %s"
.LC14:
	.string	"DrEvil"
	.align 8
.LC15:
	.string	"Curses, you've found the secret phase!"
	.align 8
.LC16:
	.string	"But finding it and solving it are quite different..."
	.align 8
.LC17:
	.string	"Congratulations! You've defused the bomb!"
	.text
	.globl	phase_defused
	.type	phase_defused, @function
phase_defused:
.LFB18:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	num_input_strings(%rip), %eax
	cmpl	$6, %eax
	jne	.L47
	leaq	-96(%rbp), %rcx
	leaq	-104(%rbp), %rdx
	leaq	-108(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	leaq	.LC13(%rip), %rax
	movq	%rax, %rsi
	leaq	240+input_strings(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_sscanf@PLT
	movl	%eax, -100(%rbp)
	cmpl	$3, -100(%rbp)
	jne	.L45
	leaq	-96(%rbp), %rax
	leaq	.LC14(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strings_not_equal
	testl	%eax, %eax
	jne	.L45
	leaq	.LC15(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC16(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$0, %eax
	call	secret_phase@PLT
.L45:
	leaq	.LC17(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
.L47:
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L46
	call	__stack_chk_fail@PLT
.L46:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	phase_defused, .-phase_defused
	.ident	"GCC: (Ubuntu 11.2.0-19ubuntu1) 11.2.0"
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
