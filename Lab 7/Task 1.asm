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
 MOV DI,offset B
 MOV SI,0
 MOV BP,0
 MOV CX,10h
 
 CALL sum   
     
 main ENDP
 
 PROC sum
 continue:
 MOV AL,[BX+SI]
 MOV DL,[DI+BP]
 ADD AL,DL
 MOV [C+SI],AL
 INC SI
 INC BP
 DEC CX
 CMP CX,0
 JNE continue
 JMP END   
 ret   
 sum ENDP
 
 END:   
.exit