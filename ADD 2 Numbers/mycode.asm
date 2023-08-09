
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

MOV AH,192
MOV AL,183 
MOV DL,AL
MOV AL,AH
MOV AH,0
MOV DH,0
ADD DX,AX

ret




