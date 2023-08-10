.model small

.stack 100h

.data

.code

MOV AX,6           ;AX=6
ADD AX,6           ;AX=AX+6=6+6=12=C
ADD AX,6           ;AX=AX+6=12+6=18=12
ADD AX,6           ;AX=AX+6=18+6=24=18
ADD AX,6           ;AX=AX+6=24+6=30=1E
ADD AX,6           ;AX=AX+6=30+6=36=24

.exit

