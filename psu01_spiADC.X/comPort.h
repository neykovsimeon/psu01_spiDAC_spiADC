/* 
 * File:   
 * Author: 
 * Comments:
 * Revision history: 
 */

// This is a guard condition so that contents of this file are not included
// more than once.  
#ifndef COM_PORT_H
#define	COM_PORT_H

#include <xc.h> // include processor files - each processor file is guarded.  

#include <usart.h>

#include "psu_Rev01_hardware.h"
#include "psu_Rev01_definitions.h"


// TODO Insert declarations

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
void init_uartComPort ();
unsigned char getRelay_number();

#endif	/* COM_PORT_H */

