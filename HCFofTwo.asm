include "emu8086.inc"
 
 
print "Enter a number "
call scan_num 
mov ax,cx 

printn

print "Enter another number "
call scan_num
mov bx,cx

printn

cmp ax,bx

ja agreater 
jna bgreater

agreater:
    mov min1,bx
    mov min2,ax
    
    mov cx,1
    jmp findhcf 
    
    

bgreater:
    mov min1,ax
    mov min2,bx  
    
mov cx,1
    
findlcm:
    mov dx,0 

    cmp cx,min1
    
    je result
    mov ax,min1
    
    div cx
    
    cmp dx,0
    
    je find
    inc cx
    
    jmp findlcm
    
    
    find:
    
        mov ax,min2
        div cx
        
        cmp dx,0
        
        je findhcf
        
        inc cx
        jmp findlcm
        
        
     
    findhcf:
        mov hcf,cx
        
        inc cx
        jmp findlcm
    
    
    
    result:
        mov ax,hcf
        print "hcf is "
        call print_num
    
    
    
ret

 
 

min1 dw 0
min2 dw 0

hcf dw 0


define_print_num
define_print_num_uns
define_scan_num
