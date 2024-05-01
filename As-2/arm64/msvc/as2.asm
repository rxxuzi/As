        ;ARM64

        IMPORT  |_fltused|

        ;Flags[SingleProEpi] functionLength[40] RegF[0] RegI[0] H[0] frameChainReturn[UnChained] frameSize[16]
        ;Flags[SingleProEpi] functionLength[40] RegF[0] RegI[0] H[0] frameChainReturn[UnChained] frameSize[16]
        ;Flags[SingleProEpi] functionLength[48] RegF[0] RegI[0] H[0] frameChainReturn[UnChained] frameSize[16]
        ;Flags[SingleProEpi] functionLength[56] RegF[0] RegI[0] H[0] frameChainReturn[UnChained] frameSize[16]

|circle_area| PROC
|$LN3|
        sub         sp,sp,#0x10
        str         d0,[sp]
        ldr         d16,[sp]
        ldr         d17,[sp]
        fmul        d16,d16,d17
        adrp        x8,PI
        ldr         d17,[x8,PI]
        fmul        d0,d16,d17
        add         sp,sp,#0x10
        ret

        ENDP  ; |circle_area|

|circle_circumference| PROC
|$LN3|
        sub         sp,sp,#0x10
        str         d0,[sp]
        fmov        d16,#2
        ldr         d17,[sp]
        fmul        d16,d16,d17
        adrp        x8,PI
        ldr         d17,[x8,PI]
        fmul        d0,d16,d17
        add         sp,sp,#0x10
        ret

        ENDP  ; |circle_circumference|

|sphere_surface_area| PROC
|$LN3|
        sub         sp,sp,#0x10
        str         d0,[sp]
        fmov        d16,#4
        ldr         d17,[sp]
        fmul        d16,d16,d17
        ldr         d17,[sp]
        fmul        d16,d16,d17
        adrp        x8,PI
        ldr         d17,[x8,PI]
        fmul        d0,d16,d17
        add         sp,sp,#0x10
        ret

        ENDP  ; |sphere_surface_area|

|sphere_volume| PROC
|$LN4|
        sub         sp,sp,#0x10
        str         d0,[sp]
        ldr         d16,|$LN3@sphere_vol|
        ldr         d17,[sp]
        fmul        d16,d16,d17
        ldr         d17,[sp]
        fmul        d16,d16,d17
        ldr         d17,[sp]
        fmul        d16,d16,d17
        adrp        x8,PI
        ldr         d17,[x8,PI]
        fmul        d0,d16,d17
        add         sp,sp,#0x10
        ret
|$LN3@sphere_vol|
        DCFD         1.33333

        ENDP  ; |sphere_volume|