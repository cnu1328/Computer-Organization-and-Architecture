include "emu8086.inc"

mov n,11

mov ax, 0
mov bx, 1

print "Fibonacci Series : "


fibo:
    call print_num
    print " " 
    
    add ax, bx
    mov cx, ax 
    mov ax, bx
    mov bx, cx 
    
    
    
    dec n
    
    cmp n, 0
    
    jne fibo 

ret
    
     

n dw 0

define_print_num
define_print_num_uns