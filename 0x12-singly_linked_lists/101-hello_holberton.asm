section .data
    format db "Hello, Holberton", 10, 0  ; 10 represents a newline character

section .text
    global main
    extern printf

main:
    sub rsp, 8    ; Align the stack
    mov rdi, format
    call printf
    add rsp, 8    ; Restore the stack
    ret
