.model small

.data

 arr db 1,2,3,4,2,6,7,2,9,10
 count db 0

.code
 MOV AX,@data
 MOV DS,AX
 MOV AX,0
 MOV SI,0
 start:
 MOV AL,[arr+SI]
 CMP AL,2
 JE isPresent
 CMP SI,10
 JE end
 JNE continue
 isPresent:
 
 ADD [count],1

 continue:
 INC SI
 jmp start      
end:     
.exit