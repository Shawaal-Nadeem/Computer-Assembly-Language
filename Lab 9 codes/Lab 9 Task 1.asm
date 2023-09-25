.model small

.stack 100h

.data
num dw ?

msg db 'Enter the number: ','$'

.code
mov ax, @data
mov ds, ax

mov ax,0
mov es,ax  

mov ah, 0x9
mov dx, offset msg
int 0x21

mov ax, 0 
mov cx, 2

s1:

mov ah, 1       ; read character from keyboard
int 21h    

sub al, 30h     ; subtract 0x30 from the character to make it a number 

mov dl,al
ror dh, 4
or dh, dl

loop s1


mov dl,0
mov cx,2 


s2:

mov ah, 1       ; read character from keyboard
int 21h    

sub al, 30h     ; subtract 0x30 from the character to make it a number 

ror dl,4
or dl, al

loop s2


mov num , dx

hlt
.exit