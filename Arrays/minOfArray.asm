include 'emu8086.inc'      
                     
print "Enter Size of Array : "
call scan_num
printn


mov num, cx
mov si, 0

insert:   

    print "Enter a number : "
    call scan_num
    printn
    
    mov ch, 0
    mov arr[si], cl
    
    inc si
    
    cmp si, num
    
    jl insert
    

mov si, 0 

fmin:
   mov bh, arr[si]
   
   inc si
   
   cmp bh, min
   
   jle setMin
   
   cmp si, num
   
   jl fmin
   je printMin
   

setMin:
    mov min, bh
    
    cmp si, num
    
    jne fmin

printMin:
    mov al, min
    mov ah,0
    print "minimun of the array : "
    call print_num  

ret



min db 100 
num dw 0  
arr db num dup(?)

define_scan_num
define_print_num
define_print_num_uns