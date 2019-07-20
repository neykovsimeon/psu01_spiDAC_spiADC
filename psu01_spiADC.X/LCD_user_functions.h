#ifndef __LCD_USER_FUNCTIONS
#define __LCD_USER_FUNCTIONS

#include <xc.h>
#include <stdlib.h>
#include <delays.h>
#include "xlcd.h"
#include "psu_Rev01_definitions.h"


/* LCD lib related delay functions */ 
/*
 * Delay multiples of 10,000 Tcy
 * Passing 0 (zero) results in a delay of 2,560,000 cycles.
 */
void  Delay10KTCYx(unsigned char unit);

/*
 * Delay multiples of 1000 Tcy
 * Passing 0 (zero) results in a delay of 256,000 cycles.
 */
void  Delay1KTCYx(unsigned char unit);

void DelayFor18TCY(void); // 18 cycles

void DelayPORXLCD(void);  // 15ms

void DelayXLCD(void);    // 5ms

void Delay1Sec(void);

void DelayHalfSec(void);

void Delay200ms(void);

/* LCD lib related User defines these routines according to the oscillator frequency */
void init_XLCD (void);

void clear_display (void);

#endif /* LCD_USER_FUNCTIONS */


