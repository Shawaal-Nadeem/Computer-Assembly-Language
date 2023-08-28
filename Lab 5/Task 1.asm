.model small

.data

arr db 1h,2h,3h,4h,5h,6h,7h,8h,9h,10h
sum db ?
.code
        
MOV AX,@data
MOV DS,AX
MOV AX,0
MOV BX,offset arr
MOV SI,0
MOV CX,9
MOV AL,[BX+SI]
L1:
INC SI
ADD AL,[BX+SI]        

LOOP L1

MOV BX,offset sum
MOV [BX],AL        
.exit