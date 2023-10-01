include 'emu8086.inc'

 mov si, 0
 mov bp, 0
 
 len:
    mov al, str[si]
    
    inc bp
    inc si
    
    cmp al, '$'
    jne len
   
    
sub bp, 2
mov si, 0 
 
 
 
 palin: 
    mov al, str[si]
    mov bl, str[bp]
    inc si
    dec bp
    
    cmp si, bp
    
    jg resultPalin
    
    cmp al, bl 
    je palin
    jne result

resultPalin:
    print "The given string is a palindrome"
ret
    
result:
    print "The given string is not a palindrome"
ret
    




str db "madam$"

define_print_num
define_print_num_uns