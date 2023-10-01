include 'emu8086.inc'

mov n, 109



mov cx, 1 

findRoot:
    mov dx, 0
    
    mov ax, cx
    
    mul cx
    
    cmp ax, n
    
    jle result
    
    mov ax, root 
    
    
    call print_num
    
    ret

result:
    mov root, cx
    inc cx
    
    cmp cx, n
    jl findRoot
    







n dw 0 
root dw 0

define_print_num
define_print_num_uns