        bits 64

        extern exit

%define OK 0

        SECTION .text

main:
        mov rdi, OK
        call exit

        global main
