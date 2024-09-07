;Program to reverse a string.

Dosseg
.model small
.stack 100h
.data
Msg db 'REVERSE$'       ;LENGTH=7
.code
main proc
mov ax,@data
mov ds,ax
lea dx,Msg
mov ah,9
int 21h

mov dx,10               ;SPACE
mov ah,2
int 21h
mov dx,13               ;CARRAIGE RETURN
mov ah,2
int 21h

lea si,Msg              ;SAVING STARTING INDEX OF MSG
mov cx,7                 
R1:
mov dx,[si]
push dx                 ;PUSH VALUE FROM DX TO STACK
inc si
Loop R1

mov cx,7
R2:
pop dx                  ;POP VALUE FROM DX TO STACK
mov ah,2
int 21h
Loop R2
mov ah,4ch              ;END THE PROGRAM
int 21h
main endp
end main




