#ifndef __SPI_USER_FUNCTIONS
#define __SPI_USER_FUNCTIONS
 

void init_dig_pot_SPI (void);
void send_contrast_spi (void);
void send_backlight_spi (void);
void init_dac_SPI (void);
void send_dac_u_spi (void);
void send_dac_i_spi (void);
void init_adc_SPI (void);

#endif /* SPI_USER_FUNCTIONS */
