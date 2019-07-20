#include <xc.h>
#include <math.h>
#include <stdint.h>              // needed for uint8_t types, etc
#include <stdbool.h>             // needed for boolean types, etc
#include <stdio.h>
#include <stdlib.h>

#include "psu_Rev01_hardware.h"
#include "psu_Rev01_definitions.h"
#include "LCD_user_functions.h"
#include "SPI_user_functions.h"



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