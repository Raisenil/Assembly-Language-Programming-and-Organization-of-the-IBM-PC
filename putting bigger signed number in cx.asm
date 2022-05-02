;Q:AX & BX contains signed number put the bigger in cx

.model small
.stack 100h
.code
main proc 
    mov ax, 70
    mov bx, 80
    
    mov cx,ax     ;moving ax to cx
    
    cmp bx, cx    ;comparing with bx to cx(ax)
    jle NEXT      ;less then equal to
    mov cx,bx     ;if bx bigger then bx goes to cx
    
    mov ah, 2
    mov dx, cx    ;printing the contant of cx as asxii code
    int 21h
    jmp END_
    
    NEXT:
    mov ah, 2
    mov dx, cx
    int 21h
    jmp END_
    
    END_:
    mov ah,4ch
    int 21h
    main endp
end main