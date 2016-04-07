INCLUDE 'emu8086.inc'
PUTC 'H'
PUTC 'i'
PUTC ' '
PUTC 'T'
PUTC 'h'
PUTC 'e'
PUTC 'r'
PUTC 'e'
PUTC '!'
PUTC 13 ; linie noua
PUTC 10
PRINTN 'I love Assembly!'
LEA SI, msg
CALL print_string
CALL scan_num
PUTC 13
PUTC 10
PRINT "You've entered: "
MOV AX, CX
CALL print_num
HLT
msg DB 'Enter a number: ', 0
DEFINE_SCAN_NUM
DEFINE_PRINT_STRING
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS
