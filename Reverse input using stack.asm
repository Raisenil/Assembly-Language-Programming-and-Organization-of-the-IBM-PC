;Reverse input using stack
.model small
.stack 100h
.code
main proc
    mov ah,2
    mov dl, '>'
    int 21h
    
    xor cx,cx
    
    mov ah,1
    int 21h
    
    while:
    cmp al,0DH
    je End_while
    push ax
    inc cx
    int 21h
    jmp while
    
    End_while:
    mov ah,2
    mov dl,0DH
    int 21h
    mov dl,0AH
    int 21h
    jcxz exit
    
    Top:
    pop dx
    int 21h
    loop TOP
    
    EXIT:
    mov ah,4ch
    int 21h
    MAIN ENDP
END MAIN