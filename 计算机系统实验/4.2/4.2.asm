.686     
.model flat, stdcall
 ExitProcess PROTO STDCALL :DWORD
 includelib  kernel32.lib  ; ExitProcess �� kernel32.lib��ʵ��
 printf      PROTO C :VARARG
 includelib  libcmt.lib
 includelib  legacy_stdio_definitions.lib
.DATA
lpFmt	db	"%s",0ah, 0dh, 0
  X   DB  10, 255, -1  
  Y   DW  10, 255, -1
  Z   DD  10, 255, -1
  U   DW  ($-Z)/4
  STR1 DB  'Good', 0
  P   DD  X,  Y
  Q   DB   2 DUP (5, 6)
  buf1   db  'Hello World',0
  buf2   db  12 dup(0)   ; 12���ֽڵĿռ䣬��ֵ��Ϊ 0 
.STACK 200
.CODE
main proc c
   MOV  EAX, dword ptr buf1   
   MOV  dword ptr buf2,EAX
   MOV  EAX, dword ptr buf1+4
   MOV  dword ptr buf2+4,EAX
   MOV  EAX, dword ptr buf1+8
   MOV  dword ptr buf2+8,EAX
   invoke printf,offset lpFmt,OFFSET buf1
   invoke printf,offset lpFmt,OFFSET buf2
   invoke ExitProcess, 0
main endp
END
