        bits 64

        extern printf

        section .rodata

fmt:
        db "%d", 10, 0

        section .text

get_version:
        push rbp
        mov rbp, rsp

        mov rax, 0
        mov rdi, fmt
        pop rsi
        call printf

        leave
        ret

