include 'emu8086.inc'

print "Enter array size : "

call scan_num

mov ax, cx

mov cx, 2

mul cx 

mov num, ax

mov si, 0

insert:
    print "Enter array element : "
    call scan_num
    
    mov arr[si], cx
    
    printn
    
    add si, 2
    
    cmp si, num
    
    jne insert

mov si, 0

fp:
 
 mov rev, 0
 
 mov ax, arr[si]
 
 mov ele, ax
 
 palin:
    mov dx, 0
    
    div deno
    
    mov rem, dx
    
    mov cx, ax
    
    mov ax, rev
    
    mul deno
    
    add ax, rem
    
    mov rev, ax
    
    mov ax, cx
    
    cmp ax, 0
    
    jne palin
    
    
 mov ax, rev
 
 cmp ax, ele
 
 je result
 
 add si, 2
 
 cmp si, num
 
 jne fp
 
 
ret


result:
    mov ax, ele
    
    call print_num
    print " "
    
    add si, 2
    cmp si, num
    
    jne fp
        


ret

num dw 0
rev dw 0
ele dw 0
deno dw 10
rem dw 0
arr dw num dup(?)

define_print_num
define_print_num_uns
define_scan_num