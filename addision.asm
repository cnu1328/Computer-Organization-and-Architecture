include 'emu8086.inc' 

mov ax, 5
mov bx, 10
 
add ax, bx   
            
print "Addition : "


call print_num

printn 

mov ax, 5
mov bx, 10 

print "Subtraction :"
sub ax, bx

call print_num

printn    

mov ax, 5
mov bx, 10

print "Multiplication : "  
mul bx

call print_num

printn    

mov ax, 5
mov bx, 10

print "Division : " 

div bx 

call print_num

ret





define_print_num
define_print_num_uns

