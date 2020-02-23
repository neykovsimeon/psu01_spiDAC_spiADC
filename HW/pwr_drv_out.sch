EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 7 8
Title "PSU1.0_Power_Driver_Out"
Date "2020-02-15"
Rev "Rev001.01"
Comp "HomeProjects"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L psu01_dedicated:MCP23S08-E_P U701
U 1 1 5E24B105
P 1750 1600
F 0 "U701" H 2150 1865 50  0000 C CNN
F 1 "MCP23S08-E_P" H 2150 1774 50  0000 C CNN
F 2 "Package_DIP:DIP-18_W7.62mm_Socket_LongPads" H 2100 650 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/MCP23008-MCP23S08-Data-Sheet-20001919F.pdf" H 2000 1350 50  0001 C CNN
	1    1750 1600
	1    0    0    -1  
$EndComp
$Comp
L psu01_dedicated:UDN2595A U702
U 1 1 5E24BDC0
P 3650 1600
F 0 "U702" H 4000 1865 50  0000 C CNN
F 1 "UDN2595A" H 4000 1774 50  0000 C CNN
F 2 "Package_DIP:DIP-18_W7.62mm_Socket_LongPads" H 4000 600 50  0001 C CNN
F 3 "https://pdf1.alldatasheet.com/datasheet-pdf/view/55052/ALLEGRO/UDN2595A.html" H 3650 1600 50  0001 C CNN
	1    3650 1600
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR0703
U 1 1 5E4004E9
P 2750 1050
F 0 "#PWR0703" H 2750 900 50  0001 C CNN
F 1 "VDD" H 2767 1223 50  0000 C CNN
F 2 "" H 2750 1050 50  0001 C CNN
F 3 "" H 2750 1050 50  0001 C CNN
	1    2750 1050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0710
U 1 1 5E400ADC
P 1650 2750
F 0 "#PWR0710" H 1650 2500 50  0001 C CNN
F 1 "GND" H 1655 2577 50  0000 C CNN
F 2 "" H 1650 2750 50  0001 C CNN
F 3 "" H 1650 2750 50  0001 C CNN
	1    1650 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C701
U 1 1 5E4019AC
P 2150 1150
F 0 "C701" V 1898 1150 50  0000 C CNN
F 1 "100n" V 1989 1150 50  0000 C CNN
F 2 "Capacitor_THT:C_Axial_L5.1mm_D3.1mm_P7.50mm_Horizontal" H 2188 1000 50  0001 C CNN
F 3 "~" H 2150 1150 50  0001 C CNN
	1    2150 1150
	0    1    1    0   
$EndComp
$Comp
L Device:C C702
U 1 1 5E402551
P 4000 2800
F 0 "C702" V 3850 2800 50  0000 C CNN
F 1 "100n" V 4150 2800 50  0000 C CNN
F 2 "Capacitor_THT:C_Axial_L5.1mm_D3.1mm_P7.50mm_Horizontal" H 4038 2650 50  0001 C CNN
F 3 "~" H 4000 2800 50  0001 C CNN
	1    4000 2800
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0712
U 1 1 5E402ECD
P 4450 2900
F 0 "#PWR0712" H 4450 2650 50  0001 C CNN
F 1 "GND" H 4455 2727 50  0000 C CNN
F 2 "" H 4450 2900 50  0001 C CNN
F 3 "" H 4450 2900 50  0001 C CNN
	1    4450 2900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0704
U 1 1 5E4036E1
P 1650 1150
F 0 "#PWR0704" H 1650 900 50  0001 C CNN
F 1 "GND" V 1655 1022 50  0000 R CNN
F 2 "" H 1650 1150 50  0001 C CNN
F 3 "" H 1650 1150 50  0001 C CNN
	1    1650 1150
	0    1    1    0   
$EndComp
$Comp
L power:VDD #PWR0711
U 1 1 5E403F33
P 3450 2800
F 0 "#PWR0711" H 3450 2650 50  0001 C CNN
F 1 "VDD" V 3468 2927 50  0000 L CNN
F 2 "" H 3450 2800 50  0001 C CNN
F 3 "" H 3450 2800 50  0001 C CNN
	1    3450 2800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2550 1600 2750 1600
Wire Wire Line
	1750 2400 1650 2400
Wire Wire Line
	1650 2400 1650 2750
Wire Wire Line
	3450 2800 3550 2800
Wire Wire Line
	3650 2400 3550 2400
Wire Wire Line
	3550 2400 3550 2800
Connection ~ 3550 2800
Wire Wire Line
	3550 2800 3850 2800
Wire Wire Line
	4350 2400 4450 2400
Wire Wire Line
	4450 2400 4450 2800
Wire Wire Line
	4150 2800 4450 2800
Connection ~ 4450 2800
Wire Wire Line
	4450 2800 4450 2900
Wire Wire Line
	2550 2400 3100 2400
Wire Wire Line
	2550 2300 3100 2300
Wire Wire Line
	2550 2200 3100 2200
Text Label 2650 2400 0    50   ~ 0
Rel_ONOFFF
Text Label 2650 2300 0    50   ~ 0
Rel_ONOFFS
Text Label 2650 2200 0    50   ~ 0
Rel_2Wire4Wire
Wire Wire Line
	2950 1800 3650 1800
Wire Wire Line
	2950 1700 3650 1700
Wire Wire Line
	2950 1600 3650 1600
Text Label 3000 1800 0    50   ~ 0
Rel_2Wire4Wire
Text Label 3000 1700 0    50   ~ 0
Rel_ONOFFS
Text Label 3000 1600 0    50   ~ 0
Rel_ONOFFF
$Comp
L Relay:Fujitsu_FTR-F1C K701
U 1 1 5E4181E9
P 5050 5000
F 0 "K701" H 5050 5517 50  0000 C CNN
F 1 "Omron_G2RL-2-5VDC" H 5050 5426 50  0000 C CNN
F 2 "Relay_THT:Relay_DPDT_Fujitsu_FTR-F1C" H 5000 4600 50  0001 C CNN
F 3 "https://www.fujitsu.com/downloads/MICRO/fcai/relays/ftr-f1.pdf" H 5050 5000 50  0001 C CNN
	1    5050 5000
	1    0    0    -1  
$EndComp
$Comp
L Relay:G5V-2 K702
U 1 1 5E41938E
P 7300 5200
F 0 "K702" V 6533 5200 50  0000 C CNN
F 1 "Fujutsu_RY5W-K" V 6624 5200 50  0000 C CNN
F 2 "Relay_THT:Relay_DPDT_Omron_G5V-2" H 7950 5150 50  0001 L CNN
F 3 "https://store.comet.bg/download-file.php?id=5529" H 7300 5200 50  0001 C CNN
	1    7300 5200
	0    1    1    0   
$EndComp
$Comp
L Relay:G5V-2 K703
U 1 1 5E41F61A
P 3150 5400
F 0 "K703" V 2383 5400 50  0000 C CNN
F 1 "Fujutsu_RY5W-K" V 2474 5400 50  0000 C CNN
F 2 "Relay_THT:Relay_DPDT_Omron_G5V-2" H 3800 5350 50  0001 L CNN
F 3 "https://store.comet.bg/download-file.php?id=5529" H 3150 5400 50  0001 C CNN
	1    3150 5400
	0    1    1    0   
$EndComp
$Comp
L Device:Jumper_NC_Dual JP701
U 1 1 5E4359E1
P 6700 4800
F 0 "JP701" V 6654 4901 50  0000 L CNN
F 1 "Sel_Force_Sense" V 6745 4901 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 6700 4800 50  0001 C CNN
F 3 "~" H 6700 4800 50  0001 C CNN
	1    6700 4800
	0    -1   1    0   
$EndComp
Wire Wire Line
	4350 1600 5100 1600
Wire Wire Line
	4350 1700 5100 1700
Text Label 4450 1800 0    50   ~ 0
Out_2wire_4wire
Text Label 4450 1700 0    50   ~ 0
Out_OnOff_Sense
Text Label 4450 1600 0    50   ~ 0
Out_OnOff_Force
$Comp
L Transistor_BJT:BC546 Q703
U 1 1 5E44D795
P 6400 1800
F 0 "Q703" H 6591 1846 50  0000 L CNN
F 1 "BC546" H 6591 1755 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 6600 1725 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 6400 1800 50  0001 L CNN
	1    6400 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R706
U 1 1 5E44ECB4
P 5900 1800
F 0 "R706" V 5693 1800 50  0000 C CNN
F 1 "10k" V 5784 1800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 5830 1800 50  0001 C CNN
F 3 "~" H 5900 1800 50  0001 C CNN
	1    5900 1800
	0    1    1    0   
$EndComp
$Comp
L Device:R R704
U 1 1 5E44F2F9
P 6500 1400
F 0 "R704" H 6570 1446 50  0000 L CNN
F 1 "220" H 6570 1355 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 6430 1400 50  0001 C CNN
F 3 "~" H 6500 1400 50  0001 C CNN
	1    6500 1400
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D702
U 1 1 5E450D09
P 5500 1000
F 0 "D702" V 5539 883 50  0000 R CNN
F 1 "4wire" V 5448 883 50  0000 R CNN
F 2 "TerminalBlock_MetzConnect:TerminalBlock_MetzConnect_Type059_RT06302HBWC_1x02_P3.50mm_Horizontal" H 5500 1000 50  0001 C CNN
F 3 "~" H 5500 1000 50  0001 C CNN
	1    5500 1000
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R703
U 1 1 5E4518A2
P 5500 1400
F 0 "R703" H 5570 1446 50  0000 L CNN
F 1 "120" H 5570 1355 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 5430 1400 50  0001 C CNN
F 3 "~" H 5500 1400 50  0001 C CNN
	1    5500 1400
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR0701
U 1 1 5E451EA4
P 6500 750
F 0 "#PWR0701" H 6500 600 50  0001 C CNN
F 1 "VDD" H 6517 923 50  0000 C CNN
F 2 "" H 6500 750 50  0001 C CNN
F 3 "" H 6500 750 50  0001 C CNN
	1    6500 750 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0706
U 1 1 5E454744
P 6500 2100
F 0 "#PWR0706" H 6500 1850 50  0001 C CNN
F 1 "GND" H 6505 1927 50  0000 C CNN
F 2 "" H 6500 2100 50  0001 C CNN
F 3 "" H 6500 2100 50  0001 C CNN
	1    6500 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 2000 6500 2100
Wire Wire Line
	6200 1800 6050 1800
Wire Wire Line
	4350 1800 5500 1800
Wire Wire Line
	6500 1550 6500 1600
Wire Wire Line
	5500 1200 5500 1250
Wire Wire Line
	5500 1550 5500 1800
Connection ~ 5500 1800
Wire Wire Line
	5500 1800 5750 1800
$Comp
L Device:R R705
U 1 1 5E4594FE
P 7450 1400
F 0 "R705" H 7520 1446 50  0000 L CNN
F 1 "220" H 7520 1355 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 7380 1400 50  0001 C CNN
F 3 "~" H 7450 1400 50  0001 C CNN
	1    7450 1400
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D704
U 1 1 5E459DB5
P 7450 1000
F 0 "D704" V 7489 882 50  0000 R CNN
F 1 "Out_OnOff" V 7398 882 50  0000 R CNN
F 2 "TerminalBlock_MetzConnect:TerminalBlock_MetzConnect_Type059_RT06302HBWC_1x02_P3.50mm_Horizontal" H 7450 1000 50  0001 C CNN
F 3 "~" H 7450 1000 50  0001 C CNN
	1    7450 1000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7450 1550 7450 1850
Text Label 7450 1750 0    50   ~ 0
Out_OnOff_Force
Text Label 4750 4350 2    50   ~ 0
Out_OnOff_Force
Wire Wire Line
	4250 4800 4500 4800
$Comp
L power:VDD #PWR0715
U 1 1 5E46361B
P 5600 4250
F 0 "#PWR0715" H 5600 4100 50  0001 C CNN
F 1 "VDD" H 5550 4400 50  0000 L CNN
F 2 "" H 5600 4250 50  0001 C CNN
F 3 "" H 5600 4250 50  0001 C CNN
	1    5600 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 4250 5600 4350
Wire Wire Line
	5600 4800 5350 4800
$Comp
L Diode:1N4148 D706
U 1 1 5E46525A
P 5050 4350
F 0 "D706" H 5050 4134 50  0000 C CNN
F 1 "1N4148" H 5050 4225 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 5050 4175 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 5050 4350 50  0001 C CNN
	1    5050 4350
	-1   0    0    1   
$EndComp
Wire Wire Line
	5200 4350 5600 4350
Connection ~ 5600 4350
Wire Wire Line
	5600 4350 5600 4800
Wire Wire Line
	4900 4350 4500 4350
Wire Wire Line
	4500 4350 4500 4800
Connection ~ 4500 4800
Wire Wire Line
	4500 4800 4750 4800
Wire Wire Line
	7000 4800 6900 4800
$Comp
L power:VDD #PWR0716
U 1 1 5E46AF37
P 7750 4250
F 0 "#PWR0716" H 7750 4100 50  0001 C CNN
F 1 "VDD" V 7768 4377 50  0000 L CNN
F 2 "" H 7750 4250 50  0001 C CNN
F 3 "" H 7750 4250 50  0001 C CNN
	1    7750 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 4250 7750 4300
Wire Wire Line
	7750 4800 7600 4800
$Comp
L Diode:1N4148 D705
U 1 1 5E46CB6C
P 7250 4300
F 0 "D705" H 7250 4084 50  0000 C CNN
F 1 "1N4148" H 7250 4175 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 7250 4125 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 7250 4300 50  0001 C CNN
	1    7250 4300
	-1   0    0    1   
$EndComp
Wire Wire Line
	7400 4300 7750 4300
Connection ~ 7750 4300
Wire Wire Line
	7750 4300 7750 4800
Wire Wire Line
	7100 4300 6900 4300
Wire Wire Line
	6900 4300 6900 4800
Connection ~ 6900 4800
Wire Wire Line
	6900 4800 6800 4800
Wire Wire Line
	6700 4550 5900 4550
Wire Wire Line
	6700 5050 5900 5050
Text Label 5950 4550 0    50   ~ 0
Out_OnOff_Force
Text Label 5950 5050 0    50   ~ 0
Out_OnOff_Sense
Text Notes 6300 4650 0    50   ~ 0
Default
$Comp
L Diode:1N4148 D707
U 1 1 5E475185
P 3150 4500
F 0 "D707" H 3150 4284 50  0000 C CNN
F 1 "1N4148" H 3150 4375 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 3150 4325 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 3150 4500 50  0001 C CNN
	1    3150 4500
	-1   0    0    1   
$EndComp
$Comp
L power:VDD #PWR0717
U 1 1 5E475D24
P 3600 4450
F 0 "#PWR0717" H 3600 4300 50  0001 C CNN
F 1 "VDD" H 3550 4600 50  0000 L CNN
F 2 "" H 3600 4450 50  0001 C CNN
F 3 "" H 3600 4450 50  0001 C CNN
	1    3600 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 4450 3600 4500
Wire Wire Line
	3600 5000 3450 5000
Wire Wire Line
	3300 4500 3600 4500
Connection ~ 3600 4500
Wire Wire Line
	3600 4500 3600 5000
Wire Wire Line
	3000 4500 2700 4500
Wire Wire Line
	2700 4500 2700 5000
Wire Wire Line
	2700 5000 2850 5000
Wire Wire Line
	2700 5000 2000 5000
Connection ~ 2700 5000
Text Label 2050 5000 0    50   ~ 0
Out_2wire_4wire
Text Notes 8800 6450 0    50   ~ 0
Select Common or Separate relDriver for OnOff_Sense relay
$Comp
L Device:R R713
U 1 1 5E47DDC0
P 1400 4800
F 0 "R713" H 1470 4846 50  0000 L CNN
F 1 "100k" H 1470 4755 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 1330 4800 50  0001 C CNN
F 3 "~" H 1400 4800 50  0001 C CNN
	1    1400 4800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R714
U 1 1 5E484816
P 1400 5400
F 0 "R714" H 1470 5446 50  0000 L CNN
F 1 "100k" H 1470 5355 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 1330 5400 50  0001 C CNN
F 3 "~" H 1400 5400 50  0001 C CNN
	1    1400 5400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R715
U 1 1 5E485E8B
P 1400 5800
F 0 "R715" H 1470 5846 50  0000 L CNN
F 1 "20k" H 1470 5755 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 1330 5800 50  0001 C CNN
F 3 "~" H 1400 5800 50  0001 C CNN
	1    1400 5800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R716
U 1 1 5E4862E3
P 1400 6400
F 0 "R716" H 1470 6446 50  0000 L CNN
F 1 "20k" H 1470 6355 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 1330 6400 50  0001 C CNN
F 3 "~" H 1400 6400 50  0001 C CNN
	1    1400 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 5550 1400 5600
Wire Wire Line
	2850 5800 2700 5800
Wire Wire Line
	2700 5800 2700 6000
Wire Wire Line
	2850 5400 2700 5400
Wire Wire Line
	2700 5400 2700 5200
Wire Wire Line
	2700 5200 1400 5200
Connection ~ 1400 5200
Wire Wire Line
	1400 5200 1400 5250
Wire Wire Line
	1400 5950 1400 6000
Wire Wire Line
	2700 6000 1400 6000
Connection ~ 1400 6000
Wire Wire Line
	1400 6000 1400 6250
Wire Wire Line
	1200 3950 1400 3950
Connection ~ 1400 3950
Wire Wire Line
	1400 3950 3850 3950
Wire Wire Line
	3450 5300 3850 5300
Wire Wire Line
	3850 5300 3850 5000
Connection ~ 3850 3950
Wire Wire Line
	3850 3950 4250 3950
Wire Wire Line
	4750 5000 3850 5000
Connection ~ 3850 5000
Wire Wire Line
	3850 5000 3850 3950
Wire Wire Line
	5350 4900 5600 4900
Wire Wire Line
	5600 4900 5600 5200
Wire Wire Line
	5600 5500 3450 5500
Wire Wire Line
	7000 5200 5600 5200
Connection ~ 5600 5200
Wire Wire Line
	5600 5200 5600 5500
Wire Wire Line
	5350 5000 5750 5000
Wire Wire Line
	5750 5000 5750 3950
Wire Wire Line
	5750 3950 6000 3950
Wire Wire Line
	5350 5200 5450 5200
Wire Wire Line
	5450 5200 5450 6450
Wire Wire Line
	5450 6450 6000 6450
Wire Wire Line
	1400 4950 1400 5200
Wire Wire Line
	1400 3950 1400 4650
Wire Wire Line
	1400 6550 1400 6700
Wire Wire Line
	4750 5200 4500 5200
Wire Wire Line
	4500 5200 4500 5700
Wire Wire Line
	4500 6700 2500 6700
Connection ~ 1400 6700
Wire Wire Line
	3450 5700 4500 5700
Connection ~ 4500 5700
Wire Wire Line
	4500 5700 4500 6700
Wire Wire Line
	1400 5600 2000 5600
Connection ~ 1400 5600
Wire Wire Line
	1400 5600 1400 5650
Wire Wire Line
	3450 5900 5750 5900
Wire Wire Line
	5750 5900 5750 5600
Wire Wire Line
	5750 5100 5350 5100
Wire Wire Line
	7000 5600 5750 5600
Connection ~ 5750 5600
Wire Wire Line
	5750 5600 5750 5100
Wire Wire Line
	7600 5300 7900 5300
Wire Wire Line
	7600 5700 7900 5700
Text Notes 2200 6150 0    50   ~ 0
Toggle 2wire (default) and 4wire output configuration.
Text Notes 4350 4100 0    50   ~ 0
Output ON / OFF force lines
Text Notes 6350 5900 0    50   ~ 0
Output ON/OFF sense lines in 4wire configuration
Text Label 5850 3950 0    50   ~ 0
F+
Text Label 5850 6450 0    50   ~ 0
F-
Text Label 7750 5300 0    50   ~ 0
S+
Text Label 7750 5700 0    50   ~ 0
S-
$Comp
L Device:R R717
U 1 1 5E68B976
P 1400 7050
F 0 "R717" H 1470 7096 50  0000 L CNN
F 1 "1ohm/5W" H 1470 7005 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0918_L18.0mm_D9.0mm_P25.40mm_Horizontal" V 1330 7050 50  0001 C CNN
F 3 "~" H 1400 7050 50  0001 C CNN
	1    1400 7050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R718
U 1 1 5E68C367
P 1950 7050
F 0 "R718" H 2020 7096 50  0000 L CNN
F 1 "1ohm/5W" H 2020 7005 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0918_L18.0mm_D9.0mm_P25.40mm_Horizontal" V 1880 7050 50  0001 C CNN
F 3 "~" H 1950 7050 50  0001 C CNN
	1    1950 7050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R719
U 1 1 5E68C856
P 2500 7050
F 0 "R719" H 2570 7096 50  0000 L CNN
F 1 "1ohm/5W" H 2570 7005 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0918_L18.0mm_D9.0mm_P25.40mm_Horizontal" V 2430 7050 50  0001 C CNN
F 3 "~" H 2500 7050 50  0001 C CNN
	1    2500 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 6700 1400 6900
Wire Wire Line
	1950 6900 1950 6700
Connection ~ 1950 6700
Wire Wire Line
	1950 6700 1400 6700
Wire Wire Line
	2500 6900 2500 6700
Connection ~ 2500 6700
Wire Wire Line
	2500 6700 1950 6700
Wire Wire Line
	1400 7200 1400 7350
Wire Wire Line
	1400 7350 1950 7350
Wire Wire Line
	2500 7350 2500 7200
Wire Wire Line
	1950 7200 1950 7350
Connection ~ 1950 7350
Wire Wire Line
	1950 7350 2500 7350
$Comp
L power:GND #PWR0718
U 1 1 5E6A3F22
P 1950 7450
F 0 "#PWR0718" H 1950 7200 50  0001 C CNN
F 1 "GND" H 1955 7277 50  0000 C CNN
F 2 "" H 1950 7450 50  0001 C CNN
F 3 "" H 1950 7450 50  0001 C CNN
	1    1950 7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 7450 1950 7350
Text Label 3100 6700 0    50   ~ 0
i_fb_low_side
Text Label 1650 5600 0    50   ~ 0
u_fb
Wire Wire Line
	1400 6700 1200 6700
$Comp
L Device:LED D701
U 1 1 5E6D44FC
P 6000 800
F 0 "D701" H 5993 1016 50  0000 C CNN
F 1 "4wire" H 5993 925 50  0000 C CNN
F 2 "TerminalBlock_MetzConnect:TerminalBlock_MetzConnect_Type059_RT06302HBWC_1x02_P3.50mm_Horizontal" H 6000 800 50  0001 C CNN
F 3 "~" H 6000 800 50  0001 C CNN
	1    6000 800 
	1    0    0    -1  
$EndComp
Text HLabel 6000 3950 2    50   Output ~ 0
Vout_F+
Text HLabel 6000 6450 2    50   Input ~ 0
Vout_F-
Text HLabel 7900 5300 2    50   Input ~ 0
Sense+
Text HLabel 7900 5700 2    50   Input ~ 0
Sense-
Text HLabel 1200 6700 0    50   Output ~ 0
i_fb_low
Text HLabel 1200 5600 0    50   Output ~ 0
u_fb
Text HLabel 1200 3950 0    50   Output ~ 0
Vo
Wire Wire Line
	1400 5600 1200 5600
Wire Wire Line
	2750 1050 2750 1150
Wire Wire Line
	2300 1150 2750 1150
Connection ~ 2750 1150
Wire Wire Line
	2750 1150 2750 1600
Wire Wire Line
	2000 1150 1650 1150
Text HLabel 1250 1600 0    50   Input ~ 0
relDRV_SCK
Text HLabel 1250 2200 0    50   Input ~ 0
relDRV_~CS
Text HLabel 1250 1700 0    50   Input ~ 0
relDRV_SI
Text HLabel 1250 1800 0    50   Output ~ 0
relDRV_SO
Wire Wire Line
	1750 2000 1650 2000
Wire Wire Line
	1650 2000 1650 2400
Connection ~ 1650 2400
Wire Wire Line
	1750 1900 1650 1900
Wire Wire Line
	1650 1900 1650 2000
Connection ~ 1650 2000
Wire Wire Line
	1250 1600 1750 1600
Wire Wire Line
	1250 1700 1750 1700
Wire Wire Line
	1750 1800 1250 1800
Wire Wire Line
	1750 2200 1250 2200
$Comp
L power:VDD #PWR0705
U 1 1 5E747F56
P 1300 2100
F 0 "#PWR0705" H 1300 1950 50  0001 C CNN
F 1 "VDD" V 1300 2300 50  0000 C CNN
F 2 "" H 1300 2100 50  0001 C CNN
F 3 "" H 1300 2100 50  0001 C CNN
	1    1300 2100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1750 2100 1300 2100
Text HLabel 1200 6000 0    50   Output ~ 0
u_fb_sense
Wire Wire Line
	1400 6000 1200 6000
$Comp
L Transistor_BJT:BC546 Q707
U 1 1 5E756210
P 5400 3000
F 0 "Q707" H 5591 3046 50  0000 L CNN
F 1 "BC546" H 5591 2955 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 5600 2925 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 5400 3000 50  0001 L CNN
	1    5400 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R709
U 1 1 5E757742
P 5000 2500
F 0 "R709" H 5070 2546 50  0000 L CNN
F 1 "3.7k" H 5070 2455 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 4930 2500 50  0001 C CNN
F 3 "~" H 5000 2500 50  0001 C CNN
	1    5000 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R711
U 1 1 5E757F35
P 5000 3450
F 0 "R711" H 5070 3496 50  0000 L CNN
F 1 "1.5k" H 5070 3405 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 4930 3450 50  0001 C CNN
F 3 "~" H 5000 3450 50  0001 C CNN
	1    5000 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R712
U 1 1 5E75E735
P 5500 3450
F 0 "R712" H 5570 3496 50  0000 L CNN
F 1 "91" H 5570 3405 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 5430 3450 50  0001 C CNN
F 3 "~" H 5500 3450 50  0001 C CNN
	1    5500 3450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0713
U 1 1 5E75F91C
P 5000 3650
F 0 "#PWR0713" H 5000 3400 50  0001 C CNN
F 1 "GND" H 5005 3477 50  0000 C CNN
F 2 "" H 5000 3650 50  0001 C CNN
F 3 "" H 5000 3650 50  0001 C CNN
	1    5000 3650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0714
U 1 1 5E75FF5A
P 5500 3650
F 0 "#PWR0714" H 5500 3400 50  0001 C CNN
F 1 "GND" H 5505 3477 50  0000 C CNN
F 2 "" H 5500 3650 50  0001 C CNN
F 3 "" H 5500 3650 50  0001 C CNN
	1    5500 3650
	1    0    0    -1  
$EndComp
$Comp
L power:VDDA #PWR0707
U 1 1 5E7610E1
P 5000 2200
F 0 "#PWR0707" H 5000 2050 50  0001 C CNN
F 1 "VDDA" H 5017 2373 50  0000 C CNN
F 2 "" H 5000 2200 50  0001 C CNN
F 3 "" H 5000 2200 50  0001 C CNN
	1    5000 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 2200 5000 2350
Wire Wire Line
	5200 3000 5000 3000
Wire Wire Line
	5000 3000 5000 3300
Wire Wire Line
	5000 3600 5000 3650
Wire Wire Line
	5500 3600 5500 3650
Wire Wire Line
	5500 3200 5500 3300
$Comp
L Transistor_BJT:BC557 Q705
U 1 1 5E785491
P 5600 2500
F 0 "Q705" H 5450 2300 50  0000 L CNN
F 1 "BC557" H 5300 2400 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 5800 2425 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC557.pdf" H 5600 2500 50  0001 L CNN
	1    5600 2500
	-1   0    0    1   
$EndComp
$Comp
L Transistor_BJT:BC557 Q706
U 1 1 5E7879CD
P 6150 2500
F 0 "Q706" H 6341 2454 50  0000 L CNN
F 1 "BC557" H 6341 2545 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 6350 2425 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC557.pdf" H 6150 2500 50  0001 L CNN
	1    6150 2500
	1    0    0    1   
$EndComp
Wire Wire Line
	5800 2500 5850 2500
Wire Wire Line
	5500 2700 5500 2750
Wire Wire Line
	5850 2500 5850 2750
Wire Wire Line
	5850 2750 5500 2750
Connection ~ 5850 2500
Wire Wire Line
	5850 2500 5950 2500
Connection ~ 5500 2750
Wire Wire Line
	5500 2750 5500 2800
$Comp
L power:Vdrive #PWR0708
U 1 1 5E7A5543
P 5500 2200
F 0 "#PWR0708" H 5300 2050 50  0001 C CNN
F 1 "Vdrive" H 5517 2373 50  0000 C CNN
F 2 "" H 5500 2200 50  0001 C CNN
F 3 "" H 5500 2200 50  0001 C CNN
	1    5500 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 2200 5500 2250
Wire Wire Line
	6250 2300 6250 2250
Wire Wire Line
	6250 2250 5500 2250
Connection ~ 5500 2250
Wire Wire Line
	5500 2250 5500 2300
$Comp
L Transistor_BJT:BD139 Q708
U 1 1 5E7C0704
P 6500 3000
F 0 "Q708" H 6692 3046 50  0000 L CNN
F 1 "BD139" H 6692 2955 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-126-3_Vertical" H 6700 2925 50  0001 L CIN
F 3 "http://www.st.com/internet/com/TECHNICAL_RESOURCES/TECHNICAL_LITERATURE/DATASHEET/CD00001225.pdf" H 6500 3000 50  0001 L CNN
	1    6500 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 2700 6250 3000
Wire Wire Line
	6250 3000 6300 3000
Wire Wire Line
	6600 3200 6600 3350
Wire Wire Line
	6600 3350 8550 3350
Wire Wire Line
	6250 3000 6250 3550
Wire Wire Line
	6250 3550 7100 3550
Connection ~ 6250 3000
Wire Wire Line
	6600 2800 6600 2650
Text HLabel 10800 3550 2    50   Output ~ 0
drv_ctrl
$Comp
L Device:R R701
U 1 1 5E7F6F3B
P 10350 900
F 0 "R701" V 10143 900 50  0000 C CNN
F 1 "0.56/5W" V 10234 900 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0918_L18.0mm_D9.0mm_P25.40mm_Horizontal" V 10280 900 50  0001 C CNN
F 3 "~" H 10350 900 50  0001 C CNN
	1    10350 900 
	0    1    1    0   
$EndComp
$Comp
L Device:R R702
U 1 1 5E7F7B0E
P 10350 1300
F 0 "R702" V 10143 1300 50  0000 C CNN
F 1 "0.56/5W" V 10234 1300 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0918_L18.0mm_D9.0mm_P25.40mm_Horizontal" V 10280 1300 50  0001 C CNN
F 3 "~" H 10350 1300 50  0001 C CNN
	1    10350 1300
	0    1    1    0   
$EndComp
$Comp
L Device:R R707
U 1 1 5E7F7CA8
P 10350 1800
F 0 "R707" V 10143 1800 50  0000 C CNN
F 1 "0.56/5W" V 10234 1800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0918_L18.0mm_D9.0mm_P25.40mm_Horizontal" V 10280 1800 50  0001 C CNN
F 3 "~" H 10350 1800 50  0001 C CNN
	1    10350 1800
	0    1    1    0   
$EndComp
$Comp
L Device:R R708
U 1 1 5E7F7E96
P 10350 2250
F 0 "R708" V 10143 2250 50  0000 C CNN
F 1 "270" V 10234 2250 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 10280 2250 50  0001 C CNN
F 3 "~" H 10350 2250 50  0001 C CNN
	1    10350 2250
	0    1    1    0   
$EndComp
Wire Wire Line
	10200 2250 9400 2250
Wire Wire Line
	8550 2250 8550 2100
Wire Wire Line
	10200 1800 9700 1800
Wire Wire Line
	10200 1300 9850 1300
Wire Wire Line
	10200 900  10000 900 
Wire Wire Line
	9400 1200 9400 2250
Connection ~ 9400 2250
Wire Wire Line
	9400 2250 8950 2250
Wire Wire Line
	8950 1600 8950 2250
Connection ~ 8950 2250
Wire Wire Line
	8950 2250 8550 2250
Wire Wire Line
	10500 900  10800 900 
Wire Wire Line
	10800 900  10800 1300
Wire Wire Line
	10500 1300 10800 1300
Connection ~ 10800 1300
Wire Wire Line
	10800 1300 10800 1800
Wire Wire Line
	10500 1800 10800 1800
Connection ~ 10800 1800
Wire Wire Line
	10800 1800 10800 2250
Wire Wire Line
	10500 2250 10800 2250
Connection ~ 10800 2250
Wire Wire Line
	10800 2250 10800 2450
Wire Wire Line
	9200 900  8200 900 
Wire Wire Line
	8200 900  8200 1300
Wire Wire Line
	8200 1800 8350 1800
Wire Wire Line
	8750 1300 8200 1300
Connection ~ 8200 1300
Wire Wire Line
	8200 1300 8200 1800
$Comp
L power:Vdrive #PWR0702
U 1 1 5E8567FA
P 8100 900
F 0 "#PWR0702" H 7900 750 50  0001 C CNN
F 1 "Vdrive" V 8118 1028 50  0000 L CNN
F 2 "" H 8100 900 50  0001 C CNN
F 3 "" H 8100 900 50  0001 C CNN
	1    8100 900 
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8100 900  8200 900 
Connection ~ 8200 900 
Wire Wire Line
	8550 2250 8550 3350
Connection ~ 8550 2250
Connection ~ 8550 3350
$Comp
L Device:R R710
U 1 1 5E87B443
P 7100 3000
F 0 "R710" H 7030 2954 50  0000 R CNN
F 1 "270" H 7030 3045 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 7030 3000 50  0001 C CNN
F 3 "~" H 7100 3000 50  0001 C CNN
	1    7100 3000
	-1   0    0    1   
$EndComp
Wire Wire Line
	7100 2850 7100 2650
Connection ~ 7100 2650
Wire Wire Line
	7100 2650 7450 2650
Wire Wire Line
	7100 3150 7100 3550
Connection ~ 7100 3550
Wire Wire Line
	7100 3550 10800 3550
Text Notes 8150 3200 2    50   ~ 0
Optional assembly variant
$Comp
L power:Vdrive #PWR0709
U 1 1 5E8B5EA2
P 7100 2550
F 0 "#PWR0709" H 6900 2400 50  0001 C CNN
F 1 "Vdrive" H 7117 2723 50  0000 C CNN
F 2 "" H 7100 2550 50  0001 C CNN
F 3 "" H 7100 2550 50  0001 C CNN
	1    7100 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 2650 7100 2650
Wire Wire Line
	7100 2550 7100 2650
$Comp
L Connector:Screw_Terminal_01x03 J701
U 1 1 5E8CDA61
P 10300 2650
F 0 "J701" H 10300 2850 50  0000 L CNN
F 1 "Screw_Terminal_01x03" H 9800 2450 50  0000 L CNN
F 2 "TerminalBlock_MetzConnect:TerminalBlock_MetzConnect_Type011_RT05503HBWC_1x03_P5.00mm_Horizontal" H 10300 2650 50  0001 C CNN
F 3 "~" H 10300 2650 50  0001 C CNN
	1    10300 2650
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x03 J702
U 1 1 5E8CF5E2
P 10300 3250
F 0 "J702" H 10300 3450 50  0000 L CNN
F 1 "Screw_Terminal_01x03" H 9800 3050 50  0000 L CNN
F 2 "TerminalBlock_MetzConnect:TerminalBlock_MetzConnect_Type011_RT05503HBWC_1x03_P5.00mm_Horizontal" H 10300 3250 50  0001 C CNN
F 3 "~" H 10300 3250 50  0001 C CNN
	1    10300 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 2550 10000 2550
Wire Wire Line
	10000 2550 10000 900 
Connection ~ 10000 900 
Wire Wire Line
	10000 900  9600 900 
Wire Wire Line
	10100 2650 9850 2650
Wire Wire Line
	9850 2650 9850 1300
Connection ~ 9850 1300
Wire Wire Line
	9850 1300 9150 1300
Wire Wire Line
	10100 2750 9700 2750
Wire Wire Line
	9700 2750 9700 1800
Connection ~ 9700 1800
Wire Wire Line
	9700 1800 8750 1800
Wire Wire Line
	10100 3150 8200 3150
Wire Wire Line
	8200 3150 8200 1800
Connection ~ 8200 1800
Wire Wire Line
	8550 3350 10100 3350
Text Label 4050 3950 2    50   ~ 0
Vo
Text Label 10800 2400 2    50   ~ 0
Vo
$Comp
L Transistor_BJT:2SD1047 Q704
U 1 1 5E486288
P 8550 1900
F 0 "Q704" V 8878 1900 50  0000 C CNN
F 1 "2SD1047" V 8787 1900 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-3PB-3_Vertical" H 8800 1825 50  0001 L CIN
F 3 "http://www.st.com/resource/en/datasheet/2sd1047.pdf" H 8550 1900 50  0001 L CNN
	1    8550 1900
	0    -1   -1   0   
$EndComp
$Comp
L Transistor_BJT:2SD1047 Q702
U 1 1 5E48A1CE
P 8950 1400
F 0 "Q702" V 9278 1400 50  0000 C CNN
F 1 "2SD1047" V 9187 1400 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-3PB-3_Vertical" H 9200 1325 50  0001 L CIN
F 3 "http://www.st.com/resource/en/datasheet/2sd1047.pdf" H 8950 1400 50  0001 L CNN
	1    8950 1400
	0    -1   -1   0   
$EndComp
$Comp
L Transistor_BJT:2SD1047 Q701
U 1 1 5E48AC08
P 9400 1000
F 0 "Q701" V 9728 1000 50  0000 C CNN
F 1 "2SD1047" V 9637 1000 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-3PB-3_Vertical" H 9650 925 50  0001 L CIN
F 3 "http://www.st.com/resource/en/datasheet/2sd1047.pdf" H 9400 1000 50  0001 L CNN
	1    9400 1000
	0    -1   -1   0   
$EndComp
Text Notes 7950 850  0    50   ~ 0
2SC5200 could be replacement
Wire Wire Line
	5000 2650 5000 3000
Connection ~ 5000 3000
Text HLabel 5350 1200 0    50   Input ~ 0
leds_4wire
Text HLabel 6350 1200 0    50   Input ~ 0
led_2wire
Text HLabel 7300 1200 0    50   Input ~ 0
led_out_onoff
Wire Wire Line
	5350 1200 5500 1200
$Comp
L Device:LED D703
U 1 1 5E44FDA1
P 6500 1000
F 0 "D703" V 6539 883 50  0000 R CNN
F 1 "2wire" V 6448 883 50  0000 R CNN
F 2 "TerminalBlock_MetzConnect:TerminalBlock_MetzConnect_Type059_RT06302HBWC_1x02_P3.50mm_Horizontal" H 6500 1000 50  0001 C CNN
F 3 "~" H 6500 1000 50  0001 C CNN
	1    6500 1000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5500 1150 5500 1200
Connection ~ 5500 1200
Wire Wire Line
	5500 850  5500 800 
Wire Wire Line
	5500 800  5850 800 
Wire Wire Line
	6150 800  6500 800 
Wire Wire Line
	7450 800  7450 850 
Wire Wire Line
	7450 1150 7450 1200
Wire Wire Line
	6500 1150 6500 1200
Wire Wire Line
	6350 1200 6500 1200
Connection ~ 6500 1200
Wire Wire Line
	6500 1200 6500 1250
Wire Wire Line
	7300 1200 7450 1200
Connection ~ 7450 1200
Wire Wire Line
	7450 1200 7450 1250
Wire Wire Line
	6500 750  6500 800 
Connection ~ 6500 800 
Wire Wire Line
	6500 800  7450 800 
Wire Wire Line
	6500 850  6500 800 
$EndSCHEMATC
