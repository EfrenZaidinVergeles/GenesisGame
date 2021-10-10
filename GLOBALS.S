; ******************************************************************
; Sega Addresses Equates
; ******************************************************************

; ******************************************************************
; ROM Cartridge
; ******************************************************************

ROMSTART:   EQU $000000
ROMEND:     EQU $400000

; ******************************************************************
; I/O
; ******************************************************************

IOSTART:    EQU $A00000
IOEND:      EQU $B00000
VERSION:    EQU $A10001


; ******************************************************************
; Z80
; ******************************************************************

Z80BUSREQ:  EQU $A11100     ; Bit 0 of Z80BUSREQ is the STATUS bit, (0=Z80 using the bus, 1=68K can access the bus)
Z80BUSRES:  EQU $A11200

; ******************************************************************
; VDP
; ******************************************************************

VDPSTART:   EQU $C00000
VDPEND:     EQU $E00000
DATAPORT:   EQU $C00000
CONTROLPORT:   EQU $C00004


VDPRegisters:
    DC.B $20 ; 0: Horiz. interrupt on, plus bit 2 (unknown, but docs say it needs to be on)
    DC.B $74 ; 1: Vert. interrupt on, display on, DMA on, V28 mode (28 cells vertically), + bit 2
    DC.B $30 ; 2: Pattern table for Scroll Plane A at $C000 (bits 3-5)
    DC.B $40 ; 3: Pattern table for Window Plane at $10000 (bits 1-5)
    DC.B $05 ; 4: Pattern table for Scroll Plane B at $A000 (bits 0-2)
    DC.B $70 ; 5: Sprite table at $E000 (bits 0-6)
    DC.B $00 ; 6: Unused
    DC.B $00 ; 7: Background colour - bits 0-3 = colour, bits 4-5 = palette
    DC.B $00 ; 8: Unused
    DC.B $00 ; 9: Unused
    DC.B $00 ; 10: Frequency of Horiz. interrupt in Rasters (number of lines travelled by the beam)
    DC.B $08 ; 11: External interrupts on, V/H scrolling on
    DC.B $81 ; 12: Shadows and highlights off, interlace off, H40 mode (40 cells horizontally)
    DC.B $34 ; 13: Horiz. scroll table at $D000 (bits 0-5)
    DC.B $00 ; 14: Unused
    DC.B $00 ; 15: Autoincrement off
    DC.B $01 ; 16: Vert. scroll 32, Horiz. scroll 64
    DC.B $00 ; 17: Window Plane X pos 0 left (pos in bits 0-4, left/right in bit 7)
    DC.B $00 ; 18: Window Plane Y pos 0 up (pos in bits 0-4, up/down in bit 7)
    DC.B $00 ; 19: DMA length lo byte
    DC.B $00 ; 20: DMA length hi byte
    DC.B $00 ; 21: DMA source address lo byte
    DC.B $00 ; 22: DMA source address mid byte
    DC.B $00 ; 23: DMA source address hi byte, memory-to-VRAM mode (bits 6-7)

; ******************************************************************
; 68K RAM
; ******************************************************************

WORKRAMSTART:   EQU $FF000000
WORKRAMEND:     EQU $FFFFFF
