include 'emu8086.inc' 

.model large
.stack 100h
.data
msg db  "Fruit Shop$"
.code
main proc
    mov ax,@data
    mov ds,ax
    mov cx,1
    
hopper:
    mov bl, 20h
    mov ah, 02h
    int 21h
    
    loop hopper
    lea dx,msg
    mov ah, 09h
    int 21h
    
    mov ah,02h
    mov dl,0Ah
    int 21h
    mov dl,0Dh
    int 21h

consol1:
    mov ah,02h
    mov dl,0Ah
    int 21h
    mov ah,02h
    mov dl,0Ah
    int 21h
    mov dl,0Dh
    int 21h

    PrintN "Product Name:"
    PrintN "1. Green Apple"
    PrintN "2. Watermalon"
    PrintN "3. Orange"
    PrintN "Press 1,2 or 3..."

    mov ah,02h
    mov dl,0Ah
    int 21h
    mov ah,02h
    mov dl,0Ah
    int 21h
    mov dl,0Dh
    int 21h

    mov ah,01h
    int 21h
    
    cmp al,31h
    je consol2
    
    cmp al, 32h
    je consol2

    cmp al,33h
    je consol2

    jmp np
    mov ah,02h
    mov dl,0Ah
    int 21h
    mov ah,02h
    mov dl,0Ah
    int 21h
    mov dl,0Dh
    int 21h  
    
consol2:
    mov ah,02h
    mov dl,0Ah
    int 21h
    mov ah,02h
    mov dl,0Ah
    int 21h
    mov dl,0Dh
    int 21h

    printn "Date Arrival: 10/12/2019"
    printn "Expire Date: 10/06/2020"
    printn "Selling Price: 120"
    printn "Price Unit: 1"
    
    mov ah,02h
    mov dl,0Ah
    int 21h
    mov ah,02h
    mov dl,0Ah
    int 21h
    mov dl,0Dh
    int 21h

    printn "Press 1 to Order"
    printn "Press 2 for Home"
    printn "Press any key for exit."
    
    mov ah,02h
    mov dl,0Ah
    int 21h
    mov ah,02h
    mov dl,0Ah
    int 21h
    mov dl,0Dh
    int 21h
    mov ah,01h
    int 21h
    
    mov dl, al
    mov dl, al
    
    cmp dl, 31h
    je consol3

    cmp dl,32h
    je consol1

    jmp exit

consol3:
    mov ah,02h
    mov dl,0Ah
    int 21h
    mov ah,02h
    mov dl,0Ah
    int 21h
    mov dl,0Dh
    int 21h

    printn "Thank You for Your Order!!"

    jmp exit

np:
    mov ah,02h
    mov dl,0Ah
    int 21h
    mov ah,02h
    mov dl,0Ah
    int 21h
    mov dl,0Dh
    int 21h

print "Sorry!!! Product is not available"

exit:
    mov ah,02h
    int 21h

main endp
end main