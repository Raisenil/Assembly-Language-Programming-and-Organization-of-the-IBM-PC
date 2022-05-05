;Read char.IF upper case display
.model small
.stack 100h
.code
main proc
    mov ah,1
    int 21h
    
    cmp al,"A"
    jnge exit
    cmp al,"Z"
    jnle exit
    
    mov dl,al
    mov ah,2
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
    
    