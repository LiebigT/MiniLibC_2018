    [BITS 64]
    SECTION .text
    GLOBAL strlen:function

strlen:
    XOR RCX, RCX

loop:
    CMP BYTE [RDI + RCX], 0
    JZ end
    INC RCX
    JMP loop

end:
    MOV RAX, RCX
    RET
