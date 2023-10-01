include 'emu8086.inc'

call scan_num

mov ax,cx

mov bx,2

div bx

cmp dx,0

je equal

print "odd"

ret



equal:

    print "even"       
    
ret

    
define_scan_num