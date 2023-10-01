include "emu8086.inc"
 
 
;print "Enter a number "
;call scan_num 
mov ax,15 

;printn

;print "Enter another number "
;call scan_num
mov bx,24

;printn

cmp ax,bx

ja agreater
jna bgreater

agreater:
    mov max1,ax
    mov max2,bx
    
    mov cx,1
    jmp findlcm 
    


bgreater:
    mov max1,bx
    mov max2,ax  
    
mov cx,1
    
findlcm:
    mov ax,max1
    
    mul cx
    
    mov lcm, ax
    
    div max2
    
    cmp dx,0
    
    je result
    
    inc cx
    
    jmp findlcm 
    
    ret
    
    result: 
        mov ax,lcm
        print "lcm is "
        call print_num   
        
    printn   
        
    print "GCD is : "
    
    mov ax, max1
    mul max2
    
    div lcm
    
    call print_num
     
ret

 
 

max1 dw 0
max2 dw 0

lcm dw 0


define_print_num
define_print_num_uns
define_scan_num
