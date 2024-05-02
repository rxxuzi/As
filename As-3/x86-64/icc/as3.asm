partition:
..B1.1:                         # Preds ..B1.0
        push      rbp                                           #1.40
        mov       rbp, rsp                                      #1.40
        sub       rsp, 48                                       #1.40
        mov       QWORD PTR [-32+rbp], rdi                      #1.40
        mov       DWORD PTR [-24+rbp], esi                      #1.40
        mov       DWORD PTR [-16+rbp], edx                      #1.40
        mov       eax, DWORD PTR [-16+rbp]                      #2.19
        movsxd    rax, eax                                      #2.14
        imul      rax, rax, 4                                   #2.14
        add       rax, QWORD PTR [-32+rbp]                      #2.14
        mov       eax, DWORD PTR [rax]                          #2.14
        mov       DWORD PTR [-48+rbp], eax                      #2.12
        mov       eax, DWORD PTR [-24+rbp]                      #4.10
        mov       DWORD PTR [-44+rbp], eax                      #4.8
        mov       eax, DWORD PTR [-24+rbp]                      #6.15
        mov       DWORD PTR [-40+rbp], eax                      #6.13
..B1.2:                         # Preds ..B1.3 ..B1.1
        mov       eax, DWORD PTR [-40+rbp]                      #6.18
        mov       edx, DWORD PTR [-16+rbp]                      #6.22
        cmp       eax, edx                                      #6.22
        jl        ..B1.4        # Prob 50%                      #6.22
        jmp       ..B1.6        # Prob 100%                     #6.22
..B1.3:                         # Preds ..B1.5 ..B1.4
        mov       eax, 1                                        #6.27
        add       eax, DWORD PTR [-40+rbp]                      #6.27
        mov       DWORD PTR [-40+rbp], eax                      #6.27
        jmp       ..B1.2        # Prob 100%                     #6.27
..B1.4:                         # Preds ..B1.2
        mov       eax, DWORD PTR [-40+rbp]                      #7.12
        movsxd    rax, eax                                      #7.7
        imul      rax, rax, 4                                   #7.7
        add       rax, QWORD PTR [-32+rbp]                      #7.7
        mov       eax, DWORD PTR [rax]                          #7.7
        mov       edx, DWORD PTR [-48+rbp]                      #7.18
        cmp       eax, edx                                      #7.18
        jg        ..B1.3        # Prob 50%                      #7.18
..B1.5:                         # Preds ..B1.4
        mov       eax, DWORD PTR [-40+rbp]                      #8.16
        movsxd    rax, eax                                      #8.11
        imul      rax, rax, 4                                   #8.11
        add       rax, QWORD PTR [-32+rbp]                      #8.11
        mov       eax, DWORD PTR [rax]                          #8.11
        mov       DWORD PTR [-36+rbp], eax                      #8.4
        mov       eax, DWORD PTR [-44+rbp]                      #9.19
        movsxd    rax, eax                                      #9.14
        imul      rax, rax, 4                                   #9.14
        add       rax, QWORD PTR [-32+rbp]                      #9.14
        mov       edx, DWORD PTR [-40+rbp]                      #9.9
        movsxd    rdx, edx                                      #9.4
        imul      rdx, rdx, 4                                   #9.4
        add       rdx, QWORD PTR [-32+rbp]                      #9.4
        mov       eax, DWORD PTR [rax]                          #9.14
        mov       DWORD PTR [rdx], eax                          #9.4
        mov       eax, DWORD PTR [-44+rbp]                      #10.9
        movsxd    rax, eax                                      #10.4
        imul      rax, rax, 4                                   #10.4
        add       rax, QWORD PTR [-32+rbp]                      #10.4
        mov       edx, DWORD PTR [-36+rbp]                      #10.14
        mov       DWORD PTR [rax], edx                          #10.4
        mov       eax, 1                                        #11.4
        add       eax, DWORD PTR [-44+rbp]                      #11.4
        mov       DWORD PTR [-44+rbp], eax                      #11.4
        jmp       ..B1.3        # Prob 100%                     #11.4
..B1.6:                         # Preds ..B1.2
        mov       eax, DWORD PTR [-44+rbp]                      #15.17
        movsxd    rax, eax                                      #15.12
        imul      rax, rax, 4                                   #15.12
        add       rax, QWORD PTR [-32+rbp]                      #15.12
        mov       edx, DWORD PTR [-16+rbp]                      #15.7
        movsxd    rdx, edx                                      #15.2
        imul      rdx, rdx, 4                                   #15.2
        add       rdx, QWORD PTR [-32+rbp]                      #15.2
        mov       eax, DWORD PTR [rax]                          #15.12
        mov       DWORD PTR [rdx], eax                          #15.2
        mov       eax, DWORD PTR [-44+rbp]                      #16.7
        movsxd    rax, eax                                      #16.2
        imul      rax, rax, 4                                   #16.2
        add       rax, QWORD PTR [-32+rbp]                      #16.2
        mov       edx, DWORD PTR [-48+rbp]                      #16.12
        mov       DWORD PTR [rax], edx                          #16.2
        mov       eax, DWORD PTR [-44+rbp]                      #18.9
        leave                                                   #18.9
        ret                                                     #18.9

quick_sort:
..B2.1:                         # Preds ..B2.0
        push      rbp                                           #21.49
        mov       rbp, rsp                                      #21.49
        sub       rsp, 32                                       #21.49
        mov       QWORD PTR [-24+rbp], rdi                      #21.49
        mov       DWORD PTR [-16+rbp], esi                      #21.49
        mov       DWORD PTR [-8+rbp], edx                       #21.49
        mov       eax, DWORD PTR [-16+rbp]                      #22.6
        mov       edx, DWORD PTR [-8+rbp]                       #22.13
        cmp       eax, edx                                      #22.13
        jge       ..B2.5        # Prob 50%                      #22.13
..B2.2:                         # Preds ..B2.1
        mov       rax, QWORD PTR [-24+rbp]                      #23.11
        mov       edx, DWORD PTR [-16+rbp]                      #23.11
        mov       ecx, DWORD PTR [-8+rbp]                       #23.11
        mov       rdi, rax                                      #23.11
        mov       esi, edx                                      #23.11
        mov       edx, ecx                                      #23.11
        call      partition                                     #23.11
..B2.8:                         # Preds ..B2.2
        mov       DWORD PTR [-32+rbp], eax                      #23.11
..B2.3:                         # Preds ..B2.8
        mov       eax, DWORD PTR [-32+rbp]                      #23.11
        mov       DWORD PTR [-28+rbp], eax                      #23.9
        mov       rax, QWORD PTR [-24+rbp]                      #24.3
        mov       edx, DWORD PTR [-16+rbp]                      #24.3
        mov       ecx, -1                                       #24.3
        add       ecx, DWORD PTR [-28+rbp]                      #24.3
        mov       rdi, rax                                      #24.3
        mov       esi, edx                                      #24.3
        mov       edx, ecx                                      #24.3
        call      quick_sort                                    #24.3
..B2.4:                         # Preds ..B2.3
        mov       rax, QWORD PTR [-24+rbp]                      #25.3
        mov       edx, 1                                        #25.3
        add       edx, DWORD PTR [-28+rbp]                      #25.3
        mov       ecx, DWORD PTR [-8+rbp]                       #25.3
        mov       rdi, rax                                      #25.3
        mov       esi, edx                                      #25.3
        mov       edx, ecx                                      #25.3
        call      quick_sort                                    #25.3
..B2.5:                         # Preds ..B2.4 ..B2.1
        leave                                                   #27.1
        ret                                                     #27.1