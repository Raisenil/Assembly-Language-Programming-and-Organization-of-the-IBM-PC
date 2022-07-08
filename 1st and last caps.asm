;Q:First and last capital
.model small
.stack 100h
.data
Prompt db 'Type a line: $'
No_caps db 'No capital $'
First db '[' Caps db 'caps$'
Last db '@'
.code
main proc
    mov ax, @data 
    mov ds,ax
    
    mov ah,9
    lea dx, Prompt
    int 21h
    
    mov ah,1
    int 21h
    
    While:
    cmp al,0dh
    je End_while
    
    cmp al, 'A'
    jnge End_if
    cmp al, 'Z'
    jnle End_if
    
    cmp al,First
    jnl Check_last
    mov First,al
    
    Check_last:
    cmp al,Last
    jng End_if
    mov Last,al
    
    End_if:
    int 21h
    jmp While
    
    End_while:
    mov ah,9
    cmp First, ']'
    jne Caps
    lea dx,No_caps
    jmp Display
    
    Caps:
    lea dx, Caps
    
    Display:
    int 21h
    
    Exit:
    mov ah, 4ch
    int 21h
    main endp
end main

;;Done with top-down program design
    