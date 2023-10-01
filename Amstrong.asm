include 'emu8086.inc'

mov ax, 372

mov num, ax

mov bx, 10


amstrong:

    mov dx, 0 
    
    div bx
    
    mov cx, ax
    
    mov ax, dx 
    
    mov bx, dx
    
    mul ax
    
    mul bx
    
    mov bx, 10
    
    add sum, ax
    
    mov ax, cx
    
    cmp ax, 0
    
    jne amstrong
    

mov ax, num
mov bx, sum

cmp ax, bx

je result


call print_num 

print "is Not an Amstrong"

ret

result:

    call print_num
    print "is an Amstrong"   
    
ret   
    
    

num dw 0
sum dw 0

define_print_num
define_print_num_uns