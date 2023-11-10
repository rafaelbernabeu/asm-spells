all:	x86 x64 arm64

elf32:	hello_x64.asm
	nasm -f elf32 hello_x86.asm                                                                               
	ld hello_x86.o -m elf_i386 -s -o hello_x86

elf64:	hello_x86.asm
	nasm -f elf64 hello_x64.asm
	ld hello_x64.o -m elf_x86_64 -s -o hello_x64 

arm64:	hello_arm.asm
	as -o hello_arm.o hello_arm.asm
	ld hello_arm.o -arch arm64 -e _start -platform_version macOS 15.00 15.00 -o hello.arm