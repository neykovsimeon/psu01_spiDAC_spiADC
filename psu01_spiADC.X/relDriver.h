/* 
 * File:   
 * Author: 
 * Comments:
 * Revision history: 
 */

#ifndef RELDRIVER_H
#define	RELDRIVER_H

#include <xc.h> // include processor files - each processor file is guarded.  
#include <spi.h>

#include "psu_Rev01_hardware.h"
#include "SPI_user_functions.h"
#include "psu_Rev01_definitions.h"

// MCP23S08 used control registers addresses
#define reDriver_contrByte_write   0b01000000        // A1, A0 not applicable, control byte for write operation
#define reDriver_contrByte_read    0b01000001        // A1, A0 not applicable, control byte for read operation
#define IODIR_ADDRESS                 0x00
#define IOCON_ADDRESS                 0x05
#define GPIO_ADDRESS                  0x09
#define OLAT_ADDRESS                  0x0A

enum myRelays
{
    Rel_ONOFFF,
    Rel_ONOFFS,
    Rel_2Wire4Wire,
    Rel_3,
    Rel_4,
    Rel_5,
    Rel_6,
    Rel_7
}Relays;

// TODO Insert declarations
void relDriver_initOutputs(void);
void relDriver_open_all(void);
void relDriver_close_all(void);
void relDriver_memSet(unsigned char relNumber, unsigned char relStatus);
void relDriver_relSet(void);

// Comment a function and leverage automatic documentation with slash star star
/**
    <p><b>Function prototype:</b></p>
  
    <p><b>Summary:</b></p>

    <p><b>Description:</b></p>

    <p><b>Precondition:</b></p>

    <p><b>Parameters:</b></p>

    <p><b>Returns:</b></p>

    <p><b>Example:</b></p>
    <code>
 
    </code>

    <p><b>Remarks:</b></p>
 */
// TODO Insert declarations or function prototypes (right here) to leverage 
// live documentation



#endif	/* RELDRVER_H */

