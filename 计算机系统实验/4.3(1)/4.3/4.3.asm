.686     
.model flat, stdcall
 ExitProcess PROTO STDCALL :DWORD
 includelib  kernel32.lib  ; ExitProcess 在 kernel32.lib中实现
 printf      PROTO C :VARARG
 scanf      PROTO C :VARARG
 includelib  libcmt.lib
 includelib  legacy_stdio_definitions.lib
.DATA
 lpFmt db "%s",0ah, 0dh, 0
 lsFmt db "%s", 0
 buf1 db 10 dup(0), 0
 buf2 db "abcdefghij", 0
 buf3 db "please input(maxlen 10):", 0
 buf4 db "Correct!", 0
 buf5 db "Incorrect Password!", 0
.STACK 200
.CODE
main proc c 
 invoke printf,offset lpFmt,OFFSET buf3
 invoke scanf,offset lsFmt,OFFSET buf1
 mov  ecx,0
 L1:
	mov al , byte ptr buf1[ecx]
	mov bl , byte ptr buf2[ecx]
	cmp al , bl
	jnz L2
	inc ecx
	cmp ecx , 10
	jz L3
	jmp L1

L2:
	invoke printf , offset lpFmt , offset buf5
	jmp exit
L3:
	invoke printf , offset lpFmt , offset buf4
	jmp exit
exit:
	invoke ExitProcess, 0
main endp
END