section	.text
   global _start      ;must be declared for linker (ld)
	
_start:	             ;tells linker entry point
   mov	eax, 4       ;system call number (sys_write)
   mov	ebx, 1       ;file descriptor (stdout)
   mov	ecx, msg     ;message to write
   mov	edx, len     ;message length
   int	0x80         ;interrupt interruptionNumber (call kernel)
	
   mov	eax, 1       ;system call number (sys_exit)
   int	0x80         ;interrupt interruptionNumber (call kernel)

section	.data
   msg db 'Hello, world!', 0xa  ;string to be printed
   len equ $ - msg              ;length of the string