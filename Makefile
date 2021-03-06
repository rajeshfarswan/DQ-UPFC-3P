# MPLAB IDE generated this makefile for use with GNU make.
# Project: sine_gridinverter.mcp
# Date: Tue Aug 21 18:40:32 2018

AS = pic30-as.exe
CC = pic30-gcc.exe
LD = pic30-ld.exe
AR = pic30-ar.exe
HX = pic30-bin2hex.exe
RM = rm

sine_gridinverter.hex : sine_gridinverter.cof
	$(HX) "sine_gridinverter.cof"

sine_gridinverter.cof : asmABCtoDQ.o asmADC.o asmDClink.o asmDQtoABC.o asmINT_DIVQ.o asmINT_MPQ.o asmPIcontroller.o asmPWM.o delay.o init.o main.o asmFO_Filter.o asmHARMONIC.o
	$(CC) -mcpu=30F6010A "asmABCtoDQ.o" "asmADC.o" "asmDClink.o" "asmDQtoABC.o" "asmINT_DIVQ.o" "asmINT_MPQ.o" "asmPIcontroller.o" "asmPWM.o" "delay.o" "init.o" "main.o" "asmFO_Filter.o" "asmHARMONIC.o" -o"sine_gridinverter.cof" -Wl,-L"C:\Program Files\Microchip\MPLAB C30\lib",--script="p30f6010A.gld",--defsym=__MPLAB_BUILD=1,-Map="sine_gridinverter.map",--report-mem

asmABCtoDQ.o : asmABCtoDQ.s
	$(CC) -mcpu=30F6010A -c "asmABCtoDQ.s" -o"asmABCtoDQ.o" -Wa,-g

asmADC.o : asmADC.s
	$(CC) -mcpu=30F6010A -c "asmADC.s" -o"asmADC.o" -Wa,-g

asmDClink.o : asmDClink.s
	$(CC) -mcpu=30F6010A -c "asmDClink.s" -o"asmDClink.o" -Wa,-g

asmDQtoABC.o : asmDQtoABC.s
	$(CC) -mcpu=30F6010A -c "asmDQtoABC.s" -o"asmDQtoABC.o" -Wa,-g

asmINT_DIVQ.o : asmINT_DIVQ.s
	$(CC) -mcpu=30F6010A -c "asmINT_DIVQ.s" -o"asmINT_DIVQ.o" -Wa,-g

asmINT_MPQ.o : asmINT_MPQ.s
	$(CC) -mcpu=30F6010A -c "asmINT_MPQ.s" -o"asmINT_MPQ.o" -Wa,-g

asmPIcontroller.o : asmPIcontroller.s
	$(CC) -mcpu=30F6010A -c "asmPIcontroller.s" -o"asmPIcontroller.o" -Wa,-g

asmPWM.o : asmPWM.s
	$(CC) -mcpu=30F6010A -c "asmPWM.s" -o"asmPWM.o" -Wa,-g

delay.o : p30f6010A.h delay.c
	$(CC) -mcpu=30F6010A -x c -c "delay.c" -o"delay.o" -g -Wall

init.o : p30f6010A.h init.c
	$(CC) -mcpu=30F6010A -x c -c "init.c" -o"init.o" -g -Wall

main.o : asmMath.h user.h p30f6010A.h main.h main.c
	$(CC) -mcpu=30F6010A -x c -c "main.c" -o"main.o" -g -Wall

asmFO_Filter.o : asmFO_Filter.s
	$(CC) -mcpu=30F6010A -c "asmFO_Filter.s" -o"asmFO_Filter.o" -Wa,-g

asmHARMONIC.o : asmHARMONIC.s
	$(CC) -mcpu=30F6010A -c "asmHARMONIC.s" -o"asmHARMONIC.o" -Wa,-g

clean : 
	$(RM) "asmABCtoDQ.o" "asmADC.o" "asmDClink.o" "asmDQtoABC.o" "asmINT_DIVQ.o" "asmINT_MPQ.o" "asmPIcontroller.o" "asmPWM.o" "delay.o" "init.o" "main.o" "asmFO_Filter.o" "asmHARMONIC.o" "sine_gridinverter.cof" "sine_gridinverter.hex"

