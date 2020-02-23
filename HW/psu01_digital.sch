EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 8
Title ""
Date ""
Rev ""
Comp "HomeProjects"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 1500 1500 1250 500 
U 5E22B9CA
F0 "pwr_tracking_preReg" 50
F1 "pwr_tracking_preReg.sch" 50
F2 "INPUT_19V" I L 1500 1650 50 
F3 "Tracking_OUT" O R 2750 1650 50 
F4 "Tracking_FB" I R 2750 1850 50 
$EndSheet
$Sheet
S 1500 2300 1250 500 
U 5E22BA54
F0 "pwr_mcu_5V_smps" 50
F1 "pwr_mcu_5V_smps.sch" 50
F2 "INPUT_19V" I L 1500 2450 50 
F3 "5V_MCU" O R 2750 2450 50 
$EndSheet
$Sheet
S 1500 3100 1250 750 
U 5E22BB3F
F0 "pwr_ana" 50
F1 "pwr_ana.sch" 50
F2 "INPUT_19V" I L 1500 3250 50 
F3 "12V_ANA" O R 2750 3250 50 
F4 "5V_ANA" O R 2750 3400 50 
F5 "Vref_DAC" O R 2750 3600 50 
F6 "Vref_ADC" O R 2750 3700 50 
$EndSheet
$Sheet
S 4200 3000 1250 1650
U 5E22BC80
F0 "mcu_adi" 50
F1 "mcu_adi.sch" 50
F2 "LCD_D4" O R 5450 3350 50 
F3 "LCD_D5" O R 5450 3450 50 
F4 "LCD_D6" O R 5450 3550 50 
F5 "LCD_D7_BUSY" B R 5450 3650 50 
F6 "LCD_RS" O R 5450 3750 50 
F7 "LCD_E" O R 5450 3850 50 
F8 "LCD_RW" O R 5450 3950 50 
F9 "SPI_SCK" O L 4200 3100 50 
F10 "SPI_SDI" I L 4200 3200 50 
F11 "SPI_SDO" O L 4200 3300 50 
F12 "ROTARY_CK" I R 5450 4300 50 
F13 "ROTARY_SW" I R 5450 4100 50 
F14 "ROTARY_DA" I R 5450 4200 50 
F15 "SPI_~CS~_IOEXP" O L 4200 3400 50 
F16 "SPI_~CS~_DISPL" O L 4200 3500 50 
F17 "~ALARM" I L 4200 3600 50 
F18 "btn_2wire_4wire" I L 4200 4000 50 
F19 "btn_OUT_ONOFF" I L 4200 4100 50 
F20 "Vref_DAC" I L 4200 4200 50 
F21 "Vref_ADC" I L 4200 4300 50 
F22 "U_cmd_DAC" O R 5450 3100 50 
F23 "I_cmd_DAC" O R 5450 3200 50 
F24 "U_meas_ADC" I L 4200 3850 50 
F25 "I_meas_ADC" I L 4200 3750 50 
F26 "UART_TX" O R 5450 4450 50 
F27 "UART_RX" O R 5450 4550 50 
$EndSheet
$Sheet
S 4200 5150 1250 500 
U 5E22BD5B
F0 "mcu_ui" 50
F1 "mcu_ui.sch" 50
F2 "SPI_CK" I L 4200 5250 50 
F3 "DIG_POT_SDI" I L 4200 5350 50 
F4 "DIG_POT_SDO" I L 4200 5450 50 
F5 "DIG_POT_~CS" I L 4200 5550 50 
F6 "LCD_Vo" O R 5450 5250 50 
F7 "LCD_LED_A" O R 5450 5400 50 
$EndSheet
$Sheet
S 7000 1500 1250 1350
U 5E22C126
F0 "pwr_drv_out" 50
F1 "pwr_drv_out.sch" 50
F2 "Vout_F+" O R 8250 1900 50 
F3 "Vout_F-" I R 8250 2400 50 
F4 "Sense+" I R 8250 2100 50 
F5 "Sense-" I R 8250 2200 50 
F6 "i_fb_low" O L 7000 2400 50 
F7 "u_fb" O L 7000 2200 50 
F8 "Vo" O R 8250 1600 50 
F9 "relDRV_SCK" I L 7000 1750 50 
F10 "relDRV_~CS" I L 7000 2050 50 
F11 "relDRV_SI" I L 7000 1950 50 
F12 "relDRV_SO" O L 7000 1850 50 
F13 "u_fb_sense" O L 7000 2300 50 
F14 "drv_ctrl" O L 7000 1600 50 
F15 "leds_4wire" I L 7000 2550 50 
F16 "led_2wire" I L 7000 2650 50 
F17 "led_out_onoff" I L 7000 2750 50 
$EndSheet
$Comp
L power:GND #PWR0103
U 1 1 5E22D300
P 1150 1900
F 0 "#PWR0103" H 1150 1650 50  0001 C CNN
F 1 "GND" H 1155 1727 50  0000 C CNN
F 2 "" H 1150 1900 50  0001 C CNN
F 3 "" H 1150 1900 50  0001 C CNN
	1    1150 1900
	1    0    0    -1  
$EndComp
$Comp
L power:VS #PWR0102
U 1 1 5E22D8EE
P 1150 1550
F 0 "#PWR0102" H 950 1400 50  0001 C CNN
F 1 "VS" H 1167 1723 50  0000 C CNN
F 2 "" H 1150 1550 50  0001 C CNN
F 3 "" H 1150 1550 50  0001 C CNN
	1    1150 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 1550 1150 1650
Wire Wire Line
	1150 1650 950  1650
Wire Wire Line
	1150 1900 1150 1850
Wire Wire Line
	1150 1650 1500 1650
Connection ~ 1150 1650
$Comp
L power:VS #PWR0105
U 1 1 5E24557A
P 1150 2350
F 0 "#PWR0105" H 950 2200 50  0001 C CNN
F 1 "VS" H 1167 2523 50  0000 C CNN
F 2 "" H 1150 2350 50  0001 C CNN
F 3 "" H 1150 2350 50  0001 C CNN
	1    1150 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 2350 1150 2450
Wire Wire Line
	1150 2450 1500 2450
$Comp
L power:VS #PWR0108
U 1 1 5E2E70C1
P 1150 3150
F 0 "#PWR0108" H 950 3000 50  0001 C CNN
F 1 "VS" H 1167 3323 50  0000 C CNN
F 2 "" H 1150 3150 50  0001 C CNN
F 3 "" H 1150 3150 50  0001 C CNN
	1    1150 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 3250 1150 3250
Wire Wire Line
	1150 3150 1150 3250
$Comp
L power:VDD #PWR0104
U 1 1 5E36044E
P 3000 2300
F 0 "#PWR0104" H 3000 2150 50  0001 C CNN
F 1 "VDD" H 3017 2473 50  0000 C CNN
F 2 "" H 3000 2300 50  0001 C CNN
F 3 "" H 3000 2300 50  0001 C CNN
	1    3000 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 2300 3000 2450
Wire Wire Line
	3000 2450 2750 2450
$Comp
L power:VDDA #PWR0106
U 1 1 5E360D94
P 3000 3000
F 0 "#PWR0106" H 3000 2850 50  0001 C CNN
F 1 "VDDA" H 3017 3173 50  0000 C CNN
F 2 "" H 3000 3000 50  0001 C CNN
F 3 "" H 3000 3000 50  0001 C CNN
	1    3000 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 3000 3000 3400
Wire Wire Line
	3000 3400 2750 3400
$Comp
L power:+12V #PWR0107
U 1 1 5E36227E
P 3300 3000
F 0 "#PWR0107" H 3300 2850 50  0001 C CNN
F 1 "+12V" H 3315 3173 50  0000 C CNN
F 2 "" H 3300 3000 50  0001 C CNN
F 3 "" H 3300 3000 50  0001 C CNN
	1    3300 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 3250 2750 3250
Wire Wire Line
	3300 3000 3300 3250
$Comp
L power:Vdrive #PWR0101
U 1 1 5E6CE96D
P 3000 1500
F 0 "#PWR0101" H 2800 1350 50  0001 C CNN
F 1 "Vdrive" H 3017 1673 50  0000 C CNN
F 2 "" H 3000 1500 50  0001 C CNN
F 3 "" H 3000 1500 50  0001 C CNN
	1    3000 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 1500 3000 1650
Wire Wire Line
	3000 1650 2750 1650
$Sheet
S 4200 1500 1250 1000
U 5E22BF78
F0 "ana_reg" 50
F1 "ana_reg.sch" 50
F2 "dac_i" I R 5450 1750 50 
F3 "dac_u" I R 5450 1850 50 
F4 "u_fb" I R 5450 2200 50 
F5 "u_fb_sense" I R 5450 2300 50 
F6 "i_fb_low" I R 5450 2400 50 
F7 "adc_u" O L 4200 1600 50 
F8 "adc_i" O L 4200 1700 50 
F9 "drv_ctrl" O R 5450 1600 50 
F10 "~ALARM" O L 4200 2250 50 
F11 "Vref_DAC" I L 4200 2400 50 
F12 "led_v_reg" I L 4200 1900 50 
F13 "led_alarm" I L 4200 2100 50 
F14 "led_i_reg" I L 4200 2000 50 
$EndSheet
$Comp
L Connector:Screw_Terminal_01x03 J102
U 1 1 5E4878C6
P 750 1750
F 0 "J102" H 668 2067 50  0000 C CNN
F 1 "Input_19V" H 668 1976 50  0000 C CNN
F 2 "TerminalBlock_MetzConnect:TerminalBlock_MetzConnect_Type011_RT05503HBWC_1x03_P5.00mm_Horizontal" H 750 1750 50  0001 C CNN
F 3 "~" H 750 1750 50  0001 C CNN
	1    750  1750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	950  1850 1150 1850
Wire Wire Line
	5450 1600 7000 1600
Wire Wire Line
	5450 2200 7000 2200
Wire Wire Line
	5450 2300 7000 2300
Wire Wire Line
	5450 2400 7000 2400
Wire Wire Line
	5450 3100 5650 3100
Wire Wire Line
	5650 3100 5650 1850
Wire Wire Line
	5650 1850 5450 1850
Wire Wire Line
	5450 1750 5800 1750
Wire Wire Line
	5800 1750 5800 3200
Wire Wire Line
	5800 3200 5450 3200
Wire Wire Line
	4200 3600 3700 3600
Wire Wire Line
	3700 2250 4200 2250
Wire Wire Line
	4200 3750 3700 3750
Wire Wire Line
	3700 1700 4200 1700
Wire Wire Line
	4200 3850 3700 3850
Wire Wire Line
	3700 1600 4200 1600
Wire Wire Line
	7000 1750 6400 1750
Wire Wire Line
	7000 1850 6400 1850
Wire Wire Line
	7000 1950 6400 1950
Wire Wire Line
	7000 2050 6400 2050
Wire Wire Line
	2750 1850 3300 1850
Wire Wire Line
	3300 1850 3300 1200
Wire Wire Line
	3300 1200 8500 1200
Wire Wire Line
	8500 1200 8500 1600
Wire Wire Line
	8500 1600 8250 1600
Wire Wire Line
	2750 3600 3500 3600
Wire Wire Line
	2750 3700 3000 3700
Wire Wire Line
	4200 3100 3700 3100
Wire Wire Line
	4200 3200 3700 3200
Wire Wire Line
	4200 3300 3700 3300
Wire Wire Line
	4200 3400 3700 3400
Wire Wire Line
	4200 3500 3700 3500
Wire Wire Line
	4200 4000 3700 4000
Wire Wire Line
	4200 4100 3700 4100
Wire Wire Line
	4200 4300 3000 4300
Wire Wire Line
	3000 4300 3000 3700
Text Label 3800 2250 0    50   ~ 0
~ALARM
Text Label 3800 3600 0    50   ~ 0
~ALARM
Text Label 3800 3100 0    50   ~ 0
SPI_SCK
Text Label 6500 1750 0    50   ~ 0
SPI_SCK
Text Label 3800 3300 0    50   ~ 0
SPI_SDO
Text Label 3800 3200 0    50   ~ 0
SPI_SDI
Text Label 6500 1950 0    50   ~ 0
SPI_SDO
Text Label 3800 3750 0    50   ~ 0
I_MEAS
Text Label 3800 3850 0    50   ~ 0
U_MEAS
Text Label 3800 1600 0    50   ~ 0
U_MEAS
Text Label 3800 1700 0    50   ~ 0
I_MEAS
Text Label 6500 2050 0    50   ~ 0
~CS~_IOEXP
Text Label 3800 3400 0    50   ~ 0
~CS~_IOEXP
Text Label 3800 3500 0    50   ~ 0
~CS~_DISPL
$Comp
L Connector:Screw_Terminal_01x03 J103
U 1 1 5E505361
P 10450 1800
F 0 "J103" H 10530 1842 50  0000 L CNN
F 1 "FS+" H 10530 1751 50  0000 L CNN
F 2 "TerminalBlock_MetzConnect:TerminalBlock_MetzConnect_Type011_RT05503HBWC_1x03_P5.00mm_Horizontal" H 10450 1800 50  0001 C CNN
F 3 "~" H 10450 1800 50  0001 C CNN
	1    10450 1800
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x03 J105
U 1 1 5E507C0B
P 10450 2500
F 0 "J105" H 10530 2542 50  0000 L CNN
F 1 "FS-" H 10530 2451 50  0000 L CNN
F 2 "TerminalBlock_MetzConnect:TerminalBlock_MetzConnect_Type011_RT05503HBWC_1x03_P5.00mm_Horizontal" H 10450 2500 50  0001 C CNN
F 3 "~" H 10450 2500 50  0001 C CNN
	1    10450 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	10000 2100 10000 1900
Wire Wire Line
	10000 1900 10150 1900
Wire Wire Line
	8250 2100 10000 2100
Wire Wire Line
	10000 2200 8250 2200
Wire Wire Line
	10250 2400 10150 2400
Wire Wire Line
	10000 2400 10000 2200
Wire Wire Line
	10250 2600 9800 2600
Wire Wire Line
	9800 2600 9800 2400
Wire Wire Line
	9800 2400 8250 2400
Wire Wire Line
	9800 1900 8250 1900
$Comp
L Connector:Screw_Terminal_01x03 J104
U 1 1 5E51080A
P 10450 2150
F 0 "J104" H 10530 2192 50  0000 L CNN
F 1 "Analog Volt" H 10530 2101 50  0000 L CNN
F 2 "TerminalBlock_MetzConnect:TerminalBlock_MetzConnect_Type011_RT05503HBWC_1x03_P5.00mm_Horizontal" H 10450 2150 50  0001 C CNN
F 3 "~" H 10450 2150 50  0001 C CNN
	1    10450 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 2050 10150 2050
Wire Wire Line
	10150 2050 10150 1900
Connection ~ 10150 1900
Wire Wire Line
	10150 1900 10250 1900
Wire Wire Line
	10250 2250 10150 2250
Wire Wire Line
	10150 2250 10150 2400
Connection ~ 10150 2400
Wire Wire Line
	10150 2400 10000 2400
$Comp
L Connector:Screw_Terminal_01x03 J101
U 1 1 5E513C22
P 9900 1400
F 0 "J101" V 10100 1500 50  0000 R CNN
F 1 "Analog Amper" V 10000 1650 50  0000 R CNN
F 2 "TerminalBlock_MetzConnect:TerminalBlock_MetzConnect_Type011_RT05503HBWC_1x03_P5.00mm_Horizontal" H 9900 1400 50  0001 C CNN
F 3 "~" H 9900 1400 50  0001 C CNN
	1    9900 1400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9800 1600 9800 1900
Wire Wire Line
	10000 1600 10000 1700
Wire Wire Line
	10000 1700 10250 1700
Text Label 9150 1900 0    50   ~ 0
Vout_Force+
Text Label 9150 2400 0    50   ~ 0
Vout_Force-
Text Label 9150 2100 0    50   ~ 0
Vsense+
Text Label 9150 2200 0    50   ~ 0
Vsense-
Wire Wire Line
	4200 2400 3500 2400
Wire Wire Line
	3500 2400 3500 3600
Wire Wire Line
	3500 4200 4200 4200
Connection ~ 3500 3600
Wire Wire Line
	3500 3600 3500 4200
Wire Wire Line
	4200 5250 3700 5250
Wire Wire Line
	4200 5350 3700 5350
Wire Wire Line
	4200 5450 3700 5450
Wire Wire Line
	4200 5550 3700 5550
Wire Wire Line
	5450 5250 6150 5250
Wire Wire Line
	5450 5400 6150 5400
Text Label 3800 5250 0    50   ~ 0
SPI_SCK
Text Label 3800 5350 0    50   ~ 0
SPI_SDO
Text Label 3800 5550 0    50   ~ 0
~CS~_DISPL
Wire Wire Line
	1500 4750 1950 4750
Wire Wire Line
	1500 4850 2250 4850
Wire Wire Line
	1500 4950 2550 4950
Text Label 1550 4750 0    50   ~ 0
SPI_SCK
Text Label 1550 4850 0    50   ~ 0
SPI_SDI
Text Label 1550 4950 0    50   ~ 0
SPI_SDO
$Comp
L Device:R R101
U 1 1 5E614F80
P 1950 4500
F 0 "R101" H 2020 4546 50  0000 L CNN
F 1 "10k" H 2020 4455 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 1880 4500 50  0001 C CNN
F 3 "~" H 1950 4500 50  0001 C CNN
	1    1950 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R102
U 1 1 5E61C399
P 2250 4500
F 0 "R102" H 2320 4546 50  0000 L CNN
F 1 "10k" H 2320 4455 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 2180 4500 50  0001 C CNN
F 3 "~" H 2250 4500 50  0001 C CNN
	1    2250 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R103
U 1 1 5E61C7C2
P 2550 4500
F 0 "R103" H 2620 4546 50  0000 L CNN
F 1 "10k" H 2620 4455 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 2480 4500 50  0001 C CNN
F 3 "~" H 2550 4500 50  0001 C CNN
	1    2550 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R104
U 1 1 5E61CBAE
P 1950 5200
F 0 "R104" H 2000 5000 50  0000 L CNN
F 1 "1meg" V 1850 5100 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 1880 5200 50  0001 C CNN
F 3 "~" H 1950 5200 50  0001 C CNN
	1    1950 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R105
U 1 1 5E61D117
P 2250 5200
F 0 "R105" H 2300 5000 50  0000 L CNN
F 1 "1meg" V 2150 5100 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 2180 5200 50  0001 C CNN
F 3 "~" H 2250 5200 50  0001 C CNN
	1    2250 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R106
U 1 1 5E61D5BF
P 2550 5200
F 0 "R106" H 2600 5000 50  0000 L CNN
F 1 "1meg" V 2450 5100 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 2480 5200 50  0001 C CNN
F 3 "~" H 2550 5200 50  0001 C CNN
	1    2550 5200
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR0115
U 1 1 5E626473
P 1950 4300
F 0 "#PWR0115" H 1950 4150 50  0001 C CNN
F 1 "VDD" H 1967 4473 50  0000 C CNN
F 2 "" H 1950 4300 50  0001 C CNN
F 3 "" H 1950 4300 50  0001 C CNN
	1    1950 4300
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR0116
U 1 1 5E626C52
P 2250 4300
F 0 "#PWR0116" H 2250 4150 50  0001 C CNN
F 1 "VDD" H 2267 4473 50  0000 C CNN
F 2 "" H 2250 4300 50  0001 C CNN
F 3 "" H 2250 4300 50  0001 C CNN
	1    2250 4300
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR0117
U 1 1 5E626E09
P 2550 4300
F 0 "#PWR0117" H 2550 4150 50  0001 C CNN
F 1 "VDD" H 2567 4473 50  0000 C CNN
F 2 "" H 2550 4300 50  0001 C CNN
F 3 "" H 2550 4300 50  0001 C CNN
	1    2550 4300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0118
U 1 1 5E6278C6
P 1950 5400
F 0 "#PWR0118" H 1950 5150 50  0001 C CNN
F 1 "GND" H 1955 5227 50  0000 C CNN
F 2 "" H 1950 5400 50  0001 C CNN
F 3 "" H 1950 5400 50  0001 C CNN
	1    1950 5400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0119
U 1 1 5E6282B0
P 2250 5400
F 0 "#PWR0119" H 2250 5150 50  0001 C CNN
F 1 "GND" H 2255 5227 50  0000 C CNN
F 2 "" H 2250 5400 50  0001 C CNN
F 3 "" H 2250 5400 50  0001 C CNN
	1    2250 5400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0120
U 1 1 5E628751
P 2550 5400
F 0 "#PWR0120" H 2550 5150 50  0001 C CNN
F 1 "GND" H 2555 5227 50  0000 C CNN
F 2 "" H 2550 5400 50  0001 C CNN
F 3 "" H 2550 5400 50  0001 C CNN
	1    2550 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 4300 1950 4350
Wire Wire Line
	2250 4300 2250 4350
Wire Wire Line
	2550 4300 2550 4350
Wire Wire Line
	1950 5350 1950 5400
Wire Wire Line
	2250 5350 2250 5400
Wire Wire Line
	2550 5350 2550 5400
Wire Wire Line
	1950 4650 1950 4750
Connection ~ 1950 4750
Wire Wire Line
	1950 4750 2750 4750
Wire Wire Line
	2250 4650 2250 4850
Connection ~ 2250 4850
Wire Wire Line
	2250 4850 2750 4850
Wire Wire Line
	2550 4650 2550 4950
Connection ~ 2550 4950
Wire Wire Line
	2550 4950 2750 4950
Wire Wire Line
	1950 5050 1950 4750
Wire Wire Line
	2250 5050 2250 4850
Wire Wire Line
	2550 5050 2550 4950
Wire Notes Line
	2850 4050 1400 4050
Wire Notes Line
	1400 4050 1400 5650
Wire Notes Line
	1400 5650 2850 5650
Wire Notes Line
	2850 5650 2850 4050
Text Notes 1400 5750 0    50   ~ 0
Optional debug SPI signal termination
Text Label 3800 4000 0    50   ~ 0
bnt_4wire
Text Label 3800 4100 0    50   ~ 0
btn_onoff
Wire Wire Line
	5450 3350 6150 3350
Wire Wire Line
	5450 3450 6150 3450
Wire Wire Line
	5450 3550 6150 3550
Wire Wire Line
	5450 3650 6150 3650
Wire Wire Line
	5450 3750 6150 3750
Wire Wire Line
	5450 3850 6150 3850
Wire Wire Line
	5450 3950 6150 3950
Wire Wire Line
	5450 4100 6150 4100
Wire Wire Line
	5450 4200 6150 4200
Wire Wire Line
	5450 4300 6150 4300
Wire Wire Line
	4200 1900 3700 1900
Wire Wire Line
	4200 2000 3700 2000
Wire Wire Line
	4200 2100 3700 2100
Wire Wire Line
	7000 2550 6400 2550
Wire Wire Line
	7000 2650 6400 2650
Wire Wire Line
	7000 2750 6400 2750
Text Label 6500 2550 0    50   ~ 0
leds_4wire
Text Label 6500 2650 0    50   ~ 0
led_2wire
Text Label 6450 2750 0    50   ~ 0
led_out_onoff
$Comp
L Connector_Generic:Conn_02x20_Odd_Even J106
U 1 1 5E7926AE
P 7800 4250
F 0 "J106" H 7850 5367 50  0000 C CNN
F 1 "ui_iterface" H 7850 5276 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x20_P2.54mm_Vertical" H 7800 4250 50  0001 C CNN
F 3 "~" H 7800 4250 50  0001 C CNN
	1    7800 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 3350 7500 3350
Wire Wire Line
	7600 3450 7000 3450
Wire Wire Line
	7600 3550 7000 3550
Wire Wire Line
	7600 3650 7000 3650
Wire Wire Line
	7600 3750 7000 3750
Wire Wire Line
	7600 3850 7000 3850
Wire Wire Line
	7600 3950 7000 3950
Wire Wire Line
	7600 4050 7000 4050
Wire Wire Line
	7600 4150 7000 4150
Wire Wire Line
	7600 4250 7000 4250
Wire Wire Line
	7600 4350 7000 4350
Wire Wire Line
	7600 4450 7000 4450
Wire Wire Line
	7600 4550 7000 4550
Wire Wire Line
	7600 4650 7000 4650
Wire Wire Line
	7600 4750 7000 4750
Wire Wire Line
	7600 4850 7000 4850
Wire Wire Line
	7600 4950 7000 4950
Wire Wire Line
	7600 5050 7000 5050
Wire Wire Line
	7600 5150 7000 5150
Wire Wire Line
	7600 5250 7000 5250
Text Label 5600 3350 0    50   ~ 0
LCD_D4
Text Label 5600 3450 0    50   ~ 0
LCD_D5
Text Label 5600 3550 0    50   ~ 0
LCD_D6
Text Label 5600 3650 0    50   ~ 0
LC_D7_BUSY
Text Label 5600 3750 0    50   ~ 0
LCD_RS
Text Label 5600 3850 0    50   ~ 0
LCD_E
Text Label 5600 3950 0    50   ~ 0
LCD_RW
Text Label 5600 4100 0    50   ~ 0
ROTARY_SW
Text Label 5600 4200 0    50   ~ 0
ROTARY_DA
Text Label 5600 4300 0    50   ~ 0
ROTARY_CK
Text Label 5600 5250 0    50   ~ 0
LCD_Vo
Text Label 5600 5400 0    50   ~ 0
LCD_LED_A
Text Label 3750 1900 0    50   ~ 0
LED_V_REG
Text Label 3750 2000 0    50   ~ 0
LED_I_REG
Text Label 3750 2100 0    50   ~ 0
LED_ALARM
$Comp
L power:VDD #PWR0109
U 1 1 5E810A2C
P 7500 3250
F 0 "#PWR0109" H 7500 3100 50  0001 C CNN
F 1 "VDD" H 7517 3423 50  0000 C CNN
F 2 "" H 7500 3250 50  0001 C CNN
F 3 "" H 7500 3250 50  0001 C CNN
	1    7500 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 3250 7500 3350
Connection ~ 7500 3350
Wire Wire Line
	7500 3350 7350 3350
Text Label 7250 3450 0    50   ~ 0
LCD_Vo
Text Label 7250 3550 0    50   ~ 0
LCD_RS
Text Label 7250 3650 0    50   ~ 0
LCD_RW
Text Label 7250 3750 0    50   ~ 0
LCD_E
Text Label 7250 3850 0    50   ~ 0
LCD_D4
Text Label 7250 3950 0    50   ~ 0
LCD_D5
Text Label 7250 4050 0    50   ~ 0
LCD_D6
Text Label 7150 4150 0    50   ~ 0
LC_D7_BUSY
Text Label 7150 4250 0    50   ~ 0
LCD_LED_A
Text Label 7150 5250 0    50   ~ 0
ROTARY_SW
Text Label 7150 5150 0    50   ~ 0
ROTARY_DA
Text Label 7150 5050 0    50   ~ 0
ROTARY_CK
Text Label 7150 4950 0    50   ~ 0
bnt_4wire
Text Label 7150 4850 0    50   ~ 0
btn_onoff
Text Label 7150 4750 0    50   ~ 0
LED_V_REG
Text Label 7150 4650 0    50   ~ 0
LED_I_REG
Text Label 7150 4550 0    50   ~ 0
leds_4wire
Text Label 7150 4450 0    50   ~ 0
led_2wire
Text Label 7100 4350 0    50   ~ 0
led_out_onoff
Wire Wire Line
	8100 4650 8700 4650
Text Label 8250 4650 0    50   ~ 0
LED_ALARM
$Comp
L power:GND #PWR0121
U 1 1 5E8253C1
P 8200 5400
F 0 "#PWR0121" H 8200 5150 50  0001 C CNN
F 1 "GND" H 8205 5227 50  0000 C CNN
F 2 "" H 8200 5400 50  0001 C CNN
F 3 "" H 8200 5400 50  0001 C CNN
	1    8200 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 4750 8200 4750
Wire Wire Line
	8200 4750 8200 4850
Wire Wire Line
	8100 4850 8200 4850
Connection ~ 8200 4850
Wire Wire Line
	8200 4850 8200 4950
Wire Wire Line
	8100 4950 8200 4950
Connection ~ 8200 4950
Wire Wire Line
	8200 4950 8200 5050
Wire Wire Line
	8100 5050 8200 5050
Connection ~ 8200 5050
Wire Wire Line
	8200 5050 8200 5150
Wire Wire Line
	8100 5150 8200 5150
Connection ~ 8200 5150
Wire Wire Line
	8200 5150 8200 5250
Wire Wire Line
	8100 5250 8200 5250
Connection ~ 8200 5250
Wire Wire Line
	8200 5250 8200 5400
$Comp
L power:GND #PWR0112
U 1 1 5E84CD9C
P 8300 3350
F 0 "#PWR0112" H 8300 3100 50  0001 C CNN
F 1 "GND" V 8305 3222 50  0000 R CNN
F 2 "" H 8300 3350 50  0001 C CNN
F 3 "" H 8300 3350 50  0001 C CNN
	1    8300 3350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8100 3350 8200 3350
Wire Wire Line
	8100 4550 8200 4550
Wire Wire Line
	8200 4550 8200 4450
Connection ~ 8200 3350
Wire Wire Line
	8200 3350 8300 3350
Wire Wire Line
	8100 3450 8200 3450
Connection ~ 8200 3450
Wire Wire Line
	8200 3450 8200 3350
Wire Wire Line
	8100 3550 8200 3550
Connection ~ 8200 3550
Wire Wire Line
	8200 3550 8200 3450
Wire Wire Line
	8100 3650 8200 3650
Connection ~ 8200 3650
Wire Wire Line
	8200 3650 8200 3550
Wire Wire Line
	8100 3750 8200 3750
Connection ~ 8200 3750
Wire Wire Line
	8200 3750 8200 3650
Wire Wire Line
	8100 3850 8200 3850
Connection ~ 8200 3850
Wire Wire Line
	8200 3850 8200 3750
Wire Wire Line
	8100 3950 8200 3950
Connection ~ 8200 3950
Wire Wire Line
	8200 3950 8200 3850
Wire Wire Line
	8100 4050 8200 4050
Connection ~ 8200 4050
Wire Wire Line
	8200 4050 8200 3950
Wire Wire Line
	8100 4150 8200 4150
Connection ~ 8200 4150
Wire Wire Line
	8200 4150 8200 4050
Wire Wire Line
	8100 4250 8200 4250
Connection ~ 8200 4250
Wire Wire Line
	8200 4250 8200 4150
Wire Wire Line
	8100 4350 8200 4350
Connection ~ 8200 4350
Wire Wire Line
	8200 4350 8200 4250
Wire Wire Line
	8100 4450 8200 4450
Connection ~ 8200 4450
Wire Wire Line
	8200 4450 8200 4350
$Comp
L Device:C C101
U 1 1 5E8B1399
P 8900 3500
F 0 "C101" H 9015 3546 50  0000 L CNN
F 1 "100n" H 9015 3455 50  0000 L CNN
F 2 "Capacitor_THT:C_Axial_L5.1mm_D3.1mm_P7.50mm_Horizontal" H 8938 3350 50  0001 C CNN
F 3 "~" H 8900 3500 50  0001 C CNN
	1    8900 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C102
U 1 1 5E8B1E7A
P 9400 3500
F 0 "C102" H 9518 3546 50  0000 L CNN
F 1 "1uF" H 9518 3455 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 9438 3350 50  0001 C CNN
F 3 "~" H 9400 3500 50  0001 C CNN
	1    9400 3500
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR0110
U 1 1 5E8B2C1D
P 8900 3250
F 0 "#PWR0110" H 8900 3100 50  0001 C CNN
F 1 "VDD" H 8917 3423 50  0000 C CNN
F 2 "" H 8900 3250 50  0001 C CNN
F 3 "" H 8900 3250 50  0001 C CNN
	1    8900 3250
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR0111
U 1 1 5E8B31B8
P 9400 3250
F 0 "#PWR0111" H 9400 3100 50  0001 C CNN
F 1 "VDD" H 9417 3423 50  0000 C CNN
F 2 "" H 9400 3250 50  0001 C CNN
F 3 "" H 9400 3250 50  0001 C CNN
	1    9400 3250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 5E8B36D3
P 8900 3750
F 0 "#PWR0113" H 8900 3500 50  0001 C CNN
F 1 "GND" H 8905 3577 50  0000 C CNN
F 2 "" H 8900 3750 50  0001 C CNN
F 3 "" H 8900 3750 50  0001 C CNN
	1    8900 3750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 5E8B3B97
P 9400 3750
F 0 "#PWR0114" H 9400 3500 50  0001 C CNN
F 1 "GND" H 9405 3577 50  0000 C CNN
F 2 "" H 9400 3750 50  0001 C CNN
F 3 "" H 9400 3750 50  0001 C CNN
	1    9400 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 3250 8900 3350
Wire Wire Line
	9400 3250 9400 3350
Wire Wire Line
	8900 3650 8900 3750
Wire Wire Line
	9400 3650 9400 3750
Wire Wire Line
	5450 4450 6150 4450
Wire Wire Line
	5450 4550 6150 4550
Text Label 5600 4450 0    50   ~ 0
UART_TX
Text Label 5600 4550 0    50   ~ 0
UART_RX
$Comp
L Connector_Generic:Conn_01x04 J107
U 1 1 5E55C34F
P 10450 3450
F 0 "J107" H 10530 3442 50  0000 L CNN
F 1 "BB-CH340T" H 10530 3351 50  0000 L CNN
F 2 "Connector:FanPinHeader_1x04_P2.54mm_Vertical" H 10450 3450 50  0001 C CNN
F 3 "~" H 10450 3450 50  0001 C CNN
	1    10450 3450
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR0122
U 1 1 5E561F0E
P 10150 3250
F 0 "#PWR0122" H 10150 3100 50  0001 C CNN
F 1 "VDD" H 10167 3423 50  0000 C CNN
F 2 "" H 10150 3250 50  0001 C CNN
F 3 "" H 10150 3250 50  0001 C CNN
	1    10150 3250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0123
U 1 1 5E562278
P 10150 3750
F 0 "#PWR0123" H 10150 3500 50  0001 C CNN
F 1 "GND" H 10155 3577 50  0000 C CNN
F 2 "" H 10150 3750 50  0001 C CNN
F 3 "" H 10150 3750 50  0001 C CNN
	1    10150 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 3350 10150 3350
Wire Wire Line
	10150 3350 10150 3250
Wire Wire Line
	10250 3650 10150 3650
Wire Wire Line
	10150 3650 10150 3750
Wire Wire Line
	10250 3450 9850 3450
Wire Wire Line
	10250 3550 9850 3550
Text Label 9900 3450 0    50   ~ 0
UART_RX
Text Label 9900 3550 0    50   ~ 0
UART_TX
$EndSCHEMATC
