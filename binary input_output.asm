;Binary input/output
.model small
.stack 100h
.data
.code

main proc
    mov bx,0
    mov ah,1
    
    for1:
    int 21h
    cmp al,0DH
    je end_for1
    sub al,48
    shl bx,1
    or bl,al
    inc bh
    jmp for1
    
    end_for1:
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    
    mov cl,16
    sub cl,bh
    RCl BX,Cl
    xor ch,ch
    mov cl, bh
    
    mov ah,2
    
    for2:
    RCL bx,1
    jc output_one
    mov dl, '0'
    int 21h
    jmp last_loop
    
    output_one:
    mov dl, '1'
    int 21h
    
    last_loop:
    loop for2
    
    Exit:
    mov ah,4ch
    int 21h
    main endp
end main