;write count-controlled loop to display a row of 8 stars
.model small
.stack 100h
.code
main proc
    mov cx,8
    mov ah,2
    mov dl,"*"
    
    loop_:
    int 21h
    loop loop_
    jmp exit
    
    exit:
    mov ah,4ch
    int 21h
    
    main endp
end main
    