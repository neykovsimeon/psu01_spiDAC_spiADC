#ifndef __HARDWARE
#define __HARDWARE

//#include <stdlib.h>
//#include <delays.h>
//#include "xlcd.h"

// user HW definitions
#define Button_2Wite4Wite       RE3                     // ->> check it on your bread board !!!! digital input button, active low -> select contrast or brightness control
#define SPI_CS_IOUT             LATAbits.LATA7          // digital output CS dac i set  
#define ROTARY_DA               PORTAbits.RA4           // digital input button, active low -> contrast / brightness decrease
#define SPI_CS_UOUT             LATBbits.LATB4          // digital output CS dac v set
#define DISPLAY_SET_UP          PORTAbits.RA5           // digital input button, active low -> contrast / brightness increase
#define DISPLAY_SET_DOWN        PORTAbits.RA6           // digital input button, active low -> contrast / brightness decrease
#define ROTARY_SW               PORTAbits.RA2           // digital input button, active low -> output settings menu
#define SPI_CS_DISPLAY          LATBbits.LATB6          // digital output, CS digital pot for displ contrast and brightness
#define ROTARY_CK               PORTBbits.RB7           // digital input button, active low -> contrast / brightness decrease
#define IPROT                   PORTBbits.RB5           // digital input, interrup on change -> detect current regulator comparator
#define RxD                     LATCbits.LATC7          // rs232 input, 
#define TxD                     LATCbits.LATC6          // rs232 output, 
#define SPI_CS_ADC              LATAbits.LATA3          // digital output CS spiADC
#define SPI_CS_IOEXT            LATAbits.LATA0          // digital output CS MCp23S08 io expander
#define Button_ONOFF            PORTAbits.RA5           // digital input button, active low -> contrast / brightness increase
#define DISPLAY_SET_MODE_SELECT PORTAbits.RA6           // ->> check it on your bread board; digital input button, active low -> contrast / brightness decrease

void init_GPIO_DIR (void);

#endif   /*    HARDWARE    */

