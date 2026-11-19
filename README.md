# NExyS
**NES implementation in VHDL**

General reference:

U1 - Main RAM / CPU RAM
U2 - Buffer to fix problem with cartridge 10 bit video rom address bus and PPU's ability to write in 8 bits
U3 - CPU memory map De-Mux (what is cpu talking to currently)
U4 - PPU RAM
U5 - PPU
U6 - CPU
U7 - Buffer for controllers

P1 - cartridge
P2 - expansion port
P3 - video port
P4 & P5 - controller ports
