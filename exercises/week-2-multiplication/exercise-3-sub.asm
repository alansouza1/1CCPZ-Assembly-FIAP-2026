section .data

num1 db 4
num2 db 3
num3 db 2

msg db "Resultado: "
tam equ $-msg

section .bss

res resb 1

section .text

global _start

_start:

    mov al, [num1]
    add al, [num2]

    add al, 48
    sub al,[num3]
    mov [res], al

    mov eax,4
    mov ebx,1
    mov ecx,msg
    mov edx,tam
    int 0x80

    mov eax,4
    mov ebx,1
    mov ecx,res
    mov edx,1
    int 0x80

    mov eax,1
    int 0x80

