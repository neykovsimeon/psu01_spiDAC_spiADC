#include <stdlib.h>
#include <delays.h>
//#include <adc.h>
#include "spiADC.h"

#include "psu_Rev01_definitions.h"
#include "SPI_user_functions.h"


void spiADC_function(bool spiADC_mode) {
    ADCResult = 0;
        // spiADC as voltmeter and ampere meter
        // first channel -> U(OUT))
        if (spiADC_mode) {
            setChan_spiADC(spiADC_CH0, 0); // select single ended inputs
            for(int i=0;i<10;i++) {
                ADCResult = ADCResult + convert_spiADC();
            }
            ADCResult /= 10;
            voltage_u = 0;
                voltage_u = (((ADCResult*ADC_vRef)/4096) + raw_adc_offset_voltage)*6; // convert ADC count into voltage
            //sprintf(ResultString_u, "%-.3f", voltage_u);
            ADCResult = 0;
        } else {
        // second channel -> I(OUT))
            setChan_spiADC(spiADC_CH1, 0); // select single ended inputs
            for(int i=0;i<10;i++) {
                ADCResult = ADCResult + convert_spiADC();
            }
            ADCResult /= 10;
                voltage_i = 0;
            voltage_i = raw_adc_offset_voltage + ((ADCResult*ADC_vRef)/4096); // convert ADC count into voltage
            //sprintf(ResultString_i, "%-.3f", voltage_i);
            ADCResult = 0;
        }
}