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
void 
Delay10KTCYx(unsigned char unit)
{
	do {
		_delay(10000);
	} while(--unit != 0);
}

/*
 * Delay multiples of 1000 Tcy
 * Passing 0 (zero) results in a delay of 256,000 cycles.
 */
void 
Delay1KTCYx(unsigned char unit)
{
	do {
		_delay(1000);
	} while(--unit != 0);
}

void DelayFor18TCY(void){
    Nop(); Nop(); Nop(); Nop();
    Nop(); Nop(); Nop(); Nop();
    Nop(); Nop(); Nop(); Nop();
    Nop(); Nop();
    return;
} // 18 cycles

void DelayPORXLCD(void){
    Delay1KTCYx(30);
//    __delay_ms(15);
}  // 15ms
void DelayXLCD(void){
    Delay1KTCYx(10);
//    __delay_ms(5);
}     // 5ms

void Delay1Sec(void){
    for (int cntDelay = 0; cntDelay < 20; cntDelay ++) __delay_ms(50);
}

void DelayHalfSec(void){
    for (int cntDelay = 0; cntDelay < 10; cntDelay ++) __delay_ms(50);
}

void Delay200ms(void){
    for (int cntDelay = 0; cntDelay < 10; cntDelay ++) __delay_ms(20);
}

/* LCD lib related User defines these routines according to the oscillator frequency */
void init_XLCD (void){
    OpenXLCD(FOUR_BIT & LINES_5X7);
    while(BusyXLCD());
//    WriteCmdXLCD(SHIFT_CUR_RIGHT);
//    while(BusyXLCD());
//    WriteCmdXLCD(DON);
//    while(BusyXLCD());
//    WriteCmdXLCD(CURSOR_OFF);
    WriteCmdXLCD(0x06); // SHIFT_CUR_RIGHT
    while(BusyXLCD());
    WriteCmdXLCD(0x0C); // DON & CURSOR_OFF & BLINK_OFF
    while(BusyXLCD());
    WriteCmdXLCD(0x01); // clear screen
}

void clear_display (void){
    while(BusyXLCD());
    WriteCmdXLCD(0x01); // clear screen
}
