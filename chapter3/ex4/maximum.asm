;PURPOSE: This program finds the maximum number of a 
;         set of data items.
;

;VARIABLES: The registers have the following uses:
;
;  %edi - Holds the index of the data item being examined
;  %ebx - Largest data item found
;  %eax - Current data item

; The following memory locations are used:
;
; data_items - contains the item data. A 0 ise used
;              to terminate the data
;

section .data

data_items: ; These are the data items
     dd 3, 67, 34, 222, 45, 75, 54, 34, 44, 33, 22, 11, 66, 4

items_end:
     dd 0

section .text

global _start
_start:
     mov edi, data_items ; pass address to edi
     mov eax, [edi] ; load the first byte of data
     mov ebx, eax ; since this is the first item, eax is
                  ; the biggest

start_loop: ; start loop
     add edi, 4 ; move %edi 4 bytes
     cmp edi, items_end ; check to see if we've hit the end
     je loop_exit
     mov eax, [edi]
     cmp eax, ebx ; compare values
     jge start_loop ; jump to loop beginning if the new
                    ; one isn't bigger 
     mov ebx, eax   ; move the value as the largest
     jmp start_loop ; jump to loop beginning

loop_exit:
; %ebx is the status code for the exit system call
; and it already as the maximum number
     mov eax, 1 ; 1 is the exit() syscall
     int 0x80
