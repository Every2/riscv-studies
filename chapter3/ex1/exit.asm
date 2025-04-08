;PURPOSE: Simple program that exits and returns a
;         status code back to the Linux kernel
;

;INPUT: none
;

;OUTPUT: returns a status code. This can be viewed
;        by typing
;
;        echo $?
;
;        after running the program

;VARIABLES:
;         %eax holds the system call number
;         %ebx holds the return
;
section .data

section .text
global _start
_start:
     mov eax, 1  ; this is the linux kernel command
                 ; number (system call)
                 ; a program

     mov ebx, 3  ; this is the status number we will
                 ; return to the operating system.
                 ; Change this around and it will
                 ; return different things to
                 ; echo $?

     int 0x80    ; this wakes up the kernel to run
                 ; the exit command

