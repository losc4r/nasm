section .data
    num1 dq 10
    num2 dq 20
    result dq 0
    msg db 'O Resultado é',10

section .text
    global _start

_start: 
    mov rax,[num1]
    add rax,[num2]
    mov [result],rax
    mov rsi,msg
    syscall       
    
    mov rax,60
    xor rdi,rdi
    syscall