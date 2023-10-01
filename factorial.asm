include 'emu8086.inc'

call scan_num

mov ax,cx 
dec cx   


fact:  
  
  mul cx
  dec cx
  cmp cx,0
  
  jg fact ;jump condition will not decrement cx



call print_num  

ret

define_print_num
define_print_num_uns 
define_scan_num






