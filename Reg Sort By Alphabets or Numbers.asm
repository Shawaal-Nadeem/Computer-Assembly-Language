.model small

.data

 registration db 'L1F21BSCS0781'
 alphabets db 6 dup (0)
 numbers db 7 dup (0)
 
.code

 MOV AX,@data
 MOV DS,AX
 MOV AX,0
 MOV BX,offset registration
 MOV SI,0
 MOV DI,0
 MOV BP,0 
 MOV CL,13h
 
 continue:
 CMP CL,0
 JE END
 MOV AL,[BX+SI]
 CMP AL,30h
 JAE num
 CMP AL,39h
 JBE num
 
 num:
 
 CMP AL,41h
 JAE alph
 
 MOV [numbers+BP],AL
 INC BP
 INC SI
 DEC CL
 JMP continue

alph:
 MOV [alphabets+DI],AL
 INC DI
 INC SI
 DEC CL
 JMP continue 
 
END: 
.exit