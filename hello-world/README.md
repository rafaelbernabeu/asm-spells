# hello-world

nasm -f elf hello_x86.asm
ld -m elf_i386 -s -o hello_x86 hello_x86.o

nasm -f elf64 hello_x64.asm
ld -m elf_x86_64 -s -o hello_x64 hello_x64.o 