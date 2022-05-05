;If AL has 1/3 display "o".if it has 2/4 display "e"
.model small
.stack 100h
.code
main proc
    mov al, 4
   
    cmp al, 1
    je odd
    cmp al, 3
    je odd
    
    cmp al, 2
    je even
    cmp al, 4
    je even
    
    odd:
    mov ah, 2
    mov dl, "o"
    int 21h
    jmp end_
    
    even:    
    mov ah, 2
    mov dl, "e"
    int 21h
    jmp end_
    
    end_:
    mov ah, 4ch
    int 21h
    
    main endp
end main