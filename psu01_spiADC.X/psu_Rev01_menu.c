#include <xc.h>
#include <math.h>
#include <stdint.h>              // needed for uint8_t types, etc
#include <stdbool.h>             // needed for boolean types, etc
#include <stdio.h>
#include <stdlib.h>

// !!!! plib handled via a local copy !!!!:
// D:\Projects\pic18_plib\include\plib
#include <adc.h>
#include <delays.h>
#include <spi.h>
#include "xlcd.h"
#include "spiADC.h"

#include "psu_Rev01_config_bits.h"
#include "psu_Rev01_hardware.h"
#include "psu_Rev01_definitions.h"
#include "LCD_user_functions.h"
#include "ADC_user_functions.h"
#include "SPI_user_functions.h"
#include "display_functions.h"
#include "pushButtons.h"
#include "lcd_menu.h"
#include "relDriver.h"


void init_GPIO_DIR (void){
    TRISAbits.RA7 = 0;  // digital output cs dac i set
    TRISAbits.RA3 = 0;  // digital output cs spiADC
    TRISAbits.RA0 = 0;  // digital output cs io_expander
    TRISAbits.RA4 = 1;  // digital input button,  ROTARY_DA (rotary data)
    TRISBbits.RB4 = 0;  // digital output cs dac v set
    TRISBbits.RB5 = 1; //0;  // will be used in I protection function
    TRISBbits.RB7 = 1;  // digital input button,  ROTARY_CK (rotary clock)
    TRISBbits.RB6 = 0;  // digital output, cs digital pot for displ contrast and brightness
    TRISAbits.RA2 = 1;  // digital input ROTARY_SW (rotary switch)
    TRISAbits.RA6 = 1;  // digital input active low -> contrast / brightness decrease
    TRISAbits.RA5 = 1;  // digital input active low -> contrast / brightness increase
    SPI_CS_IOUT = 1;    // digital output cs dac i set
    SPI_CS_DISPLAY = 1; // digital output, cs digital pot for displ contrast and brightness
    SPI_CS_UOUT = 1;    // digital output cs dac v set 
    SPI_CS_ADC = 1;     // digital output cs spiADC
    SPI_CS_IOEXT = 1;
    //TRISCbits.RC6 = 0;  // used temporary for debug
    //TRISCbits.RC7 = 0;  // used temporary for debug
    
}

/*
void interrupt rotary_encoder(void){
        // interrupt on change at portb_7 -> rotary encoder
    GIE = 0; // interrupts disabled. Interrupts will be enabled outside with delay (de-bouncing))
    if (RBIF == 1) {
    if ((IPROT == 1) && (i_mode == I_MODE_PROTECTION)) {
        //DAC_i = 0;
        //send_dac_i_spi();
        DAC_u = 0;
        send_dac_u_spi();
        DAC_u = 11;
        display_mode = DISPLAY_PROTECTION;
        return_default_display_counter = 0;
    } else {
        if (ROTARY_CK == ROTARY_DA) {
            rotary_direction = DEC_VALUE;
        } else {
            rotary_direction = INC_VALUE;
        }
        __delay_ms(1);
        return_default_display_counter = 0;
        switch (display_mode){
            case DISPLAY_U_SET:
            {
                if (rotary_direction == INC_VALUE) {
                    if ((DAC_u + step_size) < 4096) {                
                        DAC_u = DAC_u + step_size;
                    }
                //if ((DAC_u + step_size) > 4095) {
                //    DAC_u = DAC_u;
                //}
                    send_dac_u_spi();
                }
                if (rotary_direction == DEC_VALUE) {                          
                    if ((DAC_u - step_size) > step_size) {                
                        DAC_u = DAC_u - step_size;
                    }
                //if (DAC_u < step_size) {
                //    DAC_u = DAC_u;
                //}
                    send_dac_u_spi();
                }
            break;
        }
        case DISPLAY_I_PROT_SET:
        {
            if (rotary_direction == INC_VALUE) {
                if ((DAC_i + step_size) < 4096) {                
                    DAC_i = DAC_i + step_size;
                }
                //if ((DAC_i + step_size) > 4095) {
                //    DAC_i = DAC_i;
                //}
                send_dac_i_spi();
            }
            if (rotary_direction == DEC_VALUE) {                          
                if ((DAC_i - step_size) > step_size) {                
                    DAC_i = DAC_i - step_size;
                }
                //if (DAC_i < step_size) {
                //    DAC_i = DAC_i;
                //}
                send_dac_i_spi();
            }                        
            break;
        }
        case DISPLAY_I_LIMIT_SET:
        {
            if (rotary_direction == INC_VALUE) {
                if ((DAC_i + step_size) < 4096) {                
                    DAC_i = DAC_i + step_size;
                }
                //if ((DAC_i + step_size) > 4095) {
                //    DAC_i = DAC_i;
                //}
                send_dac_i_spi();
            }
            if (rotary_direction == DEC_VALUE) {                          
                if ((DAC_i - step_size) > step_size) {                
                    DAC_i = DAC_i - step_size;
                }
                //if (DAC_i < step_size) {
                //    DAC_i = DAC_i;
                //}
                send_dac_i_spi();
            }                        
            break;
        }
        case DISPLAY_I_AUTO_LIMIT:
        {                        
            break;
        }                                      
        default:
        {
            break;
        }
        }
    }
    if (ROTARY_CK == 1) NOP();
    if (ROTARY_CK == 0) NOP();
    RBIF = 0; // clear flag and mismatch condition
    }
    //return;    
}
*/    

void main(void) {
    
    int relDriver_delay = 0;
    unsigned char relDriver_mode = 0;
    unsigned char relDriver_counter = 0;
    outON = 0;
    out4Wire = 0;
   
    OSCCON  = 0x76;     // internal 8MHz oscillator, RA6 and RA7 are GPIO
    CMCON   = 0x07;     // Comparator OFF, RA2 and RA5 are digital inputs
    ADCON1  = 0x0F;
    
    //DAC_u = 3276;

    
    init_GPIO_DIR ();
    
    __delay_ms(50);
    relDriver_initOutputs(); // initialization relDriver outputs and address mode
   // interrupts registers setup
    // enable PORTB interrupt on change (encoder service)
    //RBIE = 1;
    //INTERRUPT CONTROL REGISTER 2:
    //INTCON2 = 0b00000000; // portb pull-ups disabled, RB Port Change Interrupt Priority low
   
    //RCONbits.IPEN = 0;  // Interrupt High Priority disabled
      
    // initialization of digital pots for contrast and back-light control
    send_contrast_spi ();
    send_backlight_spi ();
    
    // initialization of spi dacs for voltage and current settings
    send_dac_i_spi ();
    send_dac_u_spi ();
    
    init_XLCD();

    // LCD default intro screen and display voltmeter and ampermeter
    putrsXLCD("  Power Supply  ");
    SetDDRamAddr (0x40);
    putrsXLCD("v1.0");
    Delay1Sec();
    Delay1Sec();
    clear_display();
    //RxD = 0;
    //TxD = 1;

    lastStateROTARY_CK = ROTARY_CK;
 // main cycle   
    while (1) {

        // 1) voltmeter and ampere meter: spiADC default display
        spiADC_function(adc_mode);
        adc_mode =  ~adc_mode; // toggle between U measure and I measure
       // 2.1) Buttons check -> display settings - contrast, brightness
        //pushButtons_display_settings();
        pushButtons_relDriver();
        // 2.2) Rotary encoder check -> output settings       
        if (button_enable == 1){
            if (ROTARY_SW == 0){
                button_enable = 0;                  // enable de-bouncing delay, disable button function
                button_delay_counter_enable = 1;
                button_delay_counter = 0;
                if (display_mode == DISPLAY_MENU) {
                    if (my_menu[selected].fp != 0) my_menu[selected].fp();
                        selected  = my_menu[selected].enter;
                }   else if (display_mode == DISPLAY_DEFAULT) {// if ((display_mode != DISPLAY_MENU) && (display_mode == DISPLAY_DEFAULT)) {
                    display_mode = DISPLAY_MENU;
                } else if (display_mode != DISPLAY_MENU) {
                    display_mode = DISPLAY_MENU;
                }
                clear_display();
                return_default_display_counter_enable = 1;
                return_default_display_counter = 0; 
                //GIE = 1; // enable interrupt on change at portb_7
            }
//            currentStateROTARY_CK = ROTARY_CK; 
            for (int i = 0; i < 200; i++) {
                lastStateROTARY_CK = ROTARY_CK; // lastStateROTARY_CK
                                __delay_ms(0.1);
                currentStateROTARY_CK = ROTARY_CK;
                if (currentStateROTARY_CK != lastStateROTARY_CK) {
                    i = 200;
                    if (0) { // if ((IPROT == 1) && (i_mode == I_MODE_PROTECTION)) {
                        DAC_i = 21;
                        send_dac_i_spi();
                        DAC_u = 0;
                        send_dac_u_spi();
                        DAC_u = 21;
                        display_mode = DISPLAY_PROTECTION;
                        return_default_display_counter = 0;
                        __delay_ms(5);
                    } else {
                        if (ROTARY_CK == ROTARY_DA) {
                            rotary_direction = DEC_VALUE;
                        } else {
                            rotary_direction = INC_VALUE;
                        }
                        __delay_ms(5);
                        return_default_display_counter = 0;
                        return_default_display_counter_enable = 1;
                        switch (display_mode){
                            case DISPLAY_U_SET: {
                                if (rotary_direction == INC_VALUE) {
                                    if ((DAC_u + step_size) < 4096) {                
                                        DAC_u = DAC_u + step_size;
                                    }
                                    send_dac_u_spi();
                                }
                                if (rotary_direction == DEC_VALUE) {                          
                                    if ((DAC_u - step_size) > step_size) {                
                                        DAC_u = DAC_u - step_size;
                                    }
                                    send_dac_u_spi();
                                }
                                break;
                            }
                            case DISPLAY_I_PROT_SET: {
                                if (rotary_direction == INC_VALUE) {
                                    if ((DAC_i + step_size) < 4096) {                
                                        DAC_i = DAC_i + step_size;
                                    }
                                    send_dac_i_spi();
                                }
                                if (rotary_direction == DEC_VALUE) {                          
                                    if ((DAC_i - step_size) > step_size) {                
                                        DAC_i = DAC_i - step_size;
                                    }
                                    send_dac_i_spi();
                                }                        
                                break;
                            }
                            case DISPLAY_I_LIMIT_SET: {
                                if (rotary_direction == INC_VALUE) {
                                    if ((DAC_i + step_size) < 4096) {                
                                        DAC_i = DAC_i + step_size;
                                    }
                                    send_dac_i_spi();
                                }
                                if (rotary_direction == DEC_VALUE) {                          
                                    if ((DAC_i - step_size) > step_size) {                
                                        DAC_i = DAC_i - step_size;
                                    }
                                    send_dac_i_spi();
                                }                        
                                break;
                            }
                            case DISPLAY_MENU: {
                                if (rotary_direction == INC_VALUE) {
                                    selected  = my_menu[selected].down;
                                }
                                if (rotary_direction == DEC_VALUE) {                          
                                    selected  = my_menu[selected].up;
                                }                        
                                break;
                            }                                                       
                            case DISPLAY_I_AUTO_LIMIT: {                        
                                break;
                            }
// display settings using rotary encoder
                            case DISPLAY_SET_CONTRAST:{
                                return_default_display_counter_enable = 1;
                                return_default_display_counter = 0;
                                if (rotary_direction == INC_VALUE) {
                                    if (display_contrast < (255 - step_size)) {
                                        display_contrast = display_contrast + step_size;
                                    }
                                    if ((display_contrast +step_size) > 255) {
                                        display_contrast = display_contrast;
                                    }
                                    send_contrast_spi ();
                                }
                                if (rotary_direction == DEC_VALUE) {
                                    if (display_contrast > step_size) {
                                        display_contrast = display_contrast - step_size;
                                    }
                                    if (display_contrast < step_size) {
                                        display_contrast = display_contrast;
                                    }
                                    send_contrast_spi ();                            
                                }
                                break;
                            }
                            case DISPLAY_SET_BRIGHTNESS:{
                                return_default_display_counter_enable = 1;
                                return_default_display_counter = 0;
                                if (rotary_direction == INC_VALUE) {
                                    if (display_brightness < (255 - step_size)) {
                                        display_brightness = display_brightness + step_size;
                                    }
                                    if ((display_brightness + step_size) > 255) {
                                        display_brightness = display_brightness;
                                    }
                                    send_backlight_spi ();
                                }
                                if (rotary_direction == DEC_VALUE) {
                                    if (display_brightness > step_size) {
                                        display_brightness = display_brightness - step_size;
                                    }
                                    if (display_brightness < step_size) {
                                        display_brightness = display_brightness;
                                    }
                                    send_backlight_spi ();                            
                                }
                                break;
                            }                            
                            default: {
                                break;
                            }
                        }
                    }
                }
            }
        }    
        //lastStateROTARY_CK = ROTARY_CK;           
            
        //2.3) delay counters
        if (button_delay_counter_enable == 1) {
            button_delay_counter = button_delay_counter +1;
                if (button_delay_counter > 10){   // about 400ms
                    button_delay_counter = 0;
                    button_enable = 1;
                    button_delay_counter_enable = 0;
                    // enable again button function
                }
        }
        if (return_default_display_counter_enable == 1) {
            return_default_display_counter = return_default_display_counter + 1;
            if (return_default_display_counter > 50) {
                if (step_size_mode_enable == 1) {
                    step_size_mode =~step_size_mode;
                    step_size_mode_enable = 0;
                }
                if (step_size_mode == FINE) {
                    step_size = 1;
                } else{
                    step_size = 20;
                }
            } else {                                                                             
                step_size_mode_enable = 1;
            }
            if (return_default_display_counter > 90) {
                return_default_display_counter = 0;
                return_default_display_counter_enable = 0;
                if ((display_mode != DISPLAY_MENU) && (display_mode != DISPLAY_DEFAULT)) {
                    display_mode = DISPLAY_MENU;
                    return_default_display_counter_enable = 1;
                } else {
                    display_mode = DISPLAY_DEFAULT;
                    selected = 1;
                }
                clear_display();
                //GIE = 0;
                step_size_mode = FINE;
                step_size = 1;
                step_size_mode_enable = 1;
            }
        }
       // 3) DISPLAY     
        show_on_screen (display_mode);
        
       // 4) handle relDriver demo
        /*
        relDriver_delay++;
        
        if (relDriver_delay > 30) 
        {
            relDriver_delay = 0;
            relDriver_counter++;
            if (relDriver_counter > 7) 
            {
                relDriver_counter = 0;
                //relDriver_open_all();
                relDriver_memBuffer = 0xFF;
            }
            if (relDriver_counter == 0)
            {
                relDriver_memSet(relDriver_counter+7, OPEN);
            }
            else
            {
                relDriver_memSet(relDriver_counter-1, OPEN);
            }
            relDriver_memSet(relDriver_counter, CLOSE);
            relDriver_relSet();
        }
        */
    }
    return;
}
