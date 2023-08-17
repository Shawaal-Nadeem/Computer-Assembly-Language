
.model small
 
 
 .stack 100h
 
 .data
 
 .code
 
      
 MOV word ptr DS:[1000h],1F00h
 MOV word ptr DS:[1002h],0xA0B1
 MOV word ptr DS:[1004h],1254h
 MOV word ptr DS:[1006h],8700h
 
 MOV AX,[1000H]
 ADD AX,[1002H]
 ADD AX,[1004H]
 ADD AX,[1006H]
 
 MOV DX,0xCD1F
 MOV DS,DX
 MOV word ptr DS:[0003H],AX 
      
 .exit