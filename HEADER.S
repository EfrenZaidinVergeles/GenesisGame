; ******************************************************************
; 68K Vector Table
; ******************************************************************

DC.L   0x00FFFF00      ; Initial stack pointer value
DC.L   ENTRYPOINT      ; Start of program
DC.L   Exception       ; Bus error
DC.L   Exception       ; Address error
DC.L   Exception       ; Illegal instruction
DC.L   Exception       ; Division by zero
DC.L   Exception       ; CHK exception
DC.L   Exception       ; TRAPV exception
DC.L   Exception       ; Privilege violation
DC.L   Exception       ; TRACE exception
DC.L   Exception       ; Line-A emulator
DC.L   Exception       ; Line-F emulator
DC.L   Exception       ; Unused (reserved)
DC.L   Exception       ; Unused (reserved)
DC.L   Exception       ; Unused (reserved)
DC.L   Exception       ; Unused (reserved)
DC.L   Exception       ; Unused (reserved)
DC.L   Exception       ; Unused (reserved)
DC.L   Exception       ; Unused (reserved)
DC.L   Exception       ; Unused (reserved)
DC.L   Exception       ; Unused (reserved)
DC.L   Exception       ; Unused (reserved)
DC.L   Exception       ; Unused (reserved)
DC.L   Exception       ; Unused (reserved)
DC.L   Exception       ; Spurious exception
DC.L   Exception       ; IRQ level 1
DC.L   Exception       ; IRQ level 2
DC.L   Exception       ; IRQ level 3
DC.L   HBLANK          ; IRQ level 4 (horizontal retrace interrupt)
DC.L   Exception       ; IRQ level 5
DC.L   VBLANK          ; IRQ level 6 (vertical retrace interrupt)
DC.L   Exception       ; IRQ level 7
DC.L   Exception       ; TRAP #00 exception
DC.L   Exception       ; TRAP #01 exception
DC.L   Exception       ; TRAP #02 exception
DC.L   Exception       ; TRAP #03 exception
DC.L   Exception       ; TRAP #04 exception
DC.L   Exception       ; TRAP #05 exception
DC.L   Exception       ; TRAP #06 exception
DC.L   Exception       ; TRAP #07 exception
DC.L   Exception       ; TRAP #08 exception
DC.L   Exception       ; TRAP #09 exception
DC.L   Exception       ; TRAP #10 exception
DC.L   Exception       ; TRAP #11 exception
DC.L   Exception       ; TRAP #12 exception
DC.L   Exception       ; TRAP #13 exception
DC.L   Exception       ; TRAP #14 exception
DC.L   Exception       ; TRAP #15 exception
DC.L   Exception       ; Unused (reserved)
DC.L   Exception       ; Unused (reserved)
DC.L   Exception       ; Unused (reserved)
DC.L   Exception       ; Unused (reserved)
DC.L   Exception       ; Unused (reserved)
DC.L   Exception       ; Unused (reserved)
DC.L   Exception       ; Unused (reserved)
DC.L   Exception       ; Unused (reserved)
DC.L   Exception       ; Unused (reserved)
DC.L   Exception       ; Unused (reserved)
DC.L   Exception       ; Unused (reserved)
DC.L   Exception       ; Unused (reserved)
DC.L   Exception       ; Unused (reserved)
DC.L   Exception       ; Unused (reserved)
DC.L   Exception       ; Unused (reserved)
DC.L   Exception       ; Unused (reserved)

; ******************************************************************
; Sega Megadrive ROM Header
; ******************************************************************

DC.B "SEGA GENESIS    "                                 ; Console name
DC.B "(C)SEGA 1992.SEP"                                 ; Copyrght holder and release date
DC.B "MASTER                                          " ; Domestic name
DC.B "MASTER                                          " ; International name
DC.B "GM XXXXXXXX-XX"                                   ; Version number
DC.W 0x0000                                             ; Checksum
DC.B "J               "                                 ; I/O support
DC.L 0x00000000                                         ; Start address of ROM
DC.L __end                                              ; End address of ROM
DC.L 0x00FF0000                                         ; Start address of RAM
DC.L 0x00FFFFFF                                         ; End address of RAM
DC.L 0x00000000                                         ; SRAM enabled
DC.L 0x00000000                                         ; Unused
DC.L 0x00000000                                         ; Start address of SRAM
DC.L 0x00000000                                         ; End address of SRAM
DC.L 0x00000000                                         ; Unused
DC.L 0x00000000                                         ; Unused
DC.B "                                        "         ; Notes (unused)
DC.B "JUE             "                                 ; Country codes
