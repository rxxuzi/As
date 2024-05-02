partition:
        pushq   %rbp
        movq    %rsp, %rbp
        subq    $16, %rsp
        movq    %rcx, 16(%rbp)
        movl    %edx, 24(%rbp)
        movl    %r8d, 32(%rbp)
        movl    32(%rbp), %eax
        cltq
        leaq    0(,%rax,4), %rdx
        movq    16(%rbp), %rax
        addq    %rdx, %rax
        movl    (%rax), %eax
        movl    %eax, -12(%rbp)
        movl    24(%rbp), %eax
        movl    %eax, -4(%rbp)
        movl    24(%rbp), %eax
        movl    %eax, -8(%rbp)
        jmp     .L2
.L4:
        movl    -8(%rbp), %eax
        cltq
        leaq    0(,%rax,4), %rdx
        movq    16(%rbp), %rax
        addq    %rdx, %rax
        movl    (%rax), %eax
        cmpl    %eax, -12(%rbp)
        jl      .L3
        movl    -8(%rbp), %eax
        cltq
        leaq    0(,%rax,4), %rdx
        movq    16(%rbp), %rax
        addq    %rdx, %rax
        movl    (%rax), %eax
        movl    %eax, -16(%rbp)
        movl    -4(%rbp), %eax
        cltq
        leaq    0(,%rax,4), %rdx
        movq    16(%rbp), %rax
        addq    %rdx, %rax
        movl    -8(%rbp), %edx
        movslq  %edx, %rdx
        leaq    0(,%rdx,4), %rcx
        movq    16(%rbp), %rdx
        addq    %rcx, %rdx
        movl    (%rax), %eax
        movl    %eax, (%rdx)
        movl    -4(%rbp), %eax
        cltq
        leaq    0(,%rax,4), %rdx
        movq    16(%rbp), %rax
        addq    %rax, %rdx
        movl    -16(%rbp), %eax
        movl    %eax, (%rdx)
        addl    $1, -4(%rbp)
.L3:
        addl    $1, -8(%rbp)
.L2:
        movl    -8(%rbp), %eax
        cmpl    32(%rbp), %eax
        jl      .L4
        movl    -4(%rbp), %eax
        cltq
        leaq    0(,%rax,4), %rdx
        movq    16(%rbp), %rax
        addq    %rdx, %rax
        movl    32(%rbp), %edx
        movslq  %edx, %rdx
        leaq    0(,%rdx,4), %rcx
        movq    16(%rbp), %rdx
        addq    %rcx, %rdx
        movl    (%rax), %eax
        movl    %eax, (%rdx)
        movl    -4(%rbp), %eax
        cltq
        leaq    0(,%rax,4), %rdx
        movq    16(%rbp), %rax
        addq    %rax, %rdx
        movl    -12(%rbp), %eax
        movl    %eax, (%rdx)
        movl    -4(%rbp), %eax
        addq    $16, %rsp
        popq    %rbp
        ret
quick_sort:
        pushq   %rbp
        movq    %rsp, %rbp
        subq    $48, %rsp
        movq    %rcx, 16(%rbp)
        movl    %edx, 24(%rbp)
        movl    %r8d, 32(%rbp)
        movl    24(%rbp), %eax
        cmpl    32(%rbp), %eax
        jge     .L8
        movl    32(%rbp), %ecx
        movl    24(%rbp), %edx
        movq    16(%rbp), %rax
        movl    %ecx, %r8d
        movq    %rax, %rcx
        call    partition
        movl    %eax, -4(%rbp)
        movl    -4(%rbp), %eax
        leal    -1(%rax), %ecx
        movl    24(%rbp), %edx
        movq    16(%rbp), %rax
        movl    %ecx, %r8d
        movq    %rax, %rcx
        call    quick_sort
        movl    -4(%rbp), %eax
        leal    1(%rax), %edx
        movl    32(%rbp), %ecx
        movq    16(%rbp), %rax
        movl    %ecx, %r8d
        movq    %rax, %rcx
        call    quick_sort
.L8:
        nop
        addq    $48, %rsp
        popq    %rbp
        ret