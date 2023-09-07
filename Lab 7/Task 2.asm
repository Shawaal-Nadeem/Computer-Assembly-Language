.model small

.stack

.data
     
 word dw 'CIVIC'    
     
.code
 PROC main    
 MOV AX,@data
 MOV DS,AX
 MOV AX,0
 MOV CX,5
 MOV BX,offset word
 MOV SI,0
 continue:

 PUSH [BX+SI]
 INC SI
 DEC CX
 CMP CX,0
 JNE continue
 CALL checkPalindrome
 main ENDP    
 
 PROC checkPalindrome
 MOV BP,SP
 
 MOV CX,5
 MOV SI,0
 MOV DI,2
 check:
 MOV AX,[BP+DI]
 MOV AH,0
 MOV DX,[BX+SI]
 MOV DH,0
 CMP AX,DX
 JNE END
 MOV DL,1
 INC SI
 ADD DI,2
 DEC CX
 JNE check
 ret
 checkPalindrome ENDP
 
 END:
 MOV DL,0    
.exit