;If al contains neg number put -1 in bl
;if al contains positive number put +1 in bl

include 'emu8086.inc'
.model small
.stack 100h
.code 

main proc
    mov ah, 1    
    int 21h     
    mov dx,ax
  
    mov ax, dx
    
    
    cmp ax, 0
    
    JL negative
    JE zero  
    JG positive
    
    negative:
    mov bx, -1
    
    mov ah, 2
    mov dl, 0dh
    int 21h       
    mov dl, 0ah
    int 21h   
    
    PrintN "bx=-1"
    jmp exit 
    
    zero:
    mov bx, 0  
    
    mov ah, 2
    mov dl, 0dh
    int 21h
    mov dl, 0ah
    int 21h
    
    PrintN "bx=0"
    jmp exit
    
    positive:
    mov bx, 1
    
    mov ah, 2
    mov dl, 0dh
    int 21h
    mov dl, 0ah
    int 21h
    
    PrintN "bx=1"
    jmp exit
    
    exit:
    mov ah,4ch
    int 21h 
    
    main endp
end main