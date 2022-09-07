# asm-spells


.text  -> code
.bss   -> block starting symbol (variables)
.data  -> constants


Kernel Interface
x86-32 aka i386 Linux System Call convention:

In x86-32 parameters for Linux system call are passed using registers. %eax for syscall_number. %ebx, %ecx, %edx, %esi, %edi, %ebp are used for passing 6 parameters to system calls.

The return value is in %eax. All other registers (including EFLAGS) are preserved across the int $0x80.

I took following snippet from the Linux Assembly Tutorial but I'm doubtful about this. If any one can show an example, it would be great.

If there are more than six arguments, %ebx must contain the memory location where the list of arguments is stored - but don't worry about this because it's unlikely that you'll use a syscall with more than six arguments.




Kernel Interface
x86-64 Linux System Call convention:

1) User-level applications use as integer registers for passing the sequence %rdi, %rsi, %rdx, %rcx, %r8 and %r9. The kernel interface uses %rdi, %rsi, %rdx, %r10, %r8 and %r9.
2) A system-call is done via the syscall instruction. This clobbers %rcx and %r11 as well as the %rax return value, but other registers are preserved.
3) The number of the syscall has to be passed in register %rax.
4) System-calls are limited to six arguments, no argument is passed directly on the stack.
5) Returning from the syscall, register %rax contains the result of the system-call. A value in the range between -4095 and -1 indicates an error, it is -errno.
6) Only values of class INTEGER or class MEMORY are passed to the kernel.