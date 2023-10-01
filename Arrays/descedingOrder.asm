include 'emu8086.inc'

print "Enter size of the Array : "  

call scan_num

mov ax, 2

mul cx

mov num, ax

mov size, ax

mov si, 0 

printn
print "Enter array values : "

insert:
    call scan_num
    mov arr[si], cx
    
    printn      
    
    add si, 2
    
    cmp si, num
    
    jl insert
    
printn
print "Entered Array values : "

mov si, 0
printA:  
    mov ax, arr[si]
    
    call print_num
    print " "
    
    add si, 2
    
    cmp si, num
    
    jl printA
    
    

mov si, 0
mov bp, 2

sort:
    mov ax, arr[si]
    mov bx, arr[bp]
    
    cmp ax, bx
    
    jl swap
    
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
    
    mov cx, num
    
    cmp cx, 2
    
    jne sort
    
mov si, 0

printn
print "The Sorted array is : "
    
print:
    mov ax, arr[si]
    
    call print_num 
    print " "
    
    add si, 2
    
    cmp si, size
    
    jne print 
    
    
printn
printn
print "Thank You"
    
ret
    

num dw 0
size dw 0
arr dw num dup(?)

define_print_num
define_print_num_uns
define_scan_num