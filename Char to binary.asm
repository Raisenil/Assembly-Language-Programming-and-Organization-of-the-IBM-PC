;Enter a char, print in binary
.model small
.stack 100h
.data
m1 db 'Type: $'
m2 db 'binary: $'
c1 db ?
.code
main proc
    mov ax, @data
    mov ds,ax
    
    mov ah,9
    Lea dx,m1
    int 21h
    mov ah,1
    int 21h
    mov bl,al
    
    mov ah,2 
    mov dl,0AH
    int 21h
    mov dl,0dh
    int 21h
    
    mov ah,9
    lea dx,m2
    int 21h 
    
    mov bh,0
    mov cx,8
    mov ah,2   
    
    
    L1:
    SHL bl,1
    jc one
    mov dl,'0'
    int 21h
    jmp l1end
    
    one:
    mov dl,'1'
    int 21h
    inc bh
    
    l1end:
    loop l1
    add bh,30h
    mov cl,bh
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main