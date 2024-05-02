partition:                              # 
        pushq   %rbp
        movq    %rsp, %rbp
        movq    %rdi, -8(%rbp)
        movl    %esi, -12(%rbp)
        movl    %edx, -16(%rbp)
        movq    -8(%rbp), %rax
        movslq  -16(%rbp), %rcx
        movl    (%rax,%rcx,4), %eax
        movl    %eax, -20(%rbp)
        movl    -12(%rbp), %eax
        movl    %eax, -28(%rbp)
        movl    -12(%rbp), %eax
        movl    %eax, -32(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
        movl    -32(%rbp), %eax
        cmpl    -16(%rbp), %eax
        jge     .LBB0_6
        movq    -8(%rbp), %rax
        movslq  -32(%rbp), %rcx
        movl    (%rax,%rcx,4), %eax
        cmpl    -20(%rbp), %eax
        jg      .LBB0_4
        movq    -8(%rbp), %rax
        movslq  -32(%rbp), %rcx
        movl    (%rax,%rcx,4), %eax
        movl    %eax, -24(%rbp)
        movq    -8(%rbp), %rax
        movslq  -28(%rbp), %rcx
        movl    (%rax,%rcx,4), %edx
        movq    -8(%rbp), %rax
        movslq  -32(%rbp), %rcx
        movl    %edx, (%rax,%rcx,4)
        movl    -24(%rbp), %edx
        movq    -8(%rbp), %rax
        movslq  -28(%rbp), %rcx
        movl    %edx, (%rax,%rcx,4)
        movl    -28(%rbp), %eax
        addl    $1, %eax
        movl    %eax, -28(%rbp)
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
        jmp     .LBB0_5
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
        movl    -32(%rbp), %eax
        addl    $1, %eax
        movl    %eax, -32(%rbp)
        jmp     .LBB0_1
.LBB0_6:
        movq    -8(%rbp), %rax
        movslq  -28(%rbp), %rcx
        movl    (%rax,%rcx,4), %edx
        movq    -8(%rbp), %rax
        movslq  -16(%rbp), %rcx
        movl    %edx, (%rax,%rcx,4)
        movl    -20(%rbp), %edx
        movq    -8(%rbp), %rax
        movslq  -28(%rbp), %rcx
        movl    %edx, (%rax,%rcx,4)
        movl    -28(%rbp), %eax
        popq    %rbp
        retq
quick_sort:                             # 
        pushq   %rbp
        movq    %rsp, %rbp
        subq    $32, %rsp
        movq    %rdi, -8(%rbp)
        movl    %esi, -12(%rbp)
        movl    %edx, -16(%rbp)
        movl    -12(%rbp), %eax
        cmpl    -16(%rbp), %eax
        jge     .LBB1_2
        movq    -8(%rbp), %rdi
        movl    -12(%rbp), %esi
        movl    -16(%rbp), %edx
        callq   partition
        movl    %eax, -20(%rbp)
        movq    -8(%rbp), %rdi
        movl    -12(%rbp), %esi
        movl    -20(%rbp), %edx
        subl    $1, %edx
        callq   quick_sort
        movq    -8(%rbp), %rdi
        movl    -20(%rbp), %esi
        addl    $1, %esi
        movl    -16(%rbp), %edx
        callq   quick_sort
.LBB1_2:
        addq    $32, %rsp
        popq    %rbp
        retq