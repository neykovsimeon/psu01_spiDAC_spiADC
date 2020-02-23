EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 8
Title ""
Date ""
Rev ""
Comp "HomeProjects"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L psu01_dedicated:PIC18F2525-I_SP U501
U 1 1 5E24625B
P 3800 1300
F 0 "U501" H 3050 1350 50  0000 C CNN
F 1 "PIC18F2525-I_SP" H 3350 1250 50  0000 C CNN
F 2 "Package_DIP:DIP-28_W7.62mm_Socket_LongPads" H 3300 -350 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/39626e.pdf" H 4050 250 50  0001 C CNN
	1    3800 1300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0507
U 1 1 5E248965
P 3650 3400
F 0 "#PWR0507" H 3650 3150 50  0001 C CNN
F 1 "GND" H 3655 3227 50  0000 C CNN
F 2 "" H 3650 3400 50  0001 C CNN
F 3 "" H 3650 3400 50  0001 C CNN
	1    3650 3400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0508
U 1 1 5E248AB8
P 3950 3400
F 0 "#PWR0508" H 3950 3150 50  0001 C CNN
F 1 "GND" H 3955 3227 50  0000 C CNN
F 2 "" H 3950 3400 50  0001 C CNN
F 3 "" H 3950 3400 50  0001 C CNN
	1    3950 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 3300 3650 3400
Wire Wire Line
	3950 3300 3950 3400
$Comp
L power:VDD #PWR0501
U 1 1 5E24946C
P 3800 1100
F 0 "#PWR0501" H 3800 950 50  0001 C CNN
F 1 "VDD" H 3817 1273 50  0000 C CNN
F 2 "" H 3800 1100 50  0001 C CNN
F 3 "" H 3800 1100 50  0001 C CNN
	1    3800 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 1100 3800 1150
$Comp
L Device:C C501
U 1 1 5E24D052
P 4050 1150
F 0 "C501" V 3798 1150 50  0000 C CNN
F 1 "100n" V 3889 1150 50  0000 C CNN
F 2 "Capacitor_THT:C_Axial_L5.1mm_D3.1mm_P7.50mm_Horizontal" H 4088 1000 50  0001 C CNN
F 3 "~" H 4050 1150 50  0001 C CNN
	1    4050 1150
	0    1    1    0   
$EndComp
Wire Wire Line
	3900 1150 3800 1150
Connection ~ 3800 1150
Wire Wire Line
	3800 1150 3800 1300
$Comp
L power:GND #PWR0503
U 1 1 5E24DCB0
P 4300 1150
F 0 "#PWR0503" H 4300 900 50  0001 C CNN
F 1 "GND" V 4305 1022 50  0000 R CNN
F 2 "" H 4300 1150 50  0001 C CNN
F 3 "" H 4300 1150 50  0001 C CNN
	1    4300 1150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4300 1150 4200 1150
Text HLabel 5500 1500 2    50   Output ~ 0
LCD_D4
Text HLabel 5500 1600 2    50   Output ~ 0
LCD_D5
Text HLabel 5500 1700 2    50   Output ~ 0
LCD_D6
Text HLabel 5500 1800 2    50   BiDi ~ 0
LCD_D7_BUSY
Wire Wire Line
	4850 1500 5500 1500
Wire Wire Line
	5500 1600 4850 1600
Wire Wire Line
	4850 1700 5500 1700
Wire Wire Line
	5500 1800 4850 1800
Text HLabel 5500 2400 2    50   Output ~ 0
LCD_RS
Text HLabel 5500 2500 2    50   Output ~ 0
LCD_E
Text HLabel 5500 2600 2    50   Output ~ 0
LCD_RW
Wire Wire Line
	5500 2400 4850 2400
Wire Wire Line
	5500 2500 4850 2500
Wire Wire Line
	5500 2600 4850 2600
Wire Wire Line
	4850 1900 5500 1900
Text Label 5450 1900 2    50   ~ 0
SPI_~CS~_DAC_U
Wire Wire Line
	4850 3000 5500 3000
Wire Wire Line
	4850 3100 5500 3100
Text Label 5300 3000 2    50   ~ 0
UART_TX
Text Label 5300 3100 2    50   ~ 0
UART_RX
Text HLabel 5500 2700 2    50   Output ~ 0
SPI_SCK
Text HLabel 5500 2800 2    50   Input ~ 0
SPI_SDI
Text HLabel 5500 2900 2    50   Output ~ 0
SPI_SDO
Wire Wire Line
	4850 2700 5500 2700
Wire Wire Line
	4850 2800 5500 2800
Wire Wire Line
	4850 2900 5500 2900
Text Label 5300 2700 2    50   ~ 0
SPI_SCK
Text Label 5300 2800 2    50   ~ 0
SPI_SDI
Text Label 5300 2900 2    50   ~ 0
SPI_SDO
Text HLabel 5500 2200 2    50   Input ~ 0
ROTARY_CK
Wire Wire Line
	5500 2200 4850 2200
Text HLabel 2100 1700 0    50   Input ~ 0
ROTARY_SW
Text HLabel 2100 1900 0    50   Input ~ 0
ROTARY_DA
Wire Wire Line
	2100 1700 2800 1700
Wire Wire Line
	2100 1900 2800 1900
Text Label 2600 1700 2    50   ~ 0
ROTARY_SW
Text Label 2600 1900 2    50   ~ 0
ROTARY_DA
Text Label 5350 2200 2    50   ~ 0
ROTARY_CK
Text HLabel 2100 1500 0    50   Output ~ 0
SPI_~CS~_IOEXP
Wire Wire Line
	2100 1500 2800 1500
Wire Wire Line
	2800 1800 2100 1800
Text Label 2600 1800 2    50   ~ 0
SPI_CS_ADC
Wire Wire Line
	2800 2500 2100 2500
Text Label 2700 2500 2    50   ~ 0
SPI_~CS~_DAC_I
Text HLabel 5500 2100 2    50   Output ~ 0
SPI_~CS~_DISPL
Wire Wire Line
	4850 2100 5500 2100
Text HLabel 5500 2000 2    50   Input ~ 0
~ALARM
Wire Wire Line
	5500 2000 4850 2000
Text HLabel 2100 2200 0    50   Input ~ 0
btn_2wire_4wire
Text HLabel 2100 2000 0    50   Input ~ 0
btn_OUT_ONOFF
Wire Wire Line
	2100 2000 2800 2000
Wire Wire Line
	2100 2200 2800 2200
Wire Wire Line
	2800 2400 2100 2400
Wire Wire Line
	2800 1600 2100 1600
$Comp
L Analog_DAC:MCP4921-EP U503
U 1 1 5E29B64B
P 3350 4300
F 0 "U503" H 3350 4700 50  0000 L CNN
F 1 "MCP4921-EP" H 3350 4600 50  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket_LongPads" H 3350 4300 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/devicedoc/21897a.pdf" H 3350 4300 50  0001 C CNN
	1    3350 4300
	1    0    0    -1  
$EndComp
$Comp
L Analog_ADC:MCP3208 U502
U 1 1 5E29C41E
P 7650 1800
F 0 "U502" H 8350 2250 50  0000 C CNN
F 1 "MCP3208" H 8400 2150 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_Socket_LongPads" H 7750 1900 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/21298c.pdf" H 7750 1900 50  0001 C CNN
	1    7650 1800
	-1   0    0    -1  
$EndComp
$Comp
L Analog_DAC:MCP4921-EP U504
U 1 1 5E29E68A
P 3350 5900
F 0 "U504" H 3350 6300 50  0000 L CNN
F 1 "MCP4921-EP" H 3350 6200 50  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket_LongPads" H 3350 5900 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/devicedoc/21897a.pdf" H 3350 5900 50  0001 C CNN
	1    3350 5900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0513
U 1 1 5E484FA1
P 3250 4750
F 0 "#PWR0513" H 3250 4500 50  0001 C CNN
F 1 "GND" H 3255 4577 50  0000 C CNN
F 2 "" H 3250 4750 50  0001 C CNN
F 3 "" H 3250 4750 50  0001 C CNN
	1    3250 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 4700 3250 4750
$Comp
L Device:C C503
U 1 1 5E4862B4
P 2950 3800
F 0 "C503" V 2698 3800 50  0000 C CNN
F 1 "100n" V 2789 3800 50  0000 C CNN
F 2 "Capacitor_THT:C_Axial_L5.1mm_D3.1mm_P7.50mm_Horizontal" H 2988 3650 50  0001 C CNN
F 3 "~" H 2950 3800 50  0001 C CNN
	1    2950 3800
	0    1    1    0   
$EndComp
$Comp
L Device:C C504
U 1 1 5E486B49
P 2950 5400
F 0 "C504" V 2698 5400 50  0000 C CNN
F 1 "100n" V 2789 5400 50  0000 C CNN
F 2 "Capacitor_THT:C_Axial_L5.1mm_D3.1mm_P7.50mm_Horizontal" H 2988 5250 50  0001 C CNN
F 3 "~" H 2950 5400 50  0001 C CNN
	1    2950 5400
	0    1    1    0   
$EndComp
$Comp
L Device:C C502
U 1 1 5E4870E7
P 7200 1200
F 0 "C502" V 6948 1200 50  0000 C CNN
F 1 "100n" V 7039 1200 50  0000 C CNN
F 2 "Capacitor_THT:C_Axial_L5.1mm_D3.1mm_P7.50mm_Horizontal" H 7238 1050 50  0001 C CNN
F 3 "~" H 7200 1200 50  0001 C CNN
	1    7200 1200
	0    1    1    0   
$EndComp
$Comp
L power:VDDA #PWR0510
U 1 1 5E488CBC
P 3250 3700
F 0 "#PWR0510" H 3250 3550 50  0001 C CNN
F 1 "VDDA" H 3267 3873 50  0000 C CNN
F 2 "" H 3250 3700 50  0001 C CNN
F 3 "" H 3250 3700 50  0001 C CNN
	1    3250 3700
	1    0    0    -1  
$EndComp
$Comp
L power:VDDA #PWR0502
U 1 1 5E48932D
P 7450 1100
F 0 "#PWR0502" H 7450 950 50  0001 C CNN
F 1 "VDDA" H 7467 1273 50  0000 C CNN
F 2 "" H 7450 1100 50  0001 C CNN
F 3 "" H 7450 1100 50  0001 C CNN
	1    7450 1100
	1    0    0    -1  
$EndComp
$Comp
L power:VDDA #PWR0514
U 1 1 5E48A43A
P 3250 5300
F 0 "#PWR0514" H 3250 5150 50  0001 C CNN
F 1 "VDDA" H 3267 5473 50  0000 C CNN
F 2 "" H 3250 5300 50  0001 C CNN
F 3 "" H 3250 5300 50  0001 C CNN
	1    3250 5300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0522
U 1 1 5E48AE10
P 3250 6400
F 0 "#PWR0522" H 3250 6150 50  0001 C CNN
F 1 "GND" H 3255 6227 50  0000 C CNN
F 2 "" H 3250 6400 50  0001 C CNN
F 3 "" H 3250 6400 50  0001 C CNN
	1    3250 6400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0515
U 1 1 5E48B246
P 2700 5400
F 0 "#PWR0515" H 2700 5150 50  0001 C CNN
F 1 "GND" H 2705 5227 50  0000 C CNN
F 2 "" H 2700 5400 50  0001 C CNN
F 3 "" H 2700 5400 50  0001 C CNN
	1    2700 5400
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0511
U 1 1 5E48B7E3
P 2700 3800
F 0 "#PWR0511" H 2700 3550 50  0001 C CNN
F 1 "GND" H 2705 3627 50  0000 C CNN
F 2 "" H 2700 3800 50  0001 C CNN
F 3 "" H 2700 3800 50  0001 C CNN
	1    2700 3800
	0    1    1    0   
$EndComp
Wire Wire Line
	3250 3700 3250 3800
Wire Wire Line
	3100 3800 3250 3800
Connection ~ 3250 3800
Wire Wire Line
	3250 3800 3250 3900
Wire Wire Line
	2800 3800 2700 3800
Wire Wire Line
	3250 5300 3250 5400
Wire Wire Line
	3100 5400 3250 5400
Connection ~ 3250 5400
Wire Wire Line
	3250 5400 3250 5500
Wire Wire Line
	2800 5400 2700 5400
Wire Wire Line
	3250 6300 3250 6400
Wire Wire Line
	7450 1100 7450 1200
Wire Wire Line
	7350 1200 7450 1200
Connection ~ 7450 1200
Wire Wire Line
	7450 1200 7450 1300
$Comp
L power:GND #PWR0504
U 1 1 5E4932FE
P 6950 1200
F 0 "#PWR0504" H 6950 950 50  0001 C CNN
F 1 "GND" V 6955 1072 50  0000 R CNN
F 2 "" H 6950 1200 50  0001 C CNN
F 3 "" H 6950 1200 50  0001 C CNN
	1    6950 1200
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0505
U 1 1 5E493E53
P 7450 2500
F 0 "#PWR0505" H 7450 2250 50  0001 C CNN
F 1 "GND" V 7455 2372 50  0000 R CNN
F 2 "" H 7450 2500 50  0001 C CNN
F 3 "" H 7450 2500 50  0001 C CNN
	1    7450 2500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0506
U 1 1 5E494793
P 7750 2500
F 0 "#PWR0506" H 7750 2250 50  0001 C CNN
F 1 "GND" V 7755 2372 50  0000 R CNN
F 2 "" H 7750 2500 50  0001 C CNN
F 3 "" H 7750 2500 50  0001 C CNN
	1    7750 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 1200 6950 1200
Wire Wire Line
	7450 2400 7450 2500
Wire Wire Line
	7750 2400 7750 2500
Wire Wire Line
	8250 1500 8800 1500
Wire Wire Line
	8250 1600 8800 1600
Wire Wire Line
	7050 2000 6350 2000
Text Label 6450 2000 0    50   ~ 0
SPI_CS_ADC
Wire Wire Line
	7050 1700 6350 1700
Wire Wire Line
	7050 1800 6350 1800
Wire Wire Line
	7050 1900 6350 1900
Text Label 6450 1700 0    50   ~ 0
SPI_SCK
Text Label 6450 1900 0    50   ~ 0
SPI_SDO
Text Label 6450 1800 0    50   ~ 0
SPI_SDI
Wire Wire Line
	2750 4100 2000 4100
Wire Wire Line
	2750 4200 2000 4200
Wire Wire Line
	2750 4300 2000 4300
Wire Wire Line
	2750 5700 2000 5700
Wire Wire Line
	2750 5800 2000 5800
Wire Wire Line
	2750 5900 2000 5900
Wire Wire Line
	3950 4300 4400 4300
Wire Wire Line
	3950 5900 4400 5900
Text Label 2100 4300 0    50   ~ 0
SPI_~CS~_DAC_U
Text Label 2100 5900 0    50   ~ 0
SPI_~CS~_DAC_I
Text Label 2100 4100 0    50   ~ 0
SPI_SDO
Text Label 2100 5700 0    50   ~ 0
SPI_SDO
Text Label 2400 4200 2    50   ~ 0
SPI_SCK
Text Label 2400 5800 2    50   ~ 0
SPI_SCK
Wire Wire Line
	3450 6300 4000 6300
Wire Wire Line
	7750 1300 7750 1200
Text HLabel 4400 4700 2    50   Input ~ 0
Vref_DAC
Wire Wire Line
	3450 4700 4400 4700
Text Label 3600 4700 0    50   ~ 0
Vref_DAC
Text Label 3600 6300 0    50   ~ 0
Vref_DAC
$Comp
L power:GND #PWR0512
U 1 1 5E4B9F28
P 2700 4750
F 0 "#PWR0512" H 2700 4500 50  0001 C CNN
F 1 "GND" H 2705 4577 50  0000 C CNN
F 2 "" H 2700 4750 50  0001 C CNN
F 3 "" H 2700 4750 50  0001 C CNN
	1    2700 4750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0521
U 1 1 5E4BA2D1
P 2700 6400
F 0 "#PWR0521" H 2700 6150 50  0001 C CNN
F 1 "GND" H 2705 6227 50  0000 C CNN
F 2 "" H 2700 6400 50  0001 C CNN
F 3 "" H 2700 6400 50  0001 C CNN
	1    2700 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 4400 2700 4400
Wire Wire Line
	2700 4400 2700 4750
Wire Wire Line
	2750 6000 2700 6000
Wire Wire Line
	2700 6000 2700 6400
Text HLabel 8800 1200 2    50   Input ~ 0
Vref_ADC
Wire Wire Line
	7750 1200 8800 1200
Text HLabel 4400 4300 2    50   Output ~ 0
U_cmd_DAC
Text HLabel 4400 5900 2    50   Output ~ 0
I_cmd_DAC
Text HLabel 8800 1500 2    50   Input ~ 0
U_meas_ADC
Text HLabel 8800 1600 2    50   Input ~ 0
I_meas_ADC
$Comp
L Device:R R501
U 1 1 5E6C1AC3
P 6900 3850
F 0 "R501" H 6970 3896 50  0000 L CNN
F 1 "10k" H 6970 3805 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 6830 3850 50  0001 C CNN
F 3 "~" H 6900 3850 50  0001 C CNN
	1    6900 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R502
U 1 1 5E6C3DEE
P 7300 3850
F 0 "R502" H 7370 3896 50  0000 L CNN
F 1 "10k" H 7370 3805 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 7230 3850 50  0001 C CNN
F 3 "~" H 7300 3850 50  0001 C CNN
	1    7300 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R503
U 1 1 5E6C4299
P 7700 3850
F 0 "R503" H 7770 3896 50  0000 L CNN
F 1 "10k" H 7770 3805 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 7630 3850 50  0001 C CNN
F 3 "~" H 7700 3850 50  0001 C CNN
	1    7700 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R504
U 1 1 5E6C466D
P 8100 3850
F 0 "R504" H 8170 3896 50  0000 L CNN
F 1 "10k" H 8170 3805 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 8030 3850 50  0001 C CNN
F 3 "~" H 8100 3850 50  0001 C CNN
	1    8100 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R505
U 1 1 5E6C48CF
P 8500 3850
F 0 "R505" H 8570 3896 50  0000 L CNN
F 1 "10k" H 8570 3805 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 8430 3850 50  0001 C CNN
F 3 "~" H 8500 3850 50  0001 C CNN
	1    8500 3850
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR0509
U 1 1 5E6C4B55
P 7700 3500
F 0 "#PWR0509" H 7700 3350 50  0001 C CNN
F 1 "VDD" H 7717 3673 50  0000 C CNN
F 2 "" H 7700 3500 50  0001 C CNN
F 3 "" H 7700 3500 50  0001 C CNN
	1    7700 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 3500 7700 3600
Wire Wire Line
	6900 3700 6900 3600
Wire Wire Line
	6900 3600 7300 3600
Connection ~ 7700 3600
Wire Wire Line
	7700 3600 7700 3700
Wire Wire Line
	7300 3700 7300 3600
Connection ~ 7300 3600
Wire Wire Line
	7300 3600 7700 3600
Wire Wire Line
	8500 3700 8500 3600
Wire Wire Line
	8500 3600 8100 3600
Wire Wire Line
	8100 3700 8100 3600
Connection ~ 8100 3600
Wire Wire Line
	8100 3600 7700 3600
Text Label 2150 2000 0    50   ~ 0
btn_OUT_ONOFF
Text Label 2150 2200 0    50   ~ 0
btn_2wire_4wire
Wire Wire Line
	8500 4000 8500 4250
Wire Wire Line
	8500 4250 9300 4250
Wire Wire Line
	8100 4000 8100 4350
Wire Wire Line
	8100 4350 9300 4350
Wire Wire Line
	7700 4000 7700 4450
Wire Wire Line
	7700 4450 9300 4450
Wire Wire Line
	7300 4000 7300 4550
Wire Wire Line
	7300 4550 9300 4550
Wire Wire Line
	6900 4000 6900 4650
Wire Wire Line
	6900 4650 9300 4650
Text Label 9150 4550 2    50   ~ 0
ROTARY_CK
Text Label 9150 4650 2    50   ~ 0
ROTARY_SW
Text Label 9150 4450 2    50   ~ 0
ROTARY_DA
Text Label 8650 4350 0    50   ~ 0
btn_2wire_4wire
Text Label 8650 4250 0    50   ~ 0
btn_OUT_ONOFF
$Comp
L Switch:SW_DIP_x01 SW501
U 1 1 5E5B4F65
P 6900 5200
F 0 "SW501" V 7200 5250 50  0000 L CNN
F 1 "ROTARY_SW" H 6700 5050 50  0000 L CNN
F 2 "TerminalBlock_MetzConnect:TerminalBlock_MetzConnect_Type059_RT06302HBWC_1x02_P3.50mm_Horizontal" H 6900 5200 50  0001 C CNN
F 3 "~" H 6900 5200 50  0001 C CNN
	1    6900 5200
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_DIP_x01 SW502
U 1 1 5E5B6508
P 7300 5200
F 0 "SW502" V 7600 5250 50  0000 L CNN
F 1 "ROTARY_CK" H 7100 5050 50  0000 L CNN
F 2 "TerminalBlock_MetzConnect:TerminalBlock_MetzConnect_Type059_RT06302HBWC_1x02_P3.50mm_Horizontal" H 7300 5200 50  0001 C CNN
F 3 "~" H 7300 5200 50  0001 C CNN
	1    7300 5200
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_DIP_x01 SW503
U 1 1 5E5B8110
P 7700 5200
F 0 "SW503" V 8000 5250 50  0000 L CNN
F 1 "ROTARY_DA" H 7500 5050 50  0000 L CNN
F 2 "TerminalBlock_MetzConnect:TerminalBlock_MetzConnect_Type059_RT06302HBWC_1x02_P3.50mm_Horizontal" H 7700 5200 50  0001 C CNN
F 3 "~" H 7700 5200 50  0001 C CNN
	1    7700 5200
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_DIP_x01 SW504
U 1 1 5E5B8988
P 8100 5200
F 0 "SW504" V 8400 5250 50  0000 L CNN
F 1 "BTN_2WIRE_4WIRE" H 7650 5050 50  0000 L CNN
F 2 "TerminalBlock_MetzConnect:TerminalBlock_MetzConnect_Type059_RT06302HBWC_1x02_P3.50mm_Horizontal" H 8100 5200 50  0001 C CNN
F 3 "~" H 8100 5200 50  0001 C CNN
	1    8100 5200
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_DIP_x01 SW505
U 1 1 5E5B9558
P 8500 5200
F 0 "SW505" V 8800 5250 50  0000 L CNN
F 1 "BTN_OUT_ONOFF" H 8100 5050 50  0000 L CNN
F 2 "TerminalBlock_MetzConnect:TerminalBlock_MetzConnect_Type059_RT06302HBWC_1x02_P3.50mm_Horizontal" H 8500 5200 50  0001 C CNN
F 3 "~" H 8500 5200 50  0001 C CNN
	1    8500 5200
	0    1    1    0   
$EndComp
Wire Wire Line
	6900 4900 6900 4650
Connection ~ 6900 4650
Wire Wire Line
	7300 4900 7300 4550
Connection ~ 7300 4550
Wire Wire Line
	7700 4900 7700 4450
Connection ~ 7700 4450
Wire Wire Line
	8100 4900 8100 4350
Connection ~ 8100 4350
Wire Wire Line
	8500 4900 8500 4250
Connection ~ 8500 4250
$Comp
L power:GND #PWR0516
U 1 1 5E5F22C0
P 6900 5650
F 0 "#PWR0516" H 6900 5400 50  0001 C CNN
F 1 "GND" V 6905 5522 50  0000 R CNN
F 2 "" H 6900 5650 50  0001 C CNN
F 3 "" H 6900 5650 50  0001 C CNN
	1    6900 5650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0517
U 1 1 5E5F3AFC
P 7300 5650
F 0 "#PWR0517" H 7300 5400 50  0001 C CNN
F 1 "GND" V 7305 5522 50  0000 R CNN
F 2 "" H 7300 5650 50  0001 C CNN
F 3 "" H 7300 5650 50  0001 C CNN
	1    7300 5650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0518
U 1 1 5E5F3DE2
P 7700 5650
F 0 "#PWR0518" H 7700 5400 50  0001 C CNN
F 1 "GND" V 7705 5522 50  0000 R CNN
F 2 "" H 7700 5650 50  0001 C CNN
F 3 "" H 7700 5650 50  0001 C CNN
	1    7700 5650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0519
U 1 1 5E5F4163
P 8100 5650
F 0 "#PWR0519" H 8100 5400 50  0001 C CNN
F 1 "GND" V 8105 5522 50  0000 R CNN
F 2 "" H 8100 5650 50  0001 C CNN
F 3 "" H 8100 5650 50  0001 C CNN
	1    8100 5650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0520
U 1 1 5E5F44C7
P 8500 5650
F 0 "#PWR0520" H 8500 5400 50  0001 C CNN
F 1 "GND" V 8505 5522 50  0000 R CNN
F 2 "" H 8500 5650 50  0001 C CNN
F 3 "" H 8500 5650 50  0001 C CNN
	1    8500 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 5500 6900 5650
Wire Wire Line
	7300 5500 7300 5650
Wire Wire Line
	7700 5500 7700 5650
Wire Wire Line
	8100 5500 8100 5650
Wire Wire Line
	8500 5500 8500 5650
Wire Notes Line
	6650 4950 7900 4950
Wire Notes Line
	7900 4950 7900 5550
Wire Notes Line
	7900 5550 6650 5550
Wire Notes Line
	6650 5550 6650 4950
Text Notes 6600 5600 1    50   ~ 0
ROTARY ENCODER
Wire Notes Line
	6450 4700 8850 4700
Wire Notes Line
	8850 4700 8850 5950
Wire Notes Line
	8850 5950 6450 5950
Wire Notes Line
	6450 5950 6450 4700
Text Notes 6450 6050 0    50   ~ 0
Not on main PCB
Text HLabel 5500 3000 2    50   Output ~ 0
UART_TX
Text HLabel 5500 3100 2    50   Output ~ 0
UART_RX
$EndSCHEMATC
