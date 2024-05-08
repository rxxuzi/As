k:
        .long   1116352408
        .long   1899447441
        .long   -1245643825
        .long   -373957723
        .long   961987163
        .long   1508970993
        .long   -1841331548
        .long   -1424204075
        .long   -670586216
        .long   310598401
        .long   607225278
        .long   1426881987
        .long   1925078388
        .long   -2132889090
        .long   -1680079193
        .long   -1046744716
        .long   -459576895
        .long   -272742522
        .long   264347078
        .long   604807628
        .long   770255983
        .long   1249150122
        .long   1555081692
        .long   1996064986
        .long   -1740746414
        .long   -1473132947
        .long   -1341970488
        .long   -1084653625
        .long   -958395405
        .long   -710438585
        .long   113926993
        .long   338241895
        .long   666307205
        .long   773529912
        .long   1294757372
        .long   1396182291
        .long   1695183700
        .long   1986661051
        .long   -2117940946
        .long   -1838011259
        .long   -1564481375
        .long   -1474664885
        .long   -1035236496
        .long   -949202525
        .long   -778901479
        .long   -694614492
        .long   -200395387
        .long   275423344
        .long   430227734
        .long   506948616
        .long   659060556
        .long   883997877
        .long   958139571
        .long   1322822218
        .long   1537002063
        .long   1747873779
        .long   1955562222
        .long   2024104815
        .long   -2067236844
        .long   -1933114872
        .long   -1866530822
        .long   -1538233109
        .long   -1090935817
        .long   -965641998
h0:
        .long   1779033703
        .long   -1150833019
        .long   1013904242
        .long   -1521486534
        .long   1359893119
        .long   -1694144372
        .long   528734635
        .long   1541459225
SHA256Init:
        pushq   %rbp
        movq    %rsp, %rbp
        movq    %rdi, -24(%rbp)
        movq    -24(%rbp), %rax
        movl    $0, 64(%rax)
        movq    -24(%rbp), %rax
        movl    $0, 68(%rax)
        movq    -24(%rbp), %rax
        movl    $0, 72(%rax)
        movq    $0, -8(%rbp)
        jmp     .L2
.L3:
        movq    -8(%rbp), %rax
        movl    h0(,%rax,4), %edx
        movq    -24(%rbp), %rax
        movq    -8(%rbp), %rcx
        addq    $16, %rcx
        movl    %edx, 12(%rax,%rcx,4)
        addq    $1, -8(%rbp)
.L2:
        cmpq    $7, -8(%rbp)
        jbe     .L3
        nop
        nop
        popq    %rbp
        ret
SHA256Transform:
        pushq   %rbp
        movq    %rsp, %rbp
        subq    $200, %rsp
        movq    %rdi, -312(%rbp)
        movq    %rsi, -320(%rbp)
        movl    $0, -36(%rbp)
        movl    $0, -40(%rbp)
        jmp     .L5
.L6:
        movl    -40(%rbp), %eax
        movslq  %eax, %rdx
        movq    -320(%rbp), %rax
        addq    %rdx, %rax
        movzbl  (%rax), %eax
        movzbl  %al, %eax
        sall    $24, %eax
        movl    %eax, %edx
        movl    -40(%rbp), %eax
        cltq
        leaq    1(%rax), %rcx
        movq    -320(%rbp), %rax
        addq    %rcx, %rax
        movzbl  (%rax), %eax
        movzbl  %al, %eax
        sall    $16, %eax
        orl     %eax, %edx
        movl    -40(%rbp), %eax
        cltq
        leaq    2(%rax), %rcx
        movq    -320(%rbp), %rax
        addq    %rcx, %rax
        movzbl  (%rax), %eax
        movzbl  %al, %eax
        sall    $8, %eax
        orl     %eax, %edx
        movl    -40(%rbp), %eax
        cltq
        leaq    3(%rax), %rcx
        movq    -320(%rbp), %rax
        addq    %rcx, %rax
        movzbl  (%rax), %eax
        movzbl  %al, %eax
        orl     %edx, %eax
        movl    %eax, %edx
        movl    -36(%rbp), %eax
        cltq
        movl    %edx, -304(%rbp,%rax,4)
        addl    $1, -36(%rbp)
        addl    $4, -40(%rbp)
.L5:
        cmpl    $15, -36(%rbp)
        jle     .L6
        jmp     .L7
.L8:
        movl    -36(%rbp), %eax
        subl    $2, %eax
        cltq
        movl    -304(%rbp,%rax,4), %eax
        roll    $15, %eax
        movl    %eax, %edx
        movl    -36(%rbp), %eax
        subl    $2, %eax
        cltq
        movl    -304(%rbp,%rax,4), %eax
        roll    $13, %eax
        xorl    %eax, %edx
        movl    -36(%rbp), %eax
        subl    $2, %eax
        cltq
        movl    -304(%rbp,%rax,4), %eax
        shrl    $10, %eax
        xorl    %eax, %edx
        movl    -36(%rbp), %eax
        subl    $7, %eax
        cltq
        movl    -304(%rbp,%rax,4), %eax
        addl    %eax, %edx
        movl    -36(%rbp), %eax
        subl    $15, %eax
        cltq
        movl    -304(%rbp,%rax,4), %eax
        rorl    $7, %eax
        movl    %eax, %ecx
        movl    -36(%rbp), %eax
        subl    $15, %eax
        cltq
        movl    -304(%rbp,%rax,4), %eax
        roll    $14, %eax
        xorl    %eax, %ecx
        movl    -36(%rbp), %eax
        subl    $15, %eax
        cltq
        movl    -304(%rbp,%rax,4), %eax
        shrl    $3, %eax
        xorl    %ecx, %eax
        addl    %eax, %edx
        movl    -36(%rbp), %eax
        subl    $16, %eax
        cltq
        movl    -304(%rbp,%rax,4), %eax
        addl    %eax, %edx
        movl    -36(%rbp), %eax
        cltq
        movl    %edx, -304(%rbp,%rax,4)
        addl    $1, -36(%rbp)
.L7:
        cmpl    $63, -36(%rbp)
        jle     .L8
        movq    -312(%rbp), %rax
        movl    76(%rax), %eax
        movl    %eax, -4(%rbp)
        movq    -312(%rbp), %rax
        movl    80(%rax), %eax
        movl    %eax, -8(%rbp)
        movq    -312(%rbp), %rax
        movl    84(%rax), %eax
        movl    %eax, -12(%rbp)
        movq    -312(%rbp), %rax
        movl    88(%rax), %eax
        movl    %eax, -16(%rbp)
        movq    -312(%rbp), %rax
        movl    92(%rax), %eax
        movl    %eax, -20(%rbp)
        movq    -312(%rbp), %rax
        movl    96(%rax), %eax
        movl    %eax, -24(%rbp)
        movq    -312(%rbp), %rax
        movl    100(%rax), %eax
        movl    %eax, -28(%rbp)
        movq    -312(%rbp), %rax
        movl    104(%rax), %eax
        movl    %eax, -32(%rbp)
        movl    $0, -36(%rbp)
        jmp     .L9
.L10:
        movl    -20(%rbp), %eax
        rorl    $6, %eax
        movl    %eax, %edx
        movl    -20(%rbp), %eax
        rorl    $11, %eax
        xorl    %eax, %edx
        movl    -20(%rbp), %eax
        roll    $7, %eax
        xorl    %eax, %edx
        movl    -32(%rbp), %eax
        leal    (%rdx,%rax), %ecx
        movl    -20(%rbp), %eax
        andl    -24(%rbp), %eax
        movl    %eax, %edx
        movl    -20(%rbp), %eax
        notl    %eax
        andl    -28(%rbp), %eax
        xorl    %edx, %eax
        leal    (%rcx,%rax), %edx
        movl    -36(%rbp), %eax
        cltq
        movl    k(,%rax,4), %eax
        addl    %eax, %edx
        movl    -36(%rbp), %eax
        cltq
        movl    -304(%rbp,%rax,4), %eax
        addl    %edx, %eax
        movl    %eax, -44(%rbp)
        movl    -4(%rbp), %eax
        rorl    $2, %eax
        movl    %eax, %edx
        movl    -4(%rbp), %eax
        rorl    $13, %eax
        xorl    %eax, %edx
        movl    -4(%rbp), %eax
        roll    $10, %eax
        movl    %edx, %ecx
        xorl    %eax, %ecx
        movl    -8(%rbp), %eax
        xorl    -12(%rbp), %eax
        andl    -4(%rbp), %eax
        movl    %eax, %edx
        movl    -8(%rbp), %eax
        andl    -12(%rbp), %eax
        xorl    %edx, %eax
        addl    %ecx, %eax
        movl    %eax, -48(%rbp)
        movl    -28(%rbp), %eax
        movl    %eax, -32(%rbp)
        movl    -24(%rbp), %eax
        movl    %eax, -28(%rbp)
        movl    -20(%rbp), %eax
        movl    %eax, -24(%rbp)
        movl    -16(%rbp), %edx
        movl    -44(%rbp), %eax
        addl    %edx, %eax
        movl    %eax, -20(%rbp)
        movl    -12(%rbp), %eax
        movl    %eax, -16(%rbp)
        movl    -8(%rbp), %eax
        movl    %eax, -12(%rbp)
        movl    -4(%rbp), %eax
        movl    %eax, -8(%rbp)
        movl    -44(%rbp), %edx
        movl    -48(%rbp), %eax
        addl    %edx, %eax
        movl    %eax, -4(%rbp)
        addl    $1, -36(%rbp)
.L9:
        cmpl    $63, -36(%rbp)
        jle     .L10
        movq    -312(%rbp), %rax
        movl    76(%rax), %edx
        movl    -4(%rbp), %eax
        addl    %eax, %edx
        movq    -312(%rbp), %rax
        movl    %edx, 76(%rax)
        movq    -312(%rbp), %rax
        movl    80(%rax), %edx
        movl    -8(%rbp), %eax
        addl    %eax, %edx
        movq    -312(%rbp), %rax
        movl    %edx, 80(%rax)
        movq    -312(%rbp), %rax
        movl    84(%rax), %edx
        movl    -12(%rbp), %eax
        addl    %eax, %edx
        movq    -312(%rbp), %rax
        movl    %edx, 84(%rax)
        movq    -312(%rbp), %rax
        movl    88(%rax), %edx
        movl    -16(%rbp), %eax
        addl    %eax, %edx
        movq    -312(%rbp), %rax
        movl    %edx, 88(%rax)
        movq    -312(%rbp), %rax
        movl    92(%rax), %edx
        movl    -20(%rbp), %eax
        addl    %eax, %edx
        movq    -312(%rbp), %rax
        movl    %edx, 92(%rax)
        movq    -312(%rbp), %rax
        movl    96(%rax), %edx
        movl    -24(%rbp), %eax
        addl    %eax, %edx
        movq    -312(%rbp), %rax
        movl    %edx, 96(%rax)
        movq    -312(%rbp), %rax
        movl    100(%rax), %edx
        movl    -28(%rbp), %eax
        addl    %eax, %edx
        movq    -312(%rbp), %rax
        movl    %edx, 100(%rax)
        movq    -312(%rbp), %rax
        movl    104(%rax), %edx
        movl    -32(%rbp), %eax
        addl    %eax, %edx
        movq    -312(%rbp), %rax
        movl    %edx, 104(%rax)
        nop
        leave
        ret
SHA256Update:
        pushq   %rbp
        movq    %rsp, %rbp
        subq    $48, %rsp
        movq    %rdi, -24(%rbp)
        movq    %rsi, -32(%rbp)
        movl    %edx, -36(%rbp)
        movl    $0, -4(%rbp)
        jmp     .L12
.L15:
        movl    -4(%rbp), %edx
        movq    -32(%rbp), %rax
        addq    %rax, %rdx
        movq    -24(%rbp), %rax
        movl    64(%rax), %ecx
        movzbl  (%rdx), %edx
        movq    -24(%rbp), %rax
        movl    %ecx, %ecx
        movb    %dl, (%rax,%rcx)
        movq    -24(%rbp), %rax
        movl    64(%rax), %eax
        leal    1(%rax), %edx
        movq    -24(%rbp), %rax
        movl    %edx, 64(%rax)
        movq    -24(%rbp), %rax
        movl    64(%rax), %eax
        cmpl    $64, %eax
        jne     .L13
        movq    -24(%rbp), %rdx
        movq    -24(%rbp), %rax
        movq    %rdx, %rsi
        movq    %rax, %rdi
        call    SHA256Transform
        movq    -24(%rbp), %rax
        movl    68(%rax), %eax
        cmpl    $-513, %eax
        jbe     .L14
        movq    -24(%rbp), %rax
        movl    72(%rax), %eax
        leal    1(%rax), %edx
        movq    -24(%rbp), %rax
        movl    %edx, 72(%rax)
.L14:
        movq    -24(%rbp), %rax
        movl    68(%rax), %eax
        leal    512(%rax), %edx
        movq    -24(%rbp), %rax
        movl    %edx, 68(%rax)
        movq    -24(%rbp), %rax
        movl    $0, 64(%rax)
.L13:
        addl    $1, -4(%rbp)
.L12:
        movl    -4(%rbp), %eax
        cmpl    -36(%rbp), %eax
        jb      .L15
        nop
        nop
        leave
        ret
SHA256Final:
        pushq   %rbp
        movq    %rsp, %rbp
        subq    $48, %rsp
        movq    %rdi, -40(%rbp)
        movq    %rsi, -48(%rbp)
        movq    -40(%rbp), %rax
        movl    64(%rax), %eax
        movl    %eax, -4(%rbp)
        movq    -40(%rbp), %rax
        movl    64(%rax), %eax
        cmpl    $55, %eax
        ja      .L17
        movl    -4(%rbp), %eax
        leal    1(%rax), %edx
        movl    %edx, -4(%rbp)
        movq    -40(%rbp), %rdx
        movl    %eax, %eax
        movb    $-128, (%rdx,%rax)
        jmp     .L18
.L19:
        movl    -4(%rbp), %eax
        leal    1(%rax), %edx
        movl    %edx, -4(%rbp)
        movq    -40(%rbp), %rdx
        movl    %eax, %eax
        movb    $0, (%rdx,%rax)
.L18:
        cmpl    $55, -4(%rbp)
        jbe     .L19
        jmp     .L20
.L17:
        movl    -4(%rbp), %eax
        leal    1(%rax), %edx
        movl    %edx, -4(%rbp)
        movq    -40(%rbp), %rdx
        movl    %eax, %eax
        movb    $-128, (%rdx,%rax)
        jmp     .L21
.L22:
        movl    -4(%rbp), %eax
        leal    1(%rax), %edx
        movl    %edx, -4(%rbp)
        movq    -40(%rbp), %rdx
        movl    %eax, %eax
        movb    $0, (%rdx,%rax)
.L21:
        cmpl    $63, -4(%rbp)
        jbe     .L22
        movq    -40(%rbp), %rdx
        movq    -40(%rbp), %rax
        movq    %rdx, %rsi
        movq    %rax, %rdi
        call    SHA256Transform
        movq    -40(%rbp), %rax
        movl    $56, %edx
        movl    $0, %esi
        movq    %rax, %rdi
        call    memset
.L20:
        movq    -40(%rbp), %rax
        movl    68(%rax), %eax
        movq    -40(%rbp), %rdx
        movl    64(%rdx), %edx
        sall    $3, %edx
        notl    %edx
        cmpl    %eax, %edx
        jnb     .L23
        movq    -40(%rbp), %rax
        movl    72(%rax), %eax
        leal    1(%rax), %edx
        movq    -40(%rbp), %rax
        movl    %edx, 72(%rax)
.L23:
        movq    -40(%rbp), %rax
        movl    68(%rax), %edx
        movq    -40(%rbp), %rax
        movl    64(%rax), %eax
        sall    $3, %eax
        addl    %eax, %edx
        movq    -40(%rbp), %rax
        movl    %edx, 68(%rax)
        movl    $0, -8(%rbp)
        jmp     .L24
.L25:
        movq    -40(%rbp), %rax
        movl    68(%rax), %edx
        movl    -8(%rbp), %eax
        sall    $3, %eax
        movl    %eax, %ecx
        shrl    %cl, %edx
        movl    %edx, %ecx
        movl    $63, %eax
        subl    -8(%rbp), %eax
        movl    %eax, %edx
        movq    -40(%rbp), %rax
        movl    %edx, %edx
        movb    %cl, (%rax,%rdx)
        addl    $1, -8(%rbp)
.L24:
        cmpl    $3, -8(%rbp)
        jbe     .L25
        movl    $0, -12(%rbp)
        jmp     .L26
.L27:
        movq    -40(%rbp), %rax
        movl    72(%rax), %edx
        movl    -12(%rbp), %eax
        sall    $3, %eax
        movl    %eax, %ecx
        shrl    %cl, %edx
        movl    %edx, %ecx
        movl    $59, %eax
        subl    -12(%rbp), %eax
        movl    %eax, %edx
        movq    -40(%rbp), %rax
        movl    %edx, %edx
        movb    %cl, (%rax,%rdx)
        addl    $1, -12(%rbp)
.L26:
        cmpl    $3, -12(%rbp)
        jbe     .L27
        movq    -40(%rbp), %rdx
        movq    -40(%rbp), %rax
        movq    %rdx, %rsi
        movq    %rax, %rdi
        call    SHA256Transform
        movl    $0, -4(%rbp)
        jmp     .L28
.L31:
        movl    $0, -16(%rbp)
        jmp     .L29
.L30:
        movl    -16(%rbp), %eax
        leal    0(,%rax,4), %edx
        movl    -4(%rbp), %eax
        addl    %edx, %eax
        movl    %eax, -20(%rbp)
        movq    -40(%rbp), %rax
        movl    -16(%rbp), %edx
        addq    $16, %rdx
        movl    12(%rax,%rdx,4), %edx
        movl    $3, %eax
        subl    -4(%rbp), %eax
        sall    $3, %eax
        movl    %eax, %ecx
        shrl    %cl, %edx
        movl    %edx, %ecx
        movl    -20(%rbp), %edx
        movq    -48(%rbp), %rax
        addq    %rdx, %rax
        movl    %ecx, %edx
        movb    %dl, (%rax)
        addl    $1, -16(%rbp)
.L29:
        cmpl    $7, -16(%rbp)
        jbe     .L30
        addl    $1, -4(%rbp)
.L28:
        cmpl    $3, -4(%rbp)
        jbe     .L31
        nop
        nop
        leave
        ret
.LC0:
        .string "%02x"
SHA256:
        pushq   %rbp
        movq    %rsp, %rbp
        subq    $192, %rsp
        movq    %rdi, -184(%rbp)
        movq    -184(%rbp), %rax
        movq    %rax, %rdi
        call    strlen
        movl    %eax, -8(%rbp)
        movl    $65, %edi
        call    malloc
        movq    %rax, -16(%rbp)
        movq    -16(%rbp), %rax
        movb    $0, (%rax)
        leaq    -128(%rbp), %rax
        movq    %rax, %rdi
        call    SHA256Init
        movl    -8(%rbp), %edx
        movq    -184(%rbp), %rcx
        leaq    -128(%rbp), %rax
        movq    %rcx, %rsi
        movq    %rax, %rdi
        call    SHA256Update
        leaq    -160(%rbp), %rdx
        leaq    -128(%rbp), %rax
        movq    %rdx, %rsi
        movq    %rax, %rdi
        call    SHA256Final
        movl    $0, -4(%rbp)
        jmp     .L33
.L34:
        movl    -4(%rbp), %eax
        cltq
        movzbl  -160(%rbp,%rax), %eax
        movzbl  %al, %edx
        leaq    -163(%rbp), %rax
        movl    $.LC0, %esi
        movq    %rax, %rdi
        movl    $0, %eax
        call    sprintf
        leaq    -163(%rbp), %rdx
        movq    -16(%rbp), %rax
        movq    %rdx, %rsi
        movq    %rax, %rdi
        call    strcat
        addl    $1, -4(%rbp)
.L33:
        cmpl    $31, -4(%rbp)
        jle     .L34
        movq    -16(%rbp), %rax
        leave
        ret