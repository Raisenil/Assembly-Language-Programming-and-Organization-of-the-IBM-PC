TITLE : ADDITION OF 2 NUMBER

.MODEL SMALL
.STACK 100H
.DATA

A   DW  2
B   DW  5
SUM DW  ?

.CODE

MAIN PROC
    ;initialize DS
    MOV AX, @DATA
    MOV DS, AX  
                  
    ;add the bumber
    MOV AX, A  ;AX HAS A
    ADD AX, B  ;AX HAS A+B
    MOV SUM, AX;SUM=A+B 

    ;exit to dos
    MOV AX, 4CH
    INT 21H
    
    MAIN ENDP
END MAIN        