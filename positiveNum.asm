include 'emu8086.inc'

call scan_num

mov ax,cx

cmp ax,0

jg pos  

je zero
        
negative:

    print "Negative" 


ret  

zero: 
    print "Zero"   
    

ret


pos:

    print "positive"
   
ret

define_print_num
define_print_num_uns
define_scan_num