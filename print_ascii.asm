.model small
.stack 100h
.data
.code
main:
    mov ax, @data
    mov ds, ax

    mov cx, 256     
    mov al, 0       

print_loop:
    mov ah, 02h
    mov dl, al
    int 21h         
    inc al
    loop print_loop

    mov ah, 4ch
    int 21h
    main endp
end main
