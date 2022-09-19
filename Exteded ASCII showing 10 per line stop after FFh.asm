;Exteded ASCII showing 10 per line stop after FFh
.model small
.stack 100h
.code
main proc
    mov bh,0
    mov ah,2
    mov cx,7fh
    mov dl,80h
    mov bl,80h
    
    continue:
    mov dl,bl
    int 21h
    dec cx
    inc dl
    
    mov bl,dl
    mov dl,20h
    int 21h
    inc bh
    cmp bh, 10
    je count
    cmp cx,0
    jne continue
    jmp out_
    
    count:
    mov bh,0
    mov dl,0AH
    int 21h
    mov dl,0dh
    int 21h
    jmp continue
    
    out_:
    mov ah,4ch
    int 21h
    main endp
end main