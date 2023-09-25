.model small

.stack

.data
  
 number dw 5678h 
  
.code
 MOV AX,@data
 MOV DS,AX
 MOV AX,0
 
 MOV BX,offset number
 MOV AX,[BX]
 MOV SI,10h
 MOV CX,4h
 L1:
 MOV DX,0
 DIV SI
 ADD DL,30h
 PUSH DX
 LOOP L1
 
 PUSH BP
 MOV BP,SP
 MOV SI,0
 MOV CX,4h
 
 MOV AH,2
 L2:
 ADD SI,2
 MOV DX,[BP+SI]
 INT 21H  
 LOOP L2 
    
    
.exit