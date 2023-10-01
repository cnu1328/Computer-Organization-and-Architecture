include 'emu8086.inc'



print "Enter Size of Array : "
printn
call scan_num

mov num, cx


printn

mov si, 0

insert:  
    print "Enter a number : "
      
    
    call scan_num 
    printn
    mov ch, 0
    
    mov arr[si], cl
    
    inc si
    
    cmp si, num
    
    jne insert
    

mov si, 0 


sumarray:    
    mov ah, 0
    mov al, arr[si]
    
    add sum, al
    
    inc si
    
    cmp si, num
    
    jne sumarray
    

mov ah, 0
mov al, sum 


print "sum of array elements is : "
call print_num  

mov ah, 0

div num

printn

print "Avg of array elements is : "
call print_num

ret

sum db 0 
num dw 0  
arr db ? 

define_scan_num
define_print_num
define_print_num_uns 
    
    

