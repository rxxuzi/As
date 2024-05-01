.LCPI0_0:
        .quad   0x400921fb54442eea              #  3.1415926535900001
circle_area:                            # 
        push    rbp
        mov     rbp, rsp
        movsd   qword ptr [rbp - 8], xmm0
        movsd   xmm0, qword ptr [rbp - 8]       # xmm0 = mem[0],zero
        mulsd   xmm0, qword ptr [rbp - 8]
        movsd   xmm1, qword ptr [rip + .LCPI0_0] # xmm1 = mem[0],zero
        mulsd   xmm0, xmm1
        pop     rbp
        ret
.LCPI1_0:
        .quad   0x400921fb54442eea              #  3.1415926535900001
.LCPI1_1:
        .quad   0x4000000000000000              #  2
circle_circumference:                   # 
        push    rbp
        mov     rbp, rsp
        movsd   qword ptr [rbp - 8], xmm0
        movsd   xmm0, qword ptr [rip + .LCPI1_1] # xmm0 = mem[0],zero
        mulsd   xmm0, qword ptr [rbp - 8]
        movsd   xmm1, qword ptr [rip + .LCPI1_0] # xmm1 = mem[0],zero
        mulsd   xmm0, xmm1
        pop     rbp
        ret
.LCPI2_0:
        .quad   0x400921fb54442eea              #  3.1415926535900001
.LCPI2_1:
        .quad   0x4010000000000000              #  4
sphere_surface_area:                    # 
        push    rbp
        mov     rbp, rsp
        movsd   qword ptr [rbp - 8], xmm0
        movsd   xmm0, qword ptr [rip + .LCPI2_1] # xmm0 = mem[0],zero
        mulsd   xmm0, qword ptr [rbp - 8]
        mulsd   xmm0, qword ptr [rbp - 8]
        movsd   xmm1, qword ptr [rip + .LCPI2_0] # xmm1 = mem[0],zero
        mulsd   xmm0, xmm1
        pop     rbp
        ret
.LCPI3_0:
        .quad   0x400921fb54442eea              #  3.1415926535900001
.LCPI3_1:
        .quad   0x3ff5555555555555              #  1.3333333333333333
sphere_volume:                          # 
        push    rbp
        mov     rbp, rsp
        movsd   qword ptr [rbp - 8], xmm0
        movsd   xmm0, qword ptr [rip + .LCPI3_1] # xmm0 = mem[0],zero
        mulsd   xmm0, qword ptr [rbp - 8]
        mulsd   xmm0, qword ptr [rbp - 8]
        mulsd   xmm0, qword ptr [rbp - 8]
        movsd   xmm1, qword ptr [rip + .LCPI3_0] # xmm1 = mem[0],zero
        mulsd   xmm0, xmm1
        pop     rbp
        ret
PI:
        .quad   0x400921fb54442eea              #  3.1415926535900001