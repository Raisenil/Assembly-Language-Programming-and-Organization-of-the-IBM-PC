;Reversing bit pattern
.model small
.stack 100h
.code
main proc
    mov cx, 8
    reverse:
    SHL al, 1
    RCR bl, 1
    loop reverse
    mov al,bl
    exit:
    mov ah,4ch
    int 21h
    main endp 
end main
    