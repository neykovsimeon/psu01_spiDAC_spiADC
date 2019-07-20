#include <xc.h>
#include <math.h>
#include <stdint.h>              // needed for uint8_t types, etc
#include <stdbool.h>             // needed for boolean types, etc
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include <delays.h>

#include "xlcd.h"
#include "psu_Rev01_definitions.h"
#include "LCD_user_functions.h"
#include "SPI_user_functions.h"
#include "lcd_menu.h"

void default_display (void){
    // display voltmeter and ampermeter if default display
    unsigned char u_offset = 0;
    unsigned char i_offset = 0;
    unsigned char iset_offset = 0;
    SetDDRamAddr (0x00);
    //LCDWriteStringROM(0, 0, "Uout= ", 1, ' ');
    putrsXLCD("Uout= ");
    SetDDRamAddr (0x40);
    //LCDWriteStringROM(0, 1, "Iout= ", 1, ' ');
    putrsXLCD("Iout= ");
    sprintf(ResultString_u, "%-.3f", voltage_u);
    strcat(ResultString_u, "V");
    sprintf(ResultString_i, "%-.3f", voltage_i);
    strcat(ResultString_i, "A");
    //u_offset = 1;
    //while (ResultString_u[u_offset] != 'V'){
    //    u_offset++;;
        //ResultString_u++;
    //}
    //u_offset = strlen(ResultString_u);
    //i_offset = strlen(ResultString_i);
    LCDWriteStringROM(6, 0, ResultString_u, 1, ' '); // (INITIAL_MAXX-u_offset)
    LCDWriteStringROM(6, 1, ResultString_i, 1, ' ');
    switch (i_mode){
        case I_MODE_PROTECTION:{
            LCDWriteStringROM(0, 3, "Protection Mode!", 1, ' ');
            break;
        }
        case I_MODE_LIMIT:{
            LCDWriteStringROM(0, 3, "Limit Mode!", 1, ' '); 
            break;
        }

        case I_MODE_PCONST:{
            LCDWriteStringROM(0, 3, "Automatic Mode!", 1, ' ');             
            break;
        }

        default:{
            break;
        }
    }
    gotoxy(0,2);
    putrsXLCD("Iset= ");
    sprintf(ResultString_set_i, "%-.3f", voltage_set_i); // "%-.3f" voltage_set_i
    strcat(ResultString_set_i,"A");
    //iset_offset = strlen(ResultString_set_i);
            //putsXLCD(ResultString_set_i);
    LCDWriteStringROM(6, 2, ResultString_set_i, 1, ' '); //putrsXLCD("A          ");
}


void contrast_display (void) {
    // display contrast settings
      display_contrast_percent = ((display_contrast)*100)/255;
      sprintf(ResultString_contrast, "%-3u", (display_contrast));
      sprintf(ResultString_contrast_percent, "%3.3g", display_contrast_percent);
      SetDDRamAddr (0x00);
      if (step_size_mode == FINE) {
        //putrsXLCD("CONTRAST        ");
        putrsXLCD("CONTRAST FINE:  ");
      } else{
        //putrsXLCD("CONTRAST        ");
        putrsXLCD("CONTRAST ROUGH: ");
      }
      //putrsXLCD("CONTRAST:       ");
      SetDDRamAddr (0x40);
      putrsXLCD("(1:255):");
      putrsXLCD(ResultString_contrast);
      SetDDRamAddr (0x4C);        
      putrsXLCD(ResultString_contrast_percent);
      putrsXLCD("%");
}

void brightness_display (void) {
    // display contrast settings
      display_brightness_percent = (display_brightness*100)/255;
      sprintf(ResultString_brightness, "%-3u", display_brightness);
      sprintf(ResultString_brightness_percent, "%3.3g", display_brightness_percent);
      SetDDRamAddr (0x00);
      if (step_size_mode == FINE) {
        //putrsXLCD("BACKLIGHT       ");
        putrsXLCD("BACKLIGHT FINE: ");
      } else{
        //putrsXLCD("BACKLIGHT       ");
        putrsXLCD("BACKLIGHT ROUGH:");
      }      
      //putrsXLCD("BACKLIGHT:      ");
      SetDDRamAddr (0x40);
      putrsXLCD("(1:255):");
      putrsXLCD(ResultString_brightness);
      SetDDRamAddr (0x4C);
      putrsXLCD(ResultString_brightness_percent);
      putrsXLCD("%");
}


void voltage_set_display (void) {
    // display contrast settings
      voltage_set_u = ((DAC_u*DAC_vRef)/4096)*6; // convert DAC count into voltage
     // if (voltage_set_u < 1){
          //voltage_set_u = voltage_set_u * 1000; // switch in mV
      //    sprintf(ResultString_set_u, "%-3u", voltage_set_u);
      //    strcat(ResultString_set_u, "mV");
      //} else {
      sprintf(ResultString_set_u, "%-.3f", voltage_set_u);
      strcat(ResultString_set_u, "V");
      //}
      SetDDRamAddr (0x00);
      putrsXLCD("Uset= ");
      LCDWriteStringROM(6, 0, ResultString_set_u, 1, ' ');
      SetDDRamAddr (0x40);
      putrsXLCD("Uout= ");
      sprintf(ResultString_u, "%-.3f", voltage_u);
      strcat(ResultString_u, "V");
      LCDWriteStringROM(6, 1, ResultString_u, 1, ' ');
      //voltage_set_i = (DAC_i*DAC_vRef)/4096; // convert DAC count into voltage
      sprintf(ResultString_i, "%-.3f", voltage_i);
      strcat(ResultString_i, "A");
      gotoxy(0,2);
      putrsXLCD("Iout= ");
      LCDWriteStringROM(6, 2, ResultString_i, 1, ' ');
      gotoxy(0,3);
      if (step_size_mode == FINE) {
        putrsXLCD("Set Mode:   FINE");
      } else{
        putrsXLCD("Set Mode:  ROUGH");
      }
      
}


void current_protection_set_display (void) {
    // display contrast settings
      voltage_set_i = (DAC_i*DAC_vRef)/4096; // convert DAC count into voltage
      sprintf(ResultString_set_i, "%-.3f", voltage_set_i);
      SetDDRamAddr (0x00);   
      putrsXLCD("Iprot=");
      putrsXLCD(ResultString_set_i);
      putrsXLCD("A        ");
      SetDDRamAddr (0x40);
      sprintf(ResultString_i, "%-.3f", voltage_i);
      putrsXLCD("Io =");
      putrsXLCD(ResultString_i);
      putrsXLCD("A        ");
      SetDDRamAddr (0x4B);
      if (step_size_mode == FINE) {
        putrsXLCD(" FINE");
      } else{
        putrsXLCD("ROUGH");
      }
}

void current_limit_set_display (void) {
    // display contrast settings
      voltage_set_i = (DAC_i*DAC_vRef)/4096; // convert DAC count into voltage
      sprintf(ResultString_set_i, "%-.3f", voltage_set_i);
      SetDDRamAddr (0x00);      
      putrsXLCD("Ilimit=");
      putrsXLCD(ResultString_set_i);
      putrsXLCD("A        ");
      SetDDRamAddr (0x40);
      sprintf(ResultString_i, "%-.3f", voltage_i);
      putrsXLCD("Io =");
      putrsXLCD(ResultString_i);
      putrsXLCD("A         ");
      SetDDRamAddr (0x4B);
      if (step_size_mode == FINE) {
        putrsXLCD(" FINE");
      } else{
        putrsXLCD("ROUGH");
      }
}


void current_auto_limit_set_display (void) {
    // display contrast settings
      voltage_set_i = constant_power / (voltage_in - voltage_u);
      DAC_i = (voltage_set_i * 4096) / DAC_vRef;
      send_dac_i_spi();
      sprintf(ResultString_set_i, "%-.3f", voltage_set_i);
      SetDDRamAddr (0x00);
      putrsXLCD(" P=10W,  Uin=19V ");
      SetDDRamAddr (0x40);
      putrsXLCD("Iset=");
      putrsXLCD(ResultString_set_i);
      putrsXLCD("A           ");
}



void protection_display (void) {
    // display contrast settings
      clear_display();
      SetDDRamAddr (0x00);
      putrsXLCD("!! PROTECTION !!");
      SetDDRamAddr (0x40);
      putrsXLCD("!CHECK SETTINGS!");      
}

void show_on_screen (unsigned char screen_mode) {
    switch (screen_mode){
        case DISPLAY_DEFAULT:
            {
                default_display ();
                //GIE = 0;
                break;
            }
        case DISPLAY_U_SET:{
                voltage_set_display();
                //GIE = 1;
                break;
            }
        case DISPLAY_I_PROT_SET:
            {  
                current_protection_set_display();
                //GIE = 1;
                i_mode = I_MODE_PROTECTION;
                break;
            }
        case DISPLAY_I_LIMIT_SET:
            {
                current_limit_set_display();
                //GIE = 1;
                i_mode = I_MODE_LIMIT;
                break;
            }
        case DISPLAY_I_AUTO_LIMIT:
            {
                current_auto_limit_set_display();
                i_mode = I_MODE_PCONST;
                //GIE = 0;
                break;
            }
        case DISPLAY_SET_CONTRAST:
            {
                contrast_display();
                //GIE = 0;
                break;
            }
        case DISPLAY_SET_BRIGHTNESS:
            {
                brightness_display();
                //GIE = 0;
                break;
            }
        case DISPLAY_PROTECTION:
            {
                protection_display();
                //GIE = 0;
                break;
            }
        case DISPLAY_MENU:
            {
                show_menu();
                //GIE = 0;
                break;
            }            
            
        default:
            {
                break;
            }              
        } 
}
