section .data
hello db "hello world", 0

section .text
global _start
_start:
    mov al, 4
    xor ebx, ebx
    inc ebx
    mov ecx, hello
    xor edx, edx
    mov dl, 11
    int 0x80               ;; sys_write(1, hello, 11)
    xor eax, eax
    inc eax
    int 0x80               ;; sys_exit(1)
