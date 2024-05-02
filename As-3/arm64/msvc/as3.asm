        ;ARM64

        ;Flags[SingleProEpi] functionLength[372] RegF[0] RegI[0] H[0] frameChainReturn[UnChained] frameSize[32]
        ;Flags[SingleProEpi] functionLength[116] RegF[0] RegI[0] H[0] frameChainReturn[Chained] frameSize[48]

|partition| PROC
|$LN7|
        sub         sp,sp,#0x20
        str         x0,[sp,#0x18]
        str         w1,[sp,#0xC]
        str         w2,[sp,#8]
        ldr         w8,[sp,#8]
        sxtw        x8,w8
        mov         x9,#4
        mul         x9,x8,x9
        ldr         x8,[sp,#0x18]
        add         x8,x8,x9
        ldr         w8,[x8]
        str         w8,[sp,#0x10]
        ldr         w8,[sp,#0xC]
        str         w8,[sp]
        ldr         w8,[sp,#0xC]
        str         w8,[sp,#4]
        b           |$LN4@partition|
|$LN2@partition|
        ldr         w8,[sp,#4]
        add         w8,w8,#1
        str         w8,[sp,#4]
|$LN4@partition|
        ldr         w9,[sp,#8]
        ldr         w8,[sp,#4]
        cmp         w8,w9
        bge         |$LN3@partition|
        ldr         w8,[sp,#4]
        sxtw        x8,w8
        mov         x9,#4
        mul         x9,x8,x9
        ldr         x8,[sp,#0x18]
        add         x8,x8,x9
        ldr         w9,[sp,#0x10]
        ldr         w8,[x8]
        cmp         w8,w9
        bgt         |$LN5@partition|
        ldr         w8,[sp,#4]
        sxtw        x8,w8
        mov         x9,#4
        mul         x9,x8,x9
        ldr         x8,[sp,#0x18]
        add         x8,x8,x9
        ldr         w8,[x8]
        str         w8,[sp,#0x14]
        ldr         w8,[sp]
        sxtw        x8,w8
        mov         x9,#4
        mul         x9,x8,x9
        ldr         x8,[sp,#0x18]
        add         x8,x8,x9
        ldr         w9,[sp,#4]
        sxtw        x9,w9
        mov         x10,#4
        mul         x10,x9,x10
        ldr         x9,[sp,#0x18]
        add         x9,x9,x10
        ldr         w8,[x8]
        str         w8,[x9]
        ldr         w8,[sp]
        sxtw        x8,w8
        mov         x9,#4
        mul         x9,x8,x9
        ldr         x8,[sp,#0x18]
        add         x9,x8,x9
        ldr         w8,[sp,#0x14]
        str         w8,[x9]
        ldr         w8,[sp]
        add         w8,w8,#1
        str         w8,[sp]
|$LN5@partition|
        b           |$LN2@partition|
|$LN3@partition|
        ldr         w8,[sp]
        sxtw        x8,w8
        mov         x9,#4
        mul         x9,x8,x9
        ldr         x8,[sp,#0x18]
        add         x8,x8,x9
        ldr         w9,[sp,#8]
        sxtw        x9,w9
        mov         x10,#4
        mul         x10,x9,x10
        ldr         x9,[sp,#0x18]
        add         x9,x9,x10
        ldr         w8,[x8]
        str         w8,[x9]
        ldr         w8,[sp]
        sxtw        x8,w8
        mov         x9,#4
        mul         x9,x8,x9
        ldr         x8,[sp,#0x18]
        add         x9,x8,x9
        ldr         w8,[sp,#0x10]
        str         w8,[x9]
        ldr         w0,[sp]
        add         sp,sp,#0x20
        ret

        ENDP  ; |partition|

|quick_sort| PROC
|$LN4|
        stp         fp,lr,[sp,#-0x30]!
        mov         fp,sp
        str         x0,[sp,#0x20]
        str         w1,[sp,#0x10]
        str         w2,[sp,#0x14]
        ldr         w9,[sp,#0x14]
        ldr         w8,[sp,#0x10]
        cmp         w8,w9
        bge         |$LN2@quick_sort|
        ldr         w2,[sp,#0x14]
        ldr         w1,[sp,#0x10]
        ldr         x0,[sp,#0x20]
        bl          partition
        mov         w8,w0
        str         w8,[sp,#0x18]
        ldr         w8,[sp,#0x18]
        sub         w2,w8,#1
        mov         w2,w2
        ldr         w1,[sp,#0x10]
        ldr         x0,[sp,#0x20]
        bl          quick_sort
        ldr         w8,[sp,#0x18]
        add         w1,w8,#1
        ldr         w2,[sp,#0x14]
        mov         w1,w1
        ldr         x0,[sp,#0x20]
        bl          quick_sort
|$LN2@quick_sort|
        ldp         fp,lr,[sp],#0x30
        ret

        ENDP  ; |quick_sort|