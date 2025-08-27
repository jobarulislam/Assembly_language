.model small
.stack 100h
.data
.code
main:
    mov ax, @data
    mov ds, ax

    
    mov ah, 09h
    lea dx, prompt
    int 21h

    
    mov ah, 01h
    int 21h
    mov bl, al   

    
    mov ah, 02h
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h

    
    mov cx, 50
display_loop:
    mov ah, 02h
    mov dl, bl
    int 21h
    loop display_loop

    
    mov ah, 09h
    lea dx, newline
    int 21h

    mov ah, 4ch
    int 21h

prompt db 'Enter a character: $'
newline db 13,10,'Thank you.$'
main endp
end main
