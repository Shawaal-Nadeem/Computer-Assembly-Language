.model small

.data

 array db 0x54,0xCD,0x45,0xEF,0x67,0xAB,0x00,0x77
 result db 8 DUP (?)
.code

 MOV AX,@data
 MOV DS,AX
 MOV AX,0
 MOV CX,8
 MOV SI,0
 MOV DX,0
 MOV BX,offset array
 MOV DI,offset result
 
 MOV BP,0
 
 start:
 MOV AL,[BX+SI]
 MOV CX,8
 MOV DL,0
 continue:
 CMP CX,0
 JE storeValue
 
 SHR AL,1
 JC countOne
 
 DEC CX

 
 CMP AL,0
 JNC continue
 
 countOne:
 ADD DL,1
 DEC CX
 JMP continue
 
 
 storeValue:
 MOV [DI+BP],DL
 INC BP
 INC SI
 
 CMP SI,8
 JE END
 JMP start
 
 END:
.exit