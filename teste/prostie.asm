INCLUDE 'emu8086.inc'

jmp code
w equ 10 ; dimensiune dreptunghi
h equ 5
code: mov ah, 0
 mov al, 13h ; trecere in mod grafic 320x200
 int 10h  

; testare chestii         
 mov cx, 110
 mov dx, 110
 mov al, 5
u5: mov ah, 0ch
 int 10h
 inc cx
 ;stop if X>160
 cmp cx, 160
 jb u5  
   
CALL scan_num  
MOV AX, CX
CALL print_num
      
msg DB 'Enter a number: ', 0
DEFINE_SCAN_NUM
DEFINE_PRINT_NUM 
 ; asteptare apasare tasta
 mov ah,00
 int 16h 
 
