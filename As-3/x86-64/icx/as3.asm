partition:                              # 
        push    rbp
        mov     rbp, rsp
        mov     qword ptr [rbp - 8], rdi
        mov     dword ptr [rbp - 12], esi
        mov     dword ptr [rbp - 16], edx
        mov     rax, qword ptr [rbp - 8]
        movsxd  rcx, dword ptr [rbp - 16]
        mov     eax, dword ptr [rax + 4*rcx]
        mov     dword ptr [rbp - 20], eax
        mov     eax, dword ptr [rbp - 12]
        mov     dword ptr [rbp - 28], eax
        mov     eax, dword ptr [rbp - 12]
        mov     dword ptr [rbp - 32], eax
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
        mov     eax, dword ptr [rbp - 32]
        cmp     eax, dword ptr [rbp - 16]
        jge     .LBB0_6
        mov     rax, qword ptr [rbp - 8]
        movsxd  rcx, dword ptr [rbp - 32]
        mov     eax, dword ptr [rax + 4*rcx]
        cmp     eax, dword ptr [rbp - 20]
        jg      .LBB0_4
        mov     rax, qword ptr [rbp - 8]
        movsxd  rcx, dword ptr [rbp - 32]
        mov     eax, dword ptr [rax + 4*rcx]
        mov     dword ptr [rbp - 24], eax
        mov     rax, qword ptr [rbp - 8]
        movsxd  rcx, dword ptr [rbp - 28]
        mov     edx, dword ptr [rax + 4*rcx]
        mov     rax, qword ptr [rbp - 8]
        movsxd  rcx, dword ptr [rbp - 32]
        mov     dword ptr [rax + 4*rcx], edx
        mov     edx, dword ptr [rbp - 24]
        mov     rax, qword ptr [rbp - 8]
        movsxd  rcx, dword ptr [rbp - 28]
        mov     dword ptr [rax + 4*rcx], edx
        mov     eax, dword ptr [rbp - 28]
        add     eax, 1
        mov     dword ptr [rbp - 28], eax
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
        jmp     .LBB0_5
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
        mov     eax, dword ptr [rbp - 32]
        add     eax, 1
        mov     dword ptr [rbp - 32], eax
        jmp     .LBB0_1
.LBB0_6:
        mov     rax, qword ptr [rbp - 8]
        movsxd  rcx, dword ptr [rbp - 28]
        mov     edx, dword ptr [rax + 4*rcx]
        mov     rax, qword ptr [rbp - 8]
        movsxd  rcx, dword ptr [rbp - 16]
        mov     dword ptr [rax + 4*rcx], edx
        mov     edx, dword ptr [rbp - 20]
        mov     rax, qword ptr [rbp - 8]
        movsxd  rcx, dword ptr [rbp - 28]
        mov     dword ptr [rax + 4*rcx], edx
        mov     eax, dword ptr [rbp - 28]
        pop     rbp
        ret
quick_sort:                             # 
        push    rbp
        mov     rbp, rsp
        sub     rsp, 32
        mov     qword ptr [rbp - 8], rdi
        mov     dword ptr [rbp - 12], esi
        mov     dword ptr [rbp - 16], edx
        mov     eax, dword ptr [rbp - 12]
        cmp     eax, dword ptr [rbp - 16]
        jge     .LBB1_2
        mov     rdi, qword ptr [rbp - 8]
        mov     esi, dword ptr [rbp - 12]
        mov     edx, dword ptr [rbp - 16]
        call    partition
        mov     dword ptr [rbp - 20], eax
        mov     rdi, qword ptr [rbp - 8]
        mov     esi, dword ptr [rbp - 12]
        mov     edx, dword ptr [rbp - 20]
        sub     edx, 1
        call    quick_sort
        mov     rdi, qword ptr [rbp - 8]
        mov     esi, dword ptr [rbp - 20]
        add     esi, 1
        mov     edx, dword ptr [rbp - 16]
        call    quick_sort
.LBB1_2:
        add     rsp, 32
        pop     rbp
        ret