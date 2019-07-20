# PIC18F2525 with with character 20x4 LCD display

----
## Linear Lab Power Suuply project on PIC18F2525
> IDE MPLAB X IDE 5.05
> Compilator XC8 v2.00

> use of legasy Microchip's peripheral libraries "plib"  with remarks:
- as for LCD -> changed ports assignments, means the libraries had to be re-located as follows:
  - header file "xlcd.h" moved and included as a local project's  header files, modified
  - source files moved and included as a local project's files , so they are being recompiled
- plib concept used also for spi communications  

> use Universal Programmer MiniPro TL866A. Fuses config comes directly with hex file as per #pragma config statements



----
## Scope of this Project
1. Create a bunch of re-usable C functions to utilize 20x4 character display and menu interface
2. Use of Microchip's 12bit spi DAC MCP4921 as a set output voltage command interface for the unit
3. Use of Microchip's 12bit spi ADC MCP3208 as for output (m)Voltmener and  (m)Ampermeter)

4. Dedicated and re-usable menu structure, easy to handle:
 - menu item selector
 - events handlers ("up", "down", "enter") based on pushbuttons or / and rotary encoder with switch
 - specified function might be called by any of the events handlers (but it is considered event "enter" is the logical way of use)

5. As a fun-trial -> control LCD display's contrast and lightenning via digital potentiometer MCP42010 and PWM on a timer 555

6. Tracking pre-regulator based on LM2576T-ADJ. Note MCU has no function on this part.

7. Output voltage range: 0-15V, (supposed to be 6* Vset, Vset is DAC command voltage at 2.5V Reference voltage with TL431)

8. Output current limit/protection functionality, low side current sense concept used
