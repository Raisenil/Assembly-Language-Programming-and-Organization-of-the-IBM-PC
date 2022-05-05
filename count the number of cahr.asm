;count the number of cahr
.model small
.stack 100h
.code
main proc
    mov bx,0
    mov ah,1
    int 21h
    
    
    while:
    cmp al,0dh
    je exit_while
    inc bx
    int 21h
    jmp while
    
    exit_while: 
    mov ah,2
    mov dl,0dh
    int 21h
    mov dl,0ah 
    int 21h
    
    mov ah,2
    mov dx,bx
    int 21h
    
    
    mov ah,4ch
    int 21h
    
    main endp
end main
    