.model small
.stack 100h
.data
.code
main:
    mov ax, 0      
    mov cx, 20      
    mov bx, 100     

sum_loop:
    add ax, bx      
    sub bx, 5       
    loop sum_loop

 

    mov ah, 4ch
    int 21h 
    main endp
end main
