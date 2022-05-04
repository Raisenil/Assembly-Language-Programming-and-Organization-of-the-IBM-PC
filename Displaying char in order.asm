;AL & BL contains extended ascii char
;display the one that comes first in char order

.model small
.stack 100h
.code
main proc
    mov al, 66
    mov bl, 65
    
    mov ah, 2
    cmp al ,bl
    jnbe else
    
    mov dl, al
    jmp display
    
    else:
    mov dl,bl
    int 21h 
    jmp exit
        
        
    display:
    int 21h
    
    exit:   
    mov ah, 4ch
    int 21h 
    
    main endp
end main