;TITLE: DISPLAYING ALL IBM CHARACTER USING LOOP
.MODEL SMALL
.STACK 100H
.CODE
MAIN PROC
    MOV AH, 2
    MOV CX, 256 ;NO OF CHARS IN A IBM PC
    MOV DL, 0   ;DL HAS ASCII CODE NULL CHAR
    
    ;WE WILL INC DL BY 1 AND PRINT
    ;AND WE WILL DEC CX SO THAT PROGRAM CAN KNOW HOW MANY TIME THE LOOP HAS TO BE DONE
    
    PRINT_LOOP:
        INT 21H     ;DISPLAY THE CHAR IN DL
        INC DL ;DL=0+1=1 (FOR 1ST TIME)
        DEC CX ;CX=256-1=255 (FOR 1ST TIME)
        JNZ PRINT_LOOP ;JUMP IF NOT ZERO    ;IT WILL JUMP UNTIL CX IS NOT ZERO
        
        MOV AH, 4CH
        INT 21H
        MAIN ENDP
END MAIN