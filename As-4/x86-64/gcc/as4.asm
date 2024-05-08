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
        push    rbp
        mov     rbp, rsp
        mov     QWORD PTR [rbp-24], rdi
        mov     rax, QWORD PTR [rbp-24]
        mov     DWORD PTR [rax+64], 0
        mov     rax, QWORD PTR [rbp-24]
        mov     DWORD PTR [rax+68], 0
        mov     rax, QWORD PTR [rbp-24]
        mov     DWORD PTR [rax+72], 0
        mov     QWORD PTR [rbp-8], 0
        jmp     .L2
.L3:
        mov     rax, QWORD PTR [rbp-8]
        mov     edx, DWORD PTR h0[0+rax*4]
        mov     rax, QWORD PTR [rbp-24]
        mov     rcx, QWORD PTR [rbp-8]
        add     rcx, 16
        mov     DWORD PTR [rax+12+rcx*4], edx
        add     QWORD PTR [rbp-8], 1
.L2:
        cmp     QWORD PTR [rbp-8], 7
        jbe     .L3
        nop
        nop
        pop     rbp
        ret
SHA256Transform:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 200
        mov     QWORD PTR [rbp-312], rdi
        mov     QWORD PTR [rbp-320], rsi
        mov     DWORD PTR [rbp-36], 0
        mov     DWORD PTR [rbp-40], 0
        jmp     .L5
.L6:
        mov     eax, DWORD PTR [rbp-40]
        movsx   rdx, eax
        mov     rax, QWORD PTR [rbp-320]
        add     rax, rdx
        movzx   eax, BYTE PTR [rax]
        movzx   eax, al
        sal     eax, 24
        mov     edx, eax
        mov     eax, DWORD PTR [rbp-40]
        cdqe
        lea     rcx, [rax+1]
        mov     rax, QWORD PTR [rbp-320]
        add     rax, rcx
        movzx   eax, BYTE PTR [rax]
        movzx   eax, al
        sal     eax, 16
        or      edx, eax
        mov     eax, DWORD PTR [rbp-40]
        cdqe
        lea     rcx, [rax+2]
        mov     rax, QWORD PTR [rbp-320]
        add     rax, rcx
        movzx   eax, BYTE PTR [rax]
        movzx   eax, al
        sal     eax, 8
        or      edx, eax
        mov     eax, DWORD PTR [rbp-40]
        cdqe
        lea     rcx, [rax+3]
        mov     rax, QWORD PTR [rbp-320]
        add     rax, rcx
        movzx   eax, BYTE PTR [rax]
        movzx   eax, al
        or      eax, edx
        mov     edx, eax
        mov     eax, DWORD PTR [rbp-36]
        cdqe
        mov     DWORD PTR [rbp-304+rax*4], edx
        add     DWORD PTR [rbp-36], 1
        add     DWORD PTR [rbp-40], 4
.L5:
        cmp     DWORD PTR [rbp-36], 15
        jle     .L6
        jmp     .L7
.L8:
        mov     eax, DWORD PTR [rbp-36]
        sub     eax, 2
        cdqe
        mov     eax, DWORD PTR [rbp-304+rax*4]
        rol     eax, 15
        mov     edx, eax
        mov     eax, DWORD PTR [rbp-36]
        sub     eax, 2
        cdqe
        mov     eax, DWORD PTR [rbp-304+rax*4]
        rol     eax, 13
        xor     edx, eax
        mov     eax, DWORD PTR [rbp-36]
        sub     eax, 2
        cdqe
        mov     eax, DWORD PTR [rbp-304+rax*4]
        shr     eax, 10
        xor     edx, eax
        mov     eax, DWORD PTR [rbp-36]
        sub     eax, 7
        cdqe
        mov     eax, DWORD PTR [rbp-304+rax*4]
        add     edx, eax
        mov     eax, DWORD PTR [rbp-36]
        sub     eax, 15
        cdqe
        mov     eax, DWORD PTR [rbp-304+rax*4]
        ror     eax, 7
        mov     ecx, eax
        mov     eax, DWORD PTR [rbp-36]
        sub     eax, 15
        cdqe
        mov     eax, DWORD PTR [rbp-304+rax*4]
        rol     eax, 14
        xor     ecx, eax
        mov     eax, DWORD PTR [rbp-36]
        sub     eax, 15
        cdqe
        mov     eax, DWORD PTR [rbp-304+rax*4]
        shr     eax, 3
        xor     eax, ecx
        add     edx, eax
        mov     eax, DWORD PTR [rbp-36]
        sub     eax, 16
        cdqe
        mov     eax, DWORD PTR [rbp-304+rax*4]
        add     edx, eax
        mov     eax, DWORD PTR [rbp-36]
        cdqe
        mov     DWORD PTR [rbp-304+rax*4], edx
        add     DWORD PTR [rbp-36], 1
.L7:
        cmp     DWORD PTR [rbp-36], 63
        jle     .L8
        mov     rax, QWORD PTR [rbp-312]
        mov     eax, DWORD PTR [rax+76]
        mov     DWORD PTR [rbp-4], eax
        mov     rax, QWORD PTR [rbp-312]
        mov     eax, DWORD PTR [rax+80]
        mov     DWORD PTR [rbp-8], eax
        mov     rax, QWORD PTR [rbp-312]
        mov     eax, DWORD PTR [rax+84]
        mov     DWORD PTR [rbp-12], eax
        mov     rax, QWORD PTR [rbp-312]
        mov     eax, DWORD PTR [rax+88]
        mov     DWORD PTR [rbp-16], eax
        mov     rax, QWORD PTR [rbp-312]
        mov     eax, DWORD PTR [rax+92]
        mov     DWORD PTR [rbp-20], eax
        mov     rax, QWORD PTR [rbp-312]
        mov     eax, DWORD PTR [rax+96]
        mov     DWORD PTR [rbp-24], eax
        mov     rax, QWORD PTR [rbp-312]
        mov     eax, DWORD PTR [rax+100]
        mov     DWORD PTR [rbp-28], eax
        mov     rax, QWORD PTR [rbp-312]
        mov     eax, DWORD PTR [rax+104]
        mov     DWORD PTR [rbp-32], eax
        mov     DWORD PTR [rbp-36], 0
        jmp     .L9
.L10:
        mov     eax, DWORD PTR [rbp-20]
        ror     eax, 6
        mov     edx, eax
        mov     eax, DWORD PTR [rbp-20]
        ror     eax, 11
        xor     edx, eax
        mov     eax, DWORD PTR [rbp-20]
        rol     eax, 7
        xor     edx, eax
        mov     eax, DWORD PTR [rbp-32]
        lea     ecx, [rdx+rax]
        mov     eax, DWORD PTR [rbp-20]
        and     eax, DWORD PTR [rbp-24]
        mov     edx, eax
        mov     eax, DWORD PTR [rbp-20]
        not     eax
        and     eax, DWORD PTR [rbp-28]
        xor     eax, edx
        lea     edx, [rcx+rax]
        mov     eax, DWORD PTR [rbp-36]
        cdqe
        mov     eax, DWORD PTR k[0+rax*4]
        add     edx, eax
        mov     eax, DWORD PTR [rbp-36]
        cdqe
        mov     eax, DWORD PTR [rbp-304+rax*4]
        add     eax, edx
        mov     DWORD PTR [rbp-44], eax
        mov     eax, DWORD PTR [rbp-4]
        ror     eax, 2
        mov     edx, eax
        mov     eax, DWORD PTR [rbp-4]
        ror     eax, 13
        xor     edx, eax
        mov     eax, DWORD PTR [rbp-4]
        rol     eax, 10
        mov     ecx, edx
        xor     ecx, eax
        mov     eax, DWORD PTR [rbp-8]
        xor     eax, DWORD PTR [rbp-12]
        and     eax, DWORD PTR [rbp-4]
        mov     edx, eax
        mov     eax, DWORD PTR [rbp-8]
        and     eax, DWORD PTR [rbp-12]
        xor     eax, edx
        add     eax, ecx
        mov     DWORD PTR [rbp-48], eax
        mov     eax, DWORD PTR [rbp-28]
        mov     DWORD PTR [rbp-32], eax
        mov     eax, DWORD PTR [rbp-24]
        mov     DWORD PTR [rbp-28], eax
        mov     eax, DWORD PTR [rbp-20]
        mov     DWORD PTR [rbp-24], eax
        mov     edx, DWORD PTR [rbp-16]
        mov     eax, DWORD PTR [rbp-44]
        add     eax, edx
        mov     DWORD PTR [rbp-20], eax
        mov     eax, DWORD PTR [rbp-12]
        mov     DWORD PTR [rbp-16], eax
        mov     eax, DWORD PTR [rbp-8]
        mov     DWORD PTR [rbp-12], eax
        mov     eax, DWORD PTR [rbp-4]
        mov     DWORD PTR [rbp-8], eax
        mov     edx, DWORD PTR [rbp-44]
        mov     eax, DWORD PTR [rbp-48]
        add     eax, edx
        mov     DWORD PTR [rbp-4], eax
        add     DWORD PTR [rbp-36], 1
.L9:
        cmp     DWORD PTR [rbp-36], 63
        jle     .L10
        mov     rax, QWORD PTR [rbp-312]
        mov     edx, DWORD PTR [rax+76]
        mov     eax, DWORD PTR [rbp-4]
        add     edx, eax
        mov     rax, QWORD PTR [rbp-312]
        mov     DWORD PTR [rax+76], edx
        mov     rax, QWORD PTR [rbp-312]
        mov     edx, DWORD PTR [rax+80]
        mov     eax, DWORD PTR [rbp-8]
        add     edx, eax
        mov     rax, QWORD PTR [rbp-312]
        mov     DWORD PTR [rax+80], edx
        mov     rax, QWORD PTR [rbp-312]
        mov     edx, DWORD PTR [rax+84]
        mov     eax, DWORD PTR [rbp-12]
        add     edx, eax
        mov     rax, QWORD PTR [rbp-312]
        mov     DWORD PTR [rax+84], edx
        mov     rax, QWORD PTR [rbp-312]
        mov     edx, DWORD PTR [rax+88]
        mov     eax, DWORD PTR [rbp-16]
        add     edx, eax
        mov     rax, QWORD PTR [rbp-312]
        mov     DWORD PTR [rax+88], edx
        mov     rax, QWORD PTR [rbp-312]
        mov     edx, DWORD PTR [rax+92]
        mov     eax, DWORD PTR [rbp-20]
        add     edx, eax
        mov     rax, QWORD PTR [rbp-312]
        mov     DWORD PTR [rax+92], edx
        mov     rax, QWORD PTR [rbp-312]
        mov     edx, DWORD PTR [rax+96]
        mov     eax, DWORD PTR [rbp-24]
        add     edx, eax
        mov     rax, QWORD PTR [rbp-312]
        mov     DWORD PTR [rax+96], edx
        mov     rax, QWORD PTR [rbp-312]
        mov     edx, DWORD PTR [rax+100]
        mov     eax, DWORD PTR [rbp-28]
        add     edx, eax
        mov     rax, QWORD PTR [rbp-312]
        mov     DWORD PTR [rax+100], edx
        mov     rax, QWORD PTR [rbp-312]
        mov     edx, DWORD PTR [rax+104]
        mov     eax, DWORD PTR [rbp-32]
        add     edx, eax
        mov     rax, QWORD PTR [rbp-312]
        mov     DWORD PTR [rax+104], edx
        nop
        leave
        ret
SHA256Update:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 48
        mov     QWORD PTR [rbp-24], rdi
        mov     QWORD PTR [rbp-32], rsi
        mov     DWORD PTR [rbp-36], edx
        mov     DWORD PTR [rbp-4], 0
        jmp     .L12
.L15:
        mov     edx, DWORD PTR [rbp-4]
        mov     rax, QWORD PTR [rbp-32]
        add     rdx, rax
        mov     rax, QWORD PTR [rbp-24]
        mov     ecx, DWORD PTR [rax+64]
        movzx   edx, BYTE PTR [rdx]
        mov     rax, QWORD PTR [rbp-24]
        mov     ecx, ecx
        mov     BYTE PTR [rax+rcx], dl
        mov     rax, QWORD PTR [rbp-24]
        mov     eax, DWORD PTR [rax+64]
        lea     edx, [rax+1]
        mov     rax, QWORD PTR [rbp-24]
        mov     DWORD PTR [rax+64], edx
        mov     rax, QWORD PTR [rbp-24]
        mov     eax, DWORD PTR [rax+64]
        cmp     eax, 64
        jne     .L13
        mov     rdx, QWORD PTR [rbp-24]
        mov     rax, QWORD PTR [rbp-24]
        mov     rsi, rdx
        mov     rdi, rax
        call    SHA256Transform
        mov     rax, QWORD PTR [rbp-24]
        mov     eax, DWORD PTR [rax+68]
        cmp     eax, -513
        jbe     .L14
        mov     rax, QWORD PTR [rbp-24]
        mov     eax, DWORD PTR [rax+72]
        lea     edx, [rax+1]
        mov     rax, QWORD PTR [rbp-24]
        mov     DWORD PTR [rax+72], edx
.L14:
        mov     rax, QWORD PTR [rbp-24]
        mov     eax, DWORD PTR [rax+68]
        lea     edx, [rax+512]
        mov     rax, QWORD PTR [rbp-24]
        mov     DWORD PTR [rax+68], edx
        mov     rax, QWORD PTR [rbp-24]
        mov     DWORD PTR [rax+64], 0
.L13:
        add     DWORD PTR [rbp-4], 1
.L12:
        mov     eax, DWORD PTR [rbp-4]
        cmp     eax, DWORD PTR [rbp-36]
        jb      .L15
        nop
        nop
        leave
        ret
SHA256Final:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 48
        mov     QWORD PTR [rbp-40], rdi
        mov     QWORD PTR [rbp-48], rsi
        mov     rax, QWORD PTR [rbp-40]
        mov     eax, DWORD PTR [rax+64]
        mov     DWORD PTR [rbp-4], eax
        mov     rax, QWORD PTR [rbp-40]
        mov     eax, DWORD PTR [rax+64]
        cmp     eax, 55
        ja      .L17
        mov     eax, DWORD PTR [rbp-4]
        lea     edx, [rax+1]
        mov     DWORD PTR [rbp-4], edx
        mov     rdx, QWORD PTR [rbp-40]
        mov     eax, eax
        mov     BYTE PTR [rdx+rax], -128
        jmp     .L18
.L19:
        mov     eax, DWORD PTR [rbp-4]
        lea     edx, [rax+1]
        mov     DWORD PTR [rbp-4], edx
        mov     rdx, QWORD PTR [rbp-40]
        mov     eax, eax
        mov     BYTE PTR [rdx+rax], 0
.L18:
        cmp     DWORD PTR [rbp-4], 55
        jbe     .L19
        jmp     .L20
.L17:
        mov     eax, DWORD PTR [rbp-4]
        lea     edx, [rax+1]
        mov     DWORD PTR [rbp-4], edx
        mov     rdx, QWORD PTR [rbp-40]
        mov     eax, eax
        mov     BYTE PTR [rdx+rax], -128
        jmp     .L21
.L22:
        mov     eax, DWORD PTR [rbp-4]
        lea     edx, [rax+1]
        mov     DWORD PTR [rbp-4], edx
        mov     rdx, QWORD PTR [rbp-40]
        mov     eax, eax
        mov     BYTE PTR [rdx+rax], 0
.L21:
        cmp     DWORD PTR [rbp-4], 63
        jbe     .L22
        mov     rdx, QWORD PTR [rbp-40]
        mov     rax, QWORD PTR [rbp-40]
        mov     rsi, rdx
        mov     rdi, rax
        call    SHA256Transform
        mov     rax, QWORD PTR [rbp-40]
        mov     edx, 56
        mov     esi, 0
        mov     rdi, rax
        call    memset
.L20:
        mov     rax, QWORD PTR [rbp-40]
        mov     eax, DWORD PTR [rax+68]
        mov     rdx, QWORD PTR [rbp-40]
        mov     edx, DWORD PTR [rdx+64]
        sal     edx, 3
        not     edx
        cmp     edx, eax
        jnb     .L23
        mov     rax, QWORD PTR [rbp-40]
        mov     eax, DWORD PTR [rax+72]
        lea     edx, [rax+1]
        mov     rax, QWORD PTR [rbp-40]
        mov     DWORD PTR [rax+72], edx
.L23:
        mov     rax, QWORD PTR [rbp-40]
        mov     edx, DWORD PTR [rax+68]
        mov     rax, QWORD PTR [rbp-40]
        mov     eax, DWORD PTR [rax+64]
        sal     eax, 3
        add     edx, eax
        mov     rax, QWORD PTR [rbp-40]
        mov     DWORD PTR [rax+68], edx
        mov     DWORD PTR [rbp-8], 0
        jmp     .L24
.L25:
        mov     rax, QWORD PTR [rbp-40]
        mov     edx, DWORD PTR [rax+68]
        mov     eax, DWORD PTR [rbp-8]
        sal     eax, 3
        mov     ecx, eax
        shr     edx, cl
        mov     ecx, edx
        mov     eax, 63
        sub     eax, DWORD PTR [rbp-8]
        mov     edx, eax
        mov     rax, QWORD PTR [rbp-40]
        mov     edx, edx
        mov     BYTE PTR [rax+rdx], cl
        add     DWORD PTR [rbp-8], 1
.L24:
        cmp     DWORD PTR [rbp-8], 3
        jbe     .L25
        mov     DWORD PTR [rbp-12], 0
        jmp     .L26
.L27:
        mov     rax, QWORD PTR [rbp-40]
        mov     edx, DWORD PTR [rax+72]
        mov     eax, DWORD PTR [rbp-12]
        sal     eax, 3
        mov     ecx, eax
        shr     edx, cl
        mov     ecx, edx
        mov     eax, 59
        sub     eax, DWORD PTR [rbp-12]
        mov     edx, eax
        mov     rax, QWORD PTR [rbp-40]
        mov     edx, edx
        mov     BYTE PTR [rax+rdx], cl
        add     DWORD PTR [rbp-12], 1
.L26:
        cmp     DWORD PTR [rbp-12], 3
        jbe     .L27
        mov     rdx, QWORD PTR [rbp-40]
        mov     rax, QWORD PTR [rbp-40]
        mov     rsi, rdx
        mov     rdi, rax
        call    SHA256Transform
        mov     DWORD PTR [rbp-4], 0
        jmp     .L28
.L31:
        mov     DWORD PTR [rbp-16], 0
        jmp     .L29
.L30:
        mov     eax, DWORD PTR [rbp-16]
        lea     edx, [0+rax*4]
        mov     eax, DWORD PTR [rbp-4]
        add     eax, edx
        mov     DWORD PTR [rbp-20], eax
        mov     rax, QWORD PTR [rbp-40]
        mov     edx, DWORD PTR [rbp-16]
        add     rdx, 16
        mov     edx, DWORD PTR [rax+12+rdx*4]
        mov     eax, 3
        sub     eax, DWORD PTR [rbp-4]
        sal     eax, 3
        mov     ecx, eax
        shr     edx, cl
        mov     ecx, edx
        mov     edx, DWORD PTR [rbp-20]
        mov     rax, QWORD PTR [rbp-48]
        add     rax, rdx
        mov     edx, ecx
        mov     BYTE PTR [rax], dl
        add     DWORD PTR [rbp-16], 1
.L29:
        cmp     DWORD PTR [rbp-16], 7
        jbe     .L30
        add     DWORD PTR [rbp-4], 1
.L28:
        cmp     DWORD PTR [rbp-4], 3
        jbe     .L31
        nop
        nop
        leave
        ret
.LC0:
        .string "%02x"
SHA256:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 192
        mov     QWORD PTR [rbp-184], rdi
        mov     rax, QWORD PTR [rbp-184]
        mov     rdi, rax
        call    strlen
        mov     DWORD PTR [rbp-8], eax
        mov     edi, 65
        call    malloc
        mov     QWORD PTR [rbp-16], rax
        mov     rax, QWORD PTR [rbp-16]
        mov     BYTE PTR [rax], 0
        lea     rax, [rbp-128]
        mov     rdi, rax
        call    SHA256Init
        mov     edx, DWORD PTR [rbp-8]
        mov     rcx, QWORD PTR [rbp-184]
        lea     rax, [rbp-128]
        mov     rsi, rcx
        mov     rdi, rax
        call    SHA256Update
        lea     rdx, [rbp-160]
        lea     rax, [rbp-128]
        mov     rsi, rdx
        mov     rdi, rax
        call    SHA256Final
        mov     DWORD PTR [rbp-4], 0
        jmp     .L33
.L34:
        mov     eax, DWORD PTR [rbp-4]
        cdqe
        movzx   eax, BYTE PTR [rbp-160+rax]
        movzx   edx, al
        lea     rax, [rbp-163]
        mov     esi, OFFSET FLAT:.LC0
        mov     rdi, rax
        mov     eax, 0
        call    sprintf
        lea     rdx, [rbp-163]
        mov     rax, QWORD PTR [rbp-16]
        mov     rsi, rdx
        mov     rdi, rax
        call    strcat
        add     DWORD PTR [rbp-4], 1
.L33:
        cmp     DWORD PTR [rbp-4], 31
        jle     .L34
        mov     rax, QWORD PTR [rbp-16]
        leave
        ret