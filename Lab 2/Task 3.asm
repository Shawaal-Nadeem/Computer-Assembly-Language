.model small

.stack 100h

.data

.code

MOV AX,0100h
MOV BX,55ABh
MOV CX,0A11h
MOV DX,0001h 
                   ;DX=AX+BH-CL+DX
ADD DX,AX
MOV BL,BH
MOV BH,0
ADD DX,BX
MOV CH,0
SUB DX,CX
MOV AX,DX                  
.exit