include 'emu8086.inc'

mov ax, 9457

mov bx, 10 

frev:
    mov dx, 0
    
    div bx
    
    mov cx, ax
    
    mov ax, bx
    mov rem, dx
    
    mul rev
    
    mov rev, ax
    
    mov dx, rem
    add rev, dx
    
    mov ax, cx
    
    cmp ax, 0
    
    jne frev

mov ax, rev

print "Reverse of a Number : "

call print_num

ret

rev dw 0
rem dw 0

define_print_num
define_print_num_uns