include 'emu8086.inc'
print "Enter a number to Check prime or not : "
call scan_num 
printn
mov ax, cx
mov num, ax
mov bx, 1  

palin:
 
    mov dx, 0
    div bx    
    mov ax, num
    cmp dx, 0
    je addDivisor
    inc bx
    
    cmp bx, num
    jne palin 
     
     
addDivisor:
    inc divisor
    inc bx
    cmp bx, num
    jle palin
    
cmp divisor, 2
je result

mov ax, num

call print_num
print " is Not a prime"

ret

result: 
    mov ax, num
    
    call print_num
    
    print " is a Prime"



ret

divisor dw 0
num dw 0
   
define_print_num
define_print_num_uns 
define_scan_num
