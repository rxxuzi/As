.LC0:
    .string "Hello World!"
main:
    push    rbp
    mov     rbp, rsp
    mov     edi, OFFSET FLAT:.LC0
    call    puts
    mov     eax, 0
    pop     rbp
    ret