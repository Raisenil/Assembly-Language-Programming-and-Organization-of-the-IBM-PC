;Read char if char y or Y display otherwise terminate
.model small
.stack 100h
.code
main proc
    mov ah,1
    int 21h
    mov bl,al
    
    cmp al, "Y"
    je then
    cmp al, "y"
    je then
    
    jmp else
    
    then:
    mov ah, 2
    mov dl, al
    int 21h
    jmp else
    
    else:
    mov ah,4ch
    int 21h
    
    main endp
end main