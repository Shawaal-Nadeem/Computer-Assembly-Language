.model small

.data
 
 A db 1h,2h,3h,4h,5h,6h,7h,8h,9h,10h
 B db 1h,1h,1h,1h,1h,1h,1h,1h,1h,1h
 C db 10 dup 0     
 
.code
    
 PROC main
 
 MOV AX,@data
 MOV DS,AX
 MOV AX,0
 MOV BX,offset A
 PUSH BX
 MOV BX,offset B
 PUSH BX
 MOV BX,offset C
 PUSH BX
 MOV CX,10h
 PUSH CX
 CALL sum   

.exit     
 main ENDP
 
 PROC sum
 
 PUSH BP
 MOV BP,SP 
 MOV SI,10h
 MOV BX,offset [BP+SI]
 SUB SI,2h
 MOV DI,offset [BP+SI]
 SUB SI,6h
 MOV CX,[BP+SI]
 MOV SI,0
 MOV DX,BP
 MOV BP,0
 L1:
 MOV AL,[BX+SI]
 ADD AL,[DI,BP]
 
 MOV [C+SI],AL
 INC SI
 INC BP
 LOOP L1  
 
 XCHG BP,DX
 MOV DX,0
 POP BP
 RET 8  
 sum ENDP
    
