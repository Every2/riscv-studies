# Load 0x1234567890ABCDEF into register x5

.global _start # Provide program starting address to linker

_start:	lui x5, 0x12345 # x5 = 0x12345000
        slli x5, x5, 32 # x5 = 0x1234500000000000
        addi x6, x0, 0x679 # x6 = 0x679
        slli x6, x6, 32 # x6 = 0x67900000000
        add x5, x5, x6 # x5 = 0x1234567900000000
        addi x6, x0, 0xFFFFFFFFFFFFF90B # x6 = 0x90B
        slli x6, x6, 20 # x6 = 0x90B00000
        add x5, x5, x6 # x5 = 0x1234567890B00000
        addi x6, x0, 0xFFFFFFFFFFFFFBCD # x6 = 0xBCD
        slli x6, x6, 8 # x6 = 0xBCD00
        add x5, x5, x6 # x5 = 0x1234567890ABCD00
        addi x5, x5, 0xEF # x5 = 0x1234567890ABCDEF

# Setup the parameters to exit the process to exit program
# and then call Linux to do it.
        mv a0, x0 # Use 0 return code
        li a7, 93
        ecall
