#include <xc.h>
#include <usart.h>
#include <math.h>

#include "comPort.h"
#include "psu_Rev01_hardware.h"
#include "psu_Rev01_definitions.h"

void init_uartComPort (void) 
{
    //unsigned int speed_reg = _XTAL_FREQ/(16 * baud) - 1; // use 52 for 9600bit/s @ 8MHz
    unsigned int speed_reg = 51;
    
    TXSTA = 0;           // Reset USART registers to POR state
    RCSTA = 0;
    
    TXSTAbits.SYNC = 0; // asynchronous mode
    
    TXSTAbits.TX9 = 0;  // 8-bits transmitter mode
    RCSTAbits.RX9 = 1;  // 8-bits receiver mode
    
    RCSTAbits.ADEN = 0; // don't care in async 8-bits mode
    RCSTAbits.CREN = 1; // enable receiver (valid for async mode). Note in sync mode we don't care for SREN bit
    
    TXSTAbits.BRGH = 1; // high speed
    BAUDCONbits.BRG16 = 0;
  
    PIE1bits.RCIE = 0; // 
    PIR1bits.RCIF = 0;
    
    PIE1bits.TXIE = 0;
    PIR1bits.TXIF = 0;
     
    SPBRG = speed_reg;       // Write baud rate to SPBRG. baud rate 9600bit/s, SPBRG = 51
    //SPBRGH = speed_reg >> 8; // For 16-bit baud rate generation    
    
    TXSTAbits.TXEN = 1;  // Enable transmitter
    RCSTAbits.SPEN = 1;  // Enable receiver
    TRISCbits.TRISC6 = 0; // TxD output
    TRISCbits.TRISC7 = 1; // RxD input
}

unsigned char getRelay_number()
{
    char relay = 7;
    init_uartComPort();
    while(!DataRdyUSART());
    relay = ReadUSART();
    while(BusyUSART());
    WriteUSART(relay);
    relay = relay - 48; // from ASCII to binary
    CloseUSART();
    relDriver_memBuffer = 0xFF; // open all relays
    return relay;
}