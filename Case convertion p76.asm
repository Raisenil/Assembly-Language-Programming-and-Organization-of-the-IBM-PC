;TITLE: CASE CONVERTION PROGRAM

.MODEL SMALL
.STACK 100H
.DATA
MSG1    DB  'ENTER A LOWER CASE LETTER: $'
MSG2    DB  0DH,0AH,'IN UPPER CASE: '
CHAR    DB  ?,'$'

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS,AX
    
    LEA DX, MSG1
    MOV AH, 9
    INT 21H
    
    MOV AH, 1
    INT 21H
    SUB AL, 20H
    ;TO CONVERT IT TO UPPER CASE WE SUB 20H
    ;AS A=41H a=61H
    ;a-20H=61H-20H=41H=A
    ;SAME WAY WE CAN ADD 20H TO CONVERT UPPER TO LOWER
    
    ;(30H-39H)=0-9=048-057(ASCII) 
    ;(41H-5AH)=A-Z=065-090(ASCII)
    ;(61H-7AH)=a-z=097-122(ASCII)
    MOV CHAR, AL ;STORING THE CONVERTED LETTER TO CHAR
    
    LEA DX, MSG2
    MOV AH, 9
    INT 21H
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN 



;by using if else we can check if the entered letter upper or lower
;then we can convert the opposite and show it as output

     
    ;upper to lower
    ;MOV AH, 1
    ;INT 21H
    ;ADD AL, 20H
    ;MOV CHAR, AL   