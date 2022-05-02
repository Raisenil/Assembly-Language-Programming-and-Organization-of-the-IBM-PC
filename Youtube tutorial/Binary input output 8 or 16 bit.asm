;BINARY INPUT OUTPUT 
;LINK- https://youtu.be/7-CR22ZY4zw
.MODEL SMALL
.STACK 100H
.DATA
    COUNT DB 0 
    msg1 DB "ENTER 8-BIT BINARY; $"
    msg2 DB "OUTPUT IN BINARY FORMAT: $"
.CODE
MAIN PROC 
    MOV CX, 8 ;8 bit counter 
    
    MOV AX, @DATA
    MOV DS, AX
     
    MOV BX, 0
      
    ;PRINT "INPUT : "
    LEA DX, msg1
    MOV AH, 9
    INT 21H 
    
    MOV AH, 1  
    
    FOR1:
    INT 21h
    CMP AL , 0DH
    JE END_FOR1
    SUB AL, 48
    SHL BX, 1
    OR BL, AL
    INC COUNT 
    DEC CX 
    JNE FOR1          
               
               
    END_FOR1: 
    
    MOV AH, 2
    MOV DL, 0AH
    INT 21h
    MOV dl, 0DH
    INT 21H
    
    ;PRINT "OUTPUT : "
    LEA DX, msg2
    MOV AH, 9
    INT 21H 
    
    MOV CL, 16
    SUB CL, COUNT  
    RCL BX, CL
              
    XOR CH, CH
    MOV CL, COUNT
    
    MOV AH, 2 
    
    FOR2:
    RCL BX, 1
    JC OUTPUT_ONE
    MOV DL, '0'
    INT 21h
    JMP LAST_OF_LOOP
    
    OUTPUT_ONE:
    MOV DL, '1'
    INT 21H
    
    LAST_OF_LOOP:
    LOOP FOR2
    
               
    
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN
    