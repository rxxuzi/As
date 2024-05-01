PI:
        .word   1413754602
        .word   1074340347
circle_area:
        sub     sp, sp, #16
        str     d0, [sp, 8]
        ldr     d0, [sp, 8]
        fmul    d0, d0, d0
        adrp    x0, .LC0
        ldr     d1, [x0, #:lo12:.LC0]
        fmul    d0, d0, d1
        add     sp, sp, 16
        ret
circle_circumference:
        sub     sp, sp, #16
        str     d0, [sp, 8]
        ldr     d0, [sp, 8]
        fadd    d0, d0, d0
        adrp    x0, .LC0
        ldr     d1, [x0, #:lo12:.LC0]
        fmul    d0, d0, d1
        add     sp, sp, 16
        ret
sphere_surface_area:
        sub     sp, sp, #16
        str     d0, [sp, 8]
        ldr     d1, [sp, 8]
        fmov    d0, 4.0e+0
        fmul    d1, d1, d0
        ldr     d0, [sp, 8]
        fmul    d0, d1, d0
        adrp    x0, .LC0
        ldr     d1, [x0, #:lo12:.LC0]
        fmul    d0, d0, d1
        add     sp, sp, 16
        ret
sphere_volume:
        sub     sp, sp, #16
        str     d0, [sp, 8]
        ldr     d0, [sp, 8]
        mov     x0, 6148914691236517205
        movk    x0, 0x3ff5, lsl 48
        fmov    d1, x0
        fmul    d1, d0, d1
        ldr     d0, [sp, 8]
        fmul    d1, d1, d0
        ldr     d0, [sp, 8]
        fmul    d0, d1, d0
        adrp    x0, .LC0
        ldr     d1, [x0, #:lo12:.LC0]
        fmul    d0, d0, d1
        add     sp, sp, 16
        ret
.LC0:
        .word   1413754602
        .word   1074340347