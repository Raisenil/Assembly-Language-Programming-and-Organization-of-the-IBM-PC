;Even or odd testing
.model small
.stack 100h
.data
msgeven db 'Even$'
msgodd db 'Odd$'
.code
main proc 
    mov ax,@data
    mov ds,ax
    
    mov ah,1
    int 21h
    
    Test al,1
    jnz below
    jz even
    
    even: 
    mov ah,2
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h
    
    mov ah,9
    LEA dx,msgeven
    int 21h
    jmp exit
    
    below:
    mov ah,2
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h
    
    mov ah,9
    LEA dx,msgodd
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
    