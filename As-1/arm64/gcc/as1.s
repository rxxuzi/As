.LC0:
    .string "Hello World!"
main:
    stp     x29, x30, [sp, -16]!
    mov     x29, sp
    adrp    x0, .LC0
    add     x0, x0, :lo12:.LC0
    bl      puts
    mov     w0, 0
    ldp     x29, x30, [sp], 16
    ret