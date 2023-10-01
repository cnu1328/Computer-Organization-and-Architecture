include 'emu8086.inc'   

print "enter array size : "

call scan_num

mov ax, cx

mov cx, 2

mul cx
 
mov num, ax

mov si, 0

insert:
    print "Enter array elements : "
    
    call scan_num
    
    mov arr[si], cx
    
    printn
    
    add si,2
    
    cmp si, num
    
    jne insert

mov si, 0

fcount:
    mov dx, 0    
    
    mov ax, arr[si]
    
    mov ele, ax 
    
    div deno
    
    cmp dx, 0
    
    je counte
    jne counto
    
    comes:
        add si, 2
        
        cmp si, num
        
        jne fcount
        

print "Even count in array is : "       
mov ax, ce

call print_num
               
printn

print "Odd count in array is : "
mov ax, co

call print_num
        
ret

counte:
    inc ce
    
    jmp comes

counto:
    inc co
    jmp comes
    



num dw 0
ce dw 0
co dw 0 
deno dw 2
ele dw 0
arr dw num dup(?)

define_print_num
define_print_num_uns
define_scan_num
