include 'emu8086.inc'

mov start,10
mov endd,20  

print "Prime numbers between two numbers are : "

stoend:
    
    mov ax,start
    mov num,ax
    mov bx, 1
    mov divisor, 0
    
    palin:
        
        mov dx, 0
        div bx
        mov ax,num
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
    
    inc start
    mov cx, endd 
    
    cmp start, cx
    jle stoend     
    
ret
    
result:
    
    mov ax, num
    call print_num
    print " "
    inc start
    mov cx, endd 
    
    cmp start, cx
    
    jle stoend 
    
ret


start dw 0
endd dw 0 
num dw 0 
divisor dw 0

define_scan_num
define_print_num
define_print_num_uns
