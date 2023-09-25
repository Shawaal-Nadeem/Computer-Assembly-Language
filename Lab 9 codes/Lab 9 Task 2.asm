.model small

.stack 100h

.data

num1 dw 9321h

.code

main proc

mov ax, @data
mov ds, ax

mov ax,num1
mov cx, 4
mov si, 10h

s1:

mov dx, 0

div si       ; convert into single digits
push dx
loop s1

mov cx, 4

s2:
pop dx
add dx, 30h       ;convert into hex

mov ah,2
int 21h             ; display on screen

loop s2


.exit
main endp



