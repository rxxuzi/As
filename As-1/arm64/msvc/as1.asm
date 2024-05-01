        ;ARM64

        IMPORT  |__acrt_iob_func|
        IMPORT  |__stdio_common_vfprintf|

         COMMON |?_OptionsStorage@?1??__local_stdio_printf_options@@9@9|, 0x8
                                                        ; `__local_stdio_printf_options'::`2'::_OptionsStorage

        ;Flags[SingleProEpi] functionLength[72] RegF[0] RegI[0] H[0] frameChainReturn[Chained] frameSize[48]

        ;Flags[SingleProEpi] functionLength[32] RegF[0] RegI[0] H[0] frameChainReturn[Chained] frameSize[16]

        ;Code Words[3], Epilog Start Index[8], E[1], X[0], Function Length[24]=96 bytes
        ;set_fp
        ;save_fplr_x
        ;nop
        ;nop
        ;nop
        ;nop
        ;alloc_s
        ;end
        ;save_fplr_x
        ;alloc_s
        ;end
        ;nop

|main|  PROC
|$LN3|
        stp         fp,lr,[sp,#-0x10]!
        mov         fp,sp
        adrp        x8,|$SG4980|
        add         x0,x8,|$SG4980|
        bl          printf
        mov         w0,#0
        ldp         fp,lr,[sp],#0x10
        ret

        ENDP  ; |main|