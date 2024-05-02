partition:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     QWORD PTR 16[rbp], rcx
        mov     DWORD PTR 24[rbp], edx
        mov     DWORD PTR 32[rbp], r8d
        mov     eax, DWORD PTR 32[rbp]
        cdqe
        lea     rdx, 0[0+rax*4]
        mov     rax, QWORD PTR 16[rbp]
        add     rax, rdx
        mov     eax, DWORD PTR [rax]
        mov     DWORD PTR -12[rbp], eax
        mov     eax, DWORD PTR 24[rbp]
        mov     DWORD PTR -4[rbp], eax
        mov     eax, DWORD PTR 24[rbp]
        mov     DWORD PTR -8[rbp], eax
        jmp     .L2
.L4:
        mov     eax, DWORD PTR -8[rbp]
        cdqe
        lea     rdx, 0[0+rax*4]
        mov     rax, QWORD PTR 16[rbp]
        add     rax, rdx
        mov     eax, DWORD PTR [rax]
        cmp     DWORD PTR -12[rbp], eax
        jl      .L3
        mov     eax, DWORD PTR -8[rbp]
        cdqe
        lea     rdx, 0[0+rax*4]
        mov     rax, QWORD PTR 16[rbp]
        add     rax, rdx
        mov     eax, DWORD PTR [rax]
        mov     DWORD PTR -16[rbp], eax
        mov     eax, DWORD PTR -4[rbp]
        cdqe
        lea     rdx, 0[0+rax*4]
        mov     rax, QWORD PTR 16[rbp]
        add     rax, rdx
        mov     edx, DWORD PTR -8[rbp]
        movsx   rdx, edx
        lea     rcx, 0[0+rdx*4]
        mov     rdx, QWORD PTR 16[rbp]
        add     rdx, rcx
        mov     eax, DWORD PTR [rax]
        mov     DWORD PTR [rdx], eax
        mov     eax, DWORD PTR -4[rbp]
        cdqe
        lea     rdx, 0[0+rax*4]
        mov     rax, QWORD PTR 16[rbp]
        add     rdx, rax
        mov     eax, DWORD PTR -16[rbp]
        mov     DWORD PTR [rdx], eax
        add     DWORD PTR -4[rbp], 1
.L3:
        add     DWORD PTR -8[rbp], 1
.L2:
        mov     eax, DWORD PTR -8[rbp]
        cmp     eax, DWORD PTR 32[rbp]
        jl      .L4
        mov     eax, DWORD PTR -4[rbp]
        cdqe
        lea     rdx, 0[0+rax*4]
        mov     rax, QWORD PTR 16[rbp]
        add     rax, rdx
        mov     edx, DWORD PTR 32[rbp]
        movsx   rdx, edx
        lea     rcx, 0[0+rdx*4]
        mov     rdx, QWORD PTR 16[rbp]
        add     rdx, rcx
        mov     eax, DWORD PTR [rax]
        mov     DWORD PTR [rdx], eax
        mov     eax, DWORD PTR -4[rbp]
        cdqe
        lea     rdx, 0[0+rax*4]
        mov     rax, QWORD PTR 16[rbp]
        add     rdx, rax
        mov     eax, DWORD PTR -12[rbp]
        mov     DWORD PTR [rdx], eax
        mov     eax, DWORD PTR -4[rbp]
        add     rsp, 16
        pop     rbp
        ret
quick_sort:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 48
        mov     QWORD PTR 16[rbp], rcx
        mov     DWORD PTR 24[rbp], edx
        mov     DWORD PTR 32[rbp], r8d
        mov     eax, DWORD PTR 24[rbp]
        cmp     eax, DWORD PTR 32[rbp]
        jge     .L8
        mov     ecx, DWORD PTR 32[rbp]
        mov     edx, DWORD PTR 24[rbp]
        mov     rax, QWORD PTR 16[rbp]
        mov     r8d, ecx
        mov     rcx, rax
        call    partition
        mov     DWORD PTR -4[rbp], eax
        mov     eax, DWORD PTR -4[rbp]
        lea     ecx, -1[rax]
        mov     edx, DWORD PTR 24[rbp]
        mov     rax, QWORD PTR 16[rbp]
        mov     r8d, ecx
        mov     rcx, rax
        call    quick_sort
        mov     eax, DWORD PTR -4[rbp]
        lea     edx, 1[rax]
        mov     ecx, DWORD PTR 32[rbp]
        mov     rax, QWORD PTR 16[rbp]
        mov     r8d, ecx
        mov     rcx, rax
        call    quick_sort
.L8:
        nop
        add     rsp, 48
        pop     rbp
        ret