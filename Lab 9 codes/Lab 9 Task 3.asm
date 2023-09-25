.model small

.stack 100h

.data
num1 dw ?
num2 dw ?
sum dw ?

msg1 db 'Enter the First number: ','$' 
msg2 db ', Enter the Second number: ','$'
msg3 db ', The sum of two numbers are : ','$'

.code

main proc
mov ax, @data
mov ds, ax
  
;-------------------------------------------------------------
mov ah, 0x9
mov dx, offset msg1          ; display msg1
int 0x21  

call convert             ; convert into number

mov num1, dx
  
;----------------------------------------------------------
mov ah, 0x9
mov dx, offset msg2         ; display msg2
int 0x21  

call convert

mov num2, dx 
  
;---------------------------------------------------------
mov ah, 0x9
mov dx, offset msg3         ; display msg3
int 0x21 

;--------------addition of numbers --------------------------
mov bx, num1
add bx,num2

mov sum,bx

call display      ; display function



.exit
main endp 



convert proc

    push bp
    push si
    push cx    
    
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
   
    
    pop bp
    pop si
    pop cx

    
ret
convert endp



display proc
    
    push bp
    push si
    push cx   
     
mov ax,sum
mov cx, 4
mov si, 10h

s3:

mov dx, 0

div si       ; convert into single digits
push dx
loop s3

mov cx, 4

s4:
pop dx
add dx, 30h       ;convert into hex

mov ah,2
int 21h             ; display on screen

loop s4     
     
     
     

    pop bp
    pop si
    pop cx
ret
display endp