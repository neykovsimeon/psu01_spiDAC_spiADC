EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 8 8
Title "PSU1.0_Analog_Voltage_Current_Regulators"
Date "2020-02-15"
Rev "Rev001.01"
Comp "HomeProjects"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:R R805
U 1 1 5E2EB9A6
P 3150 1600
F 0 "R805" V 2943 1600 50  0000 C CNN
F 1 "10k" V 3034 1600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 3080 1600 50  0001 C CNN
F 3 "~" H 3150 1600 50  0001 C CNN
	1    3150 1600
	0    1    1    0   
$EndComp
$Comp
L Device:R R812
U 1 1 5E2EC152
P 3550 2950
F 0 "R812" V 3343 2950 50  0000 C CNN
F 1 "10k" V 3434 2950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 3480 2950 50  0001 C CNN
F 3 "~" H 3550 2950 50  0001 C CNN
	1    3550 2950
	0    1    1    0   
$EndComp
$Comp
L Device:R R810
U 1 1 5E2EC77B
P 5650 2850
F 0 "R810" V 5443 2850 50  0000 C CNN
F 1 "100" V 5534 2850 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 5580 2850 50  0001 C CNN
F 3 "~" H 5650 2850 50  0001 C CNN
	1    5650 2850
	0    1    1    0   
$EndComp
$Comp
L Device:R R806
U 1 1 5E2ED46A
P 5350 2000
F 0 "R806" V 5143 2000 50  0000 C CNN
F 1 "10k" V 5234 2000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 5280 2000 50  0001 C CNN
F 3 "~" H 5350 2000 50  0001 C CNN
	1    5350 2000
	0    1    1    0   
$EndComp
$Comp
L Device:C C803
U 1 1 5E2EDA6C
P 5000 2350
F 0 "C803" H 5115 2396 50  0000 L CNN
F 1 "100n" H 5115 2305 50  0000 L CNN
F 2 "Capacitor_THT:C_Axial_L5.1mm_D3.1mm_P7.50mm_Horizontal" H 5038 2200 50  0001 C CNN
F 3 "~" H 5000 2350 50  0001 C CNN
	1    5000 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R815
U 1 1 5E2EFCEE
P 6000 3200
F 0 "R815" H 5930 3154 50  0000 R CNN
F 1 "420" H 5930 3245 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 5930 3200 50  0001 C CNN
F 3 "~" H 6000 3200 50  0001 C CNN
	1    6000 3200
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0812
U 1 1 5E2F0697
P 6000 3500
F 0 "#PWR0812" H 6000 3250 50  0001 C CNN
F 1 "GND" H 6005 3327 50  0000 C CNN
F 2 "" H 6000 3500 50  0001 C CNN
F 3 "" H 6000 3500 50  0001 C CNN
	1    6000 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 3350 6000 3500
Wire Wire Line
	6000 3050 6000 2850
Wire Wire Line
	3400 2950 3250 2950
$Comp
L Device:R R803
U 1 1 5E2F22AF
P 1750 1500
F 0 "R803" V 1543 1500 50  0000 C CNN
F 1 "10k" V 1634 1500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 1680 1500 50  0001 C CNN
F 3 "~" H 1750 1500 50  0001 C CNN
	1    1750 1500
	0    1    1    0   
$EndComp
$Comp
L Device:R R801
U 1 1 5E2F3C5F
P 2500 950
F 0 "R801" V 2293 950 50  0000 C CNN
F 1 "10k" V 2384 950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 2430 950 50  0001 C CNN
F 3 "~" H 2500 950 50  0001 C CNN
	1    2500 950 
	0    1    1    0   
$EndComp
$Comp
L Device:R R802
U 1 1 5E2F5992
P 1250 1500
F 0 "R802" V 1043 1500 50  0000 C CNN
F 1 "10k" V 1134 1500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 1180 1500 50  0001 C CNN
F 3 "~" H 1250 1500 50  0001 C CNN
	1    1250 1500
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0805
U 1 1 5E2F5D21
P 900 1500
F 0 "#PWR0805" H 900 1250 50  0001 C CNN
F 1 "GND" V 905 1372 50  0000 R CNN
F 2 "" H 900 1500 50  0001 C CNN
F 3 "" H 900 1500 50  0001 C CNN
	1    900  1500
	0    1    1    0   
$EndComp
Wire Wire Line
	1100 1500 900  1500
$Comp
L Device:R R821
U 1 1 5E2F7EB2
P 3550 4200
F 0 "R821" V 3343 4200 50  0000 C CNN
F 1 "10k" V 3434 4200 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 3480 4200 50  0001 C CNN
F 3 "~" H 3550 4200 50  0001 C CNN
	1    3550 4200
	0    1    1    0   
$EndComp
$Comp
L Device:R R824
U 1 1 5E2F9D99
P 2500 4850
F 0 "R824" V 2293 4850 50  0000 C CNN
F 1 "10k" V 2384 4850 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 2430 4850 50  0001 C CNN
F 3 "~" H 2500 4850 50  0001 C CNN
	1    2500 4850
	0    1    1    0   
$EndComp
$Comp
L Device:R R819
U 1 1 5E2FC1A8
P 2000 3700
F 0 "R819" H 1930 3654 50  0000 R CNN
F 1 "10k" H 1930 3745 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 1930 3700 50  0001 C CNN
F 3 "~" H 2000 3700 50  0001 C CNN
	1    2000 3700
	-1   0    0    1   
$EndComp
$Comp
L Device:R R807
U 1 1 5E2FF2C1
P 2500 2400
F 0 "R807" V 2293 2400 50  0000 C CNN
F 1 "10k" V 2384 2400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 2430 2400 50  0001 C CNN
F 3 "~" H 2500 2400 50  0001 C CNN
	1    2500 2400
	0    1    1    0   
$EndComp
Connection ~ 3250 2950
$Comp
L Transistor_BJT:BC547 Q801
U 1 1 5E304310
P 6500 2850
F 0 "Q801" H 6691 2896 50  0000 L CNN
F 1 "BC547" H 6691 2805 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 6700 2775 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 6500 2850 50  0001 L CNN
	1    6500 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C802
U 1 1 5E3057B1
P 8850 1600
F 0 "C802" H 8968 1646 50  0000 L CNN
F 1 "10uF" H 8968 1555 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 8888 1450 50  0001 C CNN
F 3 "https://store.comet.bg/download-file.php?id=10106" H 8850 1600 50  0001 C CNN
	1    8850 1600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C804
U 1 1 5E306A4E
P 6300 2450
F 0 "C804" V 6048 2450 50  0000 C CNN
F 1 "2.2n" V 6139 2450 50  0000 C CNN
F 2 "Capacitor_THT:C_Axial_L5.1mm_D3.1mm_P7.50mm_Horizontal" H 6338 2300 50  0001 C CNN
F 3 "~" H 6300 2450 50  0001 C CNN
	1    6300 2450
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0813
U 1 1 5E307538
P 6600 3500
F 0 "#PWR0813" H 6600 3250 50  0001 C CNN
F 1 "GND" H 6605 3327 50  0000 C CNN
F 2 "" H 6600 3500 50  0001 C CNN
F 3 "" H 6600 3500 50  0001 C CNN
	1    6600 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 3500 6600 3050
Wire Wire Line
	6300 2850 6000 2850
Connection ~ 6000 2850
Wire Wire Line
	6450 2450 6600 2450
Wire Wire Line
	6600 2450 6600 2650
Wire Wire Line
	6150 2450 6000 2450
Wire Wire Line
	6000 2450 6000 2850
$Comp
L power:GND #PWR0808
U 1 1 5E30CB01
P 8850 2250
F 0 "#PWR0808" H 8850 2000 50  0001 C CNN
F 1 "GND" H 8855 2077 50  0000 C CNN
F 2 "" H 8850 2250 50  0001 C CNN
F 3 "" H 8850 2250 50  0001 C CNN
	1    8850 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 1750 8850 2250
$Comp
L Device:R R835
U 1 1 5E2E05FE
P 2350 7350
F 0 "R835" V 2250 7350 50  0000 C CNN
F 1 "20k" V 2450 7350 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 2280 7350 50  0001 C CNN
F 3 "~" H 2350 7350 50  0001 C CNN
	1    2350 7350
	0    1    1    0   
$EndComp
$Comp
L Device:R R834
U 1 1 5E2E166E
P 3500 6650
F 0 "R834" V 3600 6650 50  0000 C CNN
F 1 "10k" V 3384 6650 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 3430 6650 50  0001 C CNN
F 3 "~" H 3500 6650 50  0001 C CNN
	1    3500 6650
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R832
U 1 1 5E2E1AA5
P 3500 6300
F 0 "R832" V 3600 6300 50  0000 C CNN
F 1 "20k" V 3384 6300 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 3430 6300 50  0001 C CNN
F 3 "~" H 3500 6300 50  0001 C CNN
	1    3500 6300
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R836
U 1 1 5E2E1D52
P 3500 7350
F 0 "R836" V 3600 7350 50  0000 C CNN
F 1 "10k" V 3384 7350 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 3430 7350 50  0001 C CNN
F 3 "~" H 3500 7350 50  0001 C CNN
	1    3500 7350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3350 6300 3150 6300
Wire Wire Line
	3150 6300 3150 6650
Wire Wire Line
	3150 6650 3350 6650
Wire Wire Line
	2200 7350 2000 7350
$Comp
L Device:R R833
U 1 1 5E2EACAB
P 2000 6350
F 0 "R833" H 1800 6400 50  0000 C CNN
F 1 "10k" H 1800 6300 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 1930 6350 50  0001 C CNN
F 3 "~" H 2000 6350 50  0001 C CNN
	1    2000 6350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R828
U 1 1 5E2EECAE
P 3500 5700
F 0 "R828" V 3600 5700 50  0000 C CNN
F 1 "100" V 3384 5700 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 3430 5700 50  0001 C CNN
F 3 "~" H 3500 5700 50  0001 C CNN
	1    3500 5700
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R831
U 1 1 5E2F0F21
P 4000 5900
F 0 "R831" H 3800 5900 50  0000 C CNN
F 1 "420" H 3800 5800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 3930 5900 50  0001 C CNN
F 3 "~" H 4000 5900 50  0001 C CNN
	1    4000 5900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0819
U 1 1 5E2F39CE
P 4000 6150
F 0 "#PWR0819" H 4000 5900 50  0001 C CNN
F 1 "GND" H 4005 5977 50  0000 C CNN
F 2 "" H 4000 6150 50  0001 C CNN
F 3 "" H 4000 6150 50  0001 C CNN
	1    4000 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 5700 4000 5700
Wire Wire Line
	4000 5700 4000 5750
Wire Wire Line
	4000 6050 4000 6150
Wire Wire Line
	3650 6300 3800 6300
Wire Wire Line
	3800 6300 3800 6650
Wire Wire Line
	3800 6650 3650 6650
Connection ~ 3800 6650
$Comp
L Transistor_BJT:BC547 Q808
U 1 1 5E2FBDDE
P 4600 5700
F 0 "Q808" H 4791 5746 50  0000 L CNN
F 1 "BC547" H 4791 5655 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 4800 5625 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 4600 5700 50  0001 L CNN
	1    4600 5700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C806
U 1 1 5E2FCD3E
P 4300 5350
F 0 "C806" V 4048 5350 50  0000 C CNN
F 1 "2.2n" V 4139 5350 50  0000 C CNN
F 2 "Capacitor_THT:C_Axial_L5.1mm_D3.1mm_P7.50mm_Horizontal" H 4338 5200 50  0001 C CNN
F 3 "~" H 4300 5350 50  0001 C CNN
	1    4300 5350
	0    1    1    0   
$EndComp
Wire Wire Line
	4400 5700 4000 5700
Connection ~ 4000 5700
$Comp
L power:GND #PWR0820
U 1 1 5E2FF23B
P 4700 6150
F 0 "#PWR0820" H 4700 5900 50  0001 C CNN
F 1 "GND" H 4705 5977 50  0000 C CNN
F 2 "" H 4700 6150 50  0001 C CNN
F 3 "" H 4700 6150 50  0001 C CNN
	1    4700 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 5900 4700 6150
Wire Wire Line
	4450 5350 4700 5350
Wire Wire Line
	4700 5350 4700 5500
Wire Wire Line
	4150 5350 4000 5350
Wire Wire Line
	4000 5350 4000 5700
$Comp
L Device:C C805
U 1 1 5E30570C
P 2500 5200
F 0 "C805" V 2350 5200 50  0000 C CNN
F 1 "100n" V 2650 5200 50  0000 C CNN
F 2 "Capacitor_THT:C_Axial_L5.1mm_D3.1mm_P7.50mm_Horizontal" H 2538 5050 50  0001 C CNN
F 3 "~" H 2500 5200 50  0001 C CNN
	1    2500 5200
	0    1    1    0   
$EndComp
$Comp
L Device:R R827
U 1 1 5E30FCD6
P 1750 5600
F 0 "R827" V 1543 5600 50  0000 C CNN
F 1 "10k" V 1634 5600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 1680 5600 50  0001 C CNN
F 3 "~" H 1750 5600 50  0001 C CNN
	1    1750 5600
	0    -1   -1   0   
$EndComp
Text HLabel 1200 6000 0    50   Input ~ 0
dac_i
Text HLabel 5200 1550 0    50   Input ~ 0
dac_u
Text HLabel 3500 1600 2    50   Input ~ 0
u_fb
Text HLabel 4000 4200 2    50   Input ~ 0
u_fb_sense
Wire Wire Line
	4000 4200 3700 4200
$Comp
L power:GND #PWR0823
U 1 1 5E32011C
P 3900 7350
F 0 "#PWR0823" H 3900 7100 50  0001 C CNN
F 1 "GND" V 3905 7222 50  0000 R CNN
F 2 "" H 3900 7350 50  0001 C CNN
F 3 "" H 3900 7350 50  0001 C CNN
	1    3900 7350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3900 7350 3650 7350
$Comp
L power:GND #PWR0822
U 1 1 5E325069
P 5600 7000
F 0 "#PWR0822" H 5600 6750 50  0001 C CNN
F 1 "GND" V 5600 6800 50  0000 C CNN
F 2 "" H 5600 7000 50  0001 C CNN
F 3 "" H 5600 7000 50  0001 C CNN
	1    5600 7000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5500 7000 5550 7000
$Comp
L Device:C C807
U 1 1 5E32C1B5
P 5200 7450
F 0 "C807" V 5050 7400 50  0000 C CNN
F 1 "100n" V 5350 7450 50  0000 C CNN
F 2 "Capacitor_THT:C_Axial_L5.1mm_D3.1mm_P7.50mm_Horizontal" H 5238 7300 50  0001 C CNN
F 3 "~" H 5200 7450 50  0001 C CNN
	1    5200 7450
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0803
U 1 1 5E3312A4
P 4700 950
F 0 "#PWR0803" H 4700 700 50  0001 C CNN
F 1 "GND" V 4700 750 50  0000 C CNN
F 2 "" H 4700 950 50  0001 C CNN
F 3 "" H 4700 950 50  0001 C CNN
	1    4700 950 
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C801
U 1 1 5E3317F6
P 4250 1350
F 0 "C801" V 4100 1350 50  0000 C CNN
F 1 "100n" V 4400 1350 50  0000 C CNN
F 2 "Capacitor_THT:C_Axial_L5.1mm_D3.1mm_P7.50mm_Horizontal" H 4288 1200 50  0001 C CNN
F 3 "~" H 4250 1350 50  0001 C CNN
	1    4250 1350
	0    1    1    0   
$EndComp
Wire Wire Line
	4550 950  4600 950 
Wire Wire Line
	4400 1350 4600 1350
Wire Wire Line
	4600 1350 4600 950 
Connection ~ 4600 950 
Wire Wire Line
	4600 950  4700 950 
Wire Wire Line
	3850 950  3900 950 
Wire Wire Line
	4100 1350 3900 1350
Wire Wire Line
	3900 1350 3900 950 
Connection ~ 3900 950 
Wire Wire Line
	3900 950  3950 950 
Wire Wire Line
	5050 7450 4850 7450
Wire Wire Line
	4850 7450 4850 7000
Wire Wire Line
	4850 7000 4900 7000
Wire Wire Line
	4800 7000 4850 7000
Connection ~ 4850 7000
Wire Wire Line
	5350 7450 5550 7450
Wire Wire Line
	5550 7450 5550 7000
Connection ~ 5550 7000
Wire Wire Line
	5550 7000 5600 7000
Text HLabel 4400 6650 2    50   Input ~ 0
i_fb_low
Wire Wire Line
	3800 6650 4400 6650
$Comp
L Device:R R825
U 1 1 5E382678
P 6750 5300
F 0 "R825" V 6850 5300 50  0000 C CNN
F 1 "10k" V 6634 5300 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 6680 5300 50  0001 C CNN
F 3 "~" H 6750 5300 50  0001 C CNN
	1    6750 5300
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R826
U 1 1 5E382D15
P 8850 5300
F 0 "R826" V 8950 5300 50  0000 C CNN
F 1 "10k" V 8734 5300 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 8780 5300 50  0001 C CNN
F 3 "~" H 8850 5300 50  0001 C CNN
	1    8850 5300
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R829
U 1 1 5E393AD1
P 6100 5850
F 0 "R829" V 6200 5850 50  0000 C CNN
F 1 "10k" V 5984 5850 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 6030 5850 50  0001 C CNN
F 3 "~" H 6100 5850 50  0001 C CNN
	1    6100 5850
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R830
U 1 1 5E394093
P 8200 5850
F 0 "R830" V 8300 5850 50  0000 C CNN
F 1 "10k" V 8084 5850 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 8130 5850 50  0001 C CNN
F 3 "~" H 8200 5850 50  0001 C CNN
	1    8200 5850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8600 5850 8350 5850
Wire Wire Line
	6500 5850 6250 5850
Text HLabel 9800 5300 2    50   Output ~ 0
adc_u
Text HLabel 7600 5300 2    50   Output ~ 0
adc_i
Wire Wire Line
	900  6750 900  6400
Text Label 1500 6750 2    50   ~ 0
i_fb_low_buff
Wire Wire Line
	5950 5850 5500 5850
Wire Wire Line
	5500 5850 5500 6400
Text Label 5500 6150 2    50   ~ 0
i_fb_low_buff
Wire Wire Line
	8050 5850 7600 5850
Wire Wire Line
	7600 5850 7600 6400
Text Label 7600 6100 2    50   ~ 0
u_fb_buff
Wire Wire Line
	3250 2950 3250 3500
Wire Wire Line
	3250 3500 4000 3500
Text Label 3800 3500 2    50   ~ 0
u_fb_buff
$Comp
L Isolator:4N25 U802
U 1 1 5E3C0209
P 7150 1900
F 0 "U802" H 7150 2225 50  0000 C CNN
F 1 "H11D1" H 7150 2134 50  0000 C CNN
F 2 "Package_DIP:DIP-6_W7.62mm_Socket_LongPads" H 6950 1700 50  0001 L CIN
F 3 "https://www.vishay.com/docs/83725/4n25.pdf" H 7150 1900 50  0001 L CNN
	1    7150 1900
	1    0    0    -1  
$EndComp
$Comp
L Isolator:4N25 U803
U 1 1 5E3C50A9
P 5150 5050
F 0 "U803" H 5150 5375 50  0000 C CNN
F 1 "H11D1" H 5150 5284 50  0000 C CNN
F 2 "Package_DIP:DIP-6_W7.62mm_Socket_LongPads" H 4950 4850 50  0001 L CIN
F 3 "https://www.vishay.com/docs/83725/4n25.pdf" H 5150 5050 50  0001 L CNN
	1    5150 5050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0818
U 1 1 5E3C8733
P 5600 5300
F 0 "#PWR0818" H 5600 5050 50  0001 C CNN
F 1 "GND" H 5605 5127 50  0000 C CNN
F 2 "" H 5600 5300 50  0001 C CNN
F 3 "" H 5600 5300 50  0001 C CNN
	1    5600 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 5150 4700 5150
Wire Wire Line
	4700 5150 4700 5350
Connection ~ 4700 5350
Wire Wire Line
	4850 4950 4700 4950
Wire Wire Line
	4700 4950 4700 4700
Wire Wire Line
	6850 2000 6600 2000
Connection ~ 6600 2450
$Comp
L power:GND #PWR0807
U 1 1 5E3E462C
P 7600 2200
F 0 "#PWR0807" H 7600 1950 50  0001 C CNN
F 1 "GND" H 7605 2027 50  0000 C CNN
F 2 "" H 7600 2200 50  0001 C CNN
F 3 "" H 7600 2200 50  0001 C CNN
	1    7600 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 2000 7600 2000
Wire Wire Line
	7600 2000 7600 2200
$Comp
L Device:R R804
U 1 1 5E3EB5BA
P 7600 1550
F 0 "R804" H 7530 1504 50  0000 R CNN
F 1 "220" H 7530 1595 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 7530 1550 50  0001 C CNN
F 3 "~" H 7600 1550 50  0001 C CNN
	1    7600 1550
	-1   0    0    1   
$EndComp
Wire Wire Line
	6850 1800 6600 1800
Wire Wire Line
	6600 1650 6600 1800
$Comp
L Device:LED D801
U 1 1 5E3F3338
P 7600 1100
F 0 "D801" V 7639 983 50  0000 R CNN
F 1 "V_REG" V 7548 983 50  0000 R CNN
F 2 "TerminalBlock_MetzConnect:TerminalBlock_MetzConnect_Type059_RT06302HBWC_1x02_P3.50mm_Horizontal" H 7600 1100 50  0001 C CNN
F 3 "~" H 7600 1100 50  0001 C CNN
	1    7600 1100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7600 1250 7600 1350
Wire Wire Line
	7600 1700 7600 1900
Wire Wire Line
	7600 1900 7450 1900
$Comp
L power:VDD #PWR0801
U 1 1 5E4005BB
P 7600 850
F 0 "#PWR0801" H 7600 700 50  0001 C CNN
F 1 "VDD" H 7617 1023 50  0000 C CNN
F 2 "" H 7600 850 50  0001 C CNN
F 3 "" H 7600 850 50  0001 C CNN
	1    7600 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 850  7600 950 
$Comp
L Device:R R823
U 1 1 5E408618
P 5600 4600
F 0 "R823" H 5530 4554 50  0000 R CNN
F 1 "220" H 5530 4645 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 5530 4600 50  0001 C CNN
F 3 "~" H 5600 4600 50  0001 C CNN
	1    5600 4600
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D803
U 1 1 5E4093E8
P 5600 4150
F 0 "D803" V 5639 4032 50  0000 R CNN
F 1 "I_REG" V 5548 4032 50  0000 R CNN
F 2 "TerminalBlock_MetzConnect:TerminalBlock_MetzConnect_Type059_RT06302HBWC_1x02_P3.50mm_Horizontal" H 5600 4150 50  0001 C CNN
F 3 "~" H 5600 4150 50  0001 C CNN
	1    5600 4150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5600 5150 5600 5300
Wire Wire Line
	5450 5150 5600 5150
Wire Wire Line
	5450 5050 5600 5050
Wire Wire Line
	5600 5050 5600 4750
Wire Wire Line
	5600 4450 5600 4400
$Comp
L power:VDD #PWR0815
U 1 1 5E41DD69
P 5600 3950
F 0 "#PWR0815" H 5600 3800 50  0001 C CNN
F 1 "VDD" H 5617 4123 50  0000 C CNN
F 2 "" H 5600 3950 50  0001 C CNN
F 3 "" H 5600 3950 50  0001 C CNN
	1    5600 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 3950 5600 4000
Text Label 6600 1800 2    50   ~ 0
drv_ctrl
Text Label 4700 4850 2    50   ~ 0
drv_ctrl
Text HLabel 9600 1150 2    50   Output ~ 0
drv_ctrl
Wire Wire Line
	9600 1150 8850 1150
Wire Wire Line
	8850 1150 8850 1450
Wire Wire Line
	8850 1150 8850 700 
Connection ~ 8850 1150
Text Label 8850 950  2    50   ~ 0
drv_ctrl
Text Notes 9000 6450 0    50   ~ 0
1. Current sense low side by 3x5Wx1Ohm in parallel\n2. Gain i_fb_low =  3. Ratio = 1V/A at i_fb_low_buff
Text Notes 1250 6650 2    50   ~ 0
C-3
Text Notes 5350 6050 2    50   ~ 0
D-1
Text Notes 6550 1700 2    50   ~ 0
C-3; A-5
Text Notes 8750 850  2    50   ~ 0
C-3; A-4
Text Notes 4600 4750 2    50   ~ 0
A-4; A-5
Text Notes 7500 6000 2    50   ~ 0
B-2
Text Notes 3700 3400 2    50   ~ 0
C-4
$Comp
L Amplifier_Operational:LM324 U801
U 1 1 5E378230
P 2500 2950
F 0 "U801" H 2500 2583 50  0000 C CNN
F 1 "LM324" H 2500 2674 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 2450 3050 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 2550 3150 50  0001 C CNN
	1    2500 2950
	1    0    0    1   
$EndComp
Wire Wire Line
	1400 1500 1500 1500
Wire Wire Line
	1500 3050 1500 1500
Connection ~ 1500 1500
Wire Wire Line
	1500 1500 1600 1500
$Comp
L Amplifier_Operational:LM324 U801
U 5 1 5E3A2BF1
P 4250 850
F 0 "U801" V 4345 850 50  0000 C CNN
F 1 "LM324" V 4254 850 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 4200 950 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 4300 1050 50  0001 C CNN
	5    4250 850 
	0    -1   -1   0   
$EndComp
$Comp
L Amplifier_Operational:LM324 U801
U 3 1 5E3A8B7B
P 2500 1500
F 0 "U801" H 2500 1133 50  0000 C CNN
F 1 "LM324" H 2500 1224 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 2450 1600 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 2550 1700 50  0001 C CNN
	3    2500 1500
	-1   0    0    1   
$EndComp
Wire Wire Line
	1900 1500 2000 1500
Wire Wire Line
	2650 950  3000 950 
Wire Wire Line
	3000 950  3000 1400
Wire Wire Line
	3000 1400 2800 1400
Wire Wire Line
	2350 950  2000 950 
Wire Wire Line
	2000 950  2000 1500
Connection ~ 2000 1500
Wire Wire Line
	2000 1500 2200 1500
$Comp
L Amplifier_Operational:LM324 U801
U 4 1 5E3D2F56
P 4600 2850
F 0 "U801" H 4600 2483 50  0000 C CNN
F 1 "LM324" H 4600 2574 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 4550 2950 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 4650 3050 50  0001 C CNN
	4    4600 2850
	1    0    0    1   
$EndComp
Wire Wire Line
	4300 2950 3700 2950
Wire Wire Line
	4300 2750 4000 2750
Wire Wire Line
	4000 2000 4000 2750
Wire Wire Line
	5800 2850 6000 2850
Wire Wire Line
	6600 2000 6600 2450
$Comp
L Amplifier_Operational:LM324 U801
U 2 1 5E41BA51
P 2500 4300
F 0 "U801" H 2500 4667 50  0000 C CNN
F 1 "LM324" H 2500 4576 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 2450 4400 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 2550 4500 50  0001 C CNN
	2    2500 4300
	-1   0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LM324 U804
U 5 1 5E432401
P 5200 6900
F 0 "U804" V 5295 6900 50  0000 C CNN
F 1 "LM324" V 5204 6900 50  0000 C CNN
F 2 "" H 5150 7000 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 5250 7100 50  0001 C CNN
	5    5200 6900
	0    -1   -1   0   
$EndComp
$Comp
L Amplifier_Operational:LM324 U804
U 1 1 5E436044
P 2600 5700
F 0 "U804" H 2700 5850 50  0000 C CNN
F 1 "LM324" H 2700 5950 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 2550 5800 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 2650 5900 50  0001 C CNN
	1    2600 5700
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:LM324 U804
U 2 1 5E44AF50
P 2600 6750
F 0 "U804" H 2600 7117 50  0000 C CNN
F 1 "LM324" H 2600 7026 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 2550 6850 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 2650 6950 50  0001 C CNN
	2    2600 6750
	-1   0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LM324 U804
U 3 1 5E44CC73
P 6800 5750
F 0 "U804" H 6850 5950 50  0000 C CNN
F 1 "LM324" H 6850 6050 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 6750 5850 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 6850 5950 50  0001 C CNN
	3    6800 5750
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:LM324 U804
U 4 1 5E4509B6
P 8900 5750
F 0 "U804" H 9000 5950 50  0000 C CNN
F 1 "LM324" H 9000 6050 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 8850 5850 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 8950 5950 50  0001 C CNN
	4    8900 5750
	1    0    0    1   
$EndComp
Wire Wire Line
	2800 2950 3000 2950
Wire Wire Line
	2200 2850 2000 2850
Wire Wire Line
	2200 3050 1500 3050
Wire Wire Line
	2350 2400 2000 2400
Wire Wire Line
	2000 2400 2000 2850
Wire Wire Line
	2650 2400 3000 2400
Wire Wire Line
	3000 2400 3000 2950
Connection ~ 3000 2950
Wire Wire Line
	3000 2950 3250 2950
Wire Wire Line
	2000 3550 2000 2850
Connection ~ 2000 2850
Wire Wire Line
	2200 4300 2000 4300
Wire Wire Line
	2000 4300 2000 3850
Wire Wire Line
	2350 4850 2000 4850
Wire Wire Line
	2000 4850 2000 4300
Connection ~ 2000 4300
Wire Wire Line
	2800 4400 3000 4400
Wire Wire Line
	3000 4400 3000 4850
Wire Wire Line
	2650 4850 3000 4850
Wire Wire Line
	3400 4200 2800 4200
Wire Wire Line
	2300 5600 2000 5600
Wire Wire Line
	2300 5800 2000 5800
Wire Wire Line
	2000 5800 2000 6200
Wire Wire Line
	2000 6500 2000 6750
Connection ~ 2000 6750
Wire Wire Line
	2000 6750 2300 6750
Wire Wire Line
	900  6750 2000 6750
Wire Wire Line
	2000 6750 2000 7350
Wire Wire Line
	2900 6850 3000 6850
Wire Wire Line
	3000 6850 3000 7350
Connection ~ 3000 7350
Wire Wire Line
	3000 7350 2500 7350
Wire Wire Line
	3000 7350 3350 7350
Wire Wire Line
	3150 6650 2900 6650
Connection ~ 3150 6650
Wire Wire Line
	2900 5700 3000 5700
Wire Wire Line
	2350 5200 2000 5200
Wire Wire Line
	2000 5200 2000 5600
Connection ~ 2000 5600
Wire Wire Line
	2000 5600 1900 5600
Wire Wire Line
	2650 5200 3000 5200
Wire Wire Line
	3000 5200 3000 5700
Connection ~ 3000 5700
Wire Wire Line
	3000 5700 3350 5700
Wire Wire Line
	6600 5300 6350 5300
Wire Wire Line
	6350 5300 6350 5650
Wire Wire Line
	6350 5650 6500 5650
Wire Wire Line
	6900 5300 7200 5300
Wire Wire Line
	7200 5300 7200 5750
Wire Wire Line
	7200 5750 7100 5750
Wire Wire Line
	7200 5300 7600 5300
Connection ~ 7200 5300
Wire Wire Line
	8700 5300 8400 5300
Wire Wire Line
	8400 5300 8400 5650
Wire Wire Line
	8400 5650 8600 5650
Wire Wire Line
	9000 5300 9350 5300
Wire Wire Line
	9350 5300 9350 5750
Wire Wire Line
	9350 5750 9200 5750
Wire Wire Line
	9350 5300 9800 5300
Connection ~ 9350 5300
$Comp
L power:+12V #PWR0802
U 1 1 5E3EFC06
P 3850 950
F 0 "#PWR0802" H 3850 800 50  0001 C CNN
F 1 "+12V" V 3865 1078 50  0000 L CNN
F 2 "" H 3850 950 50  0001 C CNN
F 3 "" H 3850 950 50  0001 C CNN
	1    3850 950 
	0    -1   -1   0   
$EndComp
$Comp
L power:+12V #PWR0821
U 1 1 5E3F09B6
P 4800 7000
F 0 "#PWR0821" H 4800 6850 50  0001 C CNN
F 1 "+12V" V 4815 7128 50  0000 L CNN
F 2 "" H 4800 7000 50  0001 C CNN
F 3 "" H 4800 7000 50  0001 C CNN
	1    4800 7000
	0    -1   -1   0   
$EndComp
$Comp
L Transistor_BJT:BC547 Q807
U 1 1 5E4E63B8
P 7500 4450
F 0 "Q807" H 7691 4496 50  0000 L CNN
F 1 "BC547" H 7691 4405 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 7700 4375 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 7500 4450 50  0001 L CNN
	1    7500 4450
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC547 Q806
U 1 1 5E4E9587
P 7500 3900
F 0 "Q806" H 7691 3946 50  0000 L CNN
F 1 "BC547" H 7691 3855 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 7700 3825 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 7500 3900 50  0001 L CNN
	1    7500 3900
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC547 Q805
U 1 1 5E4E9F15
P 8400 3550
F 0 "Q805" H 8591 3596 50  0000 L CNN
F 1 "BC547" H 8591 3505 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 8600 3475 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 8400 3550 50  0001 L CNN
	1    8400 3550
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC547 Q802
U 1 1 5E4EB3C5
P 9200 3000
F 0 "Q802" H 9391 3046 50  0000 L CNN
F 1 "BC547" H 9391 2955 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 9400 2925 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 9200 3000 50  0001 L CNN
	1    9200 3000
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC547 Q803
U 1 1 5E4EC311
P 9900 3000
F 0 "Q803" H 10091 3046 50  0000 L CNN
F 1 "BC547" H 10091 2955 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 10100 2925 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 9900 3000 50  0001 L CNN
	1    9900 3000
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC547 Q804
U 1 1 5E4ECEBB
P 10700 3000
F 0 "Q804" H 10550 2800 50  0000 L CNN
F 1 "BC547" H 10500 2700 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 10900 2925 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 10700 3000 50  0001 L CNN
	1    10700 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 4100 7600 4250
$Comp
L power:GND #PWR0816
U 1 1 5E4F57EB
P 7600 4700
F 0 "#PWR0816" H 7600 4450 50  0001 C CNN
F 1 "GND" H 7605 4527 50  0000 C CNN
F 2 "" H 7600 4700 50  0001 C CNN
F 3 "" H 7600 4700 50  0001 C CNN
	1    7600 4700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0814
U 1 1 5E4F5D89
P 8500 3850
F 0 "#PWR0814" H 8500 3600 50  0001 C CNN
F 1 "GND" H 8505 3677 50  0000 C CNN
F 2 "" H 8500 3850 50  0001 C CNN
F 3 "" H 8500 3850 50  0001 C CNN
	1    8500 3850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0811
U 1 1 5E4F62AA
P 10800 3300
F 0 "#PWR0811" H 10800 3050 50  0001 C CNN
F 1 "GND" H 10805 3127 50  0000 C CNN
F 2 "" H 10800 3300 50  0001 C CNN
F 3 "" H 10800 3300 50  0001 C CNN
	1    10800 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 3750 8500 3850
Wire Wire Line
	7600 4650 7600 4700
Wire Wire Line
	10800 3200 10800 3300
$Comp
L Device:R R814
U 1 1 5E50E7F3
P 8500 3050
F 0 "R814" H 8430 3004 50  0000 R CNN
F 1 "220" H 8430 3095 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 8430 3050 50  0001 C CNN
F 3 "~" H 8500 3050 50  0001 C CNN
	1    8500 3050
	-1   0    0    1   
$EndComp
$Comp
L Device:R R809
U 1 1 5E50FDDE
P 10800 2500
F 0 "R809" H 10730 2454 50  0000 R CNN
F 1 "220" H 10730 2545 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 10730 2500 50  0001 C CNN
F 3 "~" H 10800 2500 50  0001 C CNN
	1    10800 2500
	-1   0    0    1   
$EndComp
$Comp
L Device:R R808
U 1 1 5E5103DF
P 10000 2500
F 0 "R808" H 9930 2454 50  0000 R CNN
F 1 "220" H 9930 2545 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 9930 2500 50  0001 C CNN
F 3 "~" H 10000 2500 50  0001 C CNN
	1    10000 2500
	-1   0    0    1   
$EndComp
$Comp
L Device:R R817
U 1 1 5E510743
P 9000 3550
F 0 "R817" H 8930 3504 50  0000 R CNN
F 1 "10k" H 8930 3595 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 8930 3550 50  0001 C CNN
F 3 "~" H 9000 3550 50  0001 C CNN
	1    9000 3550
	-1   0    0    1   
$EndComp
$Comp
L Device:R R811
U 1 1 5E51103D
P 10400 2850
F 0 "R811" H 10330 2804 50  0000 R CNN
F 1 "10k" H 10330 2895 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 10330 2850 50  0001 C CNN
F 3 "~" H 10400 2850 50  0001 C CNN
	1    10400 2850
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D802
U 1 1 5E51F431
P 10800 2100
F 0 "D802" V 10839 1983 50  0000 R CNN
F 1 "ALARM" V 10748 1983 50  0000 R CNN
F 2 "TerminalBlock_MetzConnect:TerminalBlock_MetzConnect_Type059_RT06302HBWC_1x02_P3.50mm_Horizontal" H 10800 2100 50  0001 C CNN
F 3 "~" H 10800 2100 50  0001 C CNN
	1    10800 2100
	0    -1   -1   0   
$EndComp
$Comp
L power:VDD #PWR0806
U 1 1 5E5214AD
P 10800 1800
F 0 "#PWR0806" H 10800 1650 50  0001 C CNN
F 1 "VDD" H 10817 1973 50  0000 C CNN
F 2 "" H 10800 1800 50  0001 C CNN
F 3 "" H 10800 1800 50  0001 C CNN
	1    10800 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	10800 1800 10800 1900
Wire Wire Line
	10800 2250 10800 2300
Wire Wire Line
	10800 2650 10800 2700
Wire Wire Line
	10000 2350 10000 1900
Wire Wire Line
	10000 2650 10000 2700
Wire Wire Line
	10400 2700 10000 2700
Connection ~ 10000 2700
Wire Wire Line
	10000 2700 10000 2800
Wire Wire Line
	10400 3000 10500 3000
Wire Wire Line
	9300 2800 9300 2700
Wire Wire Line
	9300 2700 10000 2700
Wire Wire Line
	8500 3200 8500 3300
Wire Wire Line
	10000 3200 10000 3300
Wire Wire Line
	10000 3300 9300 3300
Connection ~ 8500 3300
Wire Wire Line
	8500 3300 8500 3350
Wire Wire Line
	9300 3200 9300 3300
Connection ~ 9300 3300
Wire Wire Line
	9300 3300 8500 3300
$Comp
L Device:R R818
U 1 1 5E59FB98
P 9700 3550
F 0 "R818" H 9630 3504 50  0000 R CNN
F 1 "10k" H 9630 3595 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 9630 3550 50  0001 C CNN
F 3 "~" H 9700 3550 50  0001 C CNN
	1    9700 3550
	-1   0    0    1   
$EndComp
Wire Wire Line
	9000 3000 9000 3400
Wire Wire Line
	9700 3000 9700 3400
$Comp
L Device:R R813
U 1 1 5E5B326D
P 7600 3050
F 0 "R813" H 7530 3004 50  0000 R CNN
F 1 "220" H 7530 3095 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 7530 3050 50  0001 C CNN
F 3 "~" H 7600 3050 50  0001 C CNN
	1    7600 3050
	-1   0    0    1   
$EndComp
$Comp
L power:VDD #PWR0809
U 1 1 5E5B39D4
P 7600 2850
F 0 "#PWR0809" H 7600 2700 50  0001 C CNN
F 1 "VDD" H 7617 3023 50  0000 C CNN
F 2 "" H 7600 2850 50  0001 C CNN
F 3 "" H 7600 2850 50  0001 C CNN
	1    7600 2850
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR0810
U 1 1 5E5B42EB
P 8500 2850
F 0 "#PWR0810" H 8500 2700 50  0001 C CNN
F 1 "VDD" H 8517 3023 50  0000 C CNN
F 2 "" H 8500 2850 50  0001 C CNN
F 3 "" H 8500 2850 50  0001 C CNN
	1    8500 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 2850 8500 2900
Wire Wire Line
	7600 2850 7600 2900
Wire Wire Line
	7600 3200 7600 3550
$Comp
L Device:R R816
U 1 1 5E5D0D92
P 8000 3550
F 0 "R816" V 7793 3550 50  0000 C CNN
F 1 "10k" V 7884 3550 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 7930 3550 50  0001 C CNN
F 3 "~" H 8000 3550 50  0001 C CNN
	1    8000 3550
	0    1    1    0   
$EndComp
Wire Wire Line
	8150 3550 8200 3550
Wire Wire Line
	7850 3550 7600 3550
Connection ~ 7600 3550
Wire Wire Line
	7600 3550 7600 3700
$Comp
L Device:R R820
U 1 1 5E5E696B
P 7050 3900
F 0 "R820" V 6843 3900 50  0000 C CNN
F 1 "10k" V 6934 3900 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 6980 3900 50  0001 C CNN
F 3 "~" H 7050 3900 50  0001 C CNN
	1    7050 3900
	0    1    1    0   
$EndComp
$Comp
L Device:R R822
U 1 1 5E5E6DDB
P 7050 4450
F 0 "R822" V 6843 4450 50  0000 C CNN
F 1 "10k" V 6934 4450 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 6980 4450 50  0001 C CNN
F 3 "~" H 7050 4450 50  0001 C CNN
	1    7050 4450
	0    1    1    0   
$EndComp
Wire Wire Line
	7200 3900 7300 3900
Wire Wire Line
	7200 4450 7300 4450
Wire Wire Line
	6900 3900 6350 3900
Wire Wire Line
	6900 4450 6350 4450
Wire Wire Line
	9000 3700 9000 4150
Wire Wire Line
	9700 3700 9700 4150
Wire Wire Line
	7600 1900 8100 1900
Connection ~ 7600 1900
Wire Wire Line
	5600 5050 6150 5050
Connection ~ 5600 5050
Text Label 5750 5050 0    50   ~ 0
i_reg_active
Text Label 9700 3900 0    50   ~ 0
i_reg_active
Text Label 6450 4450 0    50   ~ 0
i_reg_active
Text Label 7750 1900 0    50   ~ 0
u_reg_active
Text Label 6450 3900 0    50   ~ 0
u_reg_active
Text Label 9000 3900 0    50   ~ 0
u_reg_active
Wire Wire Line
	10800 2700 11000 2700
Wire Wire Line
	11000 2700 11000 3900
Connection ~ 10800 2700
Wire Wire Line
	10800 2700 10800 2800
Text Label 11000 3150 1    50   ~ 0
Alarm
Text HLabel 10650 3900 0    50   Output ~ 0
~ALARM
Wire Wire Line
	11000 3900 10650 3900
$Comp
L Connector:Screw_Terminal_01x03 J801
U 1 1 5E4D6B8C
P 6000 950
F 0 "J801" V 6200 1050 50  0000 R CNN
F 1 "U_POT_option" V 6100 1050 50  0000 R CNN
F 2 "TerminalBlock_MetzConnect:TerminalBlock_MetzConnect_Type011_RT05503HBWC_1x03_P5.00mm_Horizontal" H 6000 950 50  0001 C CNN
F 3 "~" H 6000 950 50  0001 C CNN
	1    6000 950 
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4900 2850 5000 2850
Wire Wire Line
	4000 2000 5000 2000
Wire Wire Line
	5000 2200 5000 2000
Wire Wire Line
	5000 2500 5000 2850
Connection ~ 5000 2850
Wire Wire Line
	5000 2850 5500 2850
Wire Wire Line
	5200 2000 5000 2000
Connection ~ 5000 2000
$Comp
L power:GND #PWR0804
U 1 1 5E5334A8
P 6300 1200
F 0 "#PWR0804" H 6300 950 50  0001 C CNN
F 1 "GND" H 6305 1027 50  0000 C CNN
F 2 "" H 6300 1200 50  0001 C CNN
F 3 "" H 6300 1200 50  0001 C CNN
	1    6300 1200
	0    -1   -1   0   
$EndComp
$Comp
L Jumper:Jumper_3_Bridged12 JP801
U 1 1 5E540DAC
P 5600 1550
F 0 "JP801" H 5600 1754 50  0000 C CNN
F 1 "U_POT_option" H 5600 1663 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 5600 1550 50  0001 C CNN
F 3 "~" H 5600 1550 50  0001 C CNN
	1    5600 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 1600 2800 1600
Wire Wire Line
	3300 1600 3500 1600
Text HLabel 5200 1200 0    50   Input ~ 0
Vref_DAC
Wire Wire Line
	5350 1550 5200 1550
Wire Wire Line
	5600 1700 5600 2000
Wire Wire Line
	5600 2000 5500 2000
Wire Wire Line
	5900 1150 5900 1200
Wire Wire Line
	5900 1200 5200 1200
Wire Wire Line
	6100 1150 6100 1200
Wire Wire Line
	6100 1200 6300 1200
Wire Wire Line
	6000 1150 6000 1550
Wire Wire Line
	6000 1550 5850 1550
$Comp
L Jumper:Jumper_3_Bridged12 JP802
U 1 1 5E5E095B
P 1350 5600
F 0 "JP802" V 1396 5667 50  0000 L CNN
F 1 "I_POT_option" V 1305 5667 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 1350 5600 50  0001 C CNN
F 3 "~" H 1350 5600 50  0001 C CNN
	1    1350 5600
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Screw_Terminal_01x03 J802
U 1 1 5E5E1924
P 1350 5000
F 0 "J802" V 1550 5100 50  0000 R CNN
F 1 "I_POT_option" V 1450 5100 50  0000 R CNN
F 2 "TerminalBlock_MetzConnect:TerminalBlock_MetzConnect_Type011_RT05503HBWC_1x03_P5.00mm_Horizontal" H 1350 5000 50  0001 C CNN
F 3 "~" H 1350 5000 50  0001 C CNN
	1    1350 5000
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0817
U 1 1 5E5E23FA
P 1600 5200
F 0 "#PWR0817" H 1600 4950 50  0001 C CNN
F 1 "GND" H 1605 5027 50  0000 C CNN
F 2 "" H 1600 5200 50  0001 C CNN
F 3 "" H 1600 5200 50  0001 C CNN
	1    1600 5200
	0    -1   -1   0   
$EndComp
Text Label 5350 1200 0    50   ~ 0
Vref_DAC
Wire Wire Line
	1350 5200 1350 5350
Wire Wire Line
	1500 5600 1600 5600
Wire Wire Line
	1450 5200 1600 5200
Wire Wire Line
	1250 5200 700  5200
Wire Wire Line
	1350 5850 1350 6000
Wire Wire Line
	1350 6000 1200 6000
Text Label 800  5200 0    50   ~ 0
Vref_DAC
Text HLabel 7850 1350 2    50   Input ~ 0
led_v_reg
Wire Wire Line
	7850 1350 7600 1350
Connection ~ 7600 1350
Wire Wire Line
	7600 1350 7600 1400
Wire Wire Line
	10000 1900 10800 1900
Connection ~ 10800 1900
Wire Wire Line
	10800 1900 10800 1950
Text HLabel 10650 2300 0    50   Input ~ 0
led_alarm
Wire Wire Line
	10650 2300 10800 2300
Connection ~ 10800 2300
Wire Wire Line
	10800 2300 10800 2350
Text HLabel 5350 4400 0    50   Input ~ 0
led_i_reg
Wire Wire Line
	5350 4400 5600 4400
Connection ~ 5600 4400
Wire Wire Line
	5600 4400 5600 4300
$EndSCHEMATC
