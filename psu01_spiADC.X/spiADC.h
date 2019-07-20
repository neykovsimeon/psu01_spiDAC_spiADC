/* 
 * File:   spiADC.h
 * Author: PC
 *
 * Created on 30 ???????? 2018, 16:47
 */

#include <stdint.h>

#ifndef SPIADC_H
#define	SPIADC_H

#define spiADC_CH0          0  			//Select Channel 0
#define spiADC_CH1          1  			//Select Channel 1
#define spiADC_CH2          2  			//Select Channel 2
#define spiADC_CH3          3  			//Select Channel 3
#define spiADC_CH4          4  			//Select Channel 4
#define spiADC_CH5          5  			//Select Channel 5
#define spiADC_CH6          6  			//Select Channel 6
#define spiADC_CH7          7  			//Select Channel 7


void setChan_spiADC(unsigned char channel, char pseudo_diff);
uint16_t convert_spiADC(void);

#endif	/* SPIADC_H */

