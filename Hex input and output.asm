;Hex input and output
.model small
.stack 100h
.code
main proc
    mov ah,1
    For1:
    int 21h
    cmp al,0dh
    je end_for
    
    cmp al,41h
    jge letter
    sub al,48
    jmp shift
    
    letter:
    sub al, 37h
    
    shift:
    SHL bx,cl
    or bl,al
    jmp for1
    
    end_for:
    mov cx,4
    mov ah,2
    
    for2:
    mov dl,bh
    SHR dl,4
    shl bx,4
    cmp dl,10
    jge letter2
    
    add dl,48
    int 21h
    jmp end_of_loop2
    
    letter2:
    add dl, 37h
    int 21h
    
    end_of_loop2:
    loop for2
    
    Exit:
    mov ah,4ch
    int 21h
    main endp
end main