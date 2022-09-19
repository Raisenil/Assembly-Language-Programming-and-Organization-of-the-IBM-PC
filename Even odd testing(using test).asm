;Even or odd testing
.model small
.stack 100h 
.data 
msgeven db "even $" 
msgodd  db "odd $"
.code
main proc
    mov ax, @data
    mov ds,ax 
    
    mov ah,1
    int 21h
    
    Test al, 1
    jz below  ;here 0 is odd
    jnz even  ;here 1 is even
    
     
    even:
    mov ah, 9
    lea dx,msgeven
    int 21h
    jmp exit
    
    below:
    mov ah, 9
    lea dx,msgodd
    int 21h
    
    exit:
    mov ah, 4ch
    int 21h
    main endp
end main
    