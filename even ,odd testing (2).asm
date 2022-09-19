;even ,odd testing (2)
.model small
.stack 100h
.data
a db "ODD number $"
b db "EVEN number $"
.code
main proc
    mov ax, @data
    mov ds, ax
    
    xor bx,bx
    mov ah, 1
    int 21h
    
    while:
    cmp al,0dh
    je end_while
    and al,0fh
    SHL bx,1
    OR bl,al
    int 21h
    
    Test al,1
    jne odd_number
    je even_number
    
    odd_number:
    mov ah, 2
    mov dl, 10
    int 21h
    mov dl ,13
    int 21h
    
    mov ah,9
    lea dx,a
    int 21h
    jmp end_while 
    
    even_number:
    mov ah,9
    lea dx,b
    int 21h
    
    end_while:
    mov ah,4ch
    int 21h
    main endp
end main