    [BITS 64]
    SECTION .text
    GLOBAL strcmp:function

strlen:
    XOR RCX, RCX

loop:
    MOV AL, [RDI + RCX]
    MOV R8B, [RSI + RCX]
    CMP AL, 0
    JE end
    CMP R8B, 0
    JE end
    CMP AL, R8B
    JNE end
    INC RCX
    JMP loop

end:
    SUB AL, R8B
    MOVSX RAX, AL
    RET
