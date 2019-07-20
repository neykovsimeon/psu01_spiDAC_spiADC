#ifndef __DIGI_POT
#define __DIGI_POT

// digital pots variables spi MCP42010 for display contrast and back light
#define CMD_DIG_POT_NONE 0                          // dummy command, no effect
#define CMD_DIG_POT0_WRITE_BYTE     0b00010001      // write data byte to pot0 -> contrast
#define CMD_DIG_POT1_WRITE_BYTE     0b00010010      // write data byte to pot1 -> brightness
#define CMD_DIG_POTBOTH_WRITE_BYTE  0b00010011      // write data byte to oth pots
#define CMD_DIG_POT0_SHDN           0b00100001      // SHDN pot0
#define CMD_DIG_POT1_SHDN           0b00100010      // SHDN pot1
#define CMD_DIG_POTBOTH_SHDN        0b00100011      // SHDN Both pots

#endif /* DIGI_POT */