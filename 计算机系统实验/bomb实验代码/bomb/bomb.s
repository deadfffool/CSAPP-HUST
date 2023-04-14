	.file	"bomb.c"
	.text
	.globl	infile
	.bss
	.align 8
	.type	infile, @object
	.size	infile, 8
infile:
	.zero	8
	.globl	stuid
	.align 8
	.type	stuid, @object
	.size	stuid, 11
stuid:
	.zero	11
	.section	.rodata
.LC0:
	.string	"r"
.LC1:
	.string	"%s: Error: Couldn't open %s\n"
.LC2:
	.string	"Usage: %s [<input_file>]\n"
	.align 8
.LC3:
	.string	"Welcome to my fiendish little bomb. You have 6 phases with"
	.align 8
.LC4:
	.string	"which to blow yourself up. Have a nice day!"
	.align 8
.LC5:
	.string	"input your student id (U202115***)\357\274\232"
.LC6:
	.string	"bad student id "
	.align 8
.LC7:
	.string	"phase 1 : string compare!   please input your string :"
	.align 8
.LC8:
	.string	"Congratulation\357\274\201  Phase 1 defused. "
	.align 8
.LC9:
	.string	"phase 2 : Cracking loop program! \n  please input  6 numbers :"
	.align 8
.LC10:
	.string	"Good!  That's number 2.  Keep going!"
	.align 8
.LC11:
	.string	"phase 3 : Cracking switch ...case program! \n  please input  a number :"
.LC12:
	.string	"Halfway there!"
	.align 8
.LC13:
	.string	"phase 4 : Cracking recursive calls program! \n  please input  two numbers :"
	.align 8
.LC14:
	.string	"So you got that one.  Try this one."
	.align 8
.LC15:
	.string	"phase 5 : pointers and array visit! \n  please input  a string :"
.LC16:
	.string	"Good work!  the last one ..."
	.align 8
.LC17:
	.string	"phase 6 : link list, struct, pointer visit ! \n  please input  6 numbers in a line :"
	.align 8
.LC18:
	.string	"Very Good !  You have defused all binary bombs! "
	.text
	.globl	main
	.type	main, @function
main:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	cmpl	$1, -20(%rbp)
	jne	.L2
	movq	stdin(%rip), %rax
	movq	%rax, infile(%rip)
	jmp	.L3
.L2:
	cmpl	$2, -20(%rbp)
	jne	.L4
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, infile(%rip)
	movq	infile(%rip), %rax
	testq	%rax, %rax
	jne	.L3
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$8, %edi
	call	exit@PLT
.L4:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$8, %edi
	call	exit@PLT
.L3:
	call	initialize_bomb@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	call	read_line@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	check_student_id@PLT
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.L5
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$0, %eax
	jmp	.L6
.L5:
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	leaq	stuid(%rip), %rax
	movq	%rax, %rdi
	call	strcpy@PLT
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	call	read_line@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	phase_1@PLT
	call	phase_defused@PLT
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	call	read_line@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	phase_2@PLT
	call	phase_defused@PLT
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	call	read_line@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	phase_3@PLT
	call	phase_defused@PLT
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	call	read_line@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	phase_4@PLT
	call	phase_defused@PLT
	leaq	.LC14(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC15(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	call	read_line@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	phase_5@PLT
	call	phase_defused@PLT
	leaq	.LC16(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC17(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	call	read_line@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	phase_6@PLT
	call	phase_defused@PLT
	leaq	.LC18(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$0, %eax
.L6:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	main, .-main
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

./bomb：     文件格式 elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 3f 00 00 	mov    0x3fd9(%rip),%rax        # 4fe8 <__gmon_start__@Base>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret    

Disassembly of section .plt:

0000000000001020 <getenv@plt-0x10>:
    1020:	ff 35 32 3f 00 00    	push   0x3f32(%rip)        # 4f58 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 34 3f 00 00    	jmp    *0x3f34(%rip)        # 4f60 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001030 <getenv@plt>:
    1030:	ff 25 32 3f 00 00    	jmp    *0x3f32(%rip)        # 4f68 <getenv@GLIBC_2.2.5>
    1036:	68 00 00 00 00       	push   $0x0
    103b:	e9 e0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001040 <strcpy@plt>:
    1040:	ff 25 2a 3f 00 00    	jmp    *0x3f2a(%rip)        # 4f70 <strcpy@GLIBC_2.2.5>
    1046:	68 01 00 00 00       	push   $0x1
    104b:	e9 d0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001050 <puts@plt>:
    1050:	ff 25 22 3f 00 00    	jmp    *0x3f22(%rip)        # 4f78 <puts@GLIBC_2.2.5>
    1056:	68 02 00 00 00       	push   $0x2
    105b:	e9 c0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001060 <strlen@plt>:
    1060:	ff 25 1a 3f 00 00    	jmp    *0x3f1a(%rip)        # 4f80 <strlen@GLIBC_2.2.5>
    1066:	68 03 00 00 00       	push   $0x3
    106b:	e9 b0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001070 <__stack_chk_fail@plt>:
    1070:	ff 25 12 3f 00 00    	jmp    *0x3f12(%rip)        # 4f88 <__stack_chk_fail@GLIBC_2.4>
    1076:	68 04 00 00 00       	push   $0x4
    107b:	e9 a0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001080 <printf@plt>:
    1080:	ff 25 0a 3f 00 00    	jmp    *0x3f0a(%rip)        # 4f90 <printf@GLIBC_2.2.5>
    1086:	68 05 00 00 00       	push   $0x5
    108b:	e9 90 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001090 <fgets@plt>:
    1090:	ff 25 02 3f 00 00    	jmp    *0x3f02(%rip)        # 4f98 <fgets@GLIBC_2.2.5>
    1096:	68 06 00 00 00       	push   $0x6
    109b:	e9 80 ff ff ff       	jmp    1020 <_init+0x20>

00000000000010a0 <fflush@plt>:
    10a0:	ff 25 fa 3e 00 00    	jmp    *0x3efa(%rip)        # 4fa0 <fflush@GLIBC_2.2.5>
    10a6:	68 07 00 00 00       	push   $0x7
    10ab:	e9 70 ff ff ff       	jmp    1020 <_init+0x20>

00000000000010b0 <__isoc99_sscanf@plt>:
    10b0:	ff 25 f2 3e 00 00    	jmp    *0x3ef2(%rip)        # 4fa8 <__isoc99_sscanf@GLIBC_2.7>
    10b6:	68 08 00 00 00       	push   $0x8
    10bb:	e9 60 ff ff ff       	jmp    1020 <_init+0x20>

00000000000010c0 <fopen@plt>:
    10c0:	ff 25 ea 3e 00 00    	jmp    *0x3eea(%rip)        # 4fb0 <fopen@GLIBC_2.2.5>
    10c6:	68 09 00 00 00       	push   $0x9
    10cb:	e9 50 ff ff ff       	jmp    1020 <_init+0x20>

00000000000010d0 <atoi@plt>:
    10d0:	ff 25 e2 3e 00 00    	jmp    *0x3ee2(%rip)        # 4fb8 <atoi@GLIBC_2.2.5>
    10d6:	68 0a 00 00 00       	push   $0xa
    10db:	e9 40 ff ff ff       	jmp    1020 <_init+0x20>

00000000000010e0 <exit@plt>:
    10e0:	ff 25 da 3e 00 00    	jmp    *0x3eda(%rip)        # 4fc0 <exit@GLIBC_2.2.5>
    10e6:	68 0b 00 00 00       	push   $0xb
    10eb:	e9 30 ff ff ff       	jmp    1020 <_init+0x20>

00000000000010f0 <sleep@plt>:
    10f0:	ff 25 d2 3e 00 00    	jmp    *0x3ed2(%rip)        # 4fc8 <sleep@GLIBC_2.2.5>
    10f6:	68 0c 00 00 00       	push   $0xc
    10fb:	e9 20 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001100 <__ctype_b_loc@plt>:
    1100:	ff 25 ca 3e 00 00    	jmp    *0x3eca(%rip)        # 4fd0 <__ctype_b_loc@GLIBC_2.3>
    1106:	68 0d 00 00 00       	push   $0xd
    110b:	e9 10 ff ff ff       	jmp    1020 <_init+0x20>

Disassembly of section .plt.got:

0000000000001110 <__cxa_finalize@plt>:
    1110:	ff 25 e2 3e 00 00    	jmp    *0x3ee2(%rip)        # 4ff8 <__cxa_finalize@GLIBC_2.2.5>
    1116:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000001120 <_start>:
    1120:	f3 0f 1e fa          	endbr64 
    1124:	31 ed                	xor    %ebp,%ebp
    1126:	49 89 d1             	mov    %rdx,%r9
    1129:	5e                   	pop    %rsi
    112a:	48 89 e2             	mov    %rsp,%rdx
    112d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1131:	50                   	push   %rax
    1132:	54                   	push   %rsp
    1133:	45 31 c0             	xor    %r8d,%r8d
    1136:	31 c9                	xor    %ecx,%ecx
    1138:	48 8d 3d ca 00 00 00 	lea    0xca(%rip),%rdi        # 1209 <main>
    113f:	ff 15 93 3e 00 00    	call   *0x3e93(%rip)        # 4fd8 <__libc_start_main@GLIBC_2.34>
    1145:	f4                   	hlt    
    1146:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    114d:	00 00 00 

0000000000001150 <deregister_tm_clones>:
    1150:	48 8d 3d 11 41 00 00 	lea    0x4111(%rip),%rdi        # 5268 <__TMC_END__>
    1157:	48 8d 05 0a 41 00 00 	lea    0x410a(%rip),%rax        # 5268 <__TMC_END__>
    115e:	48 39 f8             	cmp    %rdi,%rax
    1161:	74 15                	je     1178 <deregister_tm_clones+0x28>
    1163:	48 8b 05 76 3e 00 00 	mov    0x3e76(%rip),%rax        # 4fe0 <_ITM_deregisterTMCloneTable@Base>
    116a:	48 85 c0             	test   %rax,%rax
    116d:	74 09                	je     1178 <deregister_tm_clones+0x28>
    116f:	ff e0                	jmp    *%rax
    1171:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1178:	c3                   	ret    
    1179:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001180 <register_tm_clones>:
    1180:	48 8d 3d e1 40 00 00 	lea    0x40e1(%rip),%rdi        # 5268 <__TMC_END__>
    1187:	48 8d 35 da 40 00 00 	lea    0x40da(%rip),%rsi        # 5268 <__TMC_END__>
    118e:	48 29 fe             	sub    %rdi,%rsi
    1191:	48 89 f0             	mov    %rsi,%rax
    1194:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1198:	48 c1 f8 03          	sar    $0x3,%rax
    119c:	48 01 c6             	add    %rax,%rsi
    119f:	48 d1 fe             	sar    %rsi
    11a2:	74 14                	je     11b8 <register_tm_clones+0x38>
    11a4:	48 8b 05 45 3e 00 00 	mov    0x3e45(%rip),%rax        # 4ff0 <_ITM_registerTMCloneTable@Base>
    11ab:	48 85 c0             	test   %rax,%rax
    11ae:	74 08                	je     11b8 <register_tm_clones+0x38>
    11b0:	ff e0                	jmp    *%rax
    11b2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    11b8:	c3                   	ret    
    11b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000011c0 <__do_global_dtors_aux>:
    11c0:	f3 0f 1e fa          	endbr64 
    11c4:	80 3d cd 40 00 00 00 	cmpb   $0x0,0x40cd(%rip)        # 5298 <completed.0>
    11cb:	75 2b                	jne    11f8 <__do_global_dtors_aux+0x38>
    11cd:	55                   	push   %rbp
    11ce:	48 83 3d 22 3e 00 00 	cmpq   $0x0,0x3e22(%rip)        # 4ff8 <__cxa_finalize@GLIBC_2.2.5>
    11d5:	00 
    11d6:	48 89 e5             	mov    %rsp,%rbp
    11d9:	74 0c                	je     11e7 <__do_global_dtors_aux+0x27>
    11db:	48 8b 3d 26 3e 00 00 	mov    0x3e26(%rip),%rdi        # 5008 <__dso_handle>
    11e2:	e8 29 ff ff ff       	call   1110 <__cxa_finalize@plt>
    11e7:	e8 64 ff ff ff       	call   1150 <deregister_tm_clones>
    11ec:	c6 05 a5 40 00 00 01 	movb   $0x1,0x40a5(%rip)        # 5298 <completed.0>
    11f3:	5d                   	pop    %rbp
    11f4:	c3                   	ret    
    11f5:	0f 1f 00             	nopl   (%rax)
    11f8:	c3                   	ret    
    11f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001200 <frame_dummy>:
    1200:	f3 0f 1e fa          	endbr64 
    1204:	e9 77 ff ff ff       	jmp    1180 <register_tm_clones>

0000000000001209 <main>:
    1209:	f3 0f 1e fa          	endbr64 
    120d:	55                   	push   %rbp
    120e:	48 89 e5             	mov    %rsp,%rbp
    1211:	48 83 ec 20          	sub    $0x20,%rsp
    1215:	89 7d ec             	mov    %edi,-0x14(%rbp)
    1218:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    121c:	83 7d ec 01          	cmpl   $0x1,-0x14(%rbp)
    1220:	75 13                	jne    1235 <main+0x2c>
    1222:	48 8b 05 67 40 00 00 	mov    0x4067(%rip),%rax        # 5290 <stdin@GLIBC_2.2.5>
    1229:	48 89 05 70 40 00 00 	mov    %rax,0x4070(%rip)        # 52a0 <infile>
    1230:	e9 91 00 00 00       	jmp    12c6 <main+0xbd>
    1235:	83 7d ec 02          	cmpl   $0x2,-0x14(%rbp)
    1239:	75 63                	jne    129e <main+0x95>
    123b:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    123f:	48 83 c0 08          	add    $0x8,%rax
    1243:	48 8b 00             	mov    (%rax),%rax
    1246:	48 8d 15 bb 1d 00 00 	lea    0x1dbb(%rip),%rdx        # 3008 <_IO_stdin_used+0x8>
    124d:	48 89 d6             	mov    %rdx,%rsi
    1250:	48 89 c7             	mov    %rax,%rdi
    1253:	e8 68 fe ff ff       	call   10c0 <fopen@plt>
    1258:	48 89 05 41 40 00 00 	mov    %rax,0x4041(%rip)        # 52a0 <infile>
    125f:	48 8b 05 3a 40 00 00 	mov    0x403a(%rip),%rax        # 52a0 <infile>
    1266:	48 85 c0             	test   %rax,%rax
    1269:	75 5b                	jne    12c6 <main+0xbd>
    126b:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    126f:	48 83 c0 08          	add    $0x8,%rax
    1273:	48 8b 10             	mov    (%rax),%rdx
    1276:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    127a:	48 8b 00             	mov    (%rax),%rax
    127d:	48 89 c6             	mov    %rax,%rsi
    1280:	48 8d 05 83 1d 00 00 	lea    0x1d83(%rip),%rax        # 300a <_IO_stdin_used+0xa>
    1287:	48 89 c7             	mov    %rax,%rdi
    128a:	b8 00 00 00 00       	mov    $0x0,%eax
    128f:	e8 ec fd ff ff       	call   1080 <printf@plt>
    1294:	bf 08 00 00 00       	mov    $0x8,%edi
    1299:	e8 42 fe ff ff       	call   10e0 <exit@plt>
    129e:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    12a2:	48 8b 00             	mov    (%rax),%rax
    12a5:	48 89 c6             	mov    %rax,%rsi
    12a8:	48 8d 05 78 1d 00 00 	lea    0x1d78(%rip),%rax        # 3027 <_IO_stdin_used+0x27>
    12af:	48 89 c7             	mov    %rax,%rdi
    12b2:	b8 00 00 00 00       	mov    $0x0,%eax
    12b7:	e8 c4 fd ff ff       	call   1080 <printf@plt>
    12bc:	bf 08 00 00 00       	mov    $0x8,%edi
    12c1:	e8 1a fe ff ff       	call   10e0 <exit@plt>
    12c6:	e8 62 0b 00 00       	call   1e2d <initialize_bomb>
    12cb:	48 8d 05 76 1d 00 00 	lea    0x1d76(%rip),%rax        # 3048 <_IO_stdin_used+0x48>
    12d2:	48 89 c7             	mov    %rax,%rdi
    12d5:	e8 76 fd ff ff       	call   1050 <puts@plt>
    12da:	48 8d 05 a7 1d 00 00 	lea    0x1da7(%rip),%rax        # 3088 <_IO_stdin_used+0x88>
    12e1:	48 89 c7             	mov    %rax,%rdi
    12e4:	e8 67 fd ff ff       	call   1050 <puts@plt>
    12e9:	48 8d 05 c8 1d 00 00 	lea    0x1dc8(%rip),%rax        # 30b8 <_IO_stdin_used+0xb8>
    12f0:	48 89 c7             	mov    %rax,%rdi
    12f3:	e8 58 fd ff ff       	call   1050 <puts@plt>
    12f8:	e8 03 0c 00 00       	call   1f00 <read_line>
    12fd:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1301:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1305:	48 89 c7             	mov    %rax,%rdi
    1308:	e8 94 08 00 00       	call   1ba1 <check_student_id>
    130d:	89 45 f4             	mov    %eax,-0xc(%rbp)
    1310:	83 7d f4 00          	cmpl   $0x0,-0xc(%rbp)
    1314:	75 19                	jne    132f <main+0x126>
    1316:	48 8d 05 c1 1d 00 00 	lea    0x1dc1(%rip),%rax        # 30de <_IO_stdin_used+0xde>
    131d:	48 89 c7             	mov    %rax,%rdi
    1320:	e8 2b fd ff ff       	call   1050 <puts@plt>
    1325:	b8 00 00 00 00       	mov    $0x0,%eax
    132a:	e9 6b 01 00 00       	jmp    149a <main+0x291>
    132f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1333:	48 89 c6             	mov    %rax,%rsi
    1336:	48 8d 05 6b 3f 00 00 	lea    0x3f6b(%rip),%rax        # 52a8 <stuid>
    133d:	48 89 c7             	mov    %rax,%rdi
    1340:	e8 fb fc ff ff       	call   1040 <strcpy@plt>
    1345:	48 8d 05 a4 1d 00 00 	lea    0x1da4(%rip),%rax        # 30f0 <_IO_stdin_used+0xf0>
    134c:	48 89 c7             	mov    %rax,%rdi
    134f:	e8 fc fc ff ff       	call   1050 <puts@plt>
    1354:	e8 a7 0b 00 00       	call   1f00 <read_line>
    1359:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    135d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1361:	48 89 c7             	mov    %rax,%rdi
    1364:	e8 9e 01 00 00       	call   1507 <phase_1>
    1369:	e8 55 0d 00 00       	call   20c3 <phase_defused>
    136e:	48 8d 05 b3 1d 00 00 	lea    0x1db3(%rip),%rax        # 3128 <_IO_stdin_used+0x128>
    1375:	48 89 c7             	mov    %rax,%rdi
    1378:	e8 d3 fc ff ff       	call   1050 <puts@plt>
    137d:	48 8d 05 cc 1d 00 00 	lea    0x1dcc(%rip),%rax        # 3150 <_IO_stdin_used+0x150>
    1384:	48 89 c7             	mov    %rax,%rdi
    1387:	e8 c4 fc ff ff       	call   1050 <puts@plt>
    138c:	e8 6f 0b 00 00       	call   1f00 <read_line>
    1391:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1395:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1399:	48 89 c7             	mov    %rax,%rdi
    139c:	e8 c0 01 00 00       	call   1561 <phase_2>
    13a1:	e8 1d 0d 00 00       	call   20c3 <phase_defused>
    13a6:	48 8d 05 e3 1d 00 00 	lea    0x1de3(%rip),%rax        # 3190 <_IO_stdin_used+0x190>
    13ad:	48 89 c7             	mov    %rax,%rdi
    13b0:	e8 9b fc ff ff       	call   1050 <puts@plt>
    13b5:	48 8d 05 fc 1d 00 00 	lea    0x1dfc(%rip),%rax        # 31b8 <_IO_stdin_used+0x1b8>
    13bc:	48 89 c7             	mov    %rax,%rdi
    13bf:	e8 8c fc ff ff       	call   1050 <puts@plt>
    13c4:	e8 37 0b 00 00       	call   1f00 <read_line>
    13c9:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    13cd:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    13d1:	48 89 c7             	mov    %rax,%rdi
    13d4:	e8 41 02 00 00       	call   161a <phase_3>
    13d9:	e8 e5 0c 00 00       	call   20c3 <phase_defused>
    13de:	48 8d 05 1a 1e 00 00 	lea    0x1e1a(%rip),%rax        # 31ff <_IO_stdin_used+0x1ff>
    13e5:	48 89 c7             	mov    %rax,%rdi
    13e8:	e8 63 fc ff ff       	call   1050 <puts@plt>
    13ed:	48 8d 05 1c 1e 00 00 	lea    0x1e1c(%rip),%rax        # 3210 <_IO_stdin_used+0x210>
    13f4:	48 89 c7             	mov    %rax,%rdi
    13f7:	e8 54 fc ff ff       	call   1050 <puts@plt>
    13fc:	e8 ff 0a 00 00       	call   1f00 <read_line>
    1401:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1405:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1409:	48 89 c7             	mov    %rax,%rdi
    140c:	e8 a6 03 00 00       	call   17b7 <phase_4>
    1411:	e8 ad 0c 00 00       	call   20c3 <phase_defused>
    1416:	48 8d 05 43 1e 00 00 	lea    0x1e43(%rip),%rax        # 3260 <_IO_stdin_used+0x260>
    141d:	48 89 c7             	mov    %rax,%rdi
    1420:	e8 2b fc ff ff       	call   1050 <puts@plt>
    1425:	48 8d 05 5c 1e 00 00 	lea    0x1e5c(%rip),%rax        # 3288 <_IO_stdin_used+0x288>
    142c:	48 89 c7             	mov    %rax,%rdi
    142f:	e8 1c fc ff ff       	call   1050 <puts@plt>
    1434:	e8 c7 0a 00 00       	call   1f00 <read_line>
    1439:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    143d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1441:	48 89 c7             	mov    %rax,%rdi
    1444:	e8 10 04 00 00       	call   1859 <phase_5>
    1449:	e8 75 0c 00 00       	call   20c3 <phase_defused>
    144e:	48 8d 05 73 1e 00 00 	lea    0x1e73(%rip),%rax        # 32c8 <_IO_stdin_used+0x2c8>
    1455:	48 89 c7             	mov    %rax,%rdi
    1458:	e8 f3 fb ff ff       	call   1050 <puts@plt>
    145d:	48 8d 05 84 1e 00 00 	lea    0x1e84(%rip),%rax        # 32e8 <_IO_stdin_used+0x2e8>
    1464:	48 89 c7             	mov    %rax,%rdi
    1467:	e8 e4 fb ff ff       	call   1050 <puts@plt>
    146c:	e8 8f 0a 00 00       	call   1f00 <read_line>
    1471:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1475:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1479:	48 89 c7             	mov    %rax,%rdi
    147c:	e8 b1 04 00 00       	call   1932 <phase_6>
    1481:	e8 3d 0c 00 00       	call   20c3 <phase_defused>
    1486:	48 8d 05 b3 1e 00 00 	lea    0x1eb3(%rip),%rax        # 3340 <_IO_stdin_used+0x340>
    148d:	48 89 c7             	mov    %rax,%rdi
    1490:	e8 bb fb ff ff       	call   1050 <puts@plt>
    1495:	b8 00 00 00 00       	mov    $0x0,%eax
    149a:	c9                   	leave  
    149b:	c3                   	ret    

000000000000149c <generate_password>:
    149c:	55                   	push   %rbp
    149d:	48 89 e5             	mov    %rsp,%rbp
    14a0:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    14a4:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%rbp)
    14ab:	eb 2a                	jmp    14d7 <generate_password+0x3b>
    14ad:	8b 45 fc             	mov    -0x4(%rbp),%eax
    14b0:	48 63 d0             	movslq %eax,%rdx
    14b3:	48 8d 05 ee 3d 00 00 	lea    0x3dee(%rip),%rax        # 52a8 <stuid>
    14ba:	0f b6 04 02          	movzbl (%rdx,%rax,1),%eax
    14be:	8d 50 31             	lea    0x31(%rax),%edx
    14c1:	8b 45 fc             	mov    -0x4(%rbp),%eax
    14c4:	48 98                	cltq   
    14c6:	48 8d 48 ff          	lea    -0x1(%rax),%rcx
    14ca:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    14ce:	48 01 c8             	add    %rcx,%rax
    14d1:	88 10                	mov    %dl,(%rax)
    14d3:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
    14d7:	83 7d fc 08          	cmpl   $0x8,-0x4(%rbp)
    14db:	7e d0                	jle    14ad <generate_password+0x11>
    14dd:	0f b6 05 cd 3d 00 00 	movzbl 0x3dcd(%rip),%eax        # 52b1 <stuid+0x9>
    14e4:	0f be c0             	movsbl %al,%eax
    14e7:	83 e8 30             	sub    $0x30,%eax
    14ea:	01 c0                	add    %eax,%eax
    14ec:	8d 50 61             	lea    0x61(%rax),%edx
    14ef:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    14f3:	48 83 c0 08          	add    $0x8,%rax
    14f7:	88 10                	mov    %dl,(%rax)
    14f9:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    14fd:	48 83 c0 09          	add    $0x9,%rax
    1501:	c6 00 00             	movb   $0x0,(%rax)
    1504:	90                   	nop
    1505:	5d                   	pop    %rbp
    1506:	c3                   	ret    

0000000000001507 <phase_1>:
    1507:	55                   	push   %rbp
    1508:	48 89 e5             	mov    %rsp,%rbp
    150b:	48 83 ec 30          	sub    $0x30,%rsp
    150f:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    1513:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    151a:	00 00 
    151c:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1520:	31 c0                	xor    %eax,%eax
    1522:	48 8d 45 ed          	lea    -0x13(%rbp),%rax
    1526:	48 89 c7             	mov    %rax,%rdi
    1529:	e8 6e ff ff ff       	call   149c <generate_password>
    152e:	48 8d 55 ed          	lea    -0x13(%rbp),%rdx
    1532:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1536:	48 89 d6             	mov    %rdx,%rsi
    1539:	48 89 c7             	mov    %rax,%rdi
    153c:	e8 67 08 00 00       	call   1da8 <strings_not_equal>
    1541:	85 c0                	test   %eax,%eax
    1543:	74 05                	je     154a <phase_1+0x43>
    1545:	e8 49 0b 00 00       	call   2093 <explode_bomb>
    154a:	90                   	nop
    154b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    154f:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1556:	00 00 
    1558:	74 05                	je     155f <phase_1+0x58>
    155a:	e8 11 fb ff ff       	call   1070 <__stack_chk_fail@plt>
    155f:	c9                   	leave  
    1560:	c3                   	ret    

0000000000001561 <phase_2>:
    1561:	55                   	push   %rbp
    1562:	48 89 e5             	mov    %rsp,%rbp
    1565:	48 83 ec 40          	sub    $0x40,%rsp
    1569:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
    156d:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1574:	00 00 
    1576:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    157a:	31 c0                	xor    %eax,%eax
    157c:	48 8d 55 e0          	lea    -0x20(%rbp),%rdx
    1580:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    1584:	48 89 d6             	mov    %rdx,%rsi
    1587:	48 89 c7             	mov    %rax,%rdi
    158a:	e8 74 07 00 00       	call   1d03 <read_six_numbers>
    158f:	8b 45 e0             	mov    -0x20(%rbp),%eax
    1592:	85 c0                	test   %eax,%eax
    1594:	79 05                	jns    159b <phase_2+0x3a>
    1596:	e8 f8 0a 00 00       	call   2093 <explode_bomb>
    159b:	8b 45 e0             	mov    -0x20(%rbp),%eax
    159e:	0f b6 15 0c 3d 00 00 	movzbl 0x3d0c(%rip),%edx        # 52b1 <stuid+0x9>
    15a5:	0f be d2             	movsbl %dl,%edx
    15a8:	83 ea 30             	sub    $0x30,%edx
    15ab:	39 d0                	cmp    %edx,%eax
    15ad:	74 05                	je     15b4 <phase_2+0x53>
    15af:	e8 df 0a 00 00       	call   2093 <explode_bomb>
    15b4:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    15b7:	0f b6 15 f2 3c 00 00 	movzbl 0x3cf2(%rip),%edx        # 52b0 <stuid+0x8>
    15be:	0f be d2             	movsbl %dl,%edx
    15c1:	83 ea 30             	sub    $0x30,%edx
    15c4:	39 d0                	cmp    %edx,%eax
    15c6:	74 05                	je     15cd <phase_2+0x6c>
    15c8:	e8 c6 0a 00 00       	call   2093 <explode_bomb>
    15cd:	c7 45 dc 02 00 00 00 	movl   $0x2,-0x24(%rbp)
    15d4:	eb 27                	jmp    15fd <phase_2+0x9c>
    15d6:	8b 45 dc             	mov    -0x24(%rbp),%eax
    15d9:	48 98                	cltq   
    15db:	8b 54 85 e0          	mov    -0x20(%rbp,%rax,4),%edx
    15df:	8b 45 dc             	mov    -0x24(%rbp),%eax
    15e2:	83 e8 01             	sub    $0x1,%eax
    15e5:	48 98                	cltq   
    15e7:	8b 4c 85 e0          	mov    -0x20(%rbp,%rax,4),%ecx
    15eb:	8b 45 dc             	mov    -0x24(%rbp),%eax
    15ee:	01 c8                	add    %ecx,%eax
    15f0:	39 c2                	cmp    %eax,%edx
    15f2:	74 05                	je     15f9 <phase_2+0x98>
    15f4:	e8 9a 0a 00 00       	call   2093 <explode_bomb>
    15f9:	83 45 dc 01          	addl   $0x1,-0x24(%rbp)
    15fd:	83 7d dc 05          	cmpl   $0x5,-0x24(%rbp)
    1601:	7e d3                	jle    15d6 <phase_2+0x75>
    1603:	90                   	nop
    1604:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1608:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    160f:	00 00 
    1611:	74 05                	je     1618 <phase_2+0xb7>
    1613:	e8 58 fa ff ff       	call   1070 <__stack_chk_fail@plt>
    1618:	c9                   	leave  
    1619:	c3                   	ret    

000000000000161a <phase_3>:
    161a:	55                   	push   %rbp
    161b:	48 89 e5             	mov    %rsp,%rbp
    161e:	48 83 ec 30          	sub    $0x30,%rsp
    1622:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    1626:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    162d:	00 00 
    162f:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1633:	31 c0                	xor    %eax,%eax
    1635:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%rbp)
    163c:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
    1643:	48 8d 55 e4          	lea    -0x1c(%rbp),%rdx
    1647:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    164b:	48 8d 35 26 1d 00 00 	lea    0x1d26(%rip),%rsi        # 3378 <_IO_stdin_used+0x378>
    1652:	48 89 c7             	mov    %rax,%rdi
    1655:	b8 00 00 00 00       	mov    $0x0,%eax
    165a:	e8 51 fa ff ff       	call   10b0 <__isoc99_sscanf@plt>
    165f:	89 45 ec             	mov    %eax,-0x14(%rbp)
    1662:	83 7d ec 00          	cmpl   $0x0,-0x14(%rbp)
    1666:	7f 05                	jg     166d <phase_3+0x53>
    1668:	e8 26 0a 00 00       	call   2093 <explode_bomb>
    166d:	0f b6 05 3d 3c 00 00 	movzbl 0x3c3d(%rip),%eax        # 52b1 <stuid+0x9>
    1674:	0f be c0             	movsbl %al,%eax
    1677:	83 e8 30             	sub    $0x30,%eax
    167a:	89 45 f0             	mov    %eax,-0x10(%rbp)
    167d:	0f b6 05 2c 3c 00 00 	movzbl 0x3c2c(%rip),%eax        # 52b0 <stuid+0x8>
    1684:	0f be c0             	movsbl %al,%eax
    1687:	83 e8 30             	sub    $0x30,%eax
    168a:	89 45 f4             	mov    %eax,-0xc(%rbp)
    168d:	83 7d f0 09          	cmpl   $0x9,-0x10(%rbp)
    1691:	77 7e                	ja     1711 <phase_3+0xf7>
    1693:	8b 45 f0             	mov    -0x10(%rbp),%eax
    1696:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    169d:	00 
    169e:	48 8d 05 d7 1c 00 00 	lea    0x1cd7(%rip),%rax        # 337c <_IO_stdin_used+0x37c>
    16a5:	8b 04 02             	mov    (%rdx,%rax,1),%eax
    16a8:	48 63 d0             	movslq %eax,%rdx
    16ab:	48 8d 05 ca 1c 00 00 	lea    0x1cca(%rip),%rax        # 337c <_IO_stdin_used+0x37c>
    16b2:	48 01 d0             	add    %rdx,%rax
    16b5:	ff e0                	jmp    *%rax
    16b7:	c7 45 e8 01 00 00 00 	movl   $0x1,-0x18(%rbp)
    16be:	eb 56                	jmp    1716 <phase_3+0xfc>
    16c0:	c7 45 e8 0a 00 00 00 	movl   $0xa,-0x18(%rbp)
    16c7:	eb 4d                	jmp    1716 <phase_3+0xfc>
    16c9:	c7 45 e8 15 00 00 00 	movl   $0x15,-0x18(%rbp)
    16d0:	eb 44                	jmp    1716 <phase_3+0xfc>
    16d2:	c7 45 e8 20 00 00 00 	movl   $0x20,-0x18(%rbp)
    16d9:	eb 3b                	jmp    1716 <phase_3+0xfc>
    16db:	c7 45 e8 2b 00 00 00 	movl   $0x2b,-0x18(%rbp)
    16e2:	eb 32                	jmp    1716 <phase_3+0xfc>
    16e4:	c7 45 e8 36 00 00 00 	movl   $0x36,-0x18(%rbp)
    16eb:	eb 29                	jmp    1716 <phase_3+0xfc>
    16ed:	c7 45 e8 41 00 00 00 	movl   $0x41,-0x18(%rbp)
    16f4:	eb 20                	jmp    1716 <phase_3+0xfc>
    16f6:	c7 45 e8 4c 00 00 00 	movl   $0x4c,-0x18(%rbp)
    16fd:	eb 17                	jmp    1716 <phase_3+0xfc>
    16ff:	c7 45 e8 57 00 00 00 	movl   $0x57,-0x18(%rbp)
    1706:	eb 0e                	jmp    1716 <phase_3+0xfc>
    1708:	c7 45 e8 62 00 00 00 	movl   $0x62,-0x18(%rbp)
    170f:	eb 05                	jmp    1716 <phase_3+0xfc>
    1711:	e8 7d 09 00 00       	call   2093 <explode_bomb>
    1716:	8b 55 e8             	mov    -0x18(%rbp),%edx
    1719:	8b 45 f4             	mov    -0xc(%rbp),%eax
    171c:	01 c2                	add    %eax,%edx
    171e:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    1721:	39 c2                	cmp    %eax,%edx
    1723:	74 05                	je     172a <phase_3+0x110>
    1725:	e8 69 09 00 00       	call   2093 <explode_bomb>
    172a:	90                   	nop
    172b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    172f:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1736:	00 00 
    1738:	74 05                	je     173f <phase_3+0x125>
    173a:	e8 31 f9 ff ff       	call   1070 <__stack_chk_fail@plt>
    173f:	c9                   	leave  
    1740:	c3                   	ret    

0000000000001741 <func4>:
    1741:	55                   	push   %rbp
    1742:	48 89 e5             	mov    %rsp,%rbp
    1745:	48 83 ec 20          	sub    $0x20,%rsp
    1749:	89 7d ec             	mov    %edi,-0x14(%rbp)
    174c:	89 75 e8             	mov    %esi,-0x18(%rbp)
    174f:	89 55 e4             	mov    %edx,-0x1c(%rbp)
    1752:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    1755:	2b 45 e8             	sub    -0x18(%rbp),%eax
    1758:	89 c2                	mov    %eax,%edx
    175a:	c1 ea 1f             	shr    $0x1f,%edx
    175d:	01 d0                	add    %edx,%eax
    175f:	d1 f8                	sar    %eax
    1761:	89 c2                	mov    %eax,%edx
    1763:	8b 45 e8             	mov    -0x18(%rbp),%eax
    1766:	01 d0                	add    %edx,%eax
    1768:	89 45 fc             	mov    %eax,-0x4(%rbp)
    176b:	8b 45 fc             	mov    -0x4(%rbp),%eax
    176e:	3b 45 ec             	cmp    -0x14(%rbp),%eax
    1771:	7e 19                	jle    178c <func4+0x4b>
    1773:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1776:	8d 50 ff             	lea    -0x1(%rax),%edx
    1779:	8b 4d e8             	mov    -0x18(%rbp),%ecx
    177c:	8b 45 ec             	mov    -0x14(%rbp),%eax
    177f:	89 ce                	mov    %ecx,%esi
    1781:	89 c7                	mov    %eax,%edi
    1783:	e8 b9 ff ff ff       	call   1741 <func4>
    1788:	01 c0                	add    %eax,%eax
    178a:	eb 29                	jmp    17b5 <func4+0x74>
    178c:	8b 45 fc             	mov    -0x4(%rbp),%eax
    178f:	3b 45 ec             	cmp    -0x14(%rbp),%eax
    1792:	7d 1c                	jge    17b0 <func4+0x6f>
    1794:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1797:	8d 48 01             	lea    0x1(%rax),%ecx
    179a:	8b 55 e4             	mov    -0x1c(%rbp),%edx
    179d:	8b 45 ec             	mov    -0x14(%rbp),%eax
    17a0:	89 ce                	mov    %ecx,%esi
    17a2:	89 c7                	mov    %eax,%edi
    17a4:	e8 98 ff ff ff       	call   1741 <func4>
    17a9:	01 c0                	add    %eax,%eax
    17ab:	83 c0 01             	add    $0x1,%eax
    17ae:	eb 05                	jmp    17b5 <func4+0x74>
    17b0:	b8 00 00 00 00       	mov    $0x0,%eax
    17b5:	c9                   	leave  
    17b6:	c3                   	ret    

00000000000017b7 <phase_4>:
    17b7:	55                   	push   %rbp
    17b8:	48 89 e5             	mov    %rsp,%rbp
    17bb:	48 83 ec 30          	sub    $0x30,%rsp
    17bf:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    17c3:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    17ca:	00 00 
    17cc:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    17d0:	31 c0                	xor    %eax,%eax
    17d2:	48 8d 4d e8          	lea    -0x18(%rbp),%rcx
    17d6:	48 8d 55 e4          	lea    -0x1c(%rbp),%rdx
    17da:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    17de:	48 8d 35 bf 1b 00 00 	lea    0x1bbf(%rip),%rsi        # 33a4 <_IO_stdin_used+0x3a4>
    17e5:	48 89 c7             	mov    %rax,%rdi
    17e8:	b8 00 00 00 00       	mov    $0x0,%eax
    17ed:	e8 be f8 ff ff       	call   10b0 <__isoc99_sscanf@plt>
    17f2:	89 45 ec             	mov    %eax,-0x14(%rbp)
    17f5:	83 7d ec 02          	cmpl   $0x2,-0x14(%rbp)
    17f9:	75 0f                	jne    180a <phase_4+0x53>
    17fb:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    17fe:	85 c0                	test   %eax,%eax
    1800:	78 08                	js     180a <phase_4+0x53>
    1802:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    1805:	83 f8 0e             	cmp    $0xe,%eax
    1808:	7e 05                	jle    180f <phase_4+0x58>
    180a:	e8 84 08 00 00       	call   2093 <explode_bomb>
    180f:	c7 45 f0 07 00 00 00 	movl   $0x7,-0x10(%rbp)
    1816:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    1819:	ba 0e 00 00 00       	mov    $0xe,%edx
    181e:	be 00 00 00 00       	mov    $0x0,%esi
    1823:	89 c7                	mov    %eax,%edi
    1825:	e8 17 ff ff ff       	call   1741 <func4>
    182a:	89 45 f4             	mov    %eax,-0xc(%rbp)
    182d:	8b 45 f4             	mov    -0xc(%rbp),%eax
    1830:	3b 45 f0             	cmp    -0x10(%rbp),%eax
    1833:	75 08                	jne    183d <phase_4+0x86>
    1835:	8b 45 e8             	mov    -0x18(%rbp),%eax
    1838:	39 45 f0             	cmp    %eax,-0x10(%rbp)
    183b:	74 05                	je     1842 <phase_4+0x8b>
    183d:	e8 51 08 00 00       	call   2093 <explode_bomb>
    1842:	90                   	nop
    1843:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1847:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    184e:	00 00 
    1850:	74 05                	je     1857 <phase_4+0xa0>
    1852:	e8 19 f8 ff ff       	call   1070 <__stack_chk_fail@plt>
    1857:	c9                   	leave  
    1858:	c3                   	ret    

0000000000001859 <phase_5>:
    1859:	55                   	push   %rbp
    185a:	48 89 e5             	mov    %rsp,%rbp
    185d:	48 83 ec 30          	sub    $0x30,%rsp
    1861:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    1865:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    186c:	00 00 
    186e:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1872:	31 c0                	xor    %eax,%eax
    1874:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1878:	48 89 c7             	mov    %rax,%rdi
    187b:	e8 f2 04 00 00       	call   1d72 <string_length>
    1880:	89 45 ec             	mov    %eax,-0x14(%rbp)
    1883:	83 7d ec 06          	cmpl   $0x6,-0x14(%rbp)
    1887:	74 05                	je     188e <phase_5+0x35>
    1889:	e8 05 08 00 00       	call   2093 <explode_bomb>
    188e:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%rbp)
    1895:	eb 37                	jmp    18ce <phase_5+0x75>
    1897:	b8 09 00 00 00       	mov    $0x9,%eax
    189c:	2b 45 e8             	sub    -0x18(%rbp),%eax
    189f:	48 63 d0             	movslq %eax,%rdx
    18a2:	48 8d 05 ff 39 00 00 	lea    0x39ff(%rip),%rax        # 52a8 <stuid>
    18a9:	0f b6 04 02          	movzbl (%rdx,%rax,1),%eax
    18ad:	0f be c0             	movsbl %al,%eax
    18b0:	83 e8 30             	sub    $0x30,%eax
    18b3:	48 63 d0             	movslq %eax,%rdx
    18b6:	48 8d 05 6b 38 00 00 	lea    0x386b(%rip),%rax        # 5128 <array.3042>
    18bd:	0f b6 14 02          	movzbl (%rdx,%rax,1),%edx
    18c1:	8b 45 e8             	mov    -0x18(%rbp),%eax
    18c4:	48 98                	cltq   
    18c6:	88 54 05 f1          	mov    %dl,-0xf(%rbp,%rax,1)
    18ca:	83 45 e8 01          	addl   $0x1,-0x18(%rbp)
    18ce:	83 7d e8 05          	cmpl   $0x5,-0x18(%rbp)
    18d2:	7e c3                	jle    1897 <phase_5+0x3e>
    18d4:	c6 45 f7 00          	movb   $0x0,-0x9(%rbp)
    18d8:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%rbp)
    18df:	eb 34                	jmp    1915 <phase_5+0xbc>
    18e1:	8b 45 e8             	mov    -0x18(%rbp),%eax
    18e4:	48 63 d0             	movslq %eax,%rdx
    18e7:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    18eb:	48 01 d0             	add    %rdx,%rax
    18ee:	0f b6 10             	movzbl (%rax),%edx
    18f1:	8b 45 e8             	mov    -0x18(%rbp),%eax
    18f4:	48 98                	cltq   
    18f6:	b9 05 00 00 00       	mov    $0x5,%ecx
    18fb:	48 29 c1             	sub    %rax,%rcx
    18fe:	48 8d 45 f1          	lea    -0xf(%rbp),%rax
    1902:	48 01 c8             	add    %rcx,%rax
    1905:	0f b6 00             	movzbl (%rax),%eax
    1908:	38 c2                	cmp    %al,%dl
    190a:	74 05                	je     1911 <phase_5+0xb8>
    190c:	e8 82 07 00 00       	call   2093 <explode_bomb>
    1911:	83 45 e8 01          	addl   $0x1,-0x18(%rbp)
    1915:	83 7d e8 05          	cmpl   $0x5,-0x18(%rbp)
    1919:	7e c6                	jle    18e1 <phase_5+0x88>
    191b:	90                   	nop
    191c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1920:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1927:	00 00 
    1929:	74 05                	je     1930 <phase_5+0xd7>
    192b:	e8 40 f7 ff ff       	call   1070 <__stack_chk_fail@plt>
    1930:	c9                   	leave  
    1931:	c3                   	ret    

0000000000001932 <phase_6>:
    1932:	55                   	push   %rbp
    1933:	48 89 e5             	mov    %rsp,%rbp
    1936:	48 81 ec 90 00 00 00 	sub    $0x90,%rsp
    193d:	48 89 bd 78 ff ff ff 	mov    %rdi,-0x88(%rbp)
    1944:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    194b:	00 00 
    194d:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1951:	31 c0                	xor    %eax,%eax
    1953:	48 8d 05 26 38 00 00 	lea    0x3826(%rip),%rax        # 5180 <node1>
    195a:	48 89 45 98          	mov    %rax,-0x68(%rbp)
    195e:	48 8d 55 a0          	lea    -0x60(%rbp),%rdx
    1962:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
    1969:	48 89 d6             	mov    %rdx,%rsi
    196c:	48 89 c7             	mov    %rax,%rdi
    196f:	e8 8f 03 00 00       	call   1d03 <read_six_numbers>
    1974:	c7 45 88 00 00 00 00 	movl   $0x0,-0x78(%rbp)
    197b:	eb 54                	jmp    19d1 <phase_6+0x9f>
    197d:	8b 45 88             	mov    -0x78(%rbp),%eax
    1980:	48 98                	cltq   
    1982:	8b 44 85 a0          	mov    -0x60(%rbp,%rax,4),%eax
    1986:	85 c0                	test   %eax,%eax
    1988:	7e 0e                	jle    1998 <phase_6+0x66>
    198a:	8b 45 88             	mov    -0x78(%rbp),%eax
    198d:	48 98                	cltq   
    198f:	8b 44 85 a0          	mov    -0x60(%rbp,%rax,4),%eax
    1993:	83 f8 06             	cmp    $0x6,%eax
    1996:	7e 05                	jle    199d <phase_6+0x6b>
    1998:	e8 f6 06 00 00       	call   2093 <explode_bomb>
    199d:	8b 45 88             	mov    -0x78(%rbp),%eax
    19a0:	83 c0 01             	add    $0x1,%eax
    19a3:	89 45 8c             	mov    %eax,-0x74(%rbp)
    19a6:	eb 1f                	jmp    19c7 <phase_6+0x95>
    19a8:	8b 45 88             	mov    -0x78(%rbp),%eax
    19ab:	48 98                	cltq   
    19ad:	8b 54 85 a0          	mov    -0x60(%rbp,%rax,4),%edx
    19b1:	8b 45 8c             	mov    -0x74(%rbp),%eax
    19b4:	48 98                	cltq   
    19b6:	8b 44 85 a0          	mov    -0x60(%rbp,%rax,4),%eax
    19ba:	39 c2                	cmp    %eax,%edx
    19bc:	75 05                	jne    19c3 <phase_6+0x91>
    19be:	e8 d0 06 00 00       	call   2093 <explode_bomb>
    19c3:	83 45 8c 01          	addl   $0x1,-0x74(%rbp)
    19c7:	83 7d 8c 05          	cmpl   $0x5,-0x74(%rbp)
    19cb:	7e db                	jle    19a8 <phase_6+0x76>
    19cd:	83 45 88 01          	addl   $0x1,-0x78(%rbp)
    19d1:	83 7d 88 05          	cmpl   $0x5,-0x78(%rbp)
    19d5:	7e a6                	jle    197d <phase_6+0x4b>
    19d7:	c7 45 88 00 00 00 00 	movl   $0x0,-0x78(%rbp)
    19de:	eb 41                	jmp    1a21 <phase_6+0xef>
    19e0:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    19e4:	48 89 45 90          	mov    %rax,-0x70(%rbp)
    19e8:	c7 45 8c 01 00 00 00 	movl   $0x1,-0x74(%rbp)
    19ef:	eb 10                	jmp    1a01 <phase_6+0xcf>
    19f1:	48 8b 45 90          	mov    -0x70(%rbp),%rax
    19f5:	48 8b 40 08          	mov    0x8(%rax),%rax
    19f9:	48 89 45 90          	mov    %rax,-0x70(%rbp)
    19fd:	83 45 8c 01          	addl   $0x1,-0x74(%rbp)
    1a01:	8b 45 88             	mov    -0x78(%rbp),%eax
    1a04:	48 98                	cltq   
    1a06:	8b 44 85 a0          	mov    -0x60(%rbp,%rax,4),%eax
    1a0a:	39 45 8c             	cmp    %eax,-0x74(%rbp)
    1a0d:	7c e2                	jl     19f1 <phase_6+0xbf>
    1a0f:	8b 45 88             	mov    -0x78(%rbp),%eax
    1a12:	48 98                	cltq   
    1a14:	48 8b 55 90          	mov    -0x70(%rbp),%rdx
    1a18:	48 89 54 c5 c0       	mov    %rdx,-0x40(%rbp,%rax,8)
    1a1d:	83 45 88 01          	addl   $0x1,-0x78(%rbp)
    1a21:	83 7d 88 05          	cmpl   $0x5,-0x78(%rbp)
    1a25:	7e b9                	jle    19e0 <phase_6+0xae>
    1a27:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    1a2b:	48 89 45 98          	mov    %rax,-0x68(%rbp)
    1a2f:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    1a33:	48 89 45 90          	mov    %rax,-0x70(%rbp)
    1a37:	c7 45 88 01 00 00 00 	movl   $0x1,-0x78(%rbp)
    1a3e:	eb 22                	jmp    1a62 <phase_6+0x130>
    1a40:	8b 45 88             	mov    -0x78(%rbp),%eax
    1a43:	48 98                	cltq   
    1a45:	48 8b 54 c5 c0       	mov    -0x40(%rbp,%rax,8),%rdx
    1a4a:	48 8b 45 90          	mov    -0x70(%rbp),%rax
    1a4e:	48 89 50 08          	mov    %rdx,0x8(%rax)
    1a52:	48 8b 45 90          	mov    -0x70(%rbp),%rax
    1a56:	48 8b 40 08          	mov    0x8(%rax),%rax
    1a5a:	48 89 45 90          	mov    %rax,-0x70(%rbp)
    1a5e:	83 45 88 01          	addl   $0x1,-0x78(%rbp)
    1a62:	83 7d 88 05          	cmpl   $0x5,-0x78(%rbp)
    1a66:	7e d8                	jle    1a40 <phase_6+0x10e>
    1a68:	48 8b 45 90          	mov    -0x70(%rbp),%rax
    1a6c:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
    1a73:	00 
    1a74:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    1a78:	48 89 45 90          	mov    %rax,-0x70(%rbp)
    1a7c:	c7 45 88 00 00 00 00 	movl   $0x0,-0x78(%rbp)
    1a83:	eb 29                	jmp    1aae <phase_6+0x17c>
    1a85:	48 8b 45 90          	mov    -0x70(%rbp),%rax
    1a89:	8b 10                	mov    (%rax),%edx
    1a8b:	48 8b 45 90          	mov    -0x70(%rbp),%rax
    1a8f:	48 8b 40 08          	mov    0x8(%rax),%rax
    1a93:	8b 00                	mov    (%rax),%eax
    1a95:	39 c2                	cmp    %eax,%edx
    1a97:	7d 05                	jge    1a9e <phase_6+0x16c>
    1a99:	e8 f5 05 00 00       	call   2093 <explode_bomb>
    1a9e:	48 8b 45 90          	mov    -0x70(%rbp),%rax
    1aa2:	48 8b 40 08          	mov    0x8(%rax),%rax
    1aa6:	48 89 45 90          	mov    %rax,-0x70(%rbp)
    1aaa:	83 45 88 01          	addl   $0x1,-0x78(%rbp)
    1aae:	83 7d 88 04          	cmpl   $0x4,-0x78(%rbp)
    1ab2:	7e d1                	jle    1a85 <phase_6+0x153>
    1ab4:	90                   	nop
    1ab5:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1ab9:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1ac0:	00 00 
    1ac2:	74 05                	je     1ac9 <phase_6+0x197>
    1ac4:	e8 a7 f5 ff ff       	call   1070 <__stack_chk_fail@plt>
    1ac9:	c9                   	leave  
    1aca:	c3                   	ret    

0000000000001acb <fun7>:
    1acb:	55                   	push   %rbp
    1acc:	48 89 e5             	mov    %rsp,%rbp
    1acf:	48 83 ec 10          	sub    $0x10,%rsp
    1ad3:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    1ad7:	89 75 f4             	mov    %esi,-0xc(%rbp)
    1ada:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    1adf:	75 07                	jne    1ae8 <fun7+0x1d>
    1ae1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    1ae6:	eb 50                	jmp    1b38 <fun7+0x6d>
    1ae8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1aec:	8b 00                	mov    (%rax),%eax
    1aee:	39 45 f4             	cmp    %eax,-0xc(%rbp)
    1af1:	7d 19                	jge    1b0c <fun7+0x41>
    1af3:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1af7:	48 8b 40 08          	mov    0x8(%rax),%rax
    1afb:	8b 55 f4             	mov    -0xc(%rbp),%edx
    1afe:	89 d6                	mov    %edx,%esi
    1b00:	48 89 c7             	mov    %rax,%rdi
    1b03:	e8 c3 ff ff ff       	call   1acb <fun7>
    1b08:	01 c0                	add    %eax,%eax
    1b0a:	eb 2c                	jmp    1b38 <fun7+0x6d>
    1b0c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1b10:	8b 00                	mov    (%rax),%eax
    1b12:	39 45 f4             	cmp    %eax,-0xc(%rbp)
    1b15:	75 07                	jne    1b1e <fun7+0x53>
    1b17:	b8 00 00 00 00       	mov    $0x0,%eax
    1b1c:	eb 1a                	jmp    1b38 <fun7+0x6d>
    1b1e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1b22:	48 8b 40 10          	mov    0x10(%rax),%rax
    1b26:	8b 55 f4             	mov    -0xc(%rbp),%edx
    1b29:	89 d6                	mov    %edx,%esi
    1b2b:	48 89 c7             	mov    %rax,%rdi
    1b2e:	e8 98 ff ff ff       	call   1acb <fun7>
    1b33:	01 c0                	add    %eax,%eax
    1b35:	83 c0 01             	add    $0x1,%eax
    1b38:	c9                   	leave  
    1b39:	c3                   	ret    

0000000000001b3a <secret_phase>:
    1b3a:	55                   	push   %rbp
    1b3b:	48 89 e5             	mov    %rsp,%rbp
    1b3e:	48 83 ec 10          	sub    $0x10,%rsp
    1b42:	e8 b9 03 00 00       	call   1f00 <read_line>
    1b47:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1b4b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1b4f:	48 89 c7             	mov    %rax,%rdi
    1b52:	e8 79 f5 ff ff       	call   10d0 <atoi@plt>
    1b57:	89 45 f0             	mov    %eax,-0x10(%rbp)
    1b5a:	83 7d f0 00          	cmpl   $0x0,-0x10(%rbp)
    1b5e:	7e 09                	jle    1b69 <secret_phase+0x2f>
    1b60:	81 7d f0 e9 03 00 00 	cmpl   $0x3e9,-0x10(%rbp)
    1b67:	7e 05                	jle    1b6e <secret_phase+0x34>
    1b69:	e8 25 05 00 00       	call   2093 <explode_bomb>
    1b6e:	8b 45 f0             	mov    -0x10(%rbp),%eax
    1b71:	89 c6                	mov    %eax,%esi
    1b73:	48 8d 3d d6 36 00 00 	lea    0x36d6(%rip),%rdi        # 5250 <n1>
    1b7a:	e8 4c ff ff ff       	call   1acb <fun7>
    1b7f:	89 45 f4             	mov    %eax,-0xc(%rbp)
    1b82:	83 7d f4 01          	cmpl   $0x1,-0xc(%rbp)
    1b86:	74 05                	je     1b8d <secret_phase+0x53>
    1b88:	e8 06 05 00 00       	call   2093 <explode_bomb>
    1b8d:	48 8d 3d 1c 18 00 00 	lea    0x181c(%rip),%rdi        # 33b0 <_IO_stdin_used+0x3b0>
    1b94:	e8 b7 f4 ff ff       	call   1050 <puts@plt>
    1b99:	e8 25 05 00 00       	call   20c3 <phase_defused>
    1b9e:	90                   	nop
    1b9f:	c9                   	leave  
    1ba0:	c3                   	ret    

0000000000001ba1 <check_student_id>:
    1ba1:	f3 0f 1e fa          	endbr64 
    1ba5:	55                   	push   %rbp
    1ba6:	48 89 e5             	mov    %rsp,%rbp
    1ba9:	48 83 ec 20          	sub    $0x20,%rsp
    1bad:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    1bb1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1bb5:	48 89 c7             	mov    %rax,%rdi
    1bb8:	e8 a3 f4 ff ff       	call   1060 <strlen@plt>
    1bbd:	48 83 f8 0a          	cmp    $0xa,%rax
    1bc1:	74 19                	je     1bdc <check_student_id+0x3b>
    1bc3:	48 8d 05 0e 18 00 00 	lea    0x180e(%rip),%rax        # 33d8 <_IO_stdin_used+0x3d8>
    1bca:	48 89 c7             	mov    %rax,%rdi
    1bcd:	e8 7e f4 ff ff       	call   1050 <puts@plt>
    1bd2:	b8 00 00 00 00       	mov    $0x0,%eax
    1bd7:	e9 82 00 00 00       	jmp    1c5e <check_student_id+0xbd>
    1bdc:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1be0:	0f b6 00             	movzbl (%rax),%eax
    1be3:	3c 55                	cmp    $0x55,%al
    1be5:	74 21                	je     1c08 <check_student_id+0x67>
    1be7:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1beb:	0f b6 00             	movzbl (%rax),%eax
    1bee:	3c 75                	cmp    $0x75,%al
    1bf0:	74 16                	je     1c08 <check_student_id+0x67>
    1bf2:	48 8d 05 f7 17 00 00 	lea    0x17f7(%rip),%rax        # 33f0 <_IO_stdin_used+0x3f0>
    1bf9:	48 89 c7             	mov    %rax,%rdi
    1bfc:	e8 4f f4 ff ff       	call   1050 <puts@plt>
    1c01:	b8 00 00 00 00       	mov    $0x0,%eax
    1c06:	eb 56                	jmp    1c5e <check_student_id+0xbd>
    1c08:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%rbp)
    1c0f:	eb 42                	jmp    1c53 <check_student_id+0xb2>
    1c11:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1c14:	48 63 d0             	movslq %eax,%rdx
    1c17:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1c1b:	48 01 d0             	add    %rdx,%rax
    1c1e:	0f b6 00             	movzbl (%rax),%eax
    1c21:	3c 2f                	cmp    $0x2f,%al
    1c23:	7e 14                	jle    1c39 <check_student_id+0x98>
    1c25:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1c28:	48 63 d0             	movslq %eax,%rdx
    1c2b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1c2f:	48 01 d0             	add    %rdx,%rax
    1c32:	0f b6 00             	movzbl (%rax),%eax
    1c35:	3c 39                	cmp    $0x39,%al
    1c37:	7e 16                	jle    1c4f <check_student_id+0xae>
    1c39:	48 8d 05 cb 17 00 00 	lea    0x17cb(%rip),%rax        # 340b <_IO_stdin_used+0x40b>
    1c40:	48 89 c7             	mov    %rax,%rdi
    1c43:	e8 08 f4 ff ff       	call   1050 <puts@plt>
    1c48:	b8 00 00 00 00       	mov    $0x0,%eax
    1c4d:	eb 0f                	jmp    1c5e <check_student_id+0xbd>
    1c4f:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
    1c53:	83 7d fc 09          	cmpl   $0x9,-0x4(%rbp)
    1c57:	7e b8                	jle    1c11 <check_student_id+0x70>
    1c59:	b8 01 00 00 00       	mov    $0x1,%eax
    1c5e:	c9                   	leave  
    1c5f:	c3                   	ret    

0000000000001c60 <sig_handler>:
    1c60:	f3 0f 1e fa          	endbr64 
    1c64:	55                   	push   %rbp
    1c65:	48 89 e5             	mov    %rsp,%rbp
    1c68:	48 83 ec 10          	sub    $0x10,%rsp
    1c6c:	89 7d fc             	mov    %edi,-0x4(%rbp)
    1c6f:	48 8d 05 b2 17 00 00 	lea    0x17b2(%rip),%rax        # 3428 <_IO_stdin_used+0x428>
    1c76:	48 89 c7             	mov    %rax,%rdi
    1c79:	e8 d2 f3 ff ff       	call   1050 <puts@plt>
    1c7e:	bf 03 00 00 00       	mov    $0x3,%edi
    1c83:	e8 68 f4 ff ff       	call   10f0 <sleep@plt>
    1c88:	48 8d 05 d1 17 00 00 	lea    0x17d1(%rip),%rax        # 3460 <_IO_stdin_used+0x460>
    1c8f:	48 89 c7             	mov    %rax,%rdi
    1c92:	b8 00 00 00 00       	mov    $0x0,%eax
    1c97:	e8 e4 f3 ff ff       	call   1080 <printf@plt>
    1c9c:	48 8b 05 dd 35 00 00 	mov    0x35dd(%rip),%rax        # 5280 <stdout@GLIBC_2.2.5>
    1ca3:	48 89 c7             	mov    %rax,%rdi
    1ca6:	e8 f5 f3 ff ff       	call   10a0 <fflush@plt>
    1cab:	bf 01 00 00 00       	mov    $0x1,%edi
    1cb0:	e8 3b f4 ff ff       	call   10f0 <sleep@plt>
    1cb5:	48 8d 05 ac 17 00 00 	lea    0x17ac(%rip),%rax        # 3468 <_IO_stdin_used+0x468>
    1cbc:	48 89 c7             	mov    %rax,%rdi
    1cbf:	e8 8c f3 ff ff       	call   1050 <puts@plt>
    1cc4:	bf 10 00 00 00       	mov    $0x10,%edi
    1cc9:	e8 12 f4 ff ff       	call   10e0 <exit@plt>

0000000000001cce <invalid_phase>:
    1cce:	f3 0f 1e fa          	endbr64 
    1cd2:	55                   	push   %rbp
    1cd3:	48 89 e5             	mov    %rsp,%rbp
    1cd6:	48 83 ec 10          	sub    $0x10,%rsp
    1cda:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    1cde:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1ce2:	48 89 c6             	mov    %rax,%rsi
    1ce5:	48 8d 05 84 17 00 00 	lea    0x1784(%rip),%rax        # 3470 <_IO_stdin_used+0x470>
    1cec:	48 89 c7             	mov    %rax,%rdi
    1cef:	b8 00 00 00 00       	mov    $0x0,%eax
    1cf4:	e8 87 f3 ff ff       	call   1080 <printf@plt>
    1cf9:	bf 08 00 00 00       	mov    $0x8,%edi
    1cfe:	e8 dd f3 ff ff       	call   10e0 <exit@plt>

0000000000001d03 <read_six_numbers>:
    1d03:	f3 0f 1e fa          	endbr64 
    1d07:	55                   	push   %rbp
    1d08:	48 89 e5             	mov    %rsp,%rbp
    1d0b:	48 83 ec 20          	sub    $0x20,%rsp
    1d0f:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    1d13:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    1d17:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    1d1b:	48 8d 78 14          	lea    0x14(%rax),%rdi
    1d1f:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    1d23:	48 8d 70 10          	lea    0x10(%rax),%rsi
    1d27:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    1d2b:	4c 8d 48 0c          	lea    0xc(%rax),%r9
    1d2f:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    1d33:	4c 8d 40 08          	lea    0x8(%rax),%r8
    1d37:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    1d3b:	48 8d 48 04          	lea    0x4(%rax),%rcx
    1d3f:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    1d43:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1d47:	57                   	push   %rdi
    1d48:	56                   	push   %rsi
    1d49:	48 8d 35 31 17 00 00 	lea    0x1731(%rip),%rsi        # 3481 <_IO_stdin_used+0x481>
    1d50:	48 89 c7             	mov    %rax,%rdi
    1d53:	b8 00 00 00 00       	mov    $0x0,%eax
    1d58:	e8 53 f3 ff ff       	call   10b0 <__isoc99_sscanf@plt>
    1d5d:	48 83 c4 10          	add    $0x10,%rsp
    1d61:	89 45 fc             	mov    %eax,-0x4(%rbp)
    1d64:	83 7d fc 05          	cmpl   $0x5,-0x4(%rbp)
    1d68:	7f 05                	jg     1d6f <read_six_numbers+0x6c>
    1d6a:	e8 24 03 00 00       	call   2093 <explode_bomb>
    1d6f:	90                   	nop
    1d70:	c9                   	leave  
    1d71:	c3                   	ret    

0000000000001d72 <string_length>:
    1d72:	f3 0f 1e fa          	endbr64 
    1d76:	55                   	push   %rbp
    1d77:	48 89 e5             	mov    %rsp,%rbp
    1d7a:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    1d7e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1d82:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1d86:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
    1d8d:	eb 09                	jmp    1d98 <string_length+0x26>
    1d8f:	48 83 45 f8 01       	addq   $0x1,-0x8(%rbp)
    1d94:	83 45 f4 01          	addl   $0x1,-0xc(%rbp)
    1d98:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1d9c:	0f b6 00             	movzbl (%rax),%eax
    1d9f:	84 c0                	test   %al,%al
    1da1:	75 ec                	jne    1d8f <string_length+0x1d>
    1da3:	8b 45 f4             	mov    -0xc(%rbp),%eax
    1da6:	5d                   	pop    %rbp
    1da7:	c3                   	ret    

0000000000001da8 <strings_not_equal>:
    1da8:	f3 0f 1e fa          	endbr64 
    1dac:	55                   	push   %rbp
    1dad:	48 89 e5             	mov    %rsp,%rbp
    1db0:	53                   	push   %rbx
    1db1:	48 83 ec 20          	sub    $0x20,%rsp
    1db5:	48 89 7d e0          	mov    %rdi,-0x20(%rbp)
    1db9:	48 89 75 d8          	mov    %rsi,-0x28(%rbp)
    1dbd:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    1dc1:	48 89 c7             	mov    %rax,%rdi
    1dc4:	e8 a9 ff ff ff       	call   1d72 <string_length>
    1dc9:	89 c3                	mov    %eax,%ebx
    1dcb:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1dcf:	48 89 c7             	mov    %rax,%rdi
    1dd2:	e8 9b ff ff ff       	call   1d72 <string_length>
    1dd7:	39 c3                	cmp    %eax,%ebx
    1dd9:	74 07                	je     1de2 <strings_not_equal+0x3a>
    1ddb:	b8 01 00 00 00       	mov    $0x1,%eax
    1de0:	eb 45                	jmp    1e27 <strings_not_equal+0x7f>
    1de2:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    1de6:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    1dea:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1dee:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    1df2:	eb 23                	jmp    1e17 <strings_not_equal+0x6f>
    1df4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1df8:	0f b6 10             	movzbl (%rax),%edx
    1dfb:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1dff:	0f b6 00             	movzbl (%rax),%eax
    1e02:	38 c2                	cmp    %al,%dl
    1e04:	74 07                	je     1e0d <strings_not_equal+0x65>
    1e06:	b8 01 00 00 00       	mov    $0x1,%eax
    1e0b:	eb 1a                	jmp    1e27 <strings_not_equal+0x7f>
    1e0d:	48 83 45 e8 01       	addq   $0x1,-0x18(%rbp)
    1e12:	48 83 45 f0 01       	addq   $0x1,-0x10(%rbp)
    1e17:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1e1b:	0f b6 00             	movzbl (%rax),%eax
    1e1e:	84 c0                	test   %al,%al
    1e20:	75 d2                	jne    1df4 <strings_not_equal+0x4c>
    1e22:	b8 00 00 00 00       	mov    $0x0,%eax
    1e27:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    1e2b:	c9                   	leave  
    1e2c:	c3                   	ret    

0000000000001e2d <initialize_bomb>:
    1e2d:	f3 0f 1e fa          	endbr64 
    1e31:	55                   	push   %rbp
    1e32:	48 89 e5             	mov    %rsp,%rbp
    1e35:	90                   	nop
    1e36:	5d                   	pop    %rbp
    1e37:	c3                   	ret    

0000000000001e38 <initialize_bomb_solve>:
    1e38:	f3 0f 1e fa          	endbr64 
    1e3c:	55                   	push   %rbp
    1e3d:	48 89 e5             	mov    %rsp,%rbp
    1e40:	90                   	nop
    1e41:	5d                   	pop    %rbp
    1e42:	c3                   	ret    

0000000000001e43 <blank_line>:
    1e43:	f3 0f 1e fa          	endbr64 
    1e47:	55                   	push   %rbp
    1e48:	48 89 e5             	mov    %rsp,%rbp
    1e4b:	48 83 ec 10          	sub    $0x10,%rsp
    1e4f:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    1e53:	eb 37                	jmp    1e8c <blank_line+0x49>
    1e55:	e8 a6 f2 ff ff       	call   1100 <__ctype_b_loc@plt>
    1e5a:	48 8b 08             	mov    (%rax),%rcx
    1e5d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1e61:	48 8d 50 01          	lea    0x1(%rax),%rdx
    1e65:	48 89 55 f8          	mov    %rdx,-0x8(%rbp)
    1e69:	0f b6 00             	movzbl (%rax),%eax
    1e6c:	48 0f be c0          	movsbq %al,%rax
    1e70:	48 01 c0             	add    %rax,%rax
    1e73:	48 01 c8             	add    %rcx,%rax
    1e76:	0f b7 00             	movzwl (%rax),%eax
    1e79:	0f b7 c0             	movzwl %ax,%eax
    1e7c:	25 00 20 00 00       	and    $0x2000,%eax
    1e81:	85 c0                	test   %eax,%eax
    1e83:	75 07                	jne    1e8c <blank_line+0x49>
    1e85:	b8 00 00 00 00       	mov    $0x0,%eax
    1e8a:	eb 10                	jmp    1e9c <blank_line+0x59>
    1e8c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1e90:	0f b6 00             	movzbl (%rax),%eax
    1e93:	84 c0                	test   %al,%al
    1e95:	75 be                	jne    1e55 <blank_line+0x12>
    1e97:	b8 01 00 00 00       	mov    $0x1,%eax
    1e9c:	c9                   	leave  
    1e9d:	c3                   	ret    

0000000000001e9e <skip>:
    1e9e:	f3 0f 1e fa          	endbr64 
    1ea2:	55                   	push   %rbp
    1ea3:	48 89 e5             	mov    %rsp,%rbp
    1ea6:	48 83 ec 10          	sub    $0x10,%rsp
    1eaa:	48 8b 15 ef 33 00 00 	mov    0x33ef(%rip),%rdx        # 52a0 <infile>
    1eb1:	8b 05 49 3a 00 00    	mov    0x3a49(%rip),%eax        # 5900 <num_input_strings>
    1eb7:	48 63 c8             	movslq %eax,%rcx
    1eba:	48 89 c8             	mov    %rcx,%rax
    1ebd:	48 c1 e0 02          	shl    $0x2,%rax
    1ec1:	48 01 c8             	add    %rcx,%rax
    1ec4:	48 c1 e0 04          	shl    $0x4,%rax
    1ec8:	48 8d 0d f1 33 00 00 	lea    0x33f1(%rip),%rcx        # 52c0 <input_strings>
    1ecf:	48 01 c8             	add    %rcx,%rax
    1ed2:	be 50 00 00 00       	mov    $0x50,%esi
    1ed7:	48 89 c7             	mov    %rax,%rdi
    1eda:	e8 b1 f1 ff ff       	call   1090 <fgets@plt>
    1edf:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1ee3:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    1ee8:	74 10                	je     1efa <skip+0x5c>
    1eea:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1eee:	48 89 c7             	mov    %rax,%rdi
    1ef1:	e8 4d ff ff ff       	call   1e43 <blank_line>
    1ef6:	85 c0                	test   %eax,%eax
    1ef8:	75 b0                	jne    1eaa <skip+0xc>
    1efa:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1efe:	c9                   	leave  
    1eff:	c3                   	ret    

0000000000001f00 <read_line>:
    1f00:	f3 0f 1e fa          	endbr64 
    1f04:	55                   	push   %rbp
    1f05:	48 89 e5             	mov    %rsp,%rbp
    1f08:	48 83 ec 10          	sub    $0x10,%rsp
    1f0c:	b8 00 00 00 00       	mov    $0x0,%eax
    1f11:	e8 88 ff ff ff       	call   1e9e <skip>
    1f16:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1f1a:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    1f1f:	0f 85 86 00 00 00    	jne    1fab <read_line+0xab>
    1f25:	48 8b 15 74 33 00 00 	mov    0x3374(%rip),%rdx        # 52a0 <infile>
    1f2c:	48 8b 05 5d 33 00 00 	mov    0x335d(%rip),%rax        # 5290 <stdin@GLIBC_2.2.5>
    1f33:	48 39 c2             	cmp    %rax,%rdx
    1f36:	75 19                	jne    1f51 <read_line+0x51>
    1f38:	48 8d 05 54 15 00 00 	lea    0x1554(%rip),%rax        # 3493 <_IO_stdin_used+0x493>
    1f3f:	48 89 c7             	mov    %rax,%rdi
    1f42:	e8 09 f1 ff ff       	call   1050 <puts@plt>
    1f47:	bf 08 00 00 00       	mov    $0x8,%edi
    1f4c:	e8 8f f1 ff ff       	call   10e0 <exit@plt>
    1f51:	48 8d 05 59 15 00 00 	lea    0x1559(%rip),%rax        # 34b1 <_IO_stdin_used+0x4b1>
    1f58:	48 89 c7             	mov    %rax,%rdi
    1f5b:	e8 d0 f0 ff ff       	call   1030 <getenv@plt>
    1f60:	48 85 c0             	test   %rax,%rax
    1f63:	74 0a                	je     1f6f <read_line+0x6f>
    1f65:	bf 00 00 00 00       	mov    $0x0,%edi
    1f6a:	e8 71 f1 ff ff       	call   10e0 <exit@plt>
    1f6f:	48 8b 05 1a 33 00 00 	mov    0x331a(%rip),%rax        # 5290 <stdin@GLIBC_2.2.5>
    1f76:	48 89 05 23 33 00 00 	mov    %rax,0x3323(%rip)        # 52a0 <infile>
    1f7d:	b8 00 00 00 00       	mov    $0x0,%eax
    1f82:	e8 17 ff ff ff       	call   1e9e <skip>
    1f87:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1f8b:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    1f90:	75 19                	jne    1fab <read_line+0xab>
    1f92:	48 8d 05 fa 14 00 00 	lea    0x14fa(%rip),%rax        # 3493 <_IO_stdin_used+0x493>
    1f99:	48 89 c7             	mov    %rax,%rdi
    1f9c:	e8 af f0 ff ff       	call   1050 <puts@plt>
    1fa1:	bf 00 00 00 00       	mov    $0x0,%edi
    1fa6:	e8 35 f1 ff ff       	call   10e0 <exit@plt>
    1fab:	8b 05 4f 39 00 00    	mov    0x394f(%rip),%eax        # 5900 <num_input_strings>
    1fb1:	48 63 d0             	movslq %eax,%rdx
    1fb4:	48 89 d0             	mov    %rdx,%rax
    1fb7:	48 c1 e0 02          	shl    $0x2,%rax
    1fbb:	48 01 d0             	add    %rdx,%rax
    1fbe:	48 c1 e0 04          	shl    $0x4,%rax
    1fc2:	48 8d 15 f7 32 00 00 	lea    0x32f7(%rip),%rdx        # 52c0 <input_strings>
    1fc9:	48 01 d0             	add    %rdx,%rax
    1fcc:	48 89 c7             	mov    %rax,%rdi
    1fcf:	e8 8c f0 ff ff       	call   1060 <strlen@plt>
    1fd4:	89 45 f4             	mov    %eax,-0xc(%rbp)
    1fd7:	83 7d f4 4e          	cmpl   $0x4e,-0xc(%rbp)
    1fdb:	7e 59                	jle    2036 <read_line+0x136>
    1fdd:	48 8d 05 d8 14 00 00 	lea    0x14d8(%rip),%rax        # 34bc <_IO_stdin_used+0x4bc>
    1fe4:	48 89 c7             	mov    %rax,%rdi
    1fe7:	e8 64 f0 ff ff       	call   1050 <puts@plt>
    1fec:	8b 05 0e 39 00 00    	mov    0x390e(%rip),%eax        # 5900 <num_input_strings>
    1ff2:	8d 50 01             	lea    0x1(%rax),%edx
    1ff5:	89 15 05 39 00 00    	mov    %edx,0x3905(%rip)        # 5900 <num_input_strings>
    1ffb:	48 63 d0             	movslq %eax,%rdx
    1ffe:	48 89 d0             	mov    %rdx,%rax
    2001:	48 c1 e0 02          	shl    $0x2,%rax
    2005:	48 01 d0             	add    %rdx,%rax
    2008:	48 c1 e0 04          	shl    $0x4,%rax
    200c:	48 8d 15 ad 32 00 00 	lea    0x32ad(%rip),%rdx        # 52c0 <input_strings>
    2013:	48 01 d0             	add    %rdx,%rax
    2016:	48 be 2a 2a 2a 74 72 	movabs $0x636e7572742a2a2a,%rsi
    201d:	75 6e 63 
    2020:	48 bf 61 74 65 64 2a 	movabs $0x2a2a2a64657461,%rdi
    2027:	2a 2a 00 
    202a:	48 89 30             	mov    %rsi,(%rax)
    202d:	48 89 78 08          	mov    %rdi,0x8(%rax)
    2031:	e8 5d 00 00 00       	call   2093 <explode_bomb>
    2036:	8b 05 c4 38 00 00    	mov    0x38c4(%rip),%eax        # 5900 <num_input_strings>
    203c:	8b 55 f4             	mov    -0xc(%rbp),%edx
    203f:	83 ea 01             	sub    $0x1,%edx
    2042:	48 63 ca             	movslq %edx,%rcx
    2045:	48 63 d0             	movslq %eax,%rdx
    2048:	48 89 d0             	mov    %rdx,%rax
    204b:	48 c1 e0 02          	shl    $0x2,%rax
    204f:	48 01 d0             	add    %rdx,%rax
    2052:	48 c1 e0 04          	shl    $0x4,%rax
    2056:	48 8d 14 08          	lea    (%rax,%rcx,1),%rdx
    205a:	48 8d 05 5f 32 00 00 	lea    0x325f(%rip),%rax        # 52c0 <input_strings>
    2061:	48 01 d0             	add    %rdx,%rax
    2064:	c6 00 00             	movb   $0x0,(%rax)
    2067:	8b 05 93 38 00 00    	mov    0x3893(%rip),%eax        # 5900 <num_input_strings>
    206d:	8d 50 01             	lea    0x1(%rax),%edx
    2070:	89 15 8a 38 00 00    	mov    %edx,0x388a(%rip)        # 5900 <num_input_strings>
    2076:	48 63 d0             	movslq %eax,%rdx
    2079:	48 89 d0             	mov    %rdx,%rax
    207c:	48 c1 e0 02          	shl    $0x2,%rax
    2080:	48 01 d0             	add    %rdx,%rax
    2083:	48 c1 e0 04          	shl    $0x4,%rax
    2087:	48 8d 15 32 32 00 00 	lea    0x3232(%rip),%rdx        # 52c0 <input_strings>
    208e:	48 01 d0             	add    %rdx,%rax
    2091:	c9                   	leave  
    2092:	c3                   	ret    

0000000000002093 <explode_bomb>:
    2093:	f3 0f 1e fa          	endbr64 
    2097:	55                   	push   %rbp
    2098:	48 89 e5             	mov    %rsp,%rbp
    209b:	48 8d 05 35 14 00 00 	lea    0x1435(%rip),%rax        # 34d7 <_IO_stdin_used+0x4d7>
    20a2:	48 89 c7             	mov    %rax,%rdi
    20a5:	e8 a6 ef ff ff       	call   1050 <puts@plt>
    20aa:	48 8d 05 2f 14 00 00 	lea    0x142f(%rip),%rax        # 34e0 <_IO_stdin_used+0x4e0>
    20b1:	48 89 c7             	mov    %rax,%rdi
    20b4:	e8 97 ef ff ff       	call   1050 <puts@plt>
    20b9:	bf 08 00 00 00       	mov    $0x8,%edi
    20be:	e8 1d f0 ff ff       	call   10e0 <exit@plt>

00000000000020c3 <phase_defused>:
    20c3:	f3 0f 1e fa          	endbr64 
    20c7:	55                   	push   %rbp
    20c8:	48 89 e5             	mov    %rsp,%rbp
    20cb:	48 83 ec 70          	sub    $0x70,%rsp
    20cf:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    20d6:	00 00 
    20d8:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    20dc:	31 c0                	xor    %eax,%eax
    20de:	8b 05 1c 38 00 00    	mov    0x381c(%rip),%eax        # 5900 <num_input_strings>
    20e4:	83 f8 06             	cmp    $0x6,%eax
    20e7:	0f 85 8d 00 00 00    	jne    217a <phase_defused+0xb7>
    20ed:	48 8d 4d a0          	lea    -0x60(%rbp),%rcx
    20f1:	48 8d 55 98          	lea    -0x68(%rbp),%rdx
    20f5:	48 8d 45 94          	lea    -0x6c(%rbp),%rax
    20f9:	49 89 c8             	mov    %rcx,%r8
    20fc:	48 89 d1             	mov    %rdx,%rcx
    20ff:	48 89 c2             	mov    %rax,%rdx
    2102:	48 8d 05 ee 13 00 00 	lea    0x13ee(%rip),%rax        # 34f7 <_IO_stdin_used+0x4f7>
    2109:	48 89 c6             	mov    %rax,%rsi
    210c:	48 8d 05 9d 32 00 00 	lea    0x329d(%rip),%rax        # 53b0 <input_strings+0xf0>
    2113:	48 89 c7             	mov    %rax,%rdi
    2116:	b8 00 00 00 00       	mov    $0x0,%eax
    211b:	e8 90 ef ff ff       	call   10b0 <__isoc99_sscanf@plt>
    2120:	89 45 9c             	mov    %eax,-0x64(%rbp)
    2123:	83 7d 9c 03          	cmpl   $0x3,-0x64(%rbp)
    2127:	75 42                	jne    216b <phase_defused+0xa8>
    2129:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
    212d:	48 8d 15 cc 13 00 00 	lea    0x13cc(%rip),%rdx        # 3500 <_IO_stdin_used+0x500>
    2134:	48 89 d6             	mov    %rdx,%rsi
    2137:	48 89 c7             	mov    %rax,%rdi
    213a:	e8 69 fc ff ff       	call   1da8 <strings_not_equal>
    213f:	85 c0                	test   %eax,%eax
    2141:	75 28                	jne    216b <phase_defused+0xa8>
    2143:	48 8d 05 be 13 00 00 	lea    0x13be(%rip),%rax        # 3508 <_IO_stdin_used+0x508>
    214a:	48 89 c7             	mov    %rax,%rdi
    214d:	e8 fe ee ff ff       	call   1050 <puts@plt>
    2152:	48 8d 05 d7 13 00 00 	lea    0x13d7(%rip),%rax        # 3530 <_IO_stdin_used+0x530>
    2159:	48 89 c7             	mov    %rax,%rdi
    215c:	e8 ef ee ff ff       	call   1050 <puts@plt>
    2161:	b8 00 00 00 00       	mov    $0x0,%eax
    2166:	e8 cf f9 ff ff       	call   1b3a <secret_phase>
    216b:	48 8d 05 f6 13 00 00 	lea    0x13f6(%rip),%rax        # 3568 <_IO_stdin_used+0x568>
    2172:	48 89 c7             	mov    %rax,%rdi
    2175:	e8 d6 ee ff ff       	call   1050 <puts@plt>
    217a:	90                   	nop
    217b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    217f:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    2186:	00 00 
    2188:	74 05                	je     218f <phase_defused+0xcc>
    218a:	e8 e1 ee ff ff       	call   1070 <__stack_chk_fail@plt>
    218f:	c9                   	leave  
    2190:	c3                   	ret    

Disassembly of section .fini:

0000000000002194 <_fini>:
    2194:	f3 0f 1e fa          	endbr64 
    2198:	48 83 ec 08          	sub    $0x8,%rsp
    219c:	48 83 c4 08          	add    $0x8,%rsp
    21a0:	c3                   	ret    
