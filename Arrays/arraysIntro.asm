include 'emu8086.inc' 



mov bx, 4

mov si, 0

insert:  
    print "Enter a number : "
    call scan_num
   
    mov ch, 0
    mov arr[si], cl 
    
    dec bx 
    inc si
    
    printn
   
    cmp bx, 0
    
    jne insert


mov si, 0

floop:
   mov al, arr[si] 
   mov ah, 0
   call print_num 
   print " "
   inc si
  
   
   cmp si, 4
   
   
   jne floop
   ret
   

arr db ?,?,?,?
  
define_scan_num
define_print_num 
define_print_num_uns