section .data
    format db "Hello, Holberton", 0
    format_len equ $ - format
    new_line db 10

section .text
    global main
    extern printf

main:
    sub rsp, 8
    lea rdi, [rel format]
    call printf
    add rsp, 8
    ret
