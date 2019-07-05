    [BITS 64]
    SECTION .text
    GLOBAL memcpy:function

memcpy:
    MOV RAX, RDI
    XOR RCX, RCX

loop:
    CMP RCX, RDX
    JE end
    CMP BYTE [RDI + RCX], 0
    JZ end
    CMP BYTE [RSI + RCX], 0
    JZ end
    MOV R11B, [RSI + RCX]
    MOV [RDI + RCX], R11B
    INC RCX
    JMP loop

end:
    RET
