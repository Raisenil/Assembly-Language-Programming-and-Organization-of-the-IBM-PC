;title : String line print

.MODEL SMALL
.STACK 100H
.DATA
MSG DB  'HELLO$' ;$ HAVE TO BE GIVEN AFTER STRING LINE END
.CODE

MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    ;DISPLAY SRING
    LEA DX, MSG
    MOV AH, 9   ;DISPLAY STRING FUNCTION
    INT 21H
    
    MOV AH, 4CH  
    INT 21H
    
    MAIN ENDP
END MAIN
    