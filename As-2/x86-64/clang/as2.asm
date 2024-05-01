.LCPI0_0:
        .quad   0x400921fb54442eea              # double 3.1415926535900001
circle_area:                            # @circle_area
        push    rbp
        mov     rbp, rsp
        movsd   qword ptr [rbp - 8], xmm0
        movsd   xmm0, qword ptr [rbp - 8]       # xmm0 = mem[0],zero
        mulsd   xmm0, qword ptr [rbp - 8]
        movsd   xmm1, qword ptr [rip + .LCPI0_0] # xmm1 = [3.1415926535900001E+0,0.0E+0]
        mulsd   xmm0, xmm1
        pop     rbp
        ret
.LCPI1_0:
        .quad   0x400921fb54442eea              # double 3.1415926535900001
.LCPI1_1:
        .quad   0x4000000000000000              # double 2
circle_circumference:                   # @circle_circumference
        push    rbp
        mov     rbp, rsp
        movsd   qword ptr [rbp - 8], xmm0
        movsd   xmm0, qword ptr [rip + .LCPI1_1] # xmm0 = [2.0E+0,0.0E+0]
        mulsd   xmm0, qword ptr [rbp - 8]
        movsd   xmm1, qword ptr [rip + .LCPI1_0] # xmm1 = [3.1415926535900001E+0,0.0E+0]
        mulsd   xmm0, xmm1
        pop     rbp
        ret
.LCPI2_0:
        .quad   0x400921fb54442eea              # double 3.1415926535900001
.LCPI2_1:
        .quad   0x4010000000000000              # double 4
sphere_surface_area:                    # @sphere_surface_area
        push    rbp
        mov     rbp, rsp
        movsd   qword ptr [rbp - 8], xmm0
        movsd   xmm0, qword ptr [rip + .LCPI2_1] # xmm0 = [4.0E+0,0.0E+0]
        mulsd   xmm0, qword ptr [rbp - 8]
        mulsd   xmm0, qword ptr [rbp - 8]
        movsd   xmm1, qword ptr [rip + .LCPI2_0] # xmm1 = [3.1415926535900001E+0,0.0E+0]
        mulsd   xmm0, xmm1
        pop     rbp
        ret
.LCPI3_0:
        .quad   0x400921fb54442eea              # double 3.1415926535900001
.LCPI3_1:
        .quad   0x3ff5555555555555              # double 1.3333333333333333
sphere_volume:                          # @sphere_volume
        push    rbp
        mov     rbp, rsp
        movsd   qword ptr [rbp - 8], xmm0
        movsd   xmm0, qword ptr [rip + .LCPI3_1] # xmm0 = [1.3333333333333333E+0,0.0E+0]
        mulsd   xmm0, qword ptr [rbp - 8]
        mulsd   xmm0, qword ptr [rbp - 8]
        mulsd   xmm0, qword ptr [rbp - 8]
        movsd   xmm1, qword ptr [rip + .LCPI3_0] # xmm1 = [3.1415926535900001E+0,0.0E+0]
        mulsd   xmm0, xmm1
        pop     rbp
        ret
PI:
        .quad   0x400921fb54442eea              # double 3.1415926535900001