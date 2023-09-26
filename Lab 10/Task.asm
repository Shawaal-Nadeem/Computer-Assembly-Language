.model small

.stack

.data
 
 num1 db EQU 5h
 num2 db EQU 5h
 result db EQU 0
.code
 PROC main
 MOV AX,@data
 MOV DS,AX    
 MOV AX,0
 MOV ES,AX
 MOV word ptr ES:[65h*4],ISR65
 MOV word ptr ES:[65h*4+2],CS
 
 INT 65h
     
.exit
 main ENDP

 PROC ISR65
 MOV AH,1
 INT 21H
 SUB AL,30h
 
 CMP AL,1
 JE addtwowords
 CMP AL,2
 JE multiplytwowords
 CMP AL,3
 JE dividetwowords
 
 endintrupt:
 IRET
 ISR65 ENDP
 
 addtwowords:
 MOV AX,0
 MOV SI,OFFSET num1
 MOV AL,[SI]
 MOV DI,OFFSET num2
 MOV AH,[DI]
 ADD AL,AH
 MOV BX,OFFSET result
 MOV [BX],AL
 JMP endintrupt
 
 multiplytwowords:
 MOV AX,0
 MOV SI,OFFSET num1
 MOV AL,[SI]
 MOV DI,OFFSET num2
 MOV DL,[DI]
 MUL DL
 MOV BX,OFFSET result
 MOV [BX],AX
 JMP endintrupt
  
 dividetwowords:
 MOV AX,0
 MOV SI,OFFSET num1
 MOV AX,[SI]
 MOV AH,0
 MOV DI,OFFSET num2
 MOV DL,[DI]
 DIV DL
 MOV BX,OFFSET result
 MOV [BX],AX
 JMP endintrupt 