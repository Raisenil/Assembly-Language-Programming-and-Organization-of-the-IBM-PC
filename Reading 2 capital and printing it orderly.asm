;Q:Display '?'. Read 2 capitals and display in alphabetical order.
.model small
.stack 100h
.code
main proc
    mov ah,2
    mov dl,'?'
    int 21h
    
    mov ah,1
    int 21h
    mov bl, al    
    
    mov ah,1
    int 21h
    mov bh, al
    
    
    cmp bl, bh 
 
    jg switch
    jmp display
    
    switch:
    xchg bl,bh
    
    display:
    mov ah,2
    mov dl,0dh
    int 21h   
    mov dl,0ah
    int 21h 
    
    mov ah,2
    mov dl,bl
    int 21h 
    
    mov ah,2
    mov dl,bh
    int 21h
    
    out_:
    mov ah,4ch
    int 21h
    main endp
end main