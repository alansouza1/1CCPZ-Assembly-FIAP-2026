section .data

num1 db 3
num2 db 4

msg db "Resultado: "
tam equ $-msg

section .bss

res resb 1

section .text

global _start

_start:

    mov al, [num1]      ; carrega num1 no registrador AL
    add al, [num2]      ; soma num2 ao valor de AL
    sub al, 2

    add al, 48          ; converte nÃºmero para ASCII
    mov [res], al       ; salva resultado na memÃ³ria

    mov eax,4           ; syscall write
    mov ebx,1           ; saÃ­da = tela
    mov ecx,msg         ; endereÃ§o da mensagem
    mov edx,tam         ; tamanho da mensagem
    int 0x80            ; executa chamada do sistema

    mov eax,4           ; syscall write novamente
    mov ebx,1           ; saÃ­da = tela
    mov ecx,res         ; endereÃ§o do resultado
    mov edx,1           ; tamanho = 1 byte
    int 0x80            ; imprime o nÃºmero

    mov eax,1           ; syscall exit
    int 0x80            ; encerra programa
