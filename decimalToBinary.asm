include 'emu8086.inc' 

call scan_num

mov ax, cx

mov bx, 2

print "Binary is : " 

binary:
    mov dx, 0
    
    div bx
    
    mov cx, ax
    
    mov ax, dx
    
    call print_num
    
    mov ax, cx
    
    cmp ax, 1
    
    jne binary 
    
    
call print_num

ret

define_scan_num
define_print_num
define_print_num_uns