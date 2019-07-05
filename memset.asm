    [BITS 64]
    SECTION .text
    GLOBAL memset:function

memset:
    MOV RAX, RDI
    XOR RCX, RCX

loop:
    CMP RDX, RCX
    JZ end
    MOV [RAX], SIL
    INC RCX
    INC RAX
    JMP loop

end:
    MOV RAX, RDI
    RET
