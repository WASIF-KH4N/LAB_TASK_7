;Program to input from the user whether the number is odd or even.

Dosseg
.model small
.stack 100h
.data 
Var_1 db 'NUMBER IS ODD$'
Var_2 db 'NUMBER IS EVEN$'

.code
main proc
mov ax,@data        ;TO ACCESS THE VARIABLE
mov ds,ax
mov ah,1 
int 21h
mov bl,2
div bl
cmp ah,0            ;COMPARE

JE IsEven           ;IF NUMBER IS EVEN THIS LINE IS IGNORED
mov dx,10           ;SPACE
mov ah,2
int 21h
mov dx,13           ;CARRIAGE RETURN
mov ah,2
int 21h
mov dx,offset Var_1
mov ah,9
int 21h
mov ah,4ch          ;END THE PROGRAM
int 21h
IsEven:             ;IF NUMBER IS ODD THIS LINE IS IGNORED

mov dx,10           ;SPACE
mov ah,2
int 21h
mov dx,13           ;CARRIAGE RETURN
mov ah,2
int 21h
mov dx,offset Var_2
mov ah,9
int 21h
mov ah,4ch          ;END THE PROGRAM
int 21h
main endp
end main










