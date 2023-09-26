.model small
.data
.code 

mov ax,@data
mov ds,ax

mov ax,0
mov es,ax

mov word ptr es:[16],isr4
mov word ptr es:[18],cs

mov al,128
mov bl,128
add al,bl

into ;if OF is set, generate int#4

.exit


isr4 proc

jmp l@1

msg: db "Over flow flag is set$"

l@1:

    mov dx,offset msg
    mov ah,9
    int 0x21
    iret
isr4 endp