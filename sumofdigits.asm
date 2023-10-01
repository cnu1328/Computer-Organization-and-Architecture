include "emu8086.inc"


mov ax,5555
         
         
mov bx,10

digitsum: 
    mov dx,0
    
    div bx
    
    add sum,dx 
            
    cmp ax,0
    jne digitsum
           
           
           
    result:
    
        
        print "Digit sum is "
        mov ax,0
        mov ax,sum
        call print_num 
        ret
    

 
sum dw 0

define_print_num
define_print_num_uns
define_scan_num