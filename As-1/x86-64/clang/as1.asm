main:                                   # @main
    push    rbp
    mov     rbp, rsp
    sub     rsp, 16
    mov     dword ptr [rbp - 4], 0
    lea     rdi, [rip + .L.str]
    mov     al, 0
    call    printf@PLT
    xor     eax, eax
    add     rsp, 16
    pop     rbp
    ret
.L.str:
    .asciz  "Hello World!\n"
