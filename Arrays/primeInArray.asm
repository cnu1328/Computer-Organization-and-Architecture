include 'emu8086.inc'  

print "Enter array number : "

call scan_num
 
mov num, cx

mov ax, num

mov cx, 2

mul cx

mov num, ax


mov si, 0

insert:
    print "Enter array element : "
    
    call scan_num
    
    mov arr[si], cx
    
    printn
    
    add si, 2
    
    cmp si, num 
    
    jne insert
    
print "Prime numbers in array are : "

mov si, 0

fpm:
    mov count, 0
    
    mov ax, arr[si]
    mov ref, ax
    
    mov index, 1
    
    prime:
        mov dx, 0
        
        div index
        
        mov ax, ref
        
        cmp dx, 0
        
        je setCount
        
        comes:
        
            inc index
            
            mov cx, index
            
            cmp cx, ref
            
            jle prime  
        
     
        cmp count, 2
        je result
        
        comesfResult:
            add si, 2
            
            cmp si, num
            
            jne fpm
        
        
ret

result:
    mov ax, ref
    
    call print_num 
    print " "
    
    jmp comesfResult
    
ret       
        
 
setCount:
    inc count
    jmp comes
        
        
ret

num dw 0
count dw 0
index dw 0
ref dw 0
arr dw num dup(?) 

define_print_num
define_print_num_uns
define_scan_num