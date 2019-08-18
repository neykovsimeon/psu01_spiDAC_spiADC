#include <xc.h>
#include <math.h>
#include <stdint.h>              // needed for uint8_t types, etc
#include <stdbool.h>             // needed for boolean types, etc
#include <stdio.h>
#include <stdlib.h>
#include <delays.h>

#include "psu_Rev01_hardware.h"
#include "psu_Rev01_definitions.h"
#include "LCD_user_functions.h"
#include "SPI_user_functions.h"
#include "display_functions.h"
#include "relDriver.h"


/*
void pushButtons_display_settings(void) {
        if (button_enable == 1){
            if (DISPLAY_SET_MODE_SELECT == 0){
                button_enable = 0;                  // enable de-bouncing delay, disable button function
                button_delay_counter_enable = 1;
                button_delay_counter = 0;
                set_contrast = ~set_contrast;
                display_mode = DISPLAY_SET_CONTRAST;
                if (set_contrast == 0) {
                    display_mode = DISPLAY_SET_BRIGHTNESS;
                }
                clear_display();
                return_default_display_counter_enable = 1;
                return_default_display_counter = 0;             
            }
            if (DISPLAY_SET_UP == 0) {
                switch (display_mode){
                    case DISPLAY_SET_CONTRAST:{
                        button_enable = 0;                  // enable de-bouncing delay, disable button function
                        button_delay_counter_enable = 1;
                        button_delay_counter = 0;
                        return_default_display_counter_enable = 1;
                        return_default_display_counter = 0;
                        if (display_contrast < (255 - step_size)) {
                        display_contrast = display_contrast + step_size;
                        }
                        if ((display_contrast +step_size) > 255) {
                            display_contrast = display_contrast;
                        }
                        send_contrast_spi ();
                        break;
                    }
                    case DISPLAY_SET_BRIGHTNESS:{
                        button_enable = 0;                  // enable de-bouncing delay, disable button function
                        button_delay_counter_enable = 1;
                        button_delay_counter = 0;
                        return_default_display_counter_enable = 1;
                        return_default_display_counter = 0;
                        if (display_brightness < (255 - step_size)) {
                        display_brightness = display_brightness + step_size;
                        }
                        if ((display_brightness + step_size) > 255) {
                            display_brightness = display_brightness;
                        }
                        send_backlight_spi ();
                        break;
                }
                    default:{
                        break;
                    }
                }
            }
            if (DISPLAY_SET_DOWN == 0) {
                switch (display_mode){
                    case DISPLAY_SET_CONTRAST:{
                        button_enable = 0;                  // enable de-bouncing delay, disable button function
                        button_delay_counter_enable = 1;
                        button_delay_counter = 0;
                        return_default_display_counter_enable = 1;
                        return_default_display_counter = 0;
                        if (display_contrast > step_size) {
                            display_contrast = display_contrast - step_size;
                            if (display_contrast < step_size) {
                                display_contrast = display_contrast;
                            }
                        }
                        send_contrast_spi ();
                        break;
                    }
                    case DISPLAY_SET_BRIGHTNESS:{
                        button_enable = 0;                  // enable de-bouncing delay, disable button function
                        button_delay_counter_enable = 1;
                        button_delay_counter = 0;
                        return_default_display_counter_enable = 1;
                        return_default_display_counter = 0;
                        if (display_brightness > step_size) {
                            display_brightness = display_brightness - step_size;
                            if (display_brightness < step_size) {
                                display_brightness = display_brightness;
                            }
                        }
                        send_backlight_spi ();
                        break;
                }
                    default:{
                        break;
                    }
                }
            }
        }
} 
 */

void pushButtons_relDriver()
{
    if (button_enable == 1)
    {
        if (Button_ONOFF == 0)
        {
            unsigned char relEN = 1;
            button_enable = 0;                  // enable de-bouncing delay, disable button function
            button_delay_counter_enable = 1;
            button_delay_counter = 0;
            
            DAC_u_buffer = DAC_u;
            DAC_u = 0;
            send_dac_u_spi();
            if(!(outON))
            {
                if (out4Wire)
                {
                    warning_display_ONOFF();
                    __delay_ms(200);
                    while ((ROTARY_SW) && (Button_ONOFF) && (Button_2Wite4Wite))
                    {   
                        relEN = 0;
                        __delay_ms(10);
                        if (!(ROTARY_SW))
                        {
                            clear_display();
                            relDriver_memSet(Rel_ONOFFS, CLOSE);
                            relDriver_memSet(Rel_ONOFFF, CLOSE);
                            relEN = 1;
                            //outON = ~outON;
                        }
                    }
                }
                else 
                {
                    relDriver_memSet(Rel_ONOFFF, CLOSE);
                    //outON = ~outON;
                }
            }
            else
            {
                relDriver_memSet(Rel_ONOFFF, OPEN);
                relDriver_memSet(Rel_ONOFFS, OPEN);
                //outON = ~outON;
            }
            if (relEN)
            {
                relDriver_relSet();
                outON = ~outON;
                __delay_ms(5);
            }
            DAC_u = DAC_u_buffer;
            send_dac_u_spi();
            
            display_mode = DISPLAY_DEFAULT;
            return_default_display_counter_enable = 1;
            return_default_display_counter = 0;             
        }        
        else if (Button_2Wite4Wite == 0)
        {
            button_enable = 0;                  // enable de-bouncing delay, disable button function
            button_delay_counter_enable = 1;
            button_delay_counter = 0;
            
            if(!(outON))
            {
                if (!(out4Wire))
                {
                    relDriver_memSet(Rel_2Wire4Wire, CLOSE);
                }
                else
                {
                    relDriver_memSet(Rel_2Wire4Wire, OPEN);
                }
                relDriver_relSet();
                out4Wire = ~out4Wire;
                __delay_ms(5);            
            }
            else
            {
                warning_display_4wires();
                __delay_ms(200);
                while ((ROTARY_SW) && (Button_ONOFF) && (Button_2Wite4Wite));
                clear_display();
            }
            
            display_mode = DISPLAY_DEFAULT;
            return_default_display_counter_enable = 1;
            return_default_display_counter = 0;             
        } 
    }
}