# PIC18F2525 with with character 20x4 LCD display

----
## Linear Lab Power Suuply project on PIC18F2525
> IDE MPLAB X IDE 5.05
> Compiler XC8 v2.00

> Use of legacy Microchip's peripheral libraries "plib"  with remarks:

- as for LCD -> changed ports assignments, means the libraries have to be re-located as follows:
  - header file "xlcd.h" moved and included as a local project's  header files, modified respectively
  - source files moved and included as a local project's files , so they are being recompiled

- plib concept used also for spi communications 
  - My git repo for plib archive (while I was still able to find them on Microchip's website):
[plib](https://github.com/neykovsimeon/pic18_plib_legacy.git) 

 - Very helpful "Getting started" tutorial for MPLAB X IDE and XC8:
 [Refrence - YouTube channel StudentCompanion](https://www.youtube.com/watch?v=mUofSucHx_E&list=PL3lfkED2i6JcJH-OETxsI43e8M-7eLeL-)

> use of Universal Programmer MiniPro TL866A. Fuses config comes directly with hex file as per #pragma config statements in respective header file



----
## Scope of this Project
1. Create a bunch of re-usable C functions to utilize 20x4 character display and menu interface
 - [Reference - YouTube channel projectsHigaski, LCD menu tutorial for microcontrollers](https://www.youtube.com/watch?v=PFzNBtnfJ6Y&list=PLfGDzGG5F5eYNBkXs0tTdXqLB3KE5CFgx)
 
2. Use of Microchip's 12bit spi DAC MCP4921 as a set output voltage command interface for the unit

3. Use of Microchip's 12bit spi ADC MCP3208 as for output (m)Voltmener and  (m)Ampermeter)

4. Dedicated and re-usable menu structure, easy to handle:
 - menu item selector
 - events handlers ("up", "down", "enter") based on pushbuttons or / and rotary encoder with switch
 - specified function might be called by any of the events handlers (but it is considered event "enter" is the logical way of use)

5. As for fun-trial -> control LCD display's contrast and lightenning via digital potentiometer MCP42010 and PWM on a timer 555
 - [Reference - YouTube EEVblog #392](https://www.youtube.com/watch?v=OXsu29K_Ap4&t=943s)

6. Tracking pre-regulator based on LM2576T-ADJ. Note MCU has no function on this part.
 - [Reference - YouTube EEVblog #260](https://www.youtube.com/watch?v=iTxKCQYMHbY)

7. Output voltage range: 0-15V, (supposed to be 6* Vset, Vset is DAC command voltage at 2.5V Reference voltage with TL431)

8. Output current limit/protection functionality, low side current sense concept used, max current possible (from firmware perspective, in terms of the DAC range) 2.5A.
 - Actual max current would depends of the output power transistors used, heat-sink applied, and the capability of the input voltage source.
   - In my trials I used an laptop power adapter, 20V, 3A.  
   
