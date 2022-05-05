;Read character until black is read
.model small
.stack 100h
.code
main proc
    mov ah,1
    
    loop_:
    int 21h
    cmp al, ' '
    jne loop_
    jmp exit
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main