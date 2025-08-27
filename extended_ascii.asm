.model small
.stack 100h
.data
.code
main:
    mov ax, @data
    mov ds, ax

    mov al, 80h    
    mov cx, 128     

print_ext_ascii:
    mov ah, 02h
    mov dl, al
    int 21h

 
    mov dl, ' '
    int 21h

    inc al

   
    push ax
    mov ah, 0
    mov al, cl
    mov ah, 0
    mov dx, cx
    mov ax, 128
    sub ax, cx
    mov bl, 10
    div bl
    cmp ah, 0
    jne skip_newline

    
    mov dl, 10
    mov ah, 02h
    int 21h
    mov dl, 13
    int 21h

skip_newline:
    pop ax
    loop print_ext_ascii

    mov ah, 4ch
    int 21h
   main endp
end main
