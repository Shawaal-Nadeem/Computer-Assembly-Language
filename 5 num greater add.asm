.model small 

.data

 arr db 1,2,3,4,5,6,7,8,9,10
 result db 0

.code

 MOV AX,@data
 MOV DS,AX
 MOV AX,0
 MOV SI,0
 start: 
 CMP SI,10
 JE end
 MOV AL,[arr+SI]
 CMP AL,5
 JG FiveNumGreater
 CMP AL,5
 JL continue:                  
 
 FiveNumGreater:
 ADD [result],AL
 
 continue:
 INC SI
 JMP start
 
 end:                  
.exit