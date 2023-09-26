.model small
.stack 100h

.data
n db ?

.code
Mov ax,@data
Mov ds,ax

mov ah,0x1 ; read character from keyboard
int 0x21

sub al,0x30 ; subtract 0x30 from the character to make it a number
mov n,al ; store the number to variable

mov ah,0x4c
int 0x21