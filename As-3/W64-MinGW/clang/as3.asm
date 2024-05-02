partition:                              # @partition
        sub     rsp, 32
        mov     qword ptr [rsp + 24], rcx
        mov     dword ptr [rsp + 20], edx
        mov     dword ptr [rsp + 16], r8d
        mov     rax, qword ptr [rsp + 24]
        movsxd  rcx, dword ptr [rsp + 16]
        mov     eax, dword ptr [rax + 4*rcx]
        mov     dword ptr [rsp + 12], eax
        mov     eax, dword ptr [rsp + 20]
        mov     dword ptr [rsp + 4], eax
        mov     eax, dword ptr [rsp + 20]
        mov     dword ptr [rsp], eax
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
        mov     eax, dword ptr [rsp]
        cmp     eax, dword ptr [rsp + 16]
        jge     .LBB0_6
        mov     rax, qword ptr [rsp + 24]
        movsxd  rcx, dword ptr [rsp]
        mov     eax, dword ptr [rax + 4*rcx]
        cmp     eax, dword ptr [rsp + 12]
        jg      .LBB0_4
        mov     rax, qword ptr [rsp + 24]
        movsxd  rcx, dword ptr [rsp]
        mov     eax, dword ptr [rax + 4*rcx]
        mov     dword ptr [rsp + 8], eax
        mov     rax, qword ptr [rsp + 24]
        movsxd  rcx, dword ptr [rsp + 4]
        mov     edx, dword ptr [rax + 4*rcx]
        mov     rax, qword ptr [rsp + 24]
        movsxd  rcx, dword ptr [rsp]
        mov     dword ptr [rax + 4*rcx], edx
        mov     edx, dword ptr [rsp + 8]
        mov     rax, qword ptr [rsp + 24]
        movsxd  rcx, dword ptr [rsp + 4]
        mov     dword ptr [rax + 4*rcx], edx
        mov     eax, dword ptr [rsp + 4]
        add     eax, 1
        mov     dword ptr [rsp + 4], eax
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
        jmp     .LBB0_5
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
        mov     eax, dword ptr [rsp]
        add     eax, 1
        mov     dword ptr [rsp], eax
        jmp     .LBB0_1
.LBB0_6:
        mov     rax, qword ptr [rsp + 24]
        movsxd  rcx, dword ptr [rsp + 4]
        mov     edx, dword ptr [rax + 4*rcx]
        mov     rax, qword ptr [rsp + 24]
        movsxd  rcx, dword ptr [rsp + 16]
        mov     dword ptr [rax + 4*rcx], edx
        mov     edx, dword ptr [rsp + 12]
        mov     rax, qword ptr [rsp + 24]
        movsxd  rcx, dword ptr [rsp + 4]
        mov     dword ptr [rax + 4*rcx], edx
        mov     eax, dword ptr [rsp + 4]
        add     rsp, 32
        ret
quick_sort:                             # @quick_sort
        sub     rsp, 56
        mov     qword ptr [rsp + 48], rcx
        mov     dword ptr [rsp + 44], edx
        mov     dword ptr [rsp + 40], r8d
        mov     eax, dword ptr [rsp + 44]
        cmp     eax, dword ptr [rsp + 40]
        jge     .LBB1_2
        mov     rcx, qword ptr [rsp + 48]
        mov     edx, dword ptr [rsp + 44]
        mov     r8d, dword ptr [rsp + 40]
        call    partition
        mov     dword ptr [rsp + 36], eax
        mov     rcx, qword ptr [rsp + 48]
        mov     edx, dword ptr [rsp + 44]
        mov     r8d, dword ptr [rsp + 36]
        sub     r8d, 1
        call    quick_sort
        mov     rcx, qword ptr [rsp + 48]
        mov     edx, dword ptr [rsp + 36]
        add     edx, 1
        mov     r8d, dword ptr [rsp + 40]
        call    quick_sort
.LBB1_2:
        nop
        add     rsp, 56
        ret