include 'emu8086.inc'

mov si, 0

flen:
    inc count
    
    mov al, str[si]
    mov ah, 0
    
    inc si
    
    cmp al, '$'
    
    jne flen
    

dec count
print "Length of the Given String is : "
mov ax, count

call print_num

ret

count dw 0

str db "RGUKT-BASAR$"

define_print_num
define_print_num_uns
define_scan_num