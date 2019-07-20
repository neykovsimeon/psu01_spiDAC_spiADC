#ifndef __ADC_USER_FUNCTIONS
#define __ADC_USER_FUNCTIONS

#include <stdlib.h>
#include <delays.h>
#include <adc.h>
#include "spiADC.h"


void init_spiADC (void);
void spiADC_function(bool mcuADC_mode);



#endif  /*  ADC_USER_FUNCTIONS  */