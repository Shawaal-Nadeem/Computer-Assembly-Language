.model small

.data

 A dw 1h,2h,3h,4h,5h,6h,7h,8h,9h,10h,11h,12h,13h,14h,15h,16h,17h,18h,19h,20h
 B dw 2h,3h,4h,5h,6h,1h,2h,3h,4h,1h, 2h, 3h, 4h, 5h, 1h, 2h, 3h, 4h, 5h, 1h  
 C dw 20 dup(?)
.code
          
 MOV AX,@data
 MOV DS,AX
 MOV AX,0
 
 MOV CX,19h
 MOV SI,0
 MOV AX,[A+SI]
 MOV DX,[B+SI]
 ADD AX,DX
 MOV BX,offset C
 MOV [C+SI],AX
 L1:
 ADD SI,2
  MOV AX,[A+SI]
  MOV DX,[B+SI]
  ADD AX,DX
  MOV [C+SI],AX
  LOOP L1        
          
.exit