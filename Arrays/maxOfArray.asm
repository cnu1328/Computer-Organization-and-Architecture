include 'emu8086.inc'

print "Enter Size of Array : "
call scan_num
printn

mov ax, 2

mul cx

mov num, ax
mov si, 0

insert:
    print "Enter a number : "
    call scan_num
    printn
    
    mov arr[si], cx
    
    add si, 2
    
    cmp si, num
    
    jl insert
    
    
mov si, 0  

fmax:
    
    mov bx, arr[si]
    add si, 2
    
    cmp bx, max
    
    jg setMax
    
    comes:
        cmp si, num
        
        jl fmax
        jmp printMax
    
setMax:
    mov max, bx
    jmp comes
    
printMax:
    mov ax, max
    
    print "Maximum of the array : "
    call print_num
    
    
ret

max dw 0
num dw 0
arr dw num dup(?)

define_scan_num
define_print_num
define_print_num_uns  

    