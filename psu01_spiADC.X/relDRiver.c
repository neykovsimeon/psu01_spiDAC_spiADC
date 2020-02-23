#include <xc.h> // include processor files - each processor file is guarded.  
#include <spi.h>
#include <stdbool.h>

#include "psu_Rev01_hardware.h"
#include "SPI_user_functions.h"
#include "relDriver.h"
#include "psu_Rev01_definitions.h"

void relDriver_initOutputs(void);
void relDriver_open_all(void);
void relDriver_close_all(void);


void relDriver_initOutputs(void)
{
    init_relDriver_SPI();
    SPI_CS_IOEXT = 0;
    NOP(); NOP(); NOP();
    WriteSPI(reDriver_contrByte_write);
    WriteSPI(IODIR_ADDRESS);
    WriteSPI(0x00);
    //NOP(); NOP(); NOP();
    SPI_CS_IOEXT = 1;
    NOP(); NOP(); NOP();
    NOP(); NOP(); NOP();
    NOP(); NOP(); NOP();
    SPI_CS_IOEXT = 0;
    NOP(); NOP(); NOP();
    WriteSPI(reDriver_contrByte_write);
    WriteSPI(OLAT_ADDRESS);
    WriteSPI(0xFF); // open all relays at default
    //NOP(); NOP(); NOP();
    SPI_CS_IOEXT = 1;
    //NOP(); NOP(); NOP();  
    CloseSPI();
}

void relDriver_open_all(void)
{
    // active low level
    init_relDriver_SPI();
    SPI_CS_IOEXT = 0;
    NOP(); NOP(); NOP();
    WriteSPI(reDriver_contrByte_write);
    WriteSPI(OLAT_ADDRESS);
    WriteSPI(0xFF);
    //WriteSPI(0xAA);
    //NOP(); NOP(); NOP();
    SPI_CS_IOEXT = 1;
    //NOP(); NOP(); NOP();
    CloseSPI();
}

void relDriver_close_all(void)
{
    // active low level
    init_relDriver_SPI();
    SPI_CS_IOEXT = 0;
    NOP(); NOP(); NOP();
    WriteSPI(reDriver_contrByte_write);
    WriteSPI(OLAT_ADDRESS);
    WriteSPI(0x00);
    //WriteSPI(0x55);
    //NOP(); NOP(); NOP();
    SPI_CS_IOEXT = 1;
    //NOP(); NOP(); NOP();
    CloseSPI();
}

void relDriver_memSet(unsigned char relNumber, unsigned char relStatus)
{
    // active low level for relay closed
    if (relStatus) // if open, set 1
    {
        relDriver_memBuffer |= (1 << relNumber);
    }
    else // if close, set 0
    {
        relDriver_memBuffer &= ~(1 << relNumber);
    }
}

void relDriver_relSet(void)
{
    // active low level
    init_relDriver_SPI();
    SPI_CS_IOEXT = 0;
    NOP(); NOP(); NOP();
    WriteSPI(reDriver_contrByte_write);
    WriteSPI(OLAT_ADDRESS);
    WriteSPI(relDriver_memBuffer);
    SPI_CS_IOEXT = 1;
    CloseSPI();
}