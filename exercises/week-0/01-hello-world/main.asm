section .data
    msg db "Hello, World!", 0x0A ; 0x0A is newline
    msg_len equ $ - msg

section .text
    global _start

_start:
    ; syscall: write(1, msg, msg_len)
    mov rax, 1          ; syscall number for write
    mov rdi, 1          ; file descriptor 1 (stdout)
    mov rsi, msg        ; pointer to the message
    mov rdx, msg_len    ; message length
    syscall

    ; syscall: exit(0)
    mov rax, 60         ; syscall number for exit
    xor rdi, rdi        ; exit code 0
    syscall
