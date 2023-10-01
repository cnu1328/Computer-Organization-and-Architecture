include 'emu8086.inc'

mov ax, 8
mov bx, 4

mov n, ax
mov r, bx

cmp ax, bx

je result

cmp bx, 0

je result   

mov cx, n
dec cx

nfact: 
   mul cx
   dec cx
   cmp cx, r
   jne nfact
   
mov nf, ax
mov dx, 0
      

mov ax, n
sub ax, r
mov cx, ax
dec cx  

cmp cx, 0
je toexitLoop

nminusrFact: 
       ;mov dx, 0
       mul cx
       dec cx
       cmp cx, 0
       jne nminusrFact

toexitLoop:

mov nminusr, ax 


mov ax, nf

div nminusr   

;mov dx, 0

print "nCr is : "
call print_num

ret


result:
    mov ax, 1
    
    print "nCr is : "
    
    call print_num     
    
ret 


nf dw 0
rf dw 0
nminusr dw 0
n dw 0
r dw 0

define_print_num
define_print_num_uns
define_scan_num