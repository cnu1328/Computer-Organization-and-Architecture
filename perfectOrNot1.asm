include "emu8086.inc"

call scan_num
mov ax, cx
mov bx, ax
mov num, ax

dec bx

perfect:
    mov dx, 0 
    
    div bx    
    mov ax, num
    
    cmp dx, 0
    
    je factorSum
  
        
    dec bx
    
    cmp bx,0
    
    jne perfect 
 
  
factorSum: 
    add sum, bx
    dec bx
    cmp bx, 0
    jne perfect
    


mov ax, num
mov bx, sum

cmp ax, bx

je printfactor

call print_num

print " is not a perfect Number"
ret


printfactor:
 
call print_num
print " is a perfect Number" 
ret
    
    
    
    

sum dw 0
num dw 0   

define_scan_num
define_print_num
define_print_num_uns