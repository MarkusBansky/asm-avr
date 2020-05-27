; Testing asm for avr microcontrollers
.CSEG
mov rax, 1
mov rdi, 1          ; file handle 1 is stdout
mov rsi, message    ; address of string to output
mov rdx, 13         ; number of bytes
syscall
mov rax, 60
xor rdi, rdi
syscall

.ESEG
message: .db "Hello, world", 10