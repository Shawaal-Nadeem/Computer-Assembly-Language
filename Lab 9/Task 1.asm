.model small 
 
.stack 100h 
 
.data 
 
 number db 0 
 
.code 
 
MOV AX,@data 
MOV DS,AX 
MOV AX,0

MOV AH,1
INT 21H
SUB AL,0x30
MOV DH,AL 
MOV CL,4
SHL DH,CL
MOV AH,1
INT 21H
SUB AL,0x30
MOV DL,AL
OR DH,DL


MOV AH,1
INT 21H
SUB AL,0x30
MOV BH,AL 
MOV CL,4
SHL BH,CL
MOV AH,1
INT 21H
SUB AL,0x30
MOV DL,AL
OR DL,BH

MOV BX,offset number
MOV [BX],DX
      
.exit