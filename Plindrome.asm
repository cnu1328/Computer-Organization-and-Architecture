include 'emu8086.inc' 

mov ax, 12121 
mov bx, 10
mov num, ax

floop:

    mov dx, 0
    
    div bx
    
    mov cx, ax
    
    mov rem, dx 
    
    mov ax, rev
    
    mul bx
    
    add ax, rem
    
    mov rev, ax
    
    mov ax, cx
    
    cmp ax, 0
    
    jne floop
    je result
    
result:
    mov ax, num
    
    cmp ax, rev
    
    je result1
    
    call print_num
    
    print " is not a palindrome"
    ret
    
result1:
    call print_num
    print " is a palindrome"
    ret


       
       

rev dw 0
num dw 0  
rem dw 0

define_print_num
define_print_num_uns
