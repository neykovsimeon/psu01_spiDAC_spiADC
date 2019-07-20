#include <xc.h>
#include <math.h>
#include <stdint.h>              // needed for uint8_t types, etc
#include <stdbool.h>             // needed for boolean types, etc
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "xlcd.h"
#include "delays.h"
#include "lcd_menu.h"
#include "LCD_user_functions.h"
#include "psu_Rev01_hardware.h"
#include "display_functions.h"


unsigned char selected = 1;

const char menu_000[] = "<Main Menu>";       // 0
const char menu_001[] = "Set Output";        // 1
const char menu_002[] = "Set Display";       // 2
const char menu_003[] = "Exit";              // 3

const char menu_010[] = "<Set Output>";      // 4
const char menu_011[] = "Set U out ";          // 5
const char menu_012[] = "Set I mode";        // 6
const char menu_013[] = "Set I set ";          // 7
const char menu_014[] = "Out preset";        // 8
const char menu_015[] = "Return";            // 9

const char menu_020[] = "<Set I mode>";        // 10
const char menu_021[] = "Limit Mode";       // 11
const char menu_022[] = "Prot. Mode";        // 12
const char menu_023[] = "Auto Mode";          // 13
const char menu_024[] = "Return";            // 14


const char menu_030[] = "<Set Display>";       // 15
const char menu_031[] = "Set Contrast";      // 16
const char menu_032[] = "Set Backlight";     // 17
const char menu_033[] = "Preset";      // 18
const char menu_034[] = "Return";            // 19

MenuEntry my_menu[] = 
{
    {menu_000, 4, 0, 0, 0,  0},                   // "<Main Menu>";       // 0
    {menu_001, 4, 1, 2, 5,  0},                   // "Set Output";        // 1
    {menu_002, 4, 1, 3, 16, 0},                   // "Set Display";       // 2
    {menu_003, 4, 2, 3, 1,  return_to_default},   // "Exit";              // 3 
    
    {menu_010, 6, 0, 0, 0,  0},                   // "<Set Output>";      // 4
    {menu_011, 6, 5, 6, 5,  setUout},             // "Set Uout";          // 5
    {menu_012, 6, 5, 7, 11, 0},                   // "Set Imode";        // 6
    {menu_013, 6, 6, 8, 7,  setIset},             // "Set Iset";          // 7
    {menu_014, 6, 7, 9, 8,  outPreset},           // "Out preset";        // 8
    {menu_015, 6, 8, 9, 1,  0},                   // "Return";            // 9
    
    {menu_020, 5, 0,  0,  0,  0},                 // "<Set I mode>";        // 10
    {menu_021, 5, 11, 12, 5, setImode_limit},     // "Set I limit";       // 11
    {menu_022, 5, 11, 13, 5, setImode_prot},      // "Set I prot";        // 12
    {menu_023, 5, 12, 14, 5, setImode_auto},      // "Set Auto";          // 13
    {menu_024, 5, 13, 14, 5,  0},                 // "Return";            // 14
    
    {menu_030, 5, 0,  0,  0,  0},                 // "<Set Display>";       // 15
    {menu_031, 5, 16, 17, 16, setContrast},       // "Set Contrast";      // 16
    {menu_032, 5, 16, 18, 17, setBacklight},      // "Set Backlight";     // 17
    {menu_033, 5, 17, 19, 18, displayPreset},     // "Disp preset";      // 18
    {menu_034, 5, 18, 19, 1,  0},                 // "Return";            // 19        
};


void LCDWriteCmd (unsigned char command) {
    while(BusyXLCD());
    WriteCmdXLCD(command); // clear screen
}

void return_to_default(void) {
    clear_display();
    gotoxy(0, 0);
    display_mode = DISPLAY_DEFAULT;
    return_default_display_counter = 0;
    return_default_display_counter_enable = 0;
    //default_display(); 
}

void setUout(void) {
    display_mode = DISPLAY_U_SET;
}

void setImode_limit(void) {
    i_mode = I_MODE_LIMIT;
}

void setImode_prot(void) {
    i_mode = I_MODE_PROTECTION;
}

void setImode_auto(void) {
    i_mode = I_MODE_PCONST;
}

void setIset(void) {
    switch (i_mode){
        case I_MODE_PROTECTION:{  
                display_mode = DISPLAY_I_PROT_SET;
                break;
        }
        case I_MODE_LIMIT:{
                display_mode = DISPLAY_I_LIMIT_SET;
                break;
        }
        case I_MODE_PCONST:{
                display_mode = DISPLAY_I_AUTO_LIMIT;
                break;
        }                        
        default:
            {
                break;
            }              
        }     
}

void outPreset(void) {
    
}

void setContrast(void) {
    display_mode = DISPLAY_SET_CONTRAST;
}

void setBacklight(void) {
    display_mode = DISPLAY_SET_BRIGHTNESS;
}

void displayPreset(void) {
    
}

void gotoxy (unsigned char x_pos, unsigned char y_pos) {
    unsigned char ddramaddress = 0;
    
    if (x_pos > (INITIAL_MAXX - 1)) x_pos = 0;      // t.b.d.
    if (y_pos > (INITIAL_MAXY - 1)) y_pos = 0;      // t.b.d.
    switch ( y_pos ) { // for 16x4 display
        case 0:  {
            ddramaddress = (0x00 + x_pos); 
            break;
        }   // row 1
        case 1:  {
            ddramaddress = (0x40 + x_pos); 
            break;
        }   // row 2
        case 2:  {
            ddramaddress = (START_ROW3 + x_pos); 
            break;
        }   // row 3
        case 3:  {
            ddramaddress = (START_ROW4 + x_pos); 
            break;
        }   // row 4
        default: {
            ddramaddress = (0x00 + x_pos); 
            break;
        }   // row 1
    }
    while(BusyXLCD());
    SetDDRamAddr(ddramaddress);
}

void LCDWriteStringROM (unsigned char x, unsigned char y, const char *lcd_menu_items, unsigned char add_line, char add_char) {
    unsigned char lcd_i;
    unsigned char lcd_offset = 0;
    //unsigned char offsetstring[5];
    if (x > (INITIAL_MAXX - 1)) x = 0;      // t.b.d.
    if (y > (INITIAL_MAXY - 1)) y = 0;      // t.b.d.
    switch ( y ) {
        case 0:  {
            lcd_offset = 0x00 + x; 
            break;
        }   // row 1
        case 1:  {
            lcd_offset = 0x40 + x; 
            break;
        }   // row 2
        case 2:  {
            lcd_offset = START_ROW3 + x; 
            break;
        }   // row 3
        case 3:  {
            lcd_offset = START_ROW4 + x; 
            break;
        }   // row 4
        default: {
            lcd_offset = 0x00; 
            break;
        }   // row 1
    }
    while(BusyXLCD());
    SetDDRamAddr(lcd_offset);
    lcd_offset = strlen(lcd_menu_items);
    //sprintf(offsetstring, "%d", lcd_offset);
    //putrsXLCD(offsetstring);
  
    if (lcd_offset > INITIAL_MAXX) lcd_offset = INITIAL_MAXX;
    for (lcd_i = lcd_offset; lcd_i; lcd_i--){
        while(BusyXLCD());
        putcXLCD(*lcd_menu_items);
        lcd_menu_items++;
    }
    if (add_line){
        for (lcd_i = INITIAL_MAXX - lcd_offset - x; lcd_i; lcd_i--) {
            while(BusyXLCD());
            putcXLCD(add_char);
        }
    }
   
}

void show_menu(void){
    unsigned char line_cnt = 0;
    unsigned char from = 0; // from which row of menu points
    unsigned char till = 0; // till which row of menu points
    unsigned char temp = 0;
    unsigned char text_offset = 0;
    unsigned char text_i = 0;
    
    // define from and till spec for the menu
    while (till <= selected){
        till += my_menu[till].num_menupoints;
    }
    from = till - my_menu[selected].num_menupoints;
    till--;
    temp = from;
    
    if ((selected >= (from +UPPER_SPACE)) && (selected <= (till - LOWER_SPACE))) {
        from = selected - UPPER_SPACE;
        till = from + (DISPLAY_ROWS - 1);
        if (VISIBLE_MENU_HEADER) {
            text_offset = strlen(my_menu[temp].text);
            text_offset = (INITIAL_MAXX - text_offset) / 2;
            gotoxy(0, 0);
            for (text_i = text_offset; text_i; text_i--) {
                while(BusyXLCD());
                putcXLCD('-');
            }
            LCDWriteStringROM(text_offset, 0, my_menu[temp].text, 1, '-'); //
            line_cnt = 1; //
            from ++;
        }
        for (from; from <= till; from++) {
            if (from == selected) {
                text_offset = strlen(my_menu[from].text);
                text_offset = (INITIAL_MAXX - text_offset) / 2;
                gotoxy(0, line_cnt);
                for (text_i = text_offset; text_i; text_i--) {
                    while(BusyXLCD());
                    putcXLCD(SELECTION_CHAR);
                }                
                LCDWriteStringROM(text_offset, line_cnt, my_menu[from].text, 1, SELECTION_CHAR_END);
                line_cnt++;
            } else {
                text_offset = strlen(my_menu[from].text);
                text_offset = (INITIAL_MAXX - text_offset) / 2;
                gotoxy(0, line_cnt);
                for (text_i = text_offset; text_i; text_i--) {
                    while(BusyXLCD());
                    putcXLCD(' ');
                }                
                LCDWriteStringROM(text_offset, line_cnt, my_menu[from].text, 1, ' ');
                line_cnt++;
            }
        }
        
        //gotoxy(0, UPPER_SPACE); // t.b.d.
        //while(BusyXLCD());
        //putcXLCD(SELECTION_CHAR);        
    } else {
        if (selected < (from +UPPER_SPACE)) {
            till = from + (DISPLAY_ROWS - 1);
            text_offset = strlen(my_menu[from].text);
            text_offset = (INITIAL_MAXX - text_offset) / 2;
            gotoxy(0, 0);
            for (text_i = text_offset; text_i; text_i--) {
                while(BusyXLCD());
                putcXLCD('-');
            }
            LCDWriteStringROM(text_offset, 0, my_menu[from].text, 1, '-'); //
            line_cnt = 1; //
            from ++;            
            for (from; from <= till; from++) {
                if (from == selected) {
                    text_offset = strlen(my_menu[from].text);
                    text_offset = (INITIAL_MAXX - text_offset) / 2;
                    gotoxy(0, line_cnt);
                    for (text_i = text_offset; text_i; text_i--) {
                        while(BusyXLCD());
                        putcXLCD(SELECTION_CHAR);
                    }                
                    LCDWriteStringROM(text_offset, line_cnt, my_menu[from].text, 1, SELECTION_CHAR_END);
                    line_cnt++;
                } else {
                    text_offset = strlen(my_menu[from].text);
                    text_offset = (INITIAL_MAXX - text_offset) / 2;
                    gotoxy(0, line_cnt);
                    for (text_i = text_offset; text_i; text_i--) {
                        while(BusyXLCD());
                        putcXLCD(' ');
                    }                
                    LCDWriteStringROM(text_offset, line_cnt, my_menu[from].text, 1, ' ');
                    line_cnt++;
                }
            }
            //gotoxy(0,selected - temp); // t.b.d.
            //while(BusyXLCD());
            //putcXLCD(SELECTION_CHAR);
        } else {
            if (selected == till) {
                from = till - (DISPLAY_ROWS - 1);
                if (VISIBLE_MENU_HEADER) {
                    text_offset = strlen(my_menu[temp].text);
                    text_offset = (INITIAL_MAXX - text_offset) / 2;
                    gotoxy(0, 0);
                    for (text_i = text_offset; text_i; text_i--) {
                        while(BusyXLCD());
                        putcXLCD('-');
                    }                    
                    LCDWriteStringROM(text_offset, 0, my_menu[temp].text, 1, '-'); //
                    line_cnt = 1; //
                    from ++;
                }
                for (from; from <= till; from++) {
                    if (from == selected) {
                        text_offset = strlen(my_menu[from].text);
                        text_offset = (INITIAL_MAXX - text_offset) / 2;
                        gotoxy(0, line_cnt);
                        for (text_i = text_offset; text_i; text_i--) {
                            while(BusyXLCD());
                            putcXLCD(SELECTION_CHAR);
                        }                
                        LCDWriteStringROM(text_offset, line_cnt, my_menu[from].text, 1, SELECTION_CHAR_END);
                        line_cnt++;
                    } else {
                        text_offset = strlen(my_menu[from].text);
                        text_offset = (INITIAL_MAXX - text_offset) / 2;
                        gotoxy(0, line_cnt);
                        for (text_i = text_offset; text_i; text_i--) {
                            while(BusyXLCD());
                            putcXLCD(' ');
                        }                
                        LCDWriteStringROM(text_offset, line_cnt, my_menu[from].text, 1, ' ');
                        line_cnt++;
                        }
                }
                //gotoxy(0,(DISPLAY_ROWS - 1)); // t.b.d.
                //while(BusyXLCD());
                //putcXLCD(SELECTION_CHAR);
            }
        }
    } 
}



