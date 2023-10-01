include 'emu8086.inc'

print "Enter Size of the Array : "
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

print "Enter your search number : "
call scan_num
printn

mov ch, 0

mov s, cl
 
search: 
     mov bh, arr[si]
     cmp s, bh
     je result
     
     inc si
     
     cmp si, num
     
     jl search
     

print "Your search Not found"
ret





result:
    print "Your Search Found"
ret


s db 0
num dw 0
arr db num dup(?)

define_scan_num
define_print_num
define_print_num_uns