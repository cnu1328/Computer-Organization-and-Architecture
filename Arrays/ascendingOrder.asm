include 'emu8086.inc'

print "Enter Size of the array : "

call scan_num 

mov ax, 2

mul cx
  
mov num, ax
mov dupNum, ax

mov si, 0  

printn

print "Enter array Elements : "

insert:
     call scan_num
     mov arr[si], cx
     
     printn
     
     add si, 2
     cmp si, num
     
     jl insert

print "The Entered Array is : "
     
mov si, 0 
     
printArray:
    mov ax, arr[si]
    
    call print_num
    print " "
    
    add si, 2
    
    cmp si, dupNum
    
    jl printArray
  

mov si, 0
mov bp, 2

sort:
    mov ax, arr[si]
    mov bx, arr[bp]
    
    cmp ax, bx
    jg swap
           
    comes:
    
        add si, 2
        add bp, 2
        
        cmp bp, num
        
        jl sort
        je setSize 
    
    
    
    
    
swap:
    mov arr[si], bx
    mov arr[bp], ax
     
    jmp comes    
    
   
   
setSize:
    sub num, 2
    mov si, 0
    mov bp, 2
    
    cmp num, 2
    
    jne sort 
      
    
printn
print "The Sorted Array is : "    
mov si, 0

print:
    mov ax, arr[si]
    
    call print_num
    print " "
    
    add si, 2
    
    cmp si, dupNum
    
    jl print
    
ret
    

num dw 0
dupNum dw 0
arr dw num dup(?)

define_print_num
define_print_num_uns
define_scan_num