PI:
        .long   1413754602
        .long   1074340347
circle_area:
        push    rbp
        mov     rbp, rsp
        movsd   QWORD PTR 16[rbp], xmm0
        movsd   xmm0, QWORD PTR 16[rbp]
        movapd  xmm1, xmm0
        mulsd   xmm1, xmm0
        movsd   xmm0, QWORD PTR .LC0[rip]
        mulsd   xmm0, xmm1
        movq    rax, xmm0
        movq    xmm0, rax
        pop     rbp
        ret
circle_circumference:
        push    rbp
        mov     rbp, rsp
        movsd   QWORD PTR 16[rbp], xmm0
        movsd   xmm0, QWORD PTR 16[rbp]
        movapd  xmm1, xmm0
        addsd   xmm1, xmm0
        movsd   xmm0, QWORD PTR .LC0[rip]
        mulsd   xmm0, xmm1
        movq    rax, xmm0
        movq    xmm0, rax
        pop     rbp
        ret
sphere_surface_area:
        push    rbp
        mov     rbp, rsp
        movsd   QWORD PTR 16[rbp], xmm0
        movsd   xmm1, QWORD PTR 16[rbp]
        movsd   xmm0, QWORD PTR .LC1[rip]
        mulsd   xmm0, xmm1
        movapd  xmm1, xmm0
        mulsd   xmm1, QWORD PTR 16[rbp]
        movsd   xmm0, QWORD PTR .LC0[rip]
        mulsd   xmm0, xmm1
        movq    rax, xmm0
        movq    xmm0, rax
        pop     rbp
        ret
sphere_volume:
        push    rbp
        mov     rbp, rsp
        movsd   QWORD PTR 16[rbp], xmm0
        movsd   xmm1, QWORD PTR 16[rbp]
        movsd   xmm0, QWORD PTR .LC2[rip]
        mulsd   xmm0, xmm1
        mulsd   xmm0, QWORD PTR 16[rbp]
        movapd  xmm1, xmm0
        mulsd   xmm1, QWORD PTR 16[rbp]
        movsd   xmm0, QWORD PTR .LC0[rip]
        mulsd   xmm0, xmm1
        movq    rax, xmm0
        movq    xmm0, rax
        pop     rbp
        ret
.LC0:
        .long   1413754602
        .long   1074340347
.LC1:
        .long   0
        .long   1074790400
.LC2:
        .long   1431655765
        .long   1073042773