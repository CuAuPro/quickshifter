EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Quickshifter"
Date ""
Rev "1.0"
Comp "Cunix"
Comment1 "K. Cuznar"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Notes Line
	600  650  600  2500
Wire Notes Line
	600  2500 4750 2500
Wire Notes Line
	4750 2500 4750 650 
Wire Notes Line
	4750 650  600  650 
Text Notes 4150 650  0    50   ~ 0
POWER SUPPLY
Wire Wire Line
	1200 900  1200 1000
$Comp
L Quickshifter3-rescue:C-Device-K.Cuznar---QuickshifterV3_0-rescue-Quickshifter-rescue C4
U 1 1 5EF61AD2
P 2300 6300
F 0 "C4" H 2415 6346 50  0000 L CNN
F 1 "100n" H 2415 6255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 2338 6150 50  0001 C CNN
F 3 "1301717" H 2300 6300 50  0001 C CNN
	1    2300 6300
	1    0    0    -1  
$EndComp
$Comp
L Quickshifter3-rescue:VDD-power-K.Cuznar---QuickshifterV3_0-rescue-Quickshifter-rescue #PWR08
U 1 1 5EF62F8A
P 2300 6050
F 0 "#PWR08" H 2300 5900 50  0001 C CNN
F 1 "VDD" H 2317 6223 50  0000 C CNN
F 2 "" H 2300 6050 50  0001 C CNN
F 3 "" H 2300 6050 50  0001 C CNN
	1    2300 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 6050 2300 6150
$Comp
L Quickshifter3-rescue:GND-power-K.Cuznar---QuickshifterV3_0-rescue-Quickshifter-rescue #PWR09
U 1 1 5EF63746
P 2300 6600
F 0 "#PWR09" H 2300 6350 50  0001 C CNN
F 1 "GND" H 2305 6427 50  0000 C CNN
F 2 "" H 2300 6600 50  0001 C CNN
F 3 "" H 2300 6600 50  0001 C CNN
	1    2300 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 6600 2300 6450
$Comp
L Quickshifter3-rescue:C-Device-K.Cuznar---QuickshifterV3_0-rescue-Quickshifter-rescue C8
U 1 1 5EF7111E
P 3650 6300
F 0 "C8" H 3765 6346 50  0000 L CNN
F 1 "10n" H 3765 6255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 3688 6150 50  0001 C CNN
F 3 "2332714" H 3650 6300 50  0001 C CNN
	1    3650 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 6050 3650 6150
$Comp
L Quickshifter3-rescue:GND-power-K.Cuznar---QuickshifterV3_0-rescue-Quickshifter-rescue #PWR015
U 1 1 5EF7112B
P 3650 6600
F 0 "#PWR015" H 3650 6350 50  0001 C CNN
F 1 "GND" H 3655 6427 50  0000 C CNN
F 2 "" H 3650 6600 50  0001 C CNN
F 3 "" H 3650 6600 50  0001 C CNN
	1    3650 6600
	1    0    0    -1  
$EndComp
$Comp
L Quickshifter3-rescue:C-Device-K.Cuznar---QuickshifterV3_0-rescue-Quickshifter-rescue C11
U 1 1 5EF71131
P 4150 6300
F 0 "C11" H 4265 6346 50  0000 L CNN
F 1 "1u" H 4265 6255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 4188 6150 50  0001 C CNN
F 3 "1658877" H 4150 6300 50  0001 C CNN
	1    4150 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 6150 3650 6150
Wire Wire Line
	3650 6600 3650 6450
$Comp
L Quickshifter3-rescue:VDDA-power-K.Cuznar---QuickshifterV3_0-rescue-Quickshifter-rescue #PWR014
U 1 1 5EF73A7C
P 3650 6050
F 0 "#PWR014" H 3650 5900 50  0001 C CNN
F 1 "VDDA" H 3667 6223 50  0000 C CNN
F 2 "" H 3650 6050 50  0001 C CNN
F 3 "" H 3650 6050 50  0001 C CNN
	1    3650 6050
	1    0    0    -1  
$EndComp
Wire Notes Line
	550  6900 4700 6900
Wire Notes Line
	4700 6900 4700 2700
Wire Notes Line
	4700 2700 550  2700
Wire Notes Line
	550  2700 550  6900
Text Notes 4500 2700 0    50   ~ 0
MCPU
Text GLabel 4100 4300 2    50   Input ~ 0
IGN_CUTOFF
Text Notes 6400 7400 0    50   ~ 0
SWCLK\nSWDIO\nVDD\nGND
$Comp
L Quickshifter3-rescue:Conn_01x04_Female-Connector-K.Cuznar---QuickshifterV3_0-rescue-Quickshifter-rescue J2
U 1 1 5F16FC63
P 6250 7200
F 0 "J2" H 6278 7176 50  0000 L CNN
F 1 "Debug Connector" H 6050 6900 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 6250 7200 50  0001 C CNN
F 3 "3049569" H 6250 7200 50  0001 C CNN
	1    6250 7200
	1    0    0    -1  
$EndComp
$Comp
L Quickshifter3-rescue:VDD-power-K.Cuznar---QuickshifterV3_0-rescue-Quickshifter-rescue #PWR022
U 1 1 5F17DF7C
P 5900 7000
F 0 "#PWR022" H 5900 6850 50  0001 C CNN
F 1 "VDD" H 5917 7173 50  0000 C CNN
F 2 "" H 5900 7000 50  0001 C CNN
F 3 "" H 5900 7000 50  0001 C CNN
	1    5900 7000
	1    0    0    -1  
$EndComp
$Comp
L Quickshifter3-rescue:GND-power-K.Cuznar---QuickshifterV3_0-rescue-Quickshifter-rescue #PWR023
U 1 1 5F182003
P 6000 7450
F 0 "#PWR023" H 6000 7200 50  0001 C CNN
F 1 "GND" H 6005 7277 50  0000 C CNN
F 2 "" H 6000 7450 50  0001 C CNN
F 3 "" H 6000 7450 50  0001 C CNN
	1    6000 7450
	1    0    0    -1  
$EndComp
Wire Notes Line
	5450 7750 6900 7750
Wire Notes Line
	6900 7750 6900 6750
Wire Notes Line
	6900 6750 5450 6750
Wire Notes Line
	5450 6750 5450 7750
Text GLabel 5800 7200 0    50   Input ~ 0
SWCLK
Wire Wire Line
	5800 7100 6050 7100
Text GLabel 5800 7100 0    50   Input ~ 0
SWDIO
Wire Wire Line
	5800 7200 6050 7200
Text GLabel 4300 4100 2    50   Input ~ 0
SWDIO
Wire Wire Line
	4300 4100 4100 4100
Text GLabel 4300 4000 2    50   Input ~ 0
SWCLK
Wire Wire Line
	4300 4000 4100 4000
Wire Wire Line
	2000 5150 2000 5100
$Comp
L Quickshifter3-rescue:GND-power-K.Cuznar---QuickshifterV3_0-rescue-Quickshifter-rescue #PWR05
U 1 1 5EF7739F
P 2000 5150
F 0 "#PWR05" H 2000 4900 50  0001 C CNN
F 1 "GND" H 2005 4977 50  0000 C CNN
F 2 "" H 2000 5150 50  0001 C CNN
F 3 "" H 2000 5150 50  0001 C CNN
	1    2000 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 3150 2550 3150
$Comp
L Quickshifter3-rescue:R-Device-K.Cuznar---QuickshifterV3_0-rescue-Quickshifter-rescue R2
U 1 1 5EF8C13F
P 2400 3150
F 0 "R2" V 2300 3000 50  0000 C CNN
F 1 "10k" V 2250 3250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 2330 3150 50  0001 C CNN
F 3 "2331796" H 2400 3150 50  0001 C CNN
	1    2400 3150
	0    -1   -1   0   
$EndComp
$Comp
L Quickshifter3-rescue:GND-power-K.Cuznar---QuickshifterV3_0-rescue-Quickshifter-rescue #PWR06
U 1 1 5EF64364
P 2250 3150
F 0 "#PWR06" H 2250 2900 50  0001 C CNN
F 1 "GND" H 2255 2977 50  0000 C CNN
F 2 "" H 2250 3150 50  0001 C CNN
F 3 "" H 2250 3150 50  0001 C CNN
	1    2250 3150
	0    1    1    0   
$EndComp
Wire Wire Line
	3100 3300 3100 3150
$Comp
L Quickshifter3-rescue:GND-power-K.Cuznar---QuickshifterV3_0-rescue-Quickshifter-rescue #PWR011
U 1 1 5F53D0B0
P 2700 3300
F 0 "#PWR011" H 2700 3050 50  0001 C CNN
F 1 "GND" H 2705 3127 50  0000 C CNN
F 2 "" H 2700 3300 50  0001 C CNN
F 3 "" H 2700 3300 50  0001 C CNN
	1    2700 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 3300 3000 3300
Wire Wire Line
	2000 4800 2000 4300
Wire Wire Line
	2250 4400 2600 4400
Wire Wire Line
	2250 3850 2250 4400
$Comp
L Quickshifter3-rescue:VDDA-power-K.Cuznar---QuickshifterV3_0-rescue-Quickshifter-rescue #PWR07
U 1 1 5F5378A1
P 2250 3850
F 0 "#PWR07" H 2250 3700 50  0001 C CNN
F 1 "VDDA" H 2267 4023 50  0000 C CNN
F 2 "" H 2250 3850 50  0001 C CNN
F 3 "" H 2250 3850 50  0001 C CNN
	1    2250 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 4300 2600 4300
Wire Wire Line
	2500 4000 2600 4000
Wire Wire Line
	2500 3850 2500 4000
$Comp
L Quickshifter3-rescue:VDD-power-K.Cuznar---QuickshifterV3_0-rescue-Quickshifter-rescue #PWR010
U 1 1 5F521F27
P 2500 3850
F 0 "#PWR010" H 2500 3700 50  0001 C CNN
F 1 "VDD" H 2517 4023 50  0000 C CNN
F 2 "" H 2500 3850 50  0001 C CNN
F 3 "" H 2500 3850 50  0001 C CNN
	1    2500 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 4700 4350 4700
$Comp
L Quickshifter3-rescue:VDD-power-K.Cuznar---QuickshifterV3_0-rescue-Quickshifter-rescue #PWR018
U 1 1 5F5426EF
P 4350 4700
F 0 "#PWR018" H 4350 4550 50  0001 C CNN
F 1 "VDD" H 4367 4873 50  0000 C CNN
F 2 "" H 4350 4700 50  0001 C CNN
F 3 "" H 4350 4700 50  0001 C CNN
	1    4350 4700
	0    1    1    0   
$EndComp
Wire Wire Line
	3700 5500 3700 5400
$Comp
L Quickshifter3-rescue:GND-power-K.Cuznar---QuickshifterV3_0-rescue-Quickshifter-rescue #PWR016
U 1 1 5F50429E
P 3700 5500
F 0 "#PWR016" H 3700 5250 50  0001 C CNN
F 1 "GND" H 3705 5327 50  0000 C CNN
F 2 "" H 3700 5500 50  0001 C CNN
F 3 "" H 3700 5500 50  0001 C CNN
	1    3700 5500
	1    0    0    -1  
$EndComp
Wire Notes Line
	12000 11650 14100 11650
$Comp
L Quickshifter3-rescue:C-Device-K.Cuznar---QuickshifterV3_0-rescue-Quickshifter-rescue C3
U 1 1 5EF7595A
P 2000 4950
F 0 "C3" H 2115 4996 50  0000 L CNN
F 1 "100n" H 2115 4905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 2038 4800 50  0001 C CNN
F 3 "1301717" H 2000 4950 50  0001 C CNN
	1    2000 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 1000 1000 1000
$Comp
L Quickshifter3-rescue:Screw_Terminal_01x02-Connector-K.Cuznar---QuickshifterV2_1-rescue-K.Cuznar---QuickshifterV3_0-rescue-K.Cuznar---QuickshifterV3_0-rescue-Quickshifter-rescue J1
U 1 1 5DAB5F30
P 800 1100
F 0 "J1" H 720 775 50  0000 C CNN
F 1 "12V IN" H 720 866 50  0000 C CNN
F 2 "SamacSys_Parts:SHDR2W80P0X350_1X2_840X920X720P" H 800 1100 50  0001 C CNN
F 3 "1841315 & 1841347" H 800 1100 50  0001 C CNN
	1    800  1100
	-1   0    0    1   
$EndComp
Wire Wire Line
	1200 1100 1000 1100
$Comp
L Quickshifter3-rescue:C-Device-K.Cuznar---QuickshifterV3_0-rescue-Quickshifter-rescue C5
U 1 1 5F087300
P 2350 1100
F 0 "C5" H 2465 1146 50  0000 L CNN
F 1 "47uF" H 2465 1055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 2388 950 50  0001 C CNN
F 3 "1867958" H 2350 1100 50  0001 C CNN
	1    2350 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 900  4550 900 
Connection ~ 4350 900 
Wire Wire Line
	4350 850  4350 900 
$Comp
L Quickshifter3-rescue:VDDA-power-K.Cuznar---QuickshifterV3_0-rescue-Quickshifter-rescue #PWR017
U 1 1 5EF741A6
P 4350 850
F 0 "#PWR017" H 4350 700 50  0001 C CNN
F 1 "VDDA" H 4367 1023 50  0000 C CNN
F 2 "" H 4350 850 50  0001 C CNN
F 3 "" H 4350 850 50  0001 C CNN
	1    4350 850 
	1    0    0    -1  
$EndComp
$Comp
L Quickshifter3-rescue:VDD-power-K.Cuznar---QuickshifterV3_0-rescue-Quickshifter-rescue #PWR021
U 1 1 5EA075F6
P 4550 850
F 0 "#PWR021" H 4550 700 50  0001 C CNN
F 1 "VDD" H 4567 1023 50  0000 C CNN
F 2 "" H 4550 850 50  0001 C CNN
F 3 "" H 4550 850 50  0001 C CNN
	1    4550 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 850  4550 900 
$Comp
L Quickshifter3-rescue:C-Device-K.Cuznar---QuickshifterV3_0-rescue-Quickshifter-rescue C10
U 1 1 5DAB5BC6
P 4100 1100
F 0 "C10" H 4215 1146 50  0000 L CNN
F 1 "10uF" H 4215 1055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 4138 950 50  0001 C CNN
F 3 "1867958" H 4100 1100 50  0001 C CNN
	1    4100 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 900  4350 900 
$Comp
L Quickshifter3-rescue:GND-power-K.Cuznar---QuickshifterV3_0-rescue-Quickshifter-rescue #PWR013
U 1 1 5DAB66AB
P 3350 1500
F 0 "#PWR013" H 3350 1250 50  0001 C CNN
F 1 "GND" H 3355 1327 50  0000 C CNN
F 2 "" H 3350 1500 50  0001 C CNN
F 3 "" H 3350 1500 50  0001 C CNN
	1    3350 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 900  4100 950 
Wire Wire Line
	4100 1500 4100 1250
Wire Wire Line
	2350 950  2350 900 
Connection ~ 2350 900 
Connection ~ 4100 900 
Wire Wire Line
	2350 1250 2350 1500
Wire Wire Line
	2350 1500 1200 1500
Wire Wire Line
	1200 1100 1200 1500
Connection ~ 2350 1500
Wire Wire Line
	2350 1500 3350 1500
$Comp
L Quickshifter3-rescue:+10V-power-K.Cuznar---QuickshifterV3_0-rescue-Quickshifter-rescue #PWR030
U 1 1 5FD8640E
P 9350 5500
AR Path="/5FD8640E" Ref="#PWR030"  Part="1" 
AR Path="/5F4B31E1/5FD8640E" Ref="#PWR?"  Part="1" 
F 0 "#PWR030" H 9350 5350 50  0001 C CNN
F 1 "+10V" H 9365 5673 50  0000 C CNN
F 2 "" H 9350 5500 50  0001 C CNN
F 3 "" H 9350 5500 50  0001 C CNN
	1    9350 5500
	0    -1   -1   0   
$EndComp
$Comp
L Quickshifter3-rescue:GND-power-K.Cuznar---QuickshifterV3_0-rescue-Quickshifter-rescue #PWR029
U 1 1 5FD86414
P 9500 5400
AR Path="/5FD86414" Ref="#PWR029"  Part="1" 
AR Path="/5F4B31E1/5FD86414" Ref="#PWR?"  Part="1" 
F 0 "#PWR029" H 9500 5150 50  0001 C CNN
F 1 "GND" H 9505 5227 50  0000 C CNN
F 2 "" H 9500 5400 50  0001 C CNN
F 3 "" H 9500 5400 50  0001 C CNN
	1    9500 5400
	0    1    -1   0   
$EndComp
Wire Notes Line
	8350 4550 8350 6450
Wire Notes Line
	8350 6450 11100 6450
Wire Notes Line
	11100 6450 11100 4550
Wire Notes Line
	11100 4550 8350 4550
Text Notes 10200 4550 0    50   ~ 0
RAW INPUT CONNECTOR
Text GLabel 9500 5600 0    50   Input ~ 0
S+
Text GLabel 9500 5700 0    50   Input ~ 0
S-
Wire Notes Line
	8150 6450 8150 4350
Text Notes 7350 4350 0    50   ~ 0
INPUT SENSOR STAGE
$Comp
L Quickshifter3-rescue:C-Device-K.Cuznar---QuickshifterV3_0-rescue-Quickshifter-rescue C12
U 1 1 5FD92F22
P 6300 5100
AR Path="/5FD92F22" Ref="C12"  Part="1" 
AR Path="/5F4B31E1/5FD92F22" Ref="C?"  Part="1" 
F 0 "C12" H 6100 5150 50  0000 L CNN
F 1 "1u" H 6100 5050 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 6338 4950 50  0001 C CNN
F 3 "1658877" H 6300 5100 50  0001 C CNN
	1    6300 5100
	1    0    0    -1  
$EndComp
$Comp
L Quickshifter3-rescue:C-Device-K.Cuznar---QuickshifterV3_0-rescue-Quickshifter-rescue C13
U 1 1 5FD92F28
P 7200 5100
AR Path="/5FD92F28" Ref="C13"  Part="1" 
AR Path="/5F4B31E1/5FD92F28" Ref="C?"  Part="1" 
F 0 "C13" H 7350 5150 50  0000 L CNN
F 1 "1u" H 7350 5050 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 7238 4950 50  0001 C CNN
F 3 "1658877" H 7200 5100 50  0001 C CNN
	1    7200 5100
	1    0    0    -1  
$EndComp
Connection ~ 7200 5250
Wire Wire Line
	7200 4950 7200 4900
$Comp
L Quickshifter3-rescue:ISL21080CIH315Z-TK-SamacSys_Parts-Quickshifter-rescue IC?
U 1 1 5FD92F33
P 6500 4650
AR Path="/5F4B31E1/5FD92F33" Ref="IC?"  Part="1" 
AR Path="/5FD92F33" Ref="IC3"  Part="1" 
F 0 "IC3" H 7050 4915 50  0000 C CNN
F 1 "ISL21080CIH315Z-TK" H 7050 4824 50  0000 C CNN
F 2 "SamacSys_Parts:SOT95P237X112-3N" H 7450 4750 50  0001 L CNN
F 3 "https://www.renesas.com/en-us/www/doc/datasheet/isl21080.pdf" H 7450 4650 50  0001 L CNN
F 4 "2358142" H 6500 4650 50  0001 C CNN "Farnell"
	1    6500 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 5250 7200 5250
Wire Wire Line
	7700 5250 7600 5250
Wire Wire Line
	6300 4650 6300 4950
Wire Wire Line
	6300 4650 6500 4650
Wire Wire Line
	6500 4750 6500 4900
Wire Wire Line
	6500 4900 7200 4900
$Comp
L Quickshifter3-rescue:VDD-power-K.Cuznar---QuickshifterV3_0-rescue-Quickshifter-rescue #PWR024
U 1 1 5FD92F42
P 6300 4650
AR Path="/5FD92F42" Ref="#PWR024"  Part="1" 
AR Path="/5F4B31E1/5FD92F42" Ref="#PWR?"  Part="1" 
F 0 "#PWR024" H 6300 4500 50  0001 C CNN
F 1 "VDD" H 6317 4823 50  0000 C CNN
F 2 "" H 6300 4650 50  0001 C CNN
F 3 "" H 6300 4650 50  0001 C CNN
	1    6300 4650
	1    0    0    -1  
$EndComp
Connection ~ 6300 4650
$Comp
L Quickshifter3-rescue:R-Device-K.Cuznar---QuickshifterV3_0-rescue-Quickshifter-rescue R4
U 1 1 5FDA44D5
P 8150 1950
AR Path="/5FDA44D5" Ref="R4"  Part="1" 
AR Path="/5F5231F3/5FDA44D5" Ref="R?"  Part="1" 
F 0 "R4" V 7943 1950 50  0000 C CNN
F 1 "510" V 8034 1950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 8080 1950 50  0001 C CNN
F 3 "1894180" H 8150 1950 50  0001 C CNN
	1    8150 1950
	0    1    1    0   
$EndComp
$Comp
L Quickshifter3-rescue:BC847-Transistor_BJT-K.Cuznar---QuickshifterV3_0-rescue-Quickshifter-rescue Q1
U 1 1 5FDA44DB
P 8600 1950
AR Path="/5FDA44DB" Ref="Q1"  Part="1" 
AR Path="/5F5231F3/5FDA44DB" Ref="Q?"  Part="1" 
F 0 "Q1" H 8791 1996 50  0000 L CNN
F 1 "BC847" H 8791 1905 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 8800 1875 50  0001 L CIN
F 3 "1081230" H 8600 1950 50  0001 L CNN
	1    8600 1950
	1    0    0    -1  
$EndComp
$Comp
L Quickshifter3-rescue:GND-power-K.Cuznar---QuickshifterV3_0-rescue-Quickshifter-rescue #PWR028
U 1 1 5FDA44E1
P 8700 2400
AR Path="/5FDA44E1" Ref="#PWR028"  Part="1" 
AR Path="/5F5231F3/5FDA44E1" Ref="#PWR?"  Part="1" 
F 0 "#PWR028" H 8700 2150 50  0001 C CNN
F 1 "GND" H 8705 2227 50  0000 C CNN
F 2 "" H 8700 2400 50  0001 C CNN
F 3 "" H 8700 2400 50  0001 C CNN
	1    8700 2400
	1    0    0    -1  
$EndComp
Wire Notes Line
	7200 650  7200 2700
Wire Notes Line
	11100 650  7200 650 
Text Notes 10550 650  0    50   ~ 0
OUTPUT STAGE
Text GLabel 7950 1950 0    50   Input ~ 0
IGN_CUTOFF
Wire Wire Line
	8000 1950 7950 1950
Wire Wire Line
	8700 2400 8700 2350
$Comp
L Quickshifter3-rescue:R-Device-K.Cuznar---QuickshifterV3_0-rescue-Quickshifter-rescue R6
U 1 1 5FDA44ED
P 8350 2200
AR Path="/5FDA44ED" Ref="R6"  Part="1" 
AR Path="/5F5231F3/5FDA44ED" Ref="R?"  Part="1" 
F 0 "R6" V 8143 2200 50  0000 C CNN
F 1 "10k" V 8234 2200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 8280 2200 50  0001 C CNN
F 3 "2331796" H 8350 2200 50  0001 C CNN
	1    8350 2200
	-1   0    0    1   
$EndComp
Wire Wire Line
	8300 1950 8350 1950
Wire Wire Line
	8350 2050 8350 1950
Connection ~ 8350 1950
Wire Wire Line
	8350 1950 8400 1950
Wire Wire Line
	8350 2350 8700 2350
Connection ~ 8700 2350
Wire Wire Line
	8700 2350 8700 2150
$Comp
L Quickshifter3-rescue:+12V-power-K.Cuznar---QuickshifterV3_0-rescue-Quickshifter-rescue #PWR027
U 1 1 5FDA4500
P 8700 900
AR Path="/5FDA4500" Ref="#PWR027"  Part="1" 
AR Path="/5F5231F3/5FDA4500" Ref="#PWR?"  Part="1" 
F 0 "#PWR027" H 8700 750 50  0001 C CNN
F 1 "+12V" H 8715 1073 50  0000 C CNN
F 2 "" H 8700 900 50  0001 C CNN
F 3 "" H 8700 900 50  0001 C CNN
	1    8700 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 1700 8700 1750
Wire Wire Line
	8700 900  8700 950 
$Comp
L Quickshifter3-rescue:RT314012-SamacSys_Parts-K.Cuznar---QuickshifterV3_0-rescue-Quickshifter-rescue K1
U 1 1 5FDA452F
P 9100 950
AR Path="/5FDA452F" Ref="K1"  Part="1" 
AR Path="/5F5231F3/5FDA452F" Ref="K?"  Part="1" 
F 0 "K1" H 9650 1215 50  0000 C CNN
F 1 "RT314012" H 9650 1124 50  0000 C CNN
F 2 "SamacSys_Parts:RT314005_2" H 10050 1050 50  0001 L CNN
F 3 "http://www.te.com/commerce/DocumentDelivery/DDEController?Action=showdoc&DocId=Data+Sheet%7FRT1%7F1014%7Fpdf%7FEnglish%7FENG_DS_RT1_1014.pdf%7F9-1393239-5" H 10050 950 50  0001 L CNN
F 4 "1629044" H 9100 950 50  0001 C CNN "Farnell"
	1    9100 950 
	1    0    0    -1  
$EndComp
$Comp
L Quickshifter3-rescue:D_Schottky-Device-K.Cuznar---QuickshifterV3_0-rescue-Quickshifter-rescue D4
U 1 1 5FDA4536
P 8700 1300
AR Path="/5FDA4536" Ref="D4"  Part="1" 
AR Path="/5F5231F3/5FDA4536" Ref="D?"  Part="1" 
F 0 "D4" V 8654 1379 50  0000 L CNN
F 1 "D_Schottky" V 8745 1379 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123" H 8700 1300 50  0001 C CNN
F 3 "~" H 8700 1300 50  0001 C CNN
F 4 "2473410" V 8700 1300 50  0001 C CNN "Farnell"
	1    8700 1300
	0    1    1    0   
$EndComp
Wire Wire Line
	8700 1450 8700 1700
Connection ~ 8700 1700
Wire Wire Line
	8700 1150 8700 950 
Connection ~ 8700 950 
$Comp
L Quickshifter3-rescue:Screw_Terminal_01x02-Connector-K.Cuznar---QuickshifterV2_1-rescue-K.Cuznar---QuickshifterV3_0-rescue-K.Cuznar---QuickshifterV3_0-rescue-Quickshifter-rescue J4
U 1 1 5FDA4540
P 10950 1250
AR Path="/5FDA4540" Ref="J4"  Part="1" 
AR Path="/5F5231F3/5FDA4540" Ref="J?"  Part="1" 
F 0 "J4" H 10870 925 50  0000 C CNN
F 1 "COIL" H 10870 1016 50  0000 C CNN
F 2 "SamacSys_Parts:SHDR2W80P0X350_1X2_840X920X720P" H 10950 1250 50  0001 C CNN
F 3 "1841315 & 1841347" H 10950 1250 50  0001 C CNN
	1    10950 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 950  8700 950 
Wire Wire Line
	8700 1700 10450 1700
Wire Wire Line
	10450 1700 10450 950 
Wire Wire Line
	10450 950  10200 950 
Wire Wire Line
	10200 1150 10300 1150
Wire Wire Line
	9100 1150 9000 1150
Wire Wire Line
	9000 1150 9000 1400
Wire Wire Line
	9000 1400 10300 1400
Wire Wire Line
	9100 1050 8900 1050
Wire Wire Line
	8900 1050 8900 1450
Wire Wire Line
	8900 1450 10600 1450
Wire Wire Line
	10200 1050 10600 1050
Wire Notes Line
	11100 650  11100 2700
Wire Notes Line
	7200 2700 11100 2700
Wire Wire Line
	3100 5550 3100 5400
Text GLabel 3100 5550 3    50   Input ~ 0
SENSOR_VAL
$Comp
L Quickshifter3-rescue:STM32F030K6T6-SamacSys_Parts-K.Cuznar---QuickshifterV3_0-rescue-Quickshifter-rescue IC1
U 1 1 5F4DE831
P 2600 4000
F 0 "IC1" H 3300 3350 50  0000 L CNN
F 1 "STM32F030K6T6" H 3850 2750 50  0000 L CNN
F 2 "SamacSys_Parts:QFP80P900X900X120-32N" H 3950 4500 50  0001 L CNN
F 3 "http://www.st.com/web/en/resource/technical/document/datasheet/DM00088500.pdf" H 3950 4400 50  0001 L CNN
F 4 "2432085" H 2600 4000 50  0001 C CNN "Farnell"
	1    2600 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 4650 7600 5250
Connection ~ 7600 5250
Wire Wire Line
	7600 5250 7200 5250
Wire Wire Line
	4050 2300 4500 2300
Connection ~ 4050 2300
Wire Wire Line
	4050 2000 4500 2000
Connection ~ 4050 2000
Wire Wire Line
	3850 2000 4050 2000
Wire Wire Line
	2950 2300 3550 2300
$Comp
L Quickshifter3-rescue:+10V-power-K.Cuznar---QuickshifterV3_0-rescue-Quickshifter-rescue #PWR019
U 1 1 5F097911
P 4500 2000
F 0 "#PWR019" H 4500 1850 50  0001 C CNN
F 1 "+10V" H 4515 2173 50  0000 C CNN
F 2 "" H 4500 2000 50  0001 C CNN
F 3 "" H 4500 2000 50  0001 C CNN
	1    4500 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 1900 2950 2000
$Comp
L Quickshifter3-rescue:+12V-power-K.Cuznar---QuickshifterV3_0-rescue-Quickshifter-rescue #PWR012
U 1 1 5F08FAE1
P 2950 1900
F 0 "#PWR012" H 2950 1750 50  0001 C CNN
F 1 "+12V" H 2965 2073 50  0000 C CNN
F 2 "" H 2950 1900 50  0001 C CNN
F 3 "" H 2950 1900 50  0001 C CNN
	1    2950 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 2000 3250 2000
$Comp
L Quickshifter3-rescue:GND-power-K.Cuznar---QuickshifterV3_0-rescue-Quickshifter-rescue #PWR020
U 1 1 5F08BCBD
P 4500 2300
F 0 "#PWR020" H 4500 2050 50  0001 C CNN
F 1 "GND" H 4505 2127 50  0000 C CNN
F 2 "" H 4500 2300 50  0001 C CNN
F 3 "" H 4500 2300 50  0001 C CNN
	1    4500 2300
	1    0    0    -1  
$EndComp
$Comp
L Quickshifter3-rescue:C-Device-K.Cuznar---QuickshifterV3_0-rescue-Quickshifter-rescue C7
U 1 1 5F087A3E
P 2950 2150
F 0 "C7" H 3065 2196 50  0000 L CNN
F 1 "1uF" H 3065 2105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 2988 2000 50  0001 C CNN
F 3 "1658877" H 2950 2150 50  0001 C CNN
	1    2950 2150
	1    0    0    -1  
$EndComp
$Comp
L Quickshifter3-rescue:C-Device-K.Cuznar---QuickshifterV3_0-rescue-Quickshifter-rescue C9
U 1 1 5F085A40
P 4050 2150
F 0 "C9" H 4165 2196 50  0000 L CNN
F 1 "1uF" H 4165 2105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 4088 2000 50  0001 C CNN
F 3 "1658877" H 4050 2150 50  0001 C CNN
	1    4050 2150
	1    0    0    -1  
$EndComp
$Comp
L Quickshifter3-rescue:MCP1804x-A002xDB-Regulator_Linear-K.Cuznar---QuickshifterV3_0-rescue-Quickshifter-rescue U1
U 1 1 5F0847C7
P 3550 2000
F 0 "U1" H 3550 2242 50  0000 C CNN
F 1 "MCP1804x-A002xDB" H 3550 2151 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 3550 2200 50  0001 C CNN
F 3 "2809954" H 3550 2000 50  0001 C CNN
	1    3550 2000
	1    0    0    -1  
$EndComp
Connection ~ 3350 1500
Wire Wire Line
	3350 1500 4100 1500
Connection ~ 3550 2300
Wire Wire Line
	3550 2300 4050 2300
Wire Wire Line
	4150 6450 3650 6450
Connection ~ 3650 6450
Connection ~ 2300 6450
Connection ~ 2950 2000
Wire Wire Line
	6000 7300 6050 7300
Wire Wire Line
	6000 7300 6000 7450
Wire Wire Line
	6050 7400 5900 7400
Wire Wire Line
	5900 7000 5900 7400
Wire Wire Line
	9500 5600 9600 5600
Wire Wire Line
	9500 5700 9600 5700
Wire Wire Line
	2350 900  3050 900 
Wire Wire Line
	3650 900  4100 900 
Wire Wire Line
	3350 1500 3350 1200
$Comp
L Quickshifter3-rescue:35363-0560-SamacSys_Parts-Quickshifter-rescue J3
U 1 1 5FFE5D2C
P 9600 5300
F 0 "J3" H 10228 5146 50  0000 L CNN
F 1 "35363-0560" H 10228 5055 50  0000 L CNN
F 2 "SamacSys_Parts:353630560" H 10250 5400 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/2/35363-0560 .pdf" H 10250 5300 50  0001 L CNN
F 4 "3107233" H 9600 5300 50  0001 C CNN "Farnell"
	1    9600 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 5400 9600 5400
Wire Wire Line
	9600 5300 9500 5300
Wire Wire Line
	9500 5300 9500 5400
Connection ~ 9500 5400
Wire Wire Line
	9350 5500 9600 5500
$Comp
L Quickshifter3-rescue:GND-power-K.Cuznar---QuickshifterV3_0-rescue-Quickshifter-rescue #PWR026
U 1 1 5FD92F14
P 7700 5250
AR Path="/5FD92F14" Ref="#PWR026"  Part="1" 
AR Path="/5F4B31E1/5FD92F14" Ref="#PWR?"  Part="1" 
F 0 "#PWR026" H 7700 5000 50  0001 C CNN
F 1 "GND" H 7705 5077 50  0000 C CNN
F 2 "" H 7700 5250 50  0001 C CNN
F 3 "" H 7700 5250 50  0001 C CNN
	1    7700 5250
	1    0    0    -1  
$EndComp
Wire Notes Line
	8150 4350 6000 4350
Wire Notes Line
	6000 6450 8150 6450
Connection ~ 6500 4900
Wire Wire Line
	6500 4900 6500 5450
Wire Wire Line
	6500 5450 7100 5450
Wire Wire Line
	7200 5250 7200 5450
Wire Wire Line
	7500 5850 7700 5850
Wire Wire Line
	7700 5850 7700 5900
Wire Wire Line
	7700 5900 7850 5900
Wire Wire Line
	7850 5600 7700 5600
Wire Wire Line
	7700 5600 7700 5650
Wire Wire Line
	7700 5650 7500 5650
$Comp
L Quickshifter3-rescue:R-Device-K.Cuznar---QuickshifterV3_0-rescue-Quickshifter-rescue R3
U 1 1 5FD92F02
P 7850 5750
AR Path="/5FD92F02" Ref="R3"  Part="1" 
AR Path="/5F4B31E1/5FD92F02" Ref="R?"  Part="1" 
F 0 "R3" H 7920 5796 50  0000 L CNN
F 1 "510" H 7920 5705 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 7780 5750 50  0001 C CNN
F 3 "1894180" H 7850 5750 50  0001 C CNN
	1    7850 5750
	1    0    0    -1  
$EndComp
$Comp
L Quickshifter3-rescue:+10V-power-K.Cuznar---QuickshifterV3_0-rescue-Quickshifter-rescue #PWR025
U 1 1 5FD92F0E
P 7200 6050
AR Path="/5FD92F0E" Ref="#PWR025"  Part="1" 
AR Path="/5F4B31E1/5FD92F0E" Ref="#PWR?"  Part="1" 
F 0 "#PWR025" H 7200 5900 50  0001 C CNN
F 1 "+10V" H 7215 6223 50  0000 C CNN
F 2 "" H 7200 6050 50  0001 C CNN
F 3 "" H 7200 6050 50  0001 C CNN
	1    7200 6050
	-1   0    0    1   
$EndComp
Text GLabel 6550 5750 0    50   Input ~ 0
SENSOR_VAL
Wire Notes Line
	6000 4350 6000 6450
$Comp
L Quickshifter3-rescue:INA128-Amplifier_Instrumentation-K.Cuznar---QuickshifterV3_0-rescue-Quickshifter-rescue U2
U 1 1 5FD92EFC
P 7200 5750
AR Path="/5FD92EFC" Ref="U2"  Part="1" 
AR Path="/5F4B31E1/5FD92EFC" Ref="U?"  Part="1" 
F 0 "U2" H 7400 5950 50  0000 L CNN
F 1 "INA188" H 6850 6150 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 7300 5750 50  0001 C CNN
F 3 "2507235" H 7300 5750 50  0001 C CNN
	1    7200 5750
	-1   0    0    1   
$EndComp
Wire Wire Line
	6550 5750 6800 5750
$Comp
L Regulator_Switching:R-78E3.3-0.5 U3
U 1 1 615031B1
P 3350 900
F 0 "U3" H 3350 1142 50  0000 C CNN
F 1 "R-78E3.3-0.5" H 3350 1051 50  0000 C CNN
F 2 "Converter_DCDC:Converter_DCDC_RECOM_R-78E-0.5_THT" H 3400 650 50  0001 L CIN
F 3 "https://www.recom-power.com/pdf/Innoline/R-78Exx-0.5.pdf" H 3350 900 50  0001 C CNN
	1    3350 900 
	1    0    0    -1  
$EndComp
$Comp
L Device:L L1
U 1 1 623A4DFF
P 1900 900
F 0 "L1" V 2090 900 50  0000 C CNN
F 1 "5.6u" V 1999 900 50  0000 C CNN
F 2 "Inductor_SMD:L_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1900 900 50  0001 C CNN
F 3 "~" H 1900 900 50  0001 C CNN
	1    1900 900 
	0    -1   -1   0   
$EndComp
$Comp
L Quickshifter3-rescue:+12V-power-K.Cuznar---QuickshifterV3_0-rescue-Quickshifter-rescue #PWR04
U 1 1 5DAD9566
P 2350 850
F 0 "#PWR04" H 2350 700 50  0001 C CNN
F 1 "+12V" H 2365 1023 50  0000 C CNN
F 2 "" H 2350 850 50  0001 C CNN
F 3 "" H 2350 850 50  0001 C CNN
	1    2350 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 900  2350 900 
Wire Wire Line
	1200 900  1750 900 
Wire Wire Line
	2350 850  2350 900 
Connection ~ 10600 1250
$Comp
L Quickshifter3-rescue:C-Device-K.Cuznar---QuickshifterV3_0-rescue-Quickshifter-rescue C1
U 1 1 6241A00E
P 1850 6300
F 0 "C1" H 1965 6346 50  0000 L CNN
F 1 "100n" H 1965 6255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 1888 6150 50  0001 C CNN
F 3 "1301717" H 1850 6300 50  0001 C CNN
	1    1850 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 6450 2300 6450
Wire Wire Line
	1850 6150 2300 6150
Connection ~ 2300 6150
Text GLabel 7500 5550 2    50   Input ~ 0
S-
Text GLabel 7500 5950 2    50   Input ~ 0
S+
Connection ~ 10300 1350
Wire Wire Line
	10300 1350 10300 1400
Wire Wire Line
	10300 1350 10750 1350
Wire Wire Line
	10600 1050 10600 1250
Wire Wire Line
	10750 1250 10600 1250
Wire Wire Line
	10600 1250 10600 1450
Wire Wire Line
	10300 1150 10300 1350
$EndSCHEMATC
