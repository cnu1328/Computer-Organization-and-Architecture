include 'emu8086.inc'
  
print "Enter array number : "
call scan_num

mov ax, 2

mul cx

mov num, ax
  
printn

mov si, 0

insert:
    print "Enter array Element : "
    call scan_num
    
 
    
    mov arr[si], cx 
    
    printn
    
    add si, 2
    
    cmp si, num
    
    jl insert
    

mov si, 0

fpft: 
    mov sum, 0
 
    mov ax, arr[si]
    
    mov ele, ax
    
    mov point, 1
    
    perfect:
    
        mov dx, 0
        
        div point
        
        
        mov ax, ele
        
        cmp dx, 0 
        
        je setSum
        
        comes:
        
            inc point
            
            mov cx, point
            
            cmp cx, ele
            
            jne perfect
        
 
    comefSum:                
        mov ax, sum
        
        cmp ele, ax
        
        je result 
        
        add si, 2
        
        cmp si, num
        
        jl fpft
    
ret 

setSum:
        
        mov bx, point
        add sum, bx  
        
        jmp comes


result:
    mov ax, ele 
    
    call print_num
    add si, 2
    
    cmp si, num
    
    jl fpft
    
    
        


ret

sum dw 0
num dw 0
ele dw 0
point dw 0
arr dw num dup(?)

define_print_num
define_print_num_uns
define_scan_num