INCLUDE 'emu8086.inc'

jmp code     

h equ 50
w equ 100 ; dimensiune dreptunghi

code: mov ah, 0
 mov al, 13h ; trecere in mod grafic 320x200
 int 10h  
 
 
 ;blueprint
 mov cx, 40
 mov dx, 60
 mov ah, 0ch  
 int 10h
 
 mov cx, 40
 mov dx, 110
 mov ah, 0ch  
 int 10h
 
 mov cx, 80
 mov dx, 100
 mov ah, 0ch  
 int 10h
 
 mov cx, 80
 mov dx, 150
 mov ah, 0ch  
 int 10h
 
 mov cx, 90
 mov dx, 130
 mov ah, 0ch  
 int 10h
 
 mov cx, 90
 mov dx, 150
 mov ah, 0ch  
 int 10h
 
 mov cx, 90
 mov dx, 10
 mov ah, 0ch  
 int 10h
 
 mov cx, 100
 mov dx, 130
 mov ah, 0ch  
 int 10h  
 
 mov cx, 100
 mov dx, 150
 mov ah, 0ch  
 int 10h
 
 mov cx, 110
 mov dx, 110
 mov ah, 0ch  
 int 10h
 
 mov cx, 110
 mov dx, 150
 mov ah, 0ch  
 int 10h
 
 mov cx, 130
 mov dx, 50
 mov ah, 0ch  
 int 10h
 
 mov cx, 140
 mov dx, 110
 mov ah, 0ch  
 int 10h
 
 mov cx, 140
 mov dx, 150
 mov ah, 0ch  
 int 10h
 
 mov cx, 170
 mov dx, 90
 mov ah, 0ch  
 int 10h
 
 mov cx, 110
 mov dx, 150
 mov ah, 0ch 
  
 int 10h
 mov cx, 180
 mov dx, 100
 mov ah, 0ch  
 int 10h
 
 mov cx, 180
 mov dx, 150
 mov ah, 0ch  
 int 10h

      
 ; afisare latura superioara
 mov cx, 80+w ; coloana
 mov dx, 100 ; rand
 mov al, 15 ; alb
u1: mov ah, 0ch ; afisare pixel
 int 10h
 dec cx
 cmp cx, 80
 jae u1 
 
 ; afisare latura inferioare
 mov cx, 80+w
 mov dx, 100+h
 mov al, 15
u2: mov ah, 0ch
 int 10h
 dec cx
 cmp cx, 80
 ja u2 
 
 ; latura din stanga
 mov cx, 80
 mov dx, 100+h
 mov al, 15
u3: mov ah, 0ch
 int 10h
 dec dx
 cmp dx, 100
 ja u3   
 
 ; latura din dreapta
 mov cx, 80+w
 mov dx, 100+h
 mov al, 15 
 u4: mov ah, 0ch
 int 10h
 dec dx
 cmp dx, 100
 ja u4         
      
; latura dreapta acoperis         
 mov cx, 80+w
 mov dx, 100
 mov al, 15
u5: mov ah, 0ch
 int 10h
 dec cx  
 dec dx
 cmp cx, 130
 jae u5      
 
 ; latura stanga acoperis         
 mov cx, 80
 mov dx, 100
 mov al, 15
u6: mov ah, 0ch
 int 10h
 inc cx  
 dec dx
 cmp cx, 130
 jbe u6  
     
 ;3d stanga jos
 mov cx, 80
 mov dx, 100+h
 mov al, 15
u7: mov ah, 0ch
 int 10h
 dec cx  
 dec dx
 cmp dx, 110
 jae u7 
        
 ;zid spate
 mov cx, 40
 mov dx, 110
 mov al, 15
u8: mov ah, 0ch
 int 10h 
 dec dx
 cmp dx, 60
 jae u8 
 
  ;3d stanga sus
 mov cx, 80
 mov dx, 100
 mov al, 15
u9: mov ah, 0ch
 int 10h
 dec cx  
 dec dx
 cmp dx, 60
 jae u9      
 
 ;3d acoperis sus      
 mov cx, 130
 mov dx, 50
 mov al, 15
u10: mov ah, 0ch
 int 10h
 dec cx  
 dec dx
 cmp cx, 90
 jae u10  
 
 ;3d acoperis partea spate
 mov cx, 40
 mov dx, 60
 mov al, 15
u11: mov ah, 0ch
 int 10h
 inc cx  
 dec dx
 cmp cx, 90
 jbe u11  
 
 ;latura stanga usa
 mov cx, 90
 mov dx, 150
 mov al, 15
u12: mov ah, 0ch
 int 10h  
 dec dx
 cmp dx, 130
 jae u12   
  
 ;latura dreapta usa
 mov cx, 100
 mov dx, 150
 mov al, 15
u13: mov ah, 0ch
 int 10h  
 dec dx
 cmp dx, 130
 jae u13    
  
 ;latura sus usa
 mov cx, 90
 mov dx, 130
 mov al, 15
u14: mov ah, 0ch
 int 10h
 inc cx  
 cmp cx, 100
 jbe u14 
 
  ;latura stanga usa mare
 mov cx, 110
 mov dx, 150
 mov al, 15
u15: mov ah, 0ch
 int 10h  
 dec dx
 cmp dx, 110
 jae u15   
  
 ;latura dreapta usa mare
 mov cx, 170
 mov dx, 150
 mov al, 15
u16: mov ah, 0ch
 int 10h  
 dec dx
 cmp dx, 110
 jae u16    
 
 ;latura jumate usa mare
 mov cx, 140
 mov dx, 150
 mov al, 15
u17: mov ah, 0ch
 int 10h  
 dec dx
 cmp dx, 110
 jae u17
 
 ;latura sus usa mare  
 mov cx, 110
 mov dx, 110
 mov al, 15
u18: mov ah, 0ch
 int 10h
 inc cx  
 cmp cx, 170
 jbe u18  
   
  ;geam lateral latura stanga
 mov cx, 60
 mov dx, 120
 mov al, 15
u19: mov ah, 0ch
 int 10h
 dec dx 
 cmp dx, 110
 jae u19   
      
  ;geam lateral latura dreapta
 mov cx, 70
 mov dx, 130
 mov al, 15
u20: mov ah, 0ch
 int 10h
 dec dx 
 cmp dx, 120
 jae u20   
     
  ;geam lateral latura sus
 mov cx, 70
 mov dx, 120
 mov al, 15
u21: mov ah, 0ch
 int 10h
 dec dx 
 dec cx
 cmp dx, 110
 jae u21   
     
  ;geam lateral latura jos
 mov cx, 70
 mov dx, 130
 mov al, 15
u22: mov ah, 0ch
 int 10h
 dec dx 
 dec cx
 cmp dx, 120
 jae u22 
  
 ;latura stanga alee om
 mov cx, 90
 mov dx, 150
 mov al, 15
u23: mov ah, 0ch
 int 10h
 inc dx
 inc dx
 inc cx  
 cmp dx, 200
 jbe u23   
 
 ;latura dreapta alee om
 mov cx, 100
 mov dx, 150
 mov al, 15
u24: mov ah, 0ch
 int 10h
 inc dx
 inc dx
 inc cx 
 cmp dx, 200
 jbe u24
 
 ;latura stanga alee masina
 mov cx, 110
 mov dx, 150
 mov al, 15
u25: mov ah, 0ch
 int 10h
 inc dx
 inc cx 
 cmp dx, 200
 jbe u25 
 
 ;latura dreapta alee masina
 mov cx, 170
 mov dx, 150
 mov al, 15
u26: mov ah, 0ch
 int 10h
 inc dx
 inc cx  
 cmp dx, 200
 jbe u26
 
 ; asteptare apasare tasta
 mov ah,00
 int 16h 
 
;User is prompted with the possibility to shut or open the door
u29:
PUTC 13 ; linie noua
PUTC 10 
PRINTN '1-deschizi usa; 0-inchizi usa '  

PUTC 13   
PUTC 10
CALL scan_num
PUTC 13
PUTC 10
        
mov ax, cx

 cmp ax, 0 ; compare the number entered with 0
 jbe u27  ; if below or equals close the door
 cmp ax, 0 ; compare the number entered with 0
 ja u28  ; if below or equals close the door
u27: 
 PUTC 13
 PUTC 10
 PRINT "Closing the door! "
 ;closing the door
     mov cx, 99
     mov dx, 149
     mov al, 0
    u30: mov ah, 0ch
     int 10h 
     mov bx, dx
       u31: mov ah, 0ch 
            int 10h
            dec dx
            cmp dx, 131
            jae u31 
     mov dx, bx       
     dec cx 
     cmp cx, 91
     jae u30

     
     jbe u29  ; if already closed do it again
u28:   
 PUTC 13
 PUTC 10
 PRINT "Opening the door! "  
 ;opening the door
     mov cx, 90
     mov dx, 150
     mov al, 15
    u32: mov ah, 0ch
     int 10h 
     mov bx, dx
       u33: mov ah, 0ch 
            int 10h
            dec dx
            cmp dx, 130
            jae u33 
     mov dx, bx       
     inc cx 
     cmp cx, 100
     jbe u32
    ; play a sound when the door opens
      STARTSOUND2:	;CX=FREQUENCY IN HERTZ. DESTROYS AX & DX
        CMP CX, 014H
        JB STARTSOUND2_DONE
        ;CALL STOPSOUND
        IN AL, 061H
        ;AND AL, 0FEH
        ;OR AL, 002H
        OR AL, 003H
        DEC AX
        OUT 061H, AL	;TURN AND GATE ON; TURN TIMER OFF
        MOV DX, 00012H	;HIGH WORD OF 1193180
        MOV AX, 034DCH	;LOW WORD OF 1193180
        DIV CX
        MOV DX, AX
        MOV AL, 0B6H
        PUSHF
        CLI	;!!!
        OUT 043H, AL
        MOV AL, DL
        OUT 042H, AL
        MOV AL, DH
        OUT 042H, AL
        POPF
        IN AL, 061H
        OR AL, 003H
        OUT 061H, AL
        	STARTSOUND2_DONE:
        
        	STOPSOUND2:	;DESTROYS AL
        IN AL, 061H
        AND AL, 0FCH
        OUT 061H, AL
        ;end sound
 jbe u29  ; if already opened do it again           
  
 
DEFINE_SCAN_NUM
DEFINE_PRINT_STRING
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS  

