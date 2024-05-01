main:                                   # @main
    push    rbp
    sub     rsp, 48
    lea     rbp, [rsp + 48]
    call    __main
    mov     dword ptr [rbp - 4], 0
    lea     rcx, [rip + .L.str]
    call    printf
    xor     eax, eax
    add     rsp, 48
    pop     rbp
    ret
.L.str:                                 # @.str
    .asciz  "Hello World!\n"