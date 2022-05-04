;Replace the number in AX by its absolute value

.model small
.stack 100h
.code
main proc
    mov ax, -1
    
    
    cmp ax, 0
    jnl exit    ;jump if not less then or equal to
    neg ax
    
    exit:
    mov ah, 2
    mov dx, ax
    int 21h
    
     
    mov ah, 4ch
    int 21h
    main endp
end main
    
    
    