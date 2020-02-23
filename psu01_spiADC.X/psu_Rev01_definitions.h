#ifndef __DEFINITIONS
#define __DEFINITIONS


#include <xc.h>                  // include processor files - each processor file is guarded. 
#include <stdint.h>              // needed for uint8_t types, etc
#include <stdbool.h>             // needed for boolean types, etc
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

#define _XTAL_FREQ 8000000

#define DISPLAY_DEFAULT         0           // display voltmeter and ampermeter
#define DISPLAY_U_SET           1           // display output voltage set, dac v set
#define DISPLAY_I_PROT_SET      2           // display output voltage set, dac v set
#define DISPLAY_I_LIMIT_SET     3           // display output voltage set, dac v set
#define DISPLAY_I_AUTO_LIMIT    4           // select constant power disipation mode
#define DISPLAY_SET_CONTRAST    5           // select contrast or brightness settings
#define DISPLAY_SET_BRIGHTNESS  6           // select contrast or brightness settings
#define DISPLAY_PROTECTION      7           // select contrast or brightness settings
#define DISPLAY_MENU            8           // select contrast or brightness settings

#define INC_VALUE               1           // select contrast or brightness settings
#define DEC_VALUE               0           // select contrast or brightness settings
#define I_MODE_PROTECTION       0           // shutdown the output when I out/measure  exceed I set
#define I_MODE_LIMIT            1           // control the I output = I set (output is active, voltage clamp could occur)
#define I_MODE_PCONST           2           // limit power disipation og the output driver no more than 6W (I limit/prot = 6 / (Uin-Uo))
#define FINE                    1           // step size fine
#define ROUGH                   0           // step size rough
#define OPEN                    1
#define CLOSE                   0

// output settings - spi dac variables
unsigned int DAC_u_buffer = 0;
unsigned int DAC_i = 2;
unsigned int DAC_u = 2;
unsigned char cmd_dac_i_high = 0;
unsigned char dac_i_low = 0;
unsigned char cmd_dac_u_high = 0;
unsigned char dac_u_low = 0;
unsigned char cmd_dac = 0b01110000;
unsigned char outON = 0;    // 0 means out is OFF (disconnected) and 1 means out is ON (connected)
unsigned char out4Wire = 0; // 0 means out is default 2Wire and 1 means out is 4Wite configured

float voltage_set_u =0;
float voltage_set_i =0;

float constant_power = 10.0;
float voltage_in = 19.0;          // will be measured with external adc if tracking pre-regulator is implemented

// display settings - spi dig pots variables
unsigned char cmd_dig_pot = 0;
unsigned char send_byte = 0;
unsigned int display_contrast = 200;     
unsigned int display_brightness = 90; 
unsigned char relDriver_memBuffer = 0xFF; // initial status of relay driver buffer match all opened.

// embedded panel instrument -> adc variables
uint8_t spiADC_L = 0;
uint8_t spiADC_H = 0;
uint8_t spiADC_1x8 = 0;
uint8_t spiADC_2x8 = 0;
uint8_t spiADC_3x8 = 0;
uint16_t  spiADC_buffer = 0;

uint16_t  ADCResult = 0;

unsigned char ResultString_u[10];
unsigned char ResultString_i[10];
unsigned char ResultString_set_u[10];
unsigned char ResultString_set_i[10];


//char *ResultString_u;
bool adc_mode = 0;

float ADC_vRef = 2.49;                            // TL431DIV reference voltage IC
float DAC_vRef = 2.49;                            // TL431DIV reference voltage IC
//float vRef = 1.024;                            // TL431DIV reference voltage IC
float voltage_u=0;
float voltage_i=0;
float raw_adc_offset_voltage = 0; //0.015;            // possible calibration variable                            

// display variables
unsigned char display_mode = DISPLAY_DEFAULT;    // select display mode (default -> ADC, v set, i set, i mode select, contrast, brightness )
float display_contrast_percent;                  // in percent: (display_contrast/255)*100
unsigned char ResultString_contrast_percent[5];
unsigned char ResultString_contrast[5];
float display_brightness_percent;                // in percent: (display_brightness/255)*100
unsigned char ResultString_brightness[5];
unsigned char ResultString_brightness_percent[5];

// general purpose variables
unsigned int main_loop_counter = 0;
unsigned int button_delay_counter = 0;
unsigned int return_default_display_counter = 0;
bool set_contrast = 0;                          // 0-> set brightness, 1-> set contrast
bool button_enable = 1;                         // 1-> button enabled, 0 -> button disabled
bool button_delay_counter_enable = 0;
bool return_default_display_counter_enable = 0;
unsigned char i_mode = 0;
unsigned int step_size = 1;
bool step_size_mode = FINE; 
bool step_size_mode_enable = 1;
bool rotary_direction = 0;   

bool lastStateROTARY_CK = 0;
bool currentStateROTARY_CK = 0;

#endif    /*   DEFINITIONS   */
