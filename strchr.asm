    [BITS 64]
    SECTION .text
    GLOBAL strchr:function

strchr:
    MOV R11B, SIL
    CMP BYTE [RDI], 0
    JZ end
    CMP BYTE [RDI], R11B
    JE end
    INC RDI
    JMP strchr

end:
    MOV RAX, RDI
    RET
