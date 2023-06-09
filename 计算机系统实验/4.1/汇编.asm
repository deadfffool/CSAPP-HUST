.686     
.model flat, stdcall
 ExitProcess PROTO STDCALL :DWORD
 includelib  kernel32.lib  ; ExitProcess 在 kernel32.lib中实现
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
  buf2   db  12 dup(0)   ; 12个字节的空间，初值均为 0 
.STACK 200
.CODE
main proc c
   MOV  ESI,0
   MOV  EDI,0 
L1:
   MOV  EAX, dword ptr buf1[ESI*4]   ;如果总数不是12个字节，还能每次传送4个字节吗？
   MOV  dword ptr buf2[ESI*4],EAX
   INC  ESI
   CMP  ESI, 3
   JNZ  L1
   invoke printf,offset lpFmt,OFFSET buf1
   invoke printf,offset lpFmt,OFFSET buf2
   invoke ExitProcess, 0
main endp
END
