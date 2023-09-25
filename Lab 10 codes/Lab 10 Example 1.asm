.model small
.data
.code
mov ax,@data
mov ds,ax   

mov ax,0
mov es,ax   

mov word ptr es:[0],isr0 ; offset address of ISR0
mov word ptr es:[2],cs ; Segment address of ISR0 

mov ax,100
mov bl,0
div bl ;Dividing a number by zero to check if the hooking 

.exit

isr0 proc

jmp l@1

msg: db "Divide by Zero Exception!$"

l@1:
    mov dx,offset msg
    mov ah,9
    int 0x21
    iret

isro0 endp