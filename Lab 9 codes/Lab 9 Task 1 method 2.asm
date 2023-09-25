.model small

.stack 100h

.data

num dw ?

.code
mov ax, @data
mov ds, ax
mov ax, 0

mov ah, 1       ; read character from keyboard
int 21h    

sub al, 30h     ; subtract 0x30 from the character to make it a number 

mov bh, 10h
mul bh
mov bh, al

mov ah, 1       ; read character from keyboard
int 21h    

sub al, 30h     ; subtract 0x30 from the character to make it a number 
add bh, al


mov ah, 1       ; read character from keyboard
int 21h    

sub al, 30h     ; subtract 0x30 from the character to make it a number 

mov bl, 10h
mul bl
mov bl, al

mov ah, 1       ; read character from keyboard
int 21h    

sub al, 30h     ; subtract 0x30 from the character to make it a number 
add bl, al


mov num , bx

hlt
.exit