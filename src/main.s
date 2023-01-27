        bits 64

        extern exit

%include "version.s"

        section .text
main:
        push rdi
        call get_version

        mov rdi, 0
        call exit

        global main
