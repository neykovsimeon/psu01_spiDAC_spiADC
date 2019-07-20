#include <stdlib.h>
#include <spi.h>
#include <stdint.h>

#include "spiADC.h"
#include "psu_Rev01_hardware.h"
#include "SPI_user_functions.h"
#include "psu_Rev01_definitions.h"


void setChan_spiADC(unsigned char channel, char pseudo_diff) {
    spiADC_1x8 = 0b00000110; // gives 5 leading 0s, start bit and configure single ended inputs  
    if (pseudo_diff) spiADC_1x8 = 0b00000100; // if differential inputs required, change config bit respectively
    spiADC_2x8 = 0b00000000;
//    spiADC_3x8 = 0;
    switch (channel){
        case spiADC_CH0:{
            spiADC_2x8 = 0b00000000;
            break;
        }
        case spiADC_CH1:{
            spiADC_2x8 = 0b01000000;
            break;
        }
        case spiADC_CH2:{
            spiADC_2x8 = 0b10000000;            
            break;
        }
         case spiADC_CH3:{
            spiADC_2x8 = 0b11000000;
            break;
        }
         case spiADC_CH4:{
            spiADC_1x8 |= 0b00000001;
            spiADC_2x8 = 0b00000000;             
            break;
        }
        case spiADC_CH5:{
            spiADC_1x8 |= 0b00000001;
            spiADC_2x8 = 0b01000000;            
            break;
        }         
        case spiADC_CH6:{
            spiADC_1x8 |= 0b00000001;
            spiADC_2x8 = 0b10000000; 
            break;
        }
        case spiADC_CH7:{
            spiADC_1x8 |= 0b00000001;
            spiADC_2x8 = 0b11000000;
            break;
        }        
        default:{
            break;
        }
    }
    
}

uint16_t convert_spiADC(void) {
    // before conversion make sure the correct channel and inputs mode have been selected
    // this make global spiADC variables ready for use 
    //SSPBUF = 0x00;
    spiADC_L = 0;
    spiADC_H = 0;
    spiADC_buffer = 0;
    init_adc_SPI();
    SPI_CS_ADC = 0;
    NOP(); NOP(); NOP();
    spiADC_3x8 = SSPBUF;
    WriteSPI(spiADC_1x8); // send start bit , single/diff config bit and D2
    spiADC_3x8 = SSPBUF; //ReadSPI();
    WriteSPI(spiADC_2x8); // send D1, D0
    spiADC_H = SSPBUF; //ReadSPI();
    //SSPBUF = 0x00;
    WriteSPI(spiADC_3x8);
    spiADC_L = SSPBUF; //ReadSPI();
    //SSPBUF = 0x00;
    spiADC_buffer = (spiADC_H << 8) | spiADC_L;
    
    SPI_CS_ADC = 1;
    NOP(); NOP(); NOP();
    CloseSPI();
    
    return (spiADC_buffer);
}
