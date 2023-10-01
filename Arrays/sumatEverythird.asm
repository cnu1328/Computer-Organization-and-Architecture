include 'emu8086.inc'

print "Enter size of the Array : "

call scan_num

mov ax, 2

mul cx
mov num, ax

mov si, 0

printn
print "Enter array elements : "

insert:
    call scan_num
    mov arr[si], cx
    printn
    
    add si, 2
    
    cmp si, num
    
    jl insert

printn
print "Enterted Array : "    
mov si, 0 

printA:
    mov ax, arr[si]
    
    call print_num
    print " "
    
    add si, 2
    
    cmp si, num
    
    jl printA

mov si, 4

fsum:
    mov ax, arr[si]
    
    add sum, ax
    
    add si, 6
    
    cmp si, num
    
    jl fsum
    

mov ax, sum

printn
print "Sum of Numbers at every 3rd position of array is : "
call print_num

ret



sum dw 0
num dw 0
arr dw num dup(?)

define_print_num
define_print_num_uns
define_scan_num