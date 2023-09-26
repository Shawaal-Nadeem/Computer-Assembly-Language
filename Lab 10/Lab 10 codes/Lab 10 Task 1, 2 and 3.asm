.model small

.data
            
msg1 db "(1) For addition press 1. (2) For multiplication press 2. (3) For division press 3. (4) For exit press any key. Enter the Number: ", '$'
msg2 db " - you enter the wrong number : ", '$'


.code

main proc
    
mov ax,@data
mov ds,ax

mov ax,0
mov es,ax  

mov ah, 0x9
mov dx, offset msg1
int 0x21


start:

mov ah, 0x1 
int 0x21


cmp al,'1'
je p1

cmp al,'2'
je p2

cmp al,'3'
je p3

mov ah, 0x9
mov dx, offset msg2
int 0x21

jmp ending


p1:
mov word ptr es:[404],isr101
mov word ptr es:[406],cs

int 65h

jmp ending 
 
p2:
mov word ptr es:[408],isr102
mov word ptr es:[410],cs

int 66h

jmp ending

p3:
mov word ptr es:[412],isr103
mov word ptr es:[414],cs

int 67h

jmp ending


ending:

main endp
.exit 

isr101 proc

push si
push di

mov si, 1000
mov di, 1010
   
mov word ptr ds:[si],1
mov word ptr ds:[di],2
mov ax,ds:[si]
add ax,ds:[di]

mov ds:[bx],ax 

pop si
pop di

iret
isr101 endp

isr102 proc

push si
push di
push bx

mov si,1020h
mov di,1030h
    
mov word ptr ds:[si],2
mov word ptr ds:[di],3
mov ax,ds:[si]
 

mov bx,ds:[di]
mul bx

mov ds:[bx],ax

pop bx
pop si
pop di

iret
isr102 endp

isr103 proc

push si
push di
push bx

mov si,1040h
mov di,1050h
    
mov byte ptr ds:[si],8
mov byte ptr ds:[di],3
mov al,ds:[si]
 

mov bl,ds:[di]
div bl

pop bx
pop si
pop di

iret
isr103 endp
    