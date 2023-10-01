include 'emu8086.inc'

print "Enter array size : "

call scan_num

mov num, cx

mov ax, cx

mov cx, 2

mul cx  

mov num, ax

mov si, 0

insert:
    print "Enter array Element : "
    call scan_num
    
    mov arr[si], cx
    
    printn
    
    add si,2
    
    cmp si, num
    
    jne insert
    
    

mov si, 0

fag:
    mov sum, 0
    
    mov ax, arr[si]
    
    mov ele, ax
    
    
    amstg:
        mov dx, 0 
        
        div deno
        
        mov cx, ax
        
        mov ax, dx
        mov bx, dx
        
        mul ax
        
        mul bx
        
        add sum, ax
        
        mov ax, cx
        
        cmp ax, 0
        
        jne amstg
        
     
        
     mov ax, sum
     
     cmp ax, ele
     
     je result
     
     comes:
     
     add si, 2
     
     cmp si, num
     
     jne fag
     
     
 ret
 
 
 result:
 
    call print_num
    
    jmp comes
    
    
ret
     


num dw 0
sum dw 0
ele dw 0
deno dw 10
arr dw num dup(?)

define_scan_num
define_print_num
define_print_num_uns