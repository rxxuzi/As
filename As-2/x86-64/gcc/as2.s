PI:
        .long   1413754602
        .long   1074340347
circle_area:
        pushq   %rbp
        movq    %rsp, %rbp
        movsd   %xmm0, -8(%rbp)
        movsd   -8(%rbp), %xmm0
        movapd  %xmm0, %xmm1
        mulsd   %xmm0, %xmm1
        movsd   .LC0(%rip), %xmm0
        mulsd   %xmm1, %xmm0
        movq    %xmm0, %rax
        movq    %rax, %xmm0
        popq    %rbp
        ret
circle_circumference:
        pushq   %rbp
        movq    %rsp, %rbp
        movsd   %xmm0, -8(%rbp)
        movsd   -8(%rbp), %xmm0
        movapd  %xmm0, %xmm1
        addsd   %xmm0, %xmm1
        movsd   .LC0(%rip), %xmm0
        mulsd   %xmm1, %xmm0
        movq    %xmm0, %rax
        movq    %rax, %xmm0
        popq    %rbp
        ret
sphere_surface_area:
        pushq   %rbp
        movq    %rsp, %rbp
        movsd   %xmm0, -8(%rbp)
        movsd   -8(%rbp), %xmm1
        movsd   .LC1(%rip), %xmm0
        mulsd   %xmm1, %xmm0
        movapd  %xmm0, %xmm1
        mulsd   -8(%rbp), %xmm1
        movsd   .LC0(%rip), %xmm0
        mulsd   %xmm1, %xmm0
        movq    %xmm0, %rax
        movq    %rax, %xmm0
        popq    %rbp
        ret
sphere_volume:
        pushq   %rbp
        movq    %rsp, %rbp
        movsd   %xmm0, -8(%rbp)
        movsd   -8(%rbp), %xmm1
        movsd   .LC2(%rip), %xmm0
        mulsd   %xmm1, %xmm0
        mulsd   -8(%rbp), %xmm0
        movapd  %xmm0, %xmm1
        mulsd   -8(%rbp), %xmm1
        movsd   .LC0(%rip), %xmm0
        mulsd   %xmm1, %xmm0
        movq    %xmm0, %rax
        movq    %rax, %xmm0
        popq    %rbp
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