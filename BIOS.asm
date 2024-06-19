[BITS 16]
[ORG 0x7C00]

start:
    mov ax, 0xB800
    mov es, ax
    xor di, di
    mov cx, 2000
    mov ax, 0x0720
    rep stosw

    mov si, msg1
print_loop1:
    lodsb
    cmp al, 0
    je wait_for_enter
    mov ah, 0x0E
    int 0x10
    jmp print_loop1

wait_for_enter:
    mov ah, 0x00
    int 0x16
    cmp al, 0x0D 
    jne wait_for_enter

    mov si, msg2
print_loop2:
    lodsb
    cmp al, 0
    je halt
    mov ah, 0x0E
    int 0x10
    jmp print_loop2

halt:
    hlt
    jmp halt

msg1 db 'Hello, Welcome install the XES system for Desktop Computer!', 0
msg2 db 'Test END.', 0

times 510-($-$$) db 0
dw 0xAA55
