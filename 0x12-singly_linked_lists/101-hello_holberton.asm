section .data
    format db "Hello, Holberton", 0

section .text
    global main
    extern printf

main:
    mov rdi, format
    call printf
    ret
