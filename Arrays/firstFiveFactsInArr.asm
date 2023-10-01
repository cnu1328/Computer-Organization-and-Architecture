include 'emu8086.inc'

mov num,10
mov si, 0

mov arr[si],1

add si, 2

insert:
    
    mov ax, ref
    mov cx, ax
    dec cx
     
    fact:
        mul cx
        dec cx
        cmp cx, 0
        jg fact  
        
   
     
    mov arr[si], ax
    
    inc ref 
    
    
    add si, 2
    
    cmp si, num
    
    jl insert

mov si, 0

printArr:
    mov ax, arr[si] 
   
    call print_num
    print ", "
    add si, 2
    
    cmp si, num
    jl printArr


ret


num dw 0
ref dw 2
arr dw num dub(?) 


define_scan_num
define_print_num
define_print_num_uns