.LCPI0_0:
        .quad   0x400921fb54442eea              #  3.1415926535900001
circle_area:                            # 
        pushq   %rbp
        movq    %rsp, %rbp
        movsd   %xmm0, -8(%rbp)
        movsd   -8(%rbp), %xmm0                 # xmm0 = mem[0],zero
        mulsd   -8(%rbp), %xmm0
        movsd   .LCPI0_0(%rip), %xmm1           # xmm1 = mem[0],zero
        mulsd   %xmm1, %xmm0
        popq    %rbp
        retq
.LCPI1_0:
        .quad   0x400921fb54442eea              #  3.1415926535900001
.LCPI1_1:
        .quad   0x4000000000000000              #  2
circle_circumference:                   # 
        pushq   %rbp
        movq    %rsp, %rbp
        movsd   %xmm0, -8(%rbp)
        movsd   .LCPI1_1(%rip), %xmm0           # xmm0 = mem[0],zero
        mulsd   -8(%rbp), %xmm0
        movsd   .LCPI1_0(%rip), %xmm1           # xmm1 = mem[0],zero
        mulsd   %xmm1, %xmm0
        popq    %rbp
        retq
.LCPI2_0:
        .quad   0x400921fb54442eea              #  3.1415926535900001
.LCPI2_1:
        .quad   0x4010000000000000              #  4
sphere_surface_area:                    # 
        pushq   %rbp
        movq    %rsp, %rbp
        movsd   %xmm0, -8(%rbp)
        movsd   .LCPI2_1(%rip), %xmm0           # xmm0 = mem[0],zero
        mulsd   -8(%rbp), %xmm0
        mulsd   -8(%rbp), %xmm0
        movsd   .LCPI2_0(%rip), %xmm1           # xmm1 = mem[0],zero
        mulsd   %xmm1, %xmm0
        popq    %rbp
        retq
.LCPI3_0:
        .quad   0x400921fb54442eea              #  3.1415926535900001
.LCPI3_1:
        .quad   0x3ff5555555555555              #  1.3333333333333333
sphere_volume:                          # 
        pushq   %rbp
        movq    %rsp, %rbp
        movsd   %xmm0, -8(%rbp)
        movsd   .LCPI3_1(%rip), %xmm0           # xmm0 = mem[0],zero
        mulsd   -8(%rbp), %xmm0
        mulsd   -8(%rbp), %xmm0
        mulsd   -8(%rbp), %xmm0
        movsd   .LCPI3_0(%rip), %xmm1           # xmm1 = mem[0],zero
        mulsd   %xmm1, %xmm0
        popq    %rbp
        retq
PI:
        .quad   0x400921fb54442eea              #  3.1415926535900001