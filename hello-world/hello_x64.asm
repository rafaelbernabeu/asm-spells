section	.text
   global _start     ;entry point for linker (ld)
	
_start:	
   mov  rax, 1       ; sys_write
   mov  rdi, 1       ; stdout
   mov  rsi, msg     ; message to write
   mov  rdx, msgLen  ; message length
   syscall           ; call kernel

   mov  rax, 60      ; sys_exit
   mov  rdi, 0       ; error code 0 (success)
   syscall           ; call kernel

section	.data
msg     db 'Hello, world!', 10  ; define byte, 
msgLen  equ $-msg               ; equate current position - msg position (length of the string)