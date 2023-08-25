EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ajm:SP0256AL2 U1
U 1 1 64E82CDE
P 2625 2925
F 0 "U1" H 2925 2990 50  0000 C CNN
F 1 "SP0256AL2" H 2925 2899 50  0000 C CNN
F 2 "Package_DIP:DIP-28_W15.24mm" H 2575 3025 50  0001 C CNN
F 3 "" H 2575 3025 50  0001 C CNN
	1    2625 2925
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 64E8ECE3
P 9775 1325
AR Path="/63E0266A/64E8ECE3" Ref="#PWR?"  Part="1" 
AR Path="/64E8ECE3" Ref="#PWR020"  Part="1" 
F 0 "#PWR020" H 9775 1075 50  0001 C CNN
F 1 "GND" H 9780 1152 50  0000 C CNN
F 2 "" H 9775 1325 50  0001 C CNN
F 3 "" H 9775 1325 50  0001 C CNN
	1    9775 1325
	1    0    0    -1  
$EndComp
Wire Wire Line
	10225 1325 9775 1325
NoConn ~ 9725 5150
NoConn ~ 9725 5250
NoConn ~ 9725 5350
NoConn ~ 6675 4950
Text Notes 4925 825  0    50   ~ 0
Make sure C8 is close to pin 45 of RP2040
Text Notes 4950 925  0    50   ~ 0
Make sure C10 is close to pin 44 of RP2040
Wire Wire Line
	8975 825  8975 875 
Wire Wire Line
	8975 875  9325 875 
$Comp
L power:GND #PWR?
U 1 1 63E22AEC
P 9475 1850
AR Path="/63E0266A/63E22AEC" Ref="#PWR?"  Part="1" 
AR Path="/63E22AEC" Ref="#PWR019"  Part="1" 
F 0 "#PWR019" H 9475 1600 50  0001 C CNN
F 1 "GND" H 9480 1677 50  0000 C CNN
F 2 "" H 9475 1850 50  0001 C CNN
F 3 "" H 9475 1850 50  0001 C CNN
	1    9475 1850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 63E22AE6
P 7325 1850
AR Path="/63E0266A/63E22AE6" Ref="#PWR?"  Part="1" 
AR Path="/63E22AE6" Ref="#PWR014"  Part="1" 
F 0 "#PWR014" H 7325 1600 50  0001 C CNN
F 1 "GND" H 7330 1677 50  0000 C CNN
F 2 "" H 7325 1850 50  0001 C CNN
F 3 "" H 7325 1850 50  0001 C CNN
	1    7325 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9475 1800 9475 1850
Wire Wire Line
	7325 1800 7325 1850
Wire Wire Line
	7425 925  7775 925 
Connection ~ 7425 925 
Wire Wire Line
	7425 975  7425 925 
Wire Wire Line
	6975 925  7425 925 
Wire Wire Line
	6975 975  6975 925 
Wire Wire Line
	6975 1325 6975 1375
Connection ~ 6975 1325
Wire Wire Line
	7425 1325 7425 1275
Wire Wire Line
	6975 1325 7425 1325
Wire Wire Line
	6975 1275 6975 1325
$Comp
L power:GND #PWR?
U 1 1 63E22AD2
P 6975 1375
AR Path="/63E0266A/63E22AD2" Ref="#PWR?"  Part="1" 
AR Path="/63E22AD2" Ref="#PWR013"  Part="1" 
F 0 "#PWR013" H 6975 1125 50  0001 C CNN
F 1 "GND" H 6980 1202 50  0000 C CNN
F 2 "" H 6975 1375 50  0001 C CNN
F 3 "" H 6975 1375 50  0001 C CNN
	1    6975 1375
	1    0    0    -1  
$EndComp
Wire Wire Line
	9475 1500 9475 1450
Wire Wire Line
	7325 1500 7325 1450
Wire Wire Line
	10225 1225 10225 1325
Wire Wire Line
	9775 1325 9325 1325
Connection ~ 9775 1325
Wire Wire Line
	9775 1225 9775 1325
Wire Wire Line
	9325 1225 9325 1325
Wire Wire Line
	9325 875  9775 875 
Connection ~ 9325 875 
Wire Wire Line
	9325 925  9325 875 
Wire Wire Line
	9775 875  10225 875 
Connection ~ 9775 875 
Wire Wire Line
	9775 925  9775 875 
Wire Wire Line
	10225 925  10225 875 
$Comp
L Device:C C?
U 1 1 64E8ECE2
P 9475 1650
AR Path="/63E0266A/64E8ECE2" Ref="C?"  Part="1" 
AR Path="/64E8ECE2" Ref="C10"  Part="1" 
F 0 "C10" H 9590 1696 50  0000 L CNN
F 1 "1u" H 9590 1605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 9513 1500 50  0001 C CNN
F 3 "~" H 9475 1650 50  0001 C CNN
	1    9475 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 64E8ECE1
P 7325 1650
AR Path="/63E0266A/64E8ECE1" Ref="C?"  Part="1" 
AR Path="/64E8ECE1" Ref="C8"  Part="1" 
F 0 "C8" H 7440 1696 50  0000 L CNN
F 1 "1u" H 7440 1605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 7363 1500 50  0001 C CNN
F 3 "~" H 7325 1650 50  0001 C CNN
	1    7325 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 63E22A9B
P 7425 1125
AR Path="/63E0266A/63E22A9B" Ref="C?"  Part="1" 
AR Path="/63E22A9B" Ref="C7"  Part="1" 
F 0 "C7" H 7540 1171 50  0000 L CNN
F 1 "100n" H 7540 1080 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 7463 975 50  0001 C CNN
F 3 "~" H 7425 1125 50  0001 C CNN
	1    7425 1125
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 64E8ECDF
P 6975 1125
AR Path="/63E0266A/64E8ECDF" Ref="C?"  Part="1" 
AR Path="/64E8ECDF" Ref="C6"  Part="1" 
F 0 "C6" H 7090 1171 50  0000 L CNN
F 1 "100n" H 7090 1080 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 7013 975 50  0001 C CNN
F 3 "~" H 6975 1125 50  0001 C CNN
	1    6975 1125
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 63E22A8F
P 10225 1075
AR Path="/63E0266A/63E22A8F" Ref="C?"  Part="1" 
AR Path="/63E22A8F" Ref="C12"  Part="1" 
F 0 "C12" H 10340 1121 50  0000 L CNN
F 1 "100n" H 10340 1030 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 10263 925 50  0001 C CNN
F 3 "~" H 10225 1075 50  0001 C CNN
	1    10225 1075
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 64E8ECDD
P 9775 1075
AR Path="/63E0266A/64E8ECDD" Ref="C?"  Part="1" 
AR Path="/64E8ECDD" Ref="C11"  Part="1" 
F 0 "C11" H 9890 1121 50  0000 L CNN
F 1 "100n" H 9890 1030 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 9813 925 50  0001 C CNN
F 3 "~" H 9775 1075 50  0001 C CNN
	1    9775 1075
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 64E8ECDC
P 9325 1075
AR Path="/63E0266A/64E8ECDC" Ref="C?"  Part="1" 
AR Path="/64E8ECDC" Ref="C9"  Part="1" 
F 0 "C9" H 9440 1121 50  0000 L CNN
F 1 "100n" H 9440 1030 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 9363 925 50  0001 C CNN
F 3 "~" H 9325 1075 50  0001 C CNN
	1    9325 1075
	1    0    0    -1  
$EndComp
Wire Wire Line
	7775 875  7775 925 
$Comp
L power:+1V1 #PWR?
U 1 1 63E22A7B
P 7775 875
AR Path="/63E0266A/63E22A7B" Ref="#PWR?"  Part="1" 
AR Path="/63E22A7B" Ref="#PWR015"  Part="1" 
F 0 "#PWR015" H 7775 725 50  0001 C CNN
F 1 "+1V1" H 7790 1048 50  0000 C CNN
F 2 "" H 7775 875 50  0001 C CNN
F 3 "" H 7775 875 50  0001 C CNN
	1    7775 875 
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 64E8ECDA
P 8975 825
AR Path="/63E0266A/64E8ECDA" Ref="#PWR?"  Part="1" 
AR Path="/64E8ECDA" Ref="#PWR018"  Part="1" 
F 0 "#PWR018" H 8975 675 50  0001 C CNN
F 1 "+3V3" H 8990 998 50  0000 C CNN
F 2 "" H 8975 825 50  0001 C CNN
F 3 "" H 8975 825 50  0001 C CNN
	1    8975 825 
	1    0    0    -1  
$EndComp
Wire Wire Line
	7775 1650 7675 1650
Connection ~ 7775 1650
Wire Wire Line
	7775 2150 7775 1650
Wire Wire Line
	7675 1650 7675 2150
Wire Wire Line
	7975 1650 7775 1650
Wire Wire Line
	7975 2150 7975 1650
Connection ~ 8325 1650
Wire Wire Line
	8125 1650 8325 1650
Wire Wire Line
	8125 2150 8125 1650
Wire Wire Line
	8975 1650 9125 1650
Connection ~ 8975 1650
Wire Wire Line
	8975 2150 8975 1650
Connection ~ 8825 1650
Wire Wire Line
	9125 1650 9125 2150
Wire Wire Line
	8825 1650 8975 1650
Wire Wire Line
	8725 1650 8825 1650
Connection ~ 8725 1650
Wire Wire Line
	8725 2150 8725 1650
Wire Wire Line
	8625 1650 8725 1650
Connection ~ 8625 1650
Wire Wire Line
	8625 2150 8625 1650
Wire Wire Line
	8525 1650 8625 1650
Connection ~ 8525 1650
Wire Wire Line
	8525 2150 8525 1650
Wire Wire Line
	8425 1650 8525 1650
Connection ~ 8425 1650
Wire Wire Line
	8425 2150 8425 1650
Wire Wire Line
	8825 1650 8825 2150
Wire Wire Line
	8325 1650 8425 1650
Wire Wire Line
	8325 2150 8325 1650
Wire Wire Line
	7225 5500 6675 5500
Wire Wire Line
	7225 5400 6675 5400
Text Label 6675 4950 0    50   ~ 0
RUN
Wire Wire Line
	7225 4950 6675 4950
Text Label 6675 3350 0    50   ~ 0
QSPI_SD3
Text Label 6675 3250 0    50   ~ 0
QSPI_SD2
Text Label 6675 3150 0    50   ~ 0
QSPI_SD1
Text Label 6675 3050 0    50   ~ 0
QSPI_SD0
Text Label 6675 3500 0    50   ~ 0
QSPI_SCLK
Text Label 6675 2900 0    50   ~ 0
QSPI_SS
Wire Wire Line
	8475 6150 8475 6250
Wire Wire Line
	7975 6150 7975 6250
$Comp
L power:GND #PWR?
U 1 1 63E22A35
P 7975 6250
AR Path="/63E0266A/63E22A35" Ref="#PWR?"  Part="1" 
AR Path="/63E22A35" Ref="#PWR016"  Part="1" 
F 0 "#PWR016" H 7975 6000 50  0001 C CNN
F 1 "GND" H 7980 6077 50  0000 C CNN
F 2 "" H 7975 6250 50  0001 C CNN
F 3 "" H 7975 6250 50  0001 C CNN
	1    7975 6250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 64E8ECD8
P 8475 6250
AR Path="/63E0266A/64E8ECD8" Ref="#PWR?"  Part="1" 
AR Path="/64E8ECD8" Ref="#PWR017"  Part="1" 
F 0 "#PWR017" H 8475 6000 50  0001 C CNN
F 1 "GND" H 8480 6077 50  0000 C CNN
F 2 "" H 8475 6250 50  0001 C CNN
F 3 "" H 8475 6250 50  0001 C CNN
	1    8475 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7225 3500 6675 3500
Wire Wire Line
	7225 2900 6675 2900
Wire Wire Line
	6675 3350 7225 3350
Wire Wire Line
	6675 3250 7225 3250
Wire Wire Line
	6675 3150 7225 3150
Wire Wire Line
	6675 3050 7225 3050
$Comp
L MCU_RaspberryPi_RP2040:RP2040 U5
U 1 1 63E250D6
P 8475 4150
F 0 "U5" H 8725 2050 50  0000 C CNN
F 1 "RP2040" H 8825 1950 50  0000 C CNN
F 2 "rp2040:RP2040-QFN-56-no_holes" H 7725 4150 50  0001 C CNN
F 3 "" H 7725 4150 50  0001 C CNN
	1    8475 4150
	1    0    0    -1  
$EndComp
Text GLabel 9725 2450 2    50   Input ~ 0
USB_DP
Text GLabel 9725 2550 2    50   Input ~ 0
USB_DM
Text GLabel 9725 4650 2    50   Input ~ 0
SD_CLK
Text GLabel 9725 4750 2    50   Input ~ 0
MOSI_DI
Text GLabel 9725 5050 2    50   Input ~ 0
SD_SS
Text GLabel 9725 4950 2    50   Input ~ 0
SD_DAT2
Text GLabel 9725 4850 2    50   Input ~ 0
SD_DAT1
Text GLabel 9725 4450 2    50   Input ~ 0
MISO_D0
Wire Wire Line
	9475 1450 8975 1450
Wire Wire Line
	8975 1450 8975 1650
Wire Wire Line
	7325 1450 7775 1450
Wire Wire Line
	7775 1450 7775 1650
Wire Wire Line
	8975 1450 8975 875 
Connection ~ 8975 1450
Connection ~ 8975 875 
Wire Wire Line
	7775 925  7775 1450
Connection ~ 7775 925 
Connection ~ 7775 1450
$Sheet
S 5600 7125 975  475 
U 64EAC854
F0 "RP2040 support" 50
F1 "rp2040_support.sch" 50
$EndSheet
Text Notes 625  1125 0    50   ~ 0
Crystal oscillator not implemented, RP2040 generates clock.
$Comp
L power:GND #PWR0101
U 1 1 64ECC404
P 1250 3200
F 0 "#PWR0101" H 1250 2950 50  0001 C CNN
F 1 "GND" H 1255 3027 50  0000 C CNN
F 2 "" H 1250 3200 50  0001 C CNN
F 3 "" H 1250 3200 50  0001 C CNN
	1    1250 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 3200 1250 3125
Wire Wire Line
	1250 3125 2275 3125
$Comp
L power:VDD #PWR0102
U 1 1 64ECE66E
P 1100 2950
F 0 "#PWR0102" H 1100 2800 50  0001 C CNN
F 1 "VDD" H 1115 3123 50  0000 C CNN
F 2 "" H 1100 2950 50  0001 C CNN
F 3 "" H 1100 2950 50  0001 C CNN
	1    1100 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2275 3725 1100 3725
Wire Wire Line
	1100 3725 1100 2950
Text GLabel 2275 3225 0    50   Input ~ 0
SP_RESET_N
Text Notes 625  1400 0    50   ~ 0
RP2040 emulates external ROM if needed. External ROM signals\nare not driven.
Text GLabel 3575 4125 2    50   Input ~ 0
SP_A1
Text GLabel 3575 4225 2    50   Input ~ 0
SP_A2
Text GLabel 3575 4325 2    50   Input ~ 0
SP_A3
Text GLabel 3575 4425 2    50   Input ~ 0
SP_A4
Text GLabel 2275 4425 0    50   Input ~ 0
SP_A5
Text GLabel 2275 4325 0    50   Input ~ 0
SP_A6
Text GLabel 2275 4125 0    50   Input ~ 0
SP_A7
Text GLabel 2275 4025 0    50   Input ~ 0
SP_A8
Text GLabel 3575 3525 2    50   Input ~ 0
SP_DIGITAL_OUT
$Comp
L power:VDD #PWR0103
U 1 1 64EE5845
P 4850 2925
F 0 "#PWR0103" H 4850 2775 50  0001 C CNN
F 1 "VDD" H 4865 3098 50  0000 C CNN
F 2 "" H 4850 2925 50  0001 C CNN
F 3 "" H 4850 2925 50  0001 C CNN
	1    4850 2925
	1    0    0    -1  
$EndComp
Wire Wire Line
	3575 3625 4850 3625
Wire Wire Line
	4850 3625 4850 2925
Text GLabel 3575 3925 2    50   Input ~ 0
SP_ALD
Text GLabel 2275 3925 0    50   Input ~ 0
SP_LRQ_N
Text GLabel 2275 3825 0    50   Input ~ 0
SP_SBY
Text GLabel 3575 4025 2    50   Input ~ 0
SP_SE
Text GLabel 3575 3425 2    50   Input ~ 0
SP_SBY_RES_N
Text Notes 625  1575 0    50   ~ 0
Only emulates systems running at 5V
Text GLabel 9725 2850 2    50   Input ~ 0
SP_A1
Text GLabel 9725 2950 2    50   Input ~ 0
SP_A2
Text GLabel 9725 3050 2    50   Input ~ 0
SP_A3
Text GLabel 9725 3150 2    50   Input ~ 0
SP_A4
Text GLabel 9725 3250 2    50   Input ~ 0
SP_A5
Text GLabel 9725 3350 2    50   Input ~ 0
SP_A6
Text GLabel 9725 3450 2    50   Input ~ 0
SP_A7
Text GLabel 9725 3550 2    50   Input ~ 0
SP_A8
Text GLabel 9725 3650 2    50   Input ~ 0
SP_ALD
Text GLabel 9725 3750 2    50   Input ~ 0
SP_SE
Text GLabel 9725 3950 2    50   Input ~ 0
SP_DIGITAL_OUT
Text GLabel 9725 3850 2    50   Input ~ 0
SP_SBY_RES_N
Text GLabel 9725 4050 2    50   Input ~ 0
SP_RESET_N
Text GLabel 9725 4150 2    50   Input ~ 0
SP_LRQ_N
Text GLabel 9725 4250 2    50   Input ~ 0
SP_SBY
Text GLabel 7225 4250 0    50   Input ~ 0
XIN
Text GLabel 7225 4450 0    50   Input ~ 0
XOUT
Text GLabel 6675 5400 0    50   Input ~ 0
SWCLK
Text GLabel 6675 5500 0    50   Input ~ 0
SWD
Text GLabel 6675 2900 0    50   Input ~ 0
QSPI_SS
Text GLabel 6675 3500 0    50   Input ~ 0
QSPI_SCLK
Text GLabel 6675 3050 0    50   Input ~ 0
QSPI_SD0
Text GLabel 6675 3150 0    50   Input ~ 0
QSPI_SD1
Text GLabel 6675 3250 0    50   Input ~ 0
QSPI_SD2
Text GLabel 6675 3350 0    50   Input ~ 0
QSPI_SD3
$EndSCHEMATC
