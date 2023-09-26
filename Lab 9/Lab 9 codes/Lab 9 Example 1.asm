.model small
.stack 100h

.data
msg db "Hello$"

.code

Mov ax,@data
Mov ds,ax

Mov ah,0x9 ;display string on screen
Mov dx,offset msg
Int 0x21

Mov ah,0x4c ;terminating program
Int 0x21