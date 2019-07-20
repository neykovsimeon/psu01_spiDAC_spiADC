#include <stdlib.h>
#include <spi.h>
#include "psu_Rev01_definitions.h"
#include "psu_Rev01_hardware.h"
#include "digi_pot_MCP42010.h"
#include "SPI_user_functions.h"

void init_dig_pot_SPI (void) {
    
    unsigned char config_sync_mode = SPI_FOSC_64; 
    unsigned char config_bus_mode = MODE_10;
    unsigned char config_smp_phase = SMPMID;
    
    OpenSPI( config_sync_mode, config_bus_mode, config_smp_phase);
}

void send_contrast_spi (void) {

    init_dig_pot_SPI ();
    cmd_dig_pot = CMD_DIG_POT0_WRITE_BYTE;
    send_byte = 255 - display_contrast;
    SPI_CS_DISPLAY = 0;
    NOP(); NOP(); NOP();
    WriteSPI(cmd_dig_pot);
    WriteSPI(send_byte);
    SPI_CS_DISPLAY = 1;
    CloseSPI();
}

void send_backlight_spi (void) {
    init_dig_pot_SPI ();
    cmd_dig_pot = CMD_DIG_POT1_WRITE_BYTE;
    send_byte = display_brightness;
    SPI_CS_DISPLAY = 0;
    NOP(); NOP(); NOP();
    WriteSPI(cmd_dig_pot);
    WriteSPI(send_byte);
    SPI_CS_DISPLAY = 1;
    CloseSPI();
}

void init_dac_SPI (void) {
    
    unsigned char config_sync_mode = SPI_FOSC_64; 
    unsigned char config_bus_mode = MODE_10;
    unsigned char config_smp_phase = SMPMID;
    
    OpenSPI( config_sync_mode, config_bus_mode, config_smp_phase);
}

void send_dac_u_spi (void) {
    dac_u_low = DAC_u; // & 0b0000000011111111;
    cmd_dac_u_high = (DAC_u >> 8) & 0b00001111;
    cmd_dac_u_high = cmd_dac_u_high | cmd_dac;
    init_dac_SPI();
    SPI_CS_UOUT = 0;
    NOP(); NOP(); NOP();
    WriteSPI(cmd_dac_u_high);
    WriteSPI(dac_u_low);
    SPI_CS_UOUT = 1;
    CloseSPI();
}

void send_dac_i_spi (void) {
    dac_i_low = DAC_i; // & 0b0000000011111111;
    cmd_dac_i_high = (DAC_i >> 8) & 0b00001111;
    cmd_dac_i_high = cmd_dac_i_high | cmd_dac;
    init_dac_SPI();
    SPI_CS_IOUT = 0;
    NOP(); NOP(); NOP();
    WriteSPI(cmd_dac_i_high);
    WriteSPI(dac_i_low);
    SPI_CS_IOUT = 1;
    CloseSPI();
}

    
void init_adc_SPI (void) {
    
    unsigned char config_sync_mode = SPI_FOSC_64; 
    unsigned char config_bus_mode = MODE_10;
    unsigned char config_smp_phase = SMPMID;
    
    OpenSPI( config_sync_mode, config_bus_mode, config_smp_phase);
}
