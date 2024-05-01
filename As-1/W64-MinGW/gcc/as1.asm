.LC0:
    .ascii "Hello World!\0"
main:
    push    rbp
    mov     rbp, rsp
    sub     rsp, 32
    call    __main
    lea     rax, .LC0[rip]
    mov     rcx, rax
    call    puts
    mov     eax, 0
    add     rsp, 32
    pop     rbp
    ret