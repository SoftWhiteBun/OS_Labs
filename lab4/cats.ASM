
org 0x7C00 ;начало загруз. сектора

begin:
        mov si, salute
        mov ah, 0x0e

display_out:
        lodsb     ;mov al, si
        sub al, 0
        jz ending
        int 0x10
        jmp display_out
        jmp $
salute:
        db '      |                           _', 10, 13
        db '      |                           \"\', 10, 13
        db '      |                 /./././.   | |', 10, 13
        db '      |               /        `/. | |', 10, 13
        db '      |              /     __    `/"/"', 10, 13
        db '      |           /\__/\ /"  `\    /', 10, 13
        db '   __ |          |  oo  |      `.,.|', 10, 13
        db '  /  \|           \vvvv/        ||||', 10, 13
        db ' < "o |\            ||||        ||||', 10, 13
        db '  | 3 | \           ||||        ||||', 10, 13
        db ' < "o |  \          `"`"        `"`"', 10, 13
        db '  \__/u_u )', 10, 13
        db '      U U', 0

ending:
        times 510 - ($ - $$) db 0
        dw 0xAA55
