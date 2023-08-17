

.model small
 
 
 .stack 100h
 
 .data
 
 .code
 
      
 MOV word ptr DS:[1000h],0xF4
 MOV word ptr DS:[1001h],0xA0B1
 MOV word ptr DS:[1003h],1254h
 MOV word ptr DS:[1005h],8700h
 
 MOV AX,[1000H]
 ADD AX,[1001H]
 ADD AX,[1003H]
 ADD AX,[1005H]
 
 MOV DX,0xCD1F
 MOV DS,DX
 MOV word ptr DS:[0003H],AX 
      
 .exit