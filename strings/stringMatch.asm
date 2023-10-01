include 'emu8086.inc'

mov si, 0
mov bp, 0

chekFirst:
    mov al, a[si]
    cmp al, b[bp]
    je checkOther
    jne incA
    
incA:
    inc si
    
    mov al, a[si]
    cmp al, '$'
    
    je notFound
    
    cmp al, b[bp]
    
    je checkOther
    jne incA


checkOther:
    inc si
    inc bp 
    
    cmp b[bp], '$'
    
    je found
    
    mov al, a[si]
    
    cmp al, b[bp]
    
    je checkOther
    
    mov bp, 0
    jmp incA 
    
notFound:
    print "Substring is not found"
ret
              
found:
    print "Substring Found"
    
ret

a db "srinivassrinu$"
b db "srinu$"

define_print_num
define_print_num_uns