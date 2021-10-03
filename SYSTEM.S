; ******************************************************************
; Sega Megadrive ROM Header
; ******************************************************************

INCLUDE HEADER.S

; ******************************************************************
; Sega Addresses Equates
; ******************************************************************

INCLUDE GLOBALS.S

; ******************************************************************
; Sega System Interruptions
; ******************************************************************

INCLUDE INTERRUPTS.S

; ******************************************************************
; Sega System Macros
; ******************************************************************


Z80Access:  MACRO
    MOVE.W #$0100, Z80BUSREQ
    @WAIT
        btst #$0, Z80BUSREQ
        BNE @WAIT
    ENDM

Z80ReleaseAccess:   MACRO
    ;MOVE.W #$0000, Z80BUSREQ
    CLR.W Z80BUSREQ             ; Faster than MOVE
    ENDM

Z80Reset:   MACRO
    CLR.W Z80BUSRES
	EXG.L	A0,A1       ; Resetting the Z80 requires 26ms
	EXG.L	A1,A0
    MOVE.W #$0100, Z80BUSRES
    ENDM

; ******************************************************************
; Sega Initial Subroutines
; ******************************************************************


EntryPoint:
    ;MOVE.L #$000000FF, d0
    ;MOVE.L d0, d1
    TST.W $00A10008  ; Test mystery reset (expansion port reset?)
    BNE MAIN          ; Branch if Not Equal (to zero) - to Main
    TST.W $00A1000C  ; Test reset button
    BNE MAIN          ; Branch if Not Equal (to zero) - to Main
    JMP EntryPoint

CLEARRAM:
    move.l #0x00000000, d0     ; Place a 0 into d0, ready to copy to each longword of RAM
    move.l #0x00000000, a0     ; Starting from address 0x0, clearing backwards
    move.l #0x00003FFF, d1     ; Clearing 64k's worth of longwords (minus 1, for the loop to be correct)
    @Clear:
    move.l d0, -(a0)           ; Decrement the address by 1 longword, before moving the zero from d0 to it
    dbra d1, @Clear            ; Decrement d0, repeat until depleted

TMSS:
    move.b 0x00A10001, d0      ; Move Megadrive hardware version to d0
    andi.b #0x0F, d0           ; The version is stored in last four bits, so mask it with 0F
    beq @Skip                  ; If version is equal to 0, skip TMSS signature
    move.l #'SEGA', 0x00A14000 ; Move the string "SEGA" to 0xA14000
    @Skip:


__end