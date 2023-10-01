include 'emu8086.inc'

print "Enter a number to get square and cube : "
call scan_num
printn

mov ax,cx
mov bx,ax

mul bx

mov square,ax



mul bx

mov cube,ax

print "Square of a given number is : "
mov ax,square
call print_num 

printn

print "Cube of a given numberis : "
mov ax,cube
call print_num
         
ret

square dw 0
cube dw 0


define_scan_num
define_print_num
define_print_num_uns
