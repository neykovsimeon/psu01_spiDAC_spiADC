#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/psu01_spiADC.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/psu01_spiADC.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=spi_clos.c spi_dtrd.c spi_gets.c spi_open.c spi_puts.c spi_read.c spi_writ.c openxlcd.c putrxlcd.c putsxlcd.c readaddr.c readdata.c setcgram.c setddram.c wcmdxlcd.c writdata.c busyxlcd.c LCD_user_functions.c display_functions.c lcd_menu.c psu_Rev01_menu.c psu_Rev01_spi.c pushButtons.c ADC_user_functions.c spiADC.c relDRiver.c comPort.c ubaud.c ubusy.c uclose.c udefs.c udrdy.c ugets.c uopen.c uputrs.c uputs.c uread.c uwrite.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/spi_clos.p1 ${OBJECTDIR}/spi_dtrd.p1 ${OBJECTDIR}/spi_gets.p1 ${OBJECTDIR}/spi_open.p1 ${OBJECTDIR}/spi_puts.p1 ${OBJECTDIR}/spi_read.p1 ${OBJECTDIR}/spi_writ.p1 ${OBJECTDIR}/openxlcd.p1 ${OBJECTDIR}/putrxlcd.p1 ${OBJECTDIR}/putsxlcd.p1 ${OBJECTDIR}/readaddr.p1 ${OBJECTDIR}/readdata.p1 ${OBJECTDIR}/setcgram.p1 ${OBJECTDIR}/setddram.p1 ${OBJECTDIR}/wcmdxlcd.p1 ${OBJECTDIR}/writdata.p1 ${OBJECTDIR}/busyxlcd.p1 ${OBJECTDIR}/LCD_user_functions.p1 ${OBJECTDIR}/display_functions.p1 ${OBJECTDIR}/lcd_menu.p1 ${OBJECTDIR}/psu_Rev01_menu.p1 ${OBJECTDIR}/psu_Rev01_spi.p1 ${OBJECTDIR}/pushButtons.p1 ${OBJECTDIR}/ADC_user_functions.p1 ${OBJECTDIR}/spiADC.p1 ${OBJECTDIR}/relDRiver.p1 ${OBJECTDIR}/comPort.p1 ${OBJECTDIR}/ubaud.p1 ${OBJECTDIR}/ubusy.p1 ${OBJECTDIR}/uclose.p1 ${OBJECTDIR}/udefs.p1 ${OBJECTDIR}/udrdy.p1 ${OBJECTDIR}/ugets.p1 ${OBJECTDIR}/uopen.p1 ${OBJECTDIR}/uputrs.p1 ${OBJECTDIR}/uputs.p1 ${OBJECTDIR}/uread.p1 ${OBJECTDIR}/uwrite.p1
POSSIBLE_DEPFILES=${OBJECTDIR}/spi_clos.p1.d ${OBJECTDIR}/spi_dtrd.p1.d ${OBJECTDIR}/spi_gets.p1.d ${OBJECTDIR}/spi_open.p1.d ${OBJECTDIR}/spi_puts.p1.d ${OBJECTDIR}/spi_read.p1.d ${OBJECTDIR}/spi_writ.p1.d ${OBJECTDIR}/openxlcd.p1.d ${OBJECTDIR}/putrxlcd.p1.d ${OBJECTDIR}/putsxlcd.p1.d ${OBJECTDIR}/readaddr.p1.d ${OBJECTDIR}/readdata.p1.d ${OBJECTDIR}/setcgram.p1.d ${OBJECTDIR}/setddram.p1.d ${OBJECTDIR}/wcmdxlcd.p1.d ${OBJECTDIR}/writdata.p1.d ${OBJECTDIR}/busyxlcd.p1.d ${OBJECTDIR}/LCD_user_functions.p1.d ${OBJECTDIR}/display_functions.p1.d ${OBJECTDIR}/lcd_menu.p1.d ${OBJECTDIR}/psu_Rev01_menu.p1.d ${OBJECTDIR}/psu_Rev01_spi.p1.d ${OBJECTDIR}/pushButtons.p1.d ${OBJECTDIR}/ADC_user_functions.p1.d ${OBJECTDIR}/spiADC.p1.d ${OBJECTDIR}/relDRiver.p1.d ${OBJECTDIR}/comPort.p1.d ${OBJECTDIR}/ubaud.p1.d ${OBJECTDIR}/ubusy.p1.d ${OBJECTDIR}/uclose.p1.d ${OBJECTDIR}/udefs.p1.d ${OBJECTDIR}/udrdy.p1.d ${OBJECTDIR}/ugets.p1.d ${OBJECTDIR}/uopen.p1.d ${OBJECTDIR}/uputrs.p1.d ${OBJECTDIR}/uputs.p1.d ${OBJECTDIR}/uread.p1.d ${OBJECTDIR}/uwrite.p1.d

# Object Files
OBJECTFILES=${OBJECTDIR}/spi_clos.p1 ${OBJECTDIR}/spi_dtrd.p1 ${OBJECTDIR}/spi_gets.p1 ${OBJECTDIR}/spi_open.p1 ${OBJECTDIR}/spi_puts.p1 ${OBJECTDIR}/spi_read.p1 ${OBJECTDIR}/spi_writ.p1 ${OBJECTDIR}/openxlcd.p1 ${OBJECTDIR}/putrxlcd.p1 ${OBJECTDIR}/putsxlcd.p1 ${OBJECTDIR}/readaddr.p1 ${OBJECTDIR}/readdata.p1 ${OBJECTDIR}/setcgram.p1 ${OBJECTDIR}/setddram.p1 ${OBJECTDIR}/wcmdxlcd.p1 ${OBJECTDIR}/writdata.p1 ${OBJECTDIR}/busyxlcd.p1 ${OBJECTDIR}/LCD_user_functions.p1 ${OBJECTDIR}/display_functions.p1 ${OBJECTDIR}/lcd_menu.p1 ${OBJECTDIR}/psu_Rev01_menu.p1 ${OBJECTDIR}/psu_Rev01_spi.p1 ${OBJECTDIR}/pushButtons.p1 ${OBJECTDIR}/ADC_user_functions.p1 ${OBJECTDIR}/spiADC.p1 ${OBJECTDIR}/relDRiver.p1 ${OBJECTDIR}/comPort.p1 ${OBJECTDIR}/ubaud.p1 ${OBJECTDIR}/ubusy.p1 ${OBJECTDIR}/uclose.p1 ${OBJECTDIR}/udefs.p1 ${OBJECTDIR}/udrdy.p1 ${OBJECTDIR}/ugets.p1 ${OBJECTDIR}/uopen.p1 ${OBJECTDIR}/uputrs.p1 ${OBJECTDIR}/uputs.p1 ${OBJECTDIR}/uread.p1 ${OBJECTDIR}/uwrite.p1

# Source Files
SOURCEFILES=spi_clos.c spi_dtrd.c spi_gets.c spi_open.c spi_puts.c spi_read.c spi_writ.c openxlcd.c putrxlcd.c putsxlcd.c readaddr.c readdata.c setcgram.c setddram.c wcmdxlcd.c writdata.c busyxlcd.c LCD_user_functions.c display_functions.c lcd_menu.c psu_Rev01_menu.c psu_Rev01_spi.c pushButtons.c ADC_user_functions.c spiADC.c relDRiver.c comPort.c ubaud.c ubusy.c uclose.c udefs.c udrdy.c ugets.c uopen.c uputrs.c uputs.c uread.c uwrite.c


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/psu01_spiADC.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18F2525
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/spi_clos.p1: spi_clos.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/spi_clos.p1.d 
	@${RM} ${OBJECTDIR}/spi_clos.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"C:/Users/monka/Desktop/Projects/pic18/pic18_plib_legacy/include/plib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/spi_clos.p1 spi_clos.c 
	@-${MV} ${OBJECTDIR}/spi_clos.d ${OBJECTDIR}/spi_clos.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/spi_clos.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/spi_dtrd.p1: spi_dtrd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/spi_dtrd.p1.d 
	@${RM} ${OBJECTDIR}/spi_dtrd.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"C:/Users/monka/Desktop/Projects/pic18/pic18_plib_legacy/include/plib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/spi_dtrd.p1 spi_dtrd.c 
	@-${MV} ${OBJECTDIR}/spi_dtrd.d ${OBJECTDIR}/spi_dtrd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/spi_dtrd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/spi_gets.p1: spi_gets.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/spi_gets.p1.d 
	@${RM} ${OBJECTDIR}/spi_gets.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"C:/Users/monka/Desktop/Projects/pic18/pic18_plib_legacy/include/plib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/spi_gets.p1 spi_gets.c 
	@-${MV} ${OBJECTDIR}/spi_gets.d ${OBJECTDIR}/spi_gets.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/spi_gets.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/spi_open.p1: spi_open.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/spi_open.p1.d 
	@${RM} ${OBJECTDIR}/spi_open.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"C:/Users/monka/Desktop/Projects/pic18/pic18_plib_legacy/include/plib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/spi_open.p1 spi_open.c 
	@-${MV} ${OBJECTDIR}/spi_open.d ${OBJECTDIR}/spi_open.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/spi_open.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/spi_puts.p1: spi_puts.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/spi_puts.p1.d 
	@${RM} ${OBJECTDIR}/spi_puts.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"C:/Users/monka/Desktop/Projects/pic18/pic18_plib_legacy/include/plib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/spi_puts.p1 spi_puts.c 
	@-${MV} ${OBJECTDIR}/spi_puts.d ${OBJECTDIR}/spi_puts.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/spi_puts.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/spi_read.p1: spi_read.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/spi_read.p1.d 
	@${RM} ${OBJECTDIR}/spi_read.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"C:/Users/monka/Desktop/Projects/pic18/pic18_plib_legacy/include/plib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/spi_read.p1 spi_read.c 
	@-${MV} ${OBJECTDIR}/spi_read.d ${OBJECTDIR}/spi_read.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/spi_read.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/spi_writ.p1: spi_writ.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/spi_writ.p1.d 
	@${RM} ${OBJECTDIR}/spi_writ.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"C:/Users/monka/Desktop/Projects/pic18/pic18_plib_legacy/include/plib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/spi_writ.p1 spi_writ.c 
	@-${MV} ${OBJECTDIR}/spi_writ.d ${OBJECTDIR}/spi_writ.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/spi_writ.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/openxlcd.p1: openxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/openxlcd.p1.d 
	@${RM} ${OBJECTDIR}/openxlcd.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"C:/Users/monka/Desktop/Projects/pic18/pic18_plib_legacy/include/plib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/openxlcd.p1 openxlcd.c 
	@-${MV} ${OBJECTDIR}/openxlcd.d ${OBJECTDIR}/openxlcd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/openxlcd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/putrxlcd.p1: putrxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/putrxlcd.p1.d 
	@${RM} ${OBJECTDIR}/putrxlcd.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"C:/Users/monka/Desktop/Projects/pic18/pic18_plib_legacy/include/plib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/putrxlcd.p1 putrxlcd.c 
	@-${MV} ${OBJECTDIR}/putrxlcd.d ${OBJECTDIR}/putrxlcd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/putrxlcd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/putsxlcd.p1: putsxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/putsxlcd.p1.d 
	@${RM} ${OBJECTDIR}/putsxlcd.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"C:/Users/monka/Desktop/Projects/pic18/pic18_plib_legacy/include/plib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/putsxlcd.p1 putsxlcd.c 
	@-${MV} ${OBJECTDIR}/putsxlcd.d ${OBJECTDIR}/putsxlcd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/putsxlcd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/readaddr.p1: readaddr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/readaddr.p1.d 
	@${RM} ${OBJECTDIR}/readaddr.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"C:/Users/monka/Desktop/Projects/pic18/pic18_plib_legacy/include/plib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/readaddr.p1 readaddr.c 
	@-${MV} ${OBJECTDIR}/readaddr.d ${OBJECTDIR}/readaddr.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/readaddr.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/readdata.p1: readdata.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/readdata.p1.d 
	@${RM} ${OBJECTDIR}/readdata.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"C:/Users/monka/Desktop/Projects/pic18/pic18_plib_legacy/include/plib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/readdata.p1 readdata.c 
	@-${MV} ${OBJECTDIR}/readdata.d ${OBJECTDIR}/readdata.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/readdata.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/setcgram.p1: setcgram.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/setcgram.p1.d 
	@${RM} ${OBJECTDIR}/setcgram.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"C:/Users/monka/Desktop/Projects/pic18/pic18_plib_legacy/include/plib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/setcgram.p1 setcgram.c 
	@-${MV} ${OBJECTDIR}/setcgram.d ${OBJECTDIR}/setcgram.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/setcgram.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/setddram.p1: setddram.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/setddram.p1.d 
	@${RM} ${OBJECTDIR}/setddram.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"C:/Users/monka/Desktop/Projects/pic18/pic18_plib_legacy/include/plib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/setddram.p1 setddram.c 
	@-${MV} ${OBJECTDIR}/setddram.d ${OBJECTDIR}/setddram.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/setddram.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/wcmdxlcd.p1: wcmdxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/wcmdxlcd.p1.d 
	@${RM} ${OBJECTDIR}/wcmdxlcd.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"C:/Users/monka/Desktop/Projects/pic18/pic18_plib_legacy/include/plib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/wcmdxlcd.p1 wcmdxlcd.c 
	@-${MV} ${OBJECTDIR}/wcmdxlcd.d ${OBJECTDIR}/wcmdxlcd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/wcmdxlcd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/writdata.p1: writdata.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/writdata.p1.d 
	@${RM} ${OBJECTDIR}/writdata.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"C:/Users/monka/Desktop/Projects/pic18/pic18_plib_legacy/include/plib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/writdata.p1 writdata.c 
	@-${MV} ${OBJECTDIR}/writdata.d ${OBJECTDIR}/writdata.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/writdata.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/busyxlcd.p1: busyxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/busyxlcd.p1.d 
	@${RM} ${OBJECTDIR}/busyxlcd.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"C:/Users/monka/Desktop/Projects/pic18/pic18_plib_legacy/include/plib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/busyxlcd.p1 busyxlcd.c 
	@-${MV} ${OBJECTDIR}/busyxlcd.d ${OBJECTDIR}/busyxlcd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/busyxlcd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/LCD_user_functions.p1: LCD_user_functions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/LCD_user_functions.p1.d 
	@${RM} ${OBJECTDIR}/LCD_user_functions.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"C:/Users/monka/Desktop/Projects/pic18/pic18_plib_legacy/include/plib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/LCD_user_functions.p1 LCD_user_functions.c 
	@-${MV} ${OBJECTDIR}/LCD_user_functions.d ${OBJECTDIR}/LCD_user_functions.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/LCD_user_functions.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/display_functions.p1: display_functions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/display_functions.p1.d 
	@${RM} ${OBJECTDIR}/display_functions.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"C:/Users/monka/Desktop/Projects/pic18/pic18_plib_legacy/include/plib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/display_functions.p1 display_functions.c 
	@-${MV} ${OBJECTDIR}/display_functions.d ${OBJECTDIR}/display_functions.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/display_functions.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/lcd_menu.p1: lcd_menu.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/lcd_menu.p1.d 
	@${RM} ${OBJECTDIR}/lcd_menu.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"C:/Users/monka/Desktop/Projects/pic18/pic18_plib_legacy/include/plib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/lcd_menu.p1 lcd_menu.c 
	@-${MV} ${OBJECTDIR}/lcd_menu.d ${OBJECTDIR}/lcd_menu.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/lcd_menu.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/psu_Rev01_menu.p1: psu_Rev01_menu.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/psu_Rev01_menu.p1.d 
	@${RM} ${OBJECTDIR}/psu_Rev01_menu.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"C:/Users/monka/Desktop/Projects/pic18/pic18_plib_legacy/include/plib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/psu_Rev01_menu.p1 psu_Rev01_menu.c 
	@-${MV} ${OBJECTDIR}/psu_Rev01_menu.d ${OBJECTDIR}/psu_Rev01_menu.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/psu_Rev01_menu.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/psu_Rev01_spi.p1: psu_Rev01_spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/psu_Rev01_spi.p1.d 
	@${RM} ${OBJECTDIR}/psu_Rev01_spi.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"C:/Users/monka/Desktop/Projects/pic18/pic18_plib_legacy/include/plib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/psu_Rev01_spi.p1 psu_Rev01_spi.c 
	@-${MV} ${OBJECTDIR}/psu_Rev01_spi.d ${OBJECTDIR}/psu_Rev01_spi.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/psu_Rev01_spi.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/pushButtons.p1: pushButtons.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/pushButtons.p1.d 
	@${RM} ${OBJECTDIR}/pushButtons.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"C:/Users/monka/Desktop/Projects/pic18/pic18_plib_legacy/include/plib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/pushButtons.p1 pushButtons.c 
	@-${MV} ${OBJECTDIR}/pushButtons.d ${OBJECTDIR}/pushButtons.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/pushButtons.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ADC_user_functions.p1: ADC_user_functions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ADC_user_functions.p1.d 
	@${RM} ${OBJECTDIR}/ADC_user_functions.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"C:/Users/monka/Desktop/Projects/pic18/pic18_plib_legacy/include/plib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/ADC_user_functions.p1 ADC_user_functions.c 
	@-${MV} ${OBJECTDIR}/ADC_user_functions.d ${OBJECTDIR}/ADC_user_functions.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ADC_user_functions.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/spiADC.p1: spiADC.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/spiADC.p1.d 
	@${RM} ${OBJECTDIR}/spiADC.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"C:/Users/monka/Desktop/Projects/pic18/pic18_plib_legacy/include/plib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/spiADC.p1 spiADC.c 
	@-${MV} ${OBJECTDIR}/spiADC.d ${OBJECTDIR}/spiADC.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/spiADC.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/relDRiver.p1: relDRiver.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/relDRiver.p1.d 
	@${RM} ${OBJECTDIR}/relDRiver.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"C:/Users/monka/Desktop/Projects/pic18/pic18_plib_legacy/include/plib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/relDRiver.p1 relDRiver.c 
	@-${MV} ${OBJECTDIR}/relDRiver.d ${OBJECTDIR}/relDRiver.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/relDRiver.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/comPort.p1: comPort.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/comPort.p1.d 
	@${RM} ${OBJECTDIR}/comPort.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"C:/Users/monka/Desktop/Projects/pic18/pic18_plib_legacy/include/plib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/comPort.p1 comPort.c 
	@-${MV} ${OBJECTDIR}/comPort.d ${OBJECTDIR}/comPort.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/comPort.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ubaud.p1: ubaud.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ubaud.p1.d 
	@${RM} ${OBJECTDIR}/ubaud.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"C:/Users/monka/Desktop/Projects/pic18/pic18_plib_legacy/include/plib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/ubaud.p1 ubaud.c 
	@-${MV} ${OBJECTDIR}/ubaud.d ${OBJECTDIR}/ubaud.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ubaud.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ubusy.p1: ubusy.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ubusy.p1.d 
	@${RM} ${OBJECTDIR}/ubusy.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"C:/Users/monka/Desktop/Projects/pic18/pic18_plib_legacy/include/plib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/ubusy.p1 ubusy.c 
	@-${MV} ${OBJECTDIR}/ubusy.d ${OBJECTDIR}/ubusy.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ubusy.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/uclose.p1: uclose.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/uclose.p1.d 
	@${RM} ${OBJECTDIR}/uclose.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"C:/Users/monka/Desktop/Projects/pic18/pic18_plib_legacy/include/plib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/uclose.p1 uclose.c 
	@-${MV} ${OBJECTDIR}/uclose.d ${OBJECTDIR}/uclose.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/uclose.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/udefs.p1: udefs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/udefs.p1.d 
	@${RM} ${OBJECTDIR}/udefs.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"C:/Users/monka/Desktop/Projects/pic18/pic18_plib_legacy/include/plib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/udefs.p1 udefs.c 
	@-${MV} ${OBJECTDIR}/udefs.d ${OBJECTDIR}/udefs.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/udefs.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/udrdy.p1: udrdy.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/udrdy.p1.d 
	@${RM} ${OBJECTDIR}/udrdy.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"C:/Users/monka/Desktop/Projects/pic18/pic18_plib_legacy/include/plib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/udrdy.p1 udrdy.c 
	@-${MV} ${OBJECTDIR}/udrdy.d ${OBJECTDIR}/udrdy.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/udrdy.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ugets.p1: ugets.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ugets.p1.d 
	@${RM} ${OBJECTDIR}/ugets.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"C:/Users/monka/Desktop/Projects/pic18/pic18_plib_legacy/include/plib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/ugets.p1 ugets.c 
	@-${MV} ${OBJECTDIR}/ugets.d ${OBJECTDIR}/ugets.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ugets.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/uopen.p1: uopen.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/uopen.p1.d 
	@${RM} ${OBJECTDIR}/uopen.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"C:/Users/monka/Desktop/Projects/pic18/pic18_plib_legacy/include/plib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/uopen.p1 uopen.c 
	@-${MV} ${OBJECTDIR}/uopen.d ${OBJECTDIR}/uopen.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/uopen.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/uputrs.p1: uputrs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/uputrs.p1.d 
	@${RM} ${OBJECTDIR}/uputrs.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"C:/Users/monka/Desktop/Projects/pic18/pic18_plib_legacy/include/plib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/uputrs.p1 uputrs.c 
	@-${MV} ${OBJECTDIR}/uputrs.d ${OBJECTDIR}/uputrs.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/uputrs.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/uputs.p1: uputs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/uputs.p1.d 
	@${RM} ${OBJECTDIR}/uputs.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"C:/Users/monka/Desktop/Projects/pic18/pic18_plib_legacy/include/plib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/uputs.p1 uputs.c 
	@-${MV} ${OBJECTDIR}/uputs.d ${OBJECTDIR}/uputs.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/uputs.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/uread.p1: uread.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/uread.p1.d 
	@${RM} ${OBJECTDIR}/uread.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"C:/Users/monka/Desktop/Projects/pic18/pic18_plib_legacy/include/plib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/uread.p1 uread.c 
	@-${MV} ${OBJECTDIR}/uread.d ${OBJECTDIR}/uread.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/uread.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/uwrite.p1: uwrite.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/uwrite.p1.d 
	@${RM} ${OBJECTDIR}/uwrite.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"C:/Users/monka/Desktop/Projects/pic18/pic18_plib_legacy/include/plib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/uwrite.p1 uwrite.c 
	@-${MV} ${OBJECTDIR}/uwrite.d ${OBJECTDIR}/uwrite.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/uwrite.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/spi_clos.p1: spi_clos.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/spi_clos.p1.d 
	@${RM} ${OBJECTDIR}/spi_clos.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"C:/Users/monka/Desktop/Projects/pic18/pic18_plib_legacy/include/plib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/spi_clos.p1 spi_clos.c 
	@-${MV} ${OBJECTDIR}/spi_clos.d ${OBJECTDIR}/spi_clos.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/spi_clos.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/spi_dtrd.p1: spi_dtrd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/spi_dtrd.p1.d 
	@${RM} ${OBJECTDIR}/spi_dtrd.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"C:/Users/monka/Desktop/Projects/pic18/pic18_plib_legacy/include/plib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/spi_dtrd.p1 spi_dtrd.c 
	@-${MV} ${OBJECTDIR}/spi_dtrd.d ${OBJECTDIR}/spi_dtrd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/spi_dtrd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/spi_gets.p1: spi_gets.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/spi_gets.p1.d 
	@${RM} ${OBJECTDIR}/spi_gets.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"C:/Users/monka/Desktop/Projects/pic18/pic18_plib_legacy/include/plib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/spi_gets.p1 spi_gets.c 
	@-${MV} ${OBJECTDIR}/spi_gets.d ${OBJECTDIR}/spi_gets.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/spi_gets.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/spi_open.p1: spi_open.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/spi_open.p1.d 
	@${RM} ${OBJECTDIR}/spi_open.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"C:/Users/monka/Desktop/Projects/pic18/pic18_plib_legacy/include/plib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/spi_open.p1 spi_open.c 
	@-${MV} ${OBJECTDIR}/spi_open.d ${OBJECTDIR}/spi_open.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/spi_open.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/spi_puts.p1: spi_puts.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/spi_puts.p1.d 
	@${RM} ${OBJECTDIR}/spi_puts.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"C:/Users/monka/Desktop/Projects/pic18/pic18_plib_legacy/include/plib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/spi_puts.p1 spi_puts.c 
	@-${MV} ${OBJECTDIR}/spi_puts.d ${OBJECTDIR}/spi_puts.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/spi_puts.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/spi_read.p1: spi_read.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/spi_read.p1.d 
	@${RM} ${OBJECTDIR}/spi_read.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"C:/Users/monka/Desktop/Projects/pic18/pic18_plib_legacy/include/plib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/spi_read.p1 spi_read.c 
	@-${MV} ${OBJECTDIR}/spi_read.d ${OBJECTDIR}/spi_read.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/spi_read.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/spi_writ.p1: spi_writ.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/spi_writ.p1.d 
	@${RM} ${OBJECTDIR}/spi_writ.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"C:/Users/monka/Desktop/Projects/pic18/pic18_plib_legacy/include/plib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/spi_writ.p1 spi_writ.c 
	@-${MV} ${OBJECTDIR}/spi_writ.d ${OBJECTDIR}/spi_writ.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/spi_writ.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/openxlcd.p1: openxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/openxlcd.p1.d 
	@${RM} ${OBJECTDIR}/openxlcd.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"C:/Users/monka/Desktop/Projects/pic18/pic18_plib_legacy/include/plib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/openxlcd.p1 openxlcd.c 
	@-${MV} ${OBJECTDIR}/openxlcd.d ${OBJECTDIR}/openxlcd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/openxlcd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/putrxlcd.p1: putrxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/putrxlcd.p1.d 
	@${RM} ${OBJECTDIR}/putrxlcd.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"C:/Users/monka/Desktop/Projects/pic18/pic18_plib_legacy/include/plib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/putrxlcd.p1 putrxlcd.c 
	@-${MV} ${OBJECTDIR}/putrxlcd.d ${OBJECTDIR}/putrxlcd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/putrxlcd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/putsxlcd.p1: putsxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/putsxlcd.p1.d 
	@${RM} ${OBJECTDIR}/putsxlcd.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"C:/Users/monka/Desktop/Projects/pic18/pic18_plib_legacy/include/plib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/putsxlcd.p1 putsxlcd.c 
	@-${MV} ${OBJECTDIR}/putsxlcd.d ${OBJECTDIR}/putsxlcd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/putsxlcd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/readaddr.p1: readaddr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/readaddr.p1.d 
	@${RM} ${OBJECTDIR}/readaddr.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"C:/Users/monka/Desktop/Projects/pic18/pic18_plib_legacy/include/plib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/readaddr.p1 readaddr.c 
	@-${MV} ${OBJECTDIR}/readaddr.d ${OBJECTDIR}/readaddr.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/readaddr.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/readdata.p1: readdata.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/readdata.p1.d 
	@${RM} ${OBJECTDIR}/readdata.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"C:/Users/monka/Desktop/Projects/pic18/pic18_plib_legacy/include/plib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/readdata.p1 readdata.c 
	@-${MV} ${OBJECTDIR}/readdata.d ${OBJECTDIR}/readdata.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/readdata.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/setcgram.p1: setcgram.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/setcgram.p1.d 
	@${RM} ${OBJECTDIR}/setcgram.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"C:/Users/monka/Desktop/Projects/pic18/pic18_plib_legacy/include/plib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/setcgram.p1 setcgram.c 
	@-${MV} ${OBJECTDIR}/setcgram.d ${OBJECTDIR}/setcgram.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/setcgram.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/setddram.p1: setddram.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/setddram.p1.d 
	@${RM} ${OBJECTDIR}/setddram.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"C:/Users/monka/Desktop/Projects/pic18/pic18_plib_legacy/include/plib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/setddram.p1 setddram.c 
	@-${MV} ${OBJECTDIR}/setddram.d ${OBJECTDIR}/setddram.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/setddram.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/wcmdxlcd.p1: wcmdxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/wcmdxlcd.p1.d 
	@${RM} ${OBJECTDIR}/wcmdxlcd.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"C:/Users/monka/Desktop/Projects/pic18/pic18_plib_legacy/include/plib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/wcmdxlcd.p1 wcmdxlcd.c 
	@-${MV} ${OBJECTDIR}/wcmdxlcd.d ${OBJECTDIR}/wcmdxlcd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/wcmdxlcd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/writdata.p1: writdata.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/writdata.p1.d 
	@${RM} ${OBJECTDIR}/writdata.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"C:/Users/monka/Desktop/Projects/pic18/pic18_plib_legacy/include/plib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/writdata.p1 writdata.c 
	@-${MV} ${OBJECTDIR}/writdata.d ${OBJECTDIR}/writdata.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/writdata.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/busyxlcd.p1: busyxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/busyxlcd.p1.d 
	@${RM} ${OBJECTDIR}/busyxlcd.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"C:/Users/monka/Desktop/Projects/pic18/pic18_plib_legacy/include/plib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/busyxlcd.p1 busyxlcd.c 
	@-${MV} ${OBJECTDIR}/busyxlcd.d ${OBJECTDIR}/busyxlcd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/busyxlcd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/LCD_user_functions.p1: LCD_user_functions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/LCD_user_functions.p1.d 
	@${RM} ${OBJECTDIR}/LCD_user_functions.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"C:/Users/monka/Desktop/Projects/pic18/pic18_plib_legacy/include/plib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/LCD_user_functions.p1 LCD_user_functions.c 
	@-${MV} ${OBJECTDIR}/LCD_user_functions.d ${OBJECTDIR}/LCD_user_functions.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/LCD_user_functions.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/display_functions.p1: display_functions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/display_functions.p1.d 
	@${RM} ${OBJECTDIR}/display_functions.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"C:/Users/monka/Desktop/Projects/pic18/pic18_plib_legacy/include/plib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/display_functions.p1 display_functions.c 
	@-${MV} ${OBJECTDIR}/display_functions.d ${OBJECTDIR}/display_functions.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/display_functions.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/lcd_menu.p1: lcd_menu.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/lcd_menu.p1.d 
	@${RM} ${OBJECTDIR}/lcd_menu.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"C:/Users/monka/Desktop/Projects/pic18/pic18_plib_legacy/include/plib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/lcd_menu.p1 lcd_menu.c 
	@-${MV} ${OBJECTDIR}/lcd_menu.d ${OBJECTDIR}/lcd_menu.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/lcd_menu.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/psu_Rev01_menu.p1: psu_Rev01_menu.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/psu_Rev01_menu.p1.d 
	@${RM} ${OBJECTDIR}/psu_Rev01_menu.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"C:/Users/monka/Desktop/Projects/pic18/pic18_plib_legacy/include/plib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/psu_Rev01_menu.p1 psu_Rev01_menu.c 
	@-${MV} ${OBJECTDIR}/psu_Rev01_menu.d ${OBJECTDIR}/psu_Rev01_menu.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/psu_Rev01_menu.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/psu_Rev01_spi.p1: psu_Rev01_spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/psu_Rev01_spi.p1.d 
	@${RM} ${OBJECTDIR}/psu_Rev01_spi.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"C:/Users/monka/Desktop/Projects/pic18/pic18_plib_legacy/include/plib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/psu_Rev01_spi.p1 psu_Rev01_spi.c 
	@-${MV} ${OBJECTDIR}/psu_Rev01_spi.d ${OBJECTDIR}/psu_Rev01_spi.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/psu_Rev01_spi.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/pushButtons.p1: pushButtons.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/pushButtons.p1.d 
	@${RM} ${OBJECTDIR}/pushButtons.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"C:/Users/monka/Desktop/Projects/pic18/pic18_plib_legacy/include/plib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/pushButtons.p1 pushButtons.c 
	@-${MV} ${OBJECTDIR}/pushButtons.d ${OBJECTDIR}/pushButtons.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/pushButtons.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ADC_user_functions.p1: ADC_user_functions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ADC_user_functions.p1.d 
	@${RM} ${OBJECTDIR}/ADC_user_functions.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"C:/Users/monka/Desktop/Projects/pic18/pic18_plib_legacy/include/plib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/ADC_user_functions.p1 ADC_user_functions.c 
	@-${MV} ${OBJECTDIR}/ADC_user_functions.d ${OBJECTDIR}/ADC_user_functions.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ADC_user_functions.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/spiADC.p1: spiADC.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/spiADC.p1.d 
	@${RM} ${OBJECTDIR}/spiADC.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"C:/Users/monka/Desktop/Projects/pic18/pic18_plib_legacy/include/plib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/spiADC.p1 spiADC.c 
	@-${MV} ${OBJECTDIR}/spiADC.d ${OBJECTDIR}/spiADC.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/spiADC.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/relDRiver.p1: relDRiver.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/relDRiver.p1.d 
	@${RM} ${OBJECTDIR}/relDRiver.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"C:/Users/monka/Desktop/Projects/pic18/pic18_plib_legacy/include/plib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/relDRiver.p1 relDRiver.c 
	@-${MV} ${OBJECTDIR}/relDRiver.d ${OBJECTDIR}/relDRiver.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/relDRiver.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/comPort.p1: comPort.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/comPort.p1.d 
	@${RM} ${OBJECTDIR}/comPort.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"C:/Users/monka/Desktop/Projects/pic18/pic18_plib_legacy/include/plib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/comPort.p1 comPort.c 
	@-${MV} ${OBJECTDIR}/comPort.d ${OBJECTDIR}/comPort.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/comPort.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ubaud.p1: ubaud.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ubaud.p1.d 
	@${RM} ${OBJECTDIR}/ubaud.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"C:/Users/monka/Desktop/Projects/pic18/pic18_plib_legacy/include/plib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/ubaud.p1 ubaud.c 
	@-${MV} ${OBJECTDIR}/ubaud.d ${OBJECTDIR}/ubaud.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ubaud.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ubusy.p1: ubusy.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ubusy.p1.d 
	@${RM} ${OBJECTDIR}/ubusy.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"C:/Users/monka/Desktop/Projects/pic18/pic18_plib_legacy/include/plib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/ubusy.p1 ubusy.c 
	@-${MV} ${OBJECTDIR}/ubusy.d ${OBJECTDIR}/ubusy.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ubusy.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/uclose.p1: uclose.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/uclose.p1.d 
	@${RM} ${OBJECTDIR}/uclose.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"C:/Users/monka/Desktop/Projects/pic18/pic18_plib_legacy/include/plib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/uclose.p1 uclose.c 
	@-${MV} ${OBJECTDIR}/uclose.d ${OBJECTDIR}/uclose.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/uclose.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/udefs.p1: udefs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/udefs.p1.d 
	@${RM} ${OBJECTDIR}/udefs.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"C:/Users/monka/Desktop/Projects/pic18/pic18_plib_legacy/include/plib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/udefs.p1 udefs.c 
	@-${MV} ${OBJECTDIR}/udefs.d ${OBJECTDIR}/udefs.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/udefs.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/udrdy.p1: udrdy.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/udrdy.p1.d 
	@${RM} ${OBJECTDIR}/udrdy.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"C:/Users/monka/Desktop/Projects/pic18/pic18_plib_legacy/include/plib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/udrdy.p1 udrdy.c 
	@-${MV} ${OBJECTDIR}/udrdy.d ${OBJECTDIR}/udrdy.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/udrdy.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ugets.p1: ugets.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ugets.p1.d 
	@${RM} ${OBJECTDIR}/ugets.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"C:/Users/monka/Desktop/Projects/pic18/pic18_plib_legacy/include/plib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/ugets.p1 ugets.c 
	@-${MV} ${OBJECTDIR}/ugets.d ${OBJECTDIR}/ugets.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ugets.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/uopen.p1: uopen.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/uopen.p1.d 
	@${RM} ${OBJECTDIR}/uopen.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"C:/Users/monka/Desktop/Projects/pic18/pic18_plib_legacy/include/plib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/uopen.p1 uopen.c 
	@-${MV} ${OBJECTDIR}/uopen.d ${OBJECTDIR}/uopen.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/uopen.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/uputrs.p1: uputrs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/uputrs.p1.d 
	@${RM} ${OBJECTDIR}/uputrs.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"C:/Users/monka/Desktop/Projects/pic18/pic18_plib_legacy/include/plib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/uputrs.p1 uputrs.c 
	@-${MV} ${OBJECTDIR}/uputrs.d ${OBJECTDIR}/uputrs.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/uputrs.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/uputs.p1: uputs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/uputs.p1.d 
	@${RM} ${OBJECTDIR}/uputs.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"C:/Users/monka/Desktop/Projects/pic18/pic18_plib_legacy/include/plib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/uputs.p1 uputs.c 
	@-${MV} ${OBJECTDIR}/uputs.d ${OBJECTDIR}/uputs.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/uputs.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/uread.p1: uread.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/uread.p1.d 
	@${RM} ${OBJECTDIR}/uread.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"C:/Users/monka/Desktop/Projects/pic18/pic18_plib_legacy/include/plib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/uread.p1 uread.c 
	@-${MV} ${OBJECTDIR}/uread.d ${OBJECTDIR}/uread.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/uread.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/uwrite.p1: uwrite.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/uwrite.p1.d 
	@${RM} ${OBJECTDIR}/uwrite.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"C:/Users/monka/Desktop/Projects/pic18/pic18_plib_legacy/include/plib" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -mc90lib $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/uwrite.p1 uwrite.c 
	@-${MV} ${OBJECTDIR}/uwrite.d ${OBJECTDIR}/uwrite.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/uwrite.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/psu01_spiADC.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=dist/${CND_CONF}/${IMAGE_TYPE}/psu01_spiADC.X.${IMAGE_TYPE}.map  -D__DEBUG=1  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"C:/Users/monka/Desktop/Projects/pic18/pic18_plib_legacy/include/plib" -mwarn=-3 -Wa,-a -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -mc90lib -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto        $(COMPARISON_BUILD) -Wl,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -o dist/${CND_CONF}/${IMAGE_TYPE}/psu01_spiADC.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	@${RM} dist/${CND_CONF}/${IMAGE_TYPE}/psu01_spiADC.X.${IMAGE_TYPE}.hex 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/psu01_spiADC.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=dist/${CND_CONF}/${IMAGE_TYPE}/psu01_spiADC.X.${IMAGE_TYPE}.map  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"C:/Users/monka/Desktop/Projects/pic18/pic18_plib_legacy/include/plib" -mwarn=-3 -Wa,-a -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -mc90lib -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     $(COMPARISON_BUILD) -Wl,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -o dist/${CND_CONF}/${IMAGE_TYPE}/psu01_spiADC.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
