EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 3
Title "Hannes256: C16/+4 256 kB RAM Expansion"
Date "2022-09-19"
Rev "1git"
Comp "SukkoPera"
Comment1 "Hannes Version (Update 1 with \"TED Feature\")"
Comment2 "Based on drawings by Solder/Synergy"
Comment3 "Licensed under CC BY-NC-SA 4.0"
Comment4 ""
$EndDescr
$Sheet
S 6220 7990 1230 595 
U 62E48B71
F0 "RAM" 50
F1 "ram.sch" 50
$EndSheet
Wire Wire Line
	5500 2985 5140 2985
Wire Wire Line
	5500 3085 5140 3085
Wire Wire Line
	5500 3185 5140 3185
Wire Wire Line
	5500 3385 5140 3385
Wire Wire Line
	5500 3485 5140 3485
Wire Wire Line
	5500 3585 5140 3585
Wire Wire Line
	5500 3685 5140 3685
Wire Wire Line
	5500 3785 5140 3785
Wire Wire Line
	5500 3885 5140 3885
Wire Wire Line
	5500 3985 5140 3985
Wire Wire Line
	5500 4085 5140 4085
Wire Wire Line
	5500 4185 5140 4185
Wire Wire Line
	5500 4285 5140 4285
Wire Wire Line
	5500 4385 5140 4385
Wire Wire Line
	5500 4485 5140 4485
Wire Wire Line
	5500 4585 5140 4585
Wire Wire Line
	5500 4685 5140 4685
Wire Wire Line
	5500 4785 5140 4785
Wire Wire Line
	5500 4885 5140 4885
Wire Wire Line
	5500 4985 5140 4985
Wire Wire Line
	5500 5085 5140 5085
Wire Wire Line
	5500 5185 5140 5185
Text Label 5140 3985 0    50   ~ 0
~cas
Text Label 5140 3885 0    50   ~ 0
~ras
Text Label 5140 4385 0    50   ~ 0
k0
Text Label 5140 4485 0    50   ~ 0
k1
Text Label 5140 4585 0    50   ~ 0
k2
Text Label 5140 4685 0    50   ~ 0
k3
Text Label 5140 4785 0    50   ~ 0
k4
Text Label 5140 4885 0    50   ~ 0
k5
Text Label 5140 4985 0    50   ~ 0
k6
Text Label 5140 5085 0    50   ~ 0
k7
Wire Wire Line
	8465 3985 8105 3985
Text Label 8105 3985 0    50   ~ 0
~cas_16k
$Comp
L MOS_7360_TED:TED_SOCKET J?
U 1 1 639188CC
P 9215 4135
AR Path="/62E48B71/639188CC" Ref="J?"  Part="1" 
AR Path="/639188CC" Ref="J1"  Part="1" 
F 0 "J1" H 9215 5650 50  0000 C CNN
F 1 "TED_SOCKET" H 9215 5559 50  0000 C CNN
F 2 "Hannes256:DIP-48_W15.24mm_LongPads_ModSilkS" H 9215 4135 50  0001 C CNN
F 3 "DOCUMENTATION" H 9215 4135 50  0001 C CNN
	1    9215 4135
	1    0    0    -1  
$EndComp
Text Label 5140 2985 0    50   ~ 0
a2
Text Label 5140 3085 0    50   ~ 0
a1
Text Label 5140 3185 0    50   ~ 0
a0
Text Label 5140 3385 0    50   ~ 0
cs0
Text Label 5140 3485 0    50   ~ 0
cs1
Wire Wire Line
	4960 2630 4960 3285
Wire Wire Line
	4960 3285 5500 3285
Text Label 5140 3585 0    50   ~ 0
r~w
Text Label 5140 3685 0    50   ~ 0
~irq
Text Label 5140 3785 0    50   ~ 0
mux
Text Label 5140 4085 0    50   ~ 0
clkout
Text Label 5140 4185 0    50   ~ 0
color
Text Label 5140 4285 0    50   ~ 0
clkin
Text Label 5140 5185 0    50   ~ 0
lum
$Comp
L power:GND #PWR?
U 1 1 639188E6
P 4960 5550
AR Path="/62E48B71/639188E6" Ref="#PWR?"  Part="1" 
AR Path="/639188E6" Ref="#PWR04"  Part="1" 
F 0 "#PWR04" H 4960 5300 50  0001 C CNN
F 1 "GND" H 4965 5377 50  0000 C CNN
F 2 "" H 4960 5550 50  0001 C CNN
F 3 "" H 4960 5550 50  0001 C CNN
	1    4960 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4960 5550 4960 5285
Wire Wire Line
	4960 5285 5500 5285
Text Label 7360 5285 2    50   ~ 0
d0
Text Label 7360 5185 2    50   ~ 0
d1
Text Label 7360 5085 2    50   ~ 0
d2
Text Label 7360 4985 2    50   ~ 0
d3
Text Label 7360 4885 2    50   ~ 0
d4
Text Label 7360 4785 2    50   ~ 0
d5
Text Label 7360 4685 2    50   ~ 0
d6
Text Label 7360 4585 2    50   ~ 0
d7
Text Label 7360 4485 2    50   ~ 0
snd
Text Label 7360 4385 2    50   ~ 0
ba
Text Label 7360 4285 2    50   ~ 0
aec
Text Label 7360 4185 2    50   ~ 0
a15
Text Label 7360 4085 2    50   ~ 0
a14
Text Label 7360 3985 2    50   ~ 0
a13
Text Label 7360 3885 2    50   ~ 0
a12
Text Label 7360 3785 2    50   ~ 0
a11
Text Label 7360 3685 2    50   ~ 0
a10
Text Label 7360 3585 2    50   ~ 0
a9
Text Label 7360 3485 2    50   ~ 0
a8
Text Label 7360 3385 2    50   ~ 0
a7
Text Label 7360 3285 2    50   ~ 0
a6
Text Label 7360 3185 2    50   ~ 0
a5
Text Label 7360 3085 2    50   ~ 0
a4
Text Label 7360 2985 2    50   ~ 0
a3
Wire Wire Line
	7360 5285 7000 5285
Wire Wire Line
	7360 5185 7000 5185
Wire Wire Line
	7360 5085 7000 5085
Wire Wire Line
	7360 4985 7000 4985
Wire Wire Line
	7360 4885 7000 4885
Wire Wire Line
	7360 4785 7000 4785
Wire Wire Line
	7360 4685 7000 4685
Wire Wire Line
	7360 4585 7000 4585
Wire Wire Line
	7360 4485 7000 4485
Wire Wire Line
	7360 4385 7000 4385
Wire Wire Line
	7360 4285 7000 4285
Wire Wire Line
	7360 4185 7000 4185
Wire Wire Line
	7360 4085 7000 4085
Wire Wire Line
	7360 3985 7000 3985
Wire Wire Line
	7360 3885 7000 3885
Wire Wire Line
	7360 3785 7000 3785
Wire Wire Line
	7360 3685 7000 3685
Wire Wire Line
	7360 3585 7000 3585
Wire Wire Line
	7360 3485 7000 3485
Wire Wire Line
	7360 3385 7000 3385
Wire Wire Line
	7360 3285 7000 3285
Wire Wire Line
	7360 3185 7000 3185
Wire Wire Line
	7360 3085 7000 3085
Wire Wire Line
	7360 2985 7000 2985
$Comp
L MOS_7360_TED:MOS_7360_TED U?
U 1 1 6391891E
P 6250 4135
AR Path="/62E48B71/6391891E" Ref="U?"  Part="1" 
AR Path="/6391891E" Ref="U1"  Part="1" 
F 0 "U1" H 6250 5650 50  0000 C CNN
F 1 "MOS_7360_TED" H 6250 5559 50  0000 C CNN
F 2 "Package_DIP:DIP-48_W15.24mm_Socket_LongPads" H 6250 4135 50  0001 C CNN
F 3 "DOCUMENTATION" H 6250 4135 50  0001 C CNN
	1    6250 4135
	1    0    0    -1  
$EndComp
Text Label 10325 5285 2    50   ~ 0
d0
Text Label 10325 5185 2    50   ~ 0
d1
Text Label 10325 5085 2    50   ~ 0
d2
Text Label 10325 4985 2    50   ~ 0
d3
Text Label 10325 4885 2    50   ~ 0
d4
Text Label 10325 4785 2    50   ~ 0
d5
Text Label 10325 4685 2    50   ~ 0
d6
Text Label 10325 4585 2    50   ~ 0
d7
Text Label 10325 4485 2    50   ~ 0
snd
Text Label 10325 4385 2    50   ~ 0
ba
Text Label 10325 4285 2    50   ~ 0
aec
Text Label 10325 4185 2    50   ~ 0
a15
Text Label 10325 4085 2    50   ~ 0
a14
Text Label 10325 3985 2    50   ~ 0
a13
Text Label 10325 3885 2    50   ~ 0
a12
Text Label 10325 3785 2    50   ~ 0
a11
Text Label 10325 3685 2    50   ~ 0
a10
Text Label 10325 3585 2    50   ~ 0
a9
Text Label 10325 3485 2    50   ~ 0
a8
Text Label 10325 3385 2    50   ~ 0
a7
Text Label 10325 3285 2    50   ~ 0
a6
Text Label 10325 3185 2    50   ~ 0
a5
Text Label 10325 3085 2    50   ~ 0
a4
Text Label 10325 2985 2    50   ~ 0
a3
Wire Wire Line
	10325 5285 9965 5285
Wire Wire Line
	10325 5185 9965 5185
Wire Wire Line
	10325 5085 9965 5085
Wire Wire Line
	10325 4985 9965 4985
Wire Wire Line
	10325 4885 9965 4885
Wire Wire Line
	10325 4785 9965 4785
Wire Wire Line
	10325 4685 9965 4685
Wire Wire Line
	10325 4585 9965 4585
Wire Wire Line
	10325 4485 9965 4485
Wire Wire Line
	10325 4385 9965 4385
Wire Wire Line
	10325 4285 9965 4285
Wire Wire Line
	10325 4185 9965 4185
Wire Wire Line
	10325 4085 9965 4085
Wire Wire Line
	10325 3985 9965 3985
Wire Wire Line
	10325 3885 9965 3885
Wire Wire Line
	10325 3785 9965 3785
Wire Wire Line
	10325 3685 9965 3685
Wire Wire Line
	10325 3585 9965 3585
Wire Wire Line
	10325 3485 9965 3485
Wire Wire Line
	10325 3385 9965 3385
Wire Wire Line
	10325 3285 9965 3285
Wire Wire Line
	10325 3185 9965 3185
Wire Wire Line
	10325 3085 9965 3085
Wire Wire Line
	10325 2985 9965 2985
Wire Wire Line
	8465 2985 8105 2985
Wire Wire Line
	8465 3085 8105 3085
Wire Wire Line
	8465 3185 8105 3185
Wire Wire Line
	8465 3385 8105 3385
Wire Wire Line
	8465 3485 8105 3485
Wire Wire Line
	8465 3585 8105 3585
Wire Wire Line
	8465 3685 8105 3685
Wire Wire Line
	8465 3785 8105 3785
Wire Wire Line
	8465 3885 8105 3885
Wire Wire Line
	8465 4085 8105 4085
Wire Wire Line
	8465 4185 8105 4185
Wire Wire Line
	8465 4285 8105 4285
Wire Wire Line
	8465 4385 8105 4385
Wire Wire Line
	8465 4485 8105 4485
Wire Wire Line
	8465 4585 8105 4585
Wire Wire Line
	8465 4685 8105 4685
Wire Wire Line
	8465 4785 8105 4785
Wire Wire Line
	8465 4885 8105 4885
Wire Wire Line
	8465 4985 8105 4985
Wire Wire Line
	8465 5085 8105 5085
Wire Wire Line
	8465 5185 8105 5185
Text Label 8105 3885 0    50   ~ 0
~ras
Text Label 8105 4385 0    50   ~ 0
k0
Text Label 8105 4485 0    50   ~ 0
k1
Text Label 8105 4585 0    50   ~ 0
k2
Text Label 8105 4685 0    50   ~ 0
k3
Text Label 8105 4785 0    50   ~ 0
k4
Text Label 8105 4885 0    50   ~ 0
k5
Text Label 8105 4985 0    50   ~ 0
k6
Text Label 8105 5085 0    50   ~ 0
k7
Text Label 8105 2985 0    50   ~ 0
a2
Text Label 8105 3085 0    50   ~ 0
a1
Text Label 8105 3185 0    50   ~ 0
a0
Text Label 8105 3385 0    50   ~ 0
cs0
Text Label 8105 3485 0    50   ~ 0
cs1
Wire Wire Line
	7830 2630 7830 3285
Wire Wire Line
	7830 3285 8465 3285
Text Label 8105 3585 0    50   ~ 0
r~w
Text Label 8105 3685 0    50   ~ 0
~irq
Text Label 8105 3785 0    50   ~ 0
mux
Text Label 8105 4085 0    50   ~ 0
clkout
Text Label 8105 4185 0    50   ~ 0
color
Text Label 8105 4285 0    50   ~ 0
clkin
Text Label 8105 5185 0    50   ~ 0
lum
$Comp
L power:GND #PWR?
U 1 1 63918986
P 7925 5550
AR Path="/62E48B71/63918986" Ref="#PWR?"  Part="1" 
AR Path="/63918986" Ref="#PWR05"  Part="1" 
F 0 "#PWR05" H 7925 5300 50  0001 C CNN
F 1 "GND" H 7930 5377 50  0000 C CNN
F 2 "" H 7925 5550 50  0001 C CNN
F 3 "" H 7925 5550 50  0001 C CNN
	1    7925 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7925 5550 7925 5285
Wire Wire Line
	7925 5285 8465 5285
Wire Wire Line
	12165 3820 11850 3820
Wire Wire Line
	12165 3920 12045 3920
Text Label 11850 3820 0    50   ~ 0
~cas
$Comp
L Connector:Conn_01x03_Male J?
U 1 1 63918991
P 12365 3820
AR Path="/62E48B71/63918991" Ref="J?"  Part="1" 
AR Path="/63918991" Ref="J2"  Part="1" 
F 0 "J2" H 12337 3844 50  0000 R CNN
F 1 "RAM_SELECTOR" H 12337 3753 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 12365 3820 50  0001 C CNN
F 3 "~" H 12365 3820 50  0001 C CNN
	1    12365 3820
	-1   0    0    -1  
$EndComp
Text Label 11330 3720 0    50   ~ 0
~cas_16k
Text GLabel 11475 4060 2    50   Output ~ 0
~CAS_64K
Wire Wire Line
	11600 4640 11915 4640
Wire Wire Line
	11600 4840 11915 4840
Wire Wire Line
	11600 5040 11915 5040
Text Label 11600 4840 0    50   ~ 0
r~w
Text Label 11600 5040 0    50   ~ 0
mux
Text Label 11600 4640 0    50   ~ 0
~ras
Text GLabel 11915 4640 2    50   Output ~ 0
~RAS
Text GLabel 11915 4840 2    50   Output ~ 0
R_~W
Text GLabel 11915 5040 2    50   Output ~ 0
MUX
Entry Wire Line
	10325 2985 10425 3085
Entry Wire Line
	10325 3085 10425 3185
Entry Wire Line
	10325 3185 10425 3285
Entry Wire Line
	10325 3285 10425 3385
Entry Wire Line
	10325 3385 10425 3485
Entry Wire Line
	10325 3485 10425 3585
Entry Wire Line
	10325 3585 10425 3685
Entry Wire Line
	10325 3685 10425 3785
Entry Wire Line
	10325 3785 10425 3885
Entry Wire Line
	10325 3885 10425 3985
Entry Wire Line
	10325 3985 10425 4085
Entry Wire Line
	10325 4085 10425 4185
Entry Wire Line
	10325 4185 10425 4285
Entry Wire Line
	8005 2885 8105 2985
Entry Wire Line
	8005 2985 8105 3085
Entry Wire Line
	8005 3085 8105 3185
Wire Bus Line
	8005 2375 10425 2375
Wire Bus Line
	10425 2375 10625 2375
Connection ~ 10425 2375
Text GLabel 10625 2375 2    50   Output ~ 0
a[0..15]
Entry Wire Line
	10325 4585 10425 4685
Entry Wire Line
	10325 4685 10425 4785
Entry Wire Line
	10325 4785 10425 4885
Entry Wire Line
	10325 4885 10425 4985
Entry Wire Line
	10325 4985 10425 5085
Entry Wire Line
	10325 5085 10425 5185
Entry Wire Line
	10325 5185 10425 5285
Entry Wire Line
	10325 5285 10425 5385
Wire Bus Line
	10425 5600 10625 5600
Text GLabel 10620 5600 2    50   BiDi ~ 0
d[0..7]
$Comp
L Device:R R?
U 1 1 639189C0
P 12045 3445
AR Path="/62E48B71/639189C0" Ref="R?"  Part="1" 
AR Path="/639189C0" Ref="R2"  Part="1" 
F 0 "R2" H 12115 3491 50  0000 L CNN
F 1 "10k" H 12115 3400 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 11975 3445 50  0001 C CNN
F 3 "~" H 12045 3445 50  0001 C CNN
	1    12045 3445
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 639189C6
P 11755 3445
AR Path="/62E48B71/639189C6" Ref="R?"  Part="1" 
AR Path="/639189C6" Ref="R1"  Part="1" 
F 0 "R1" H 11825 3491 50  0000 L CNN
F 1 "10k" H 11825 3400 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 11685 3445 50  0001 C CNN
F 3 "~" H 11755 3445 50  0001 C CNN
	1    11755 3445
	1    0    0    -1  
$EndComp
Wire Wire Line
	11330 3720 11755 3720
Wire Wire Line
	11755 3595 11755 3720
Connection ~ 11755 3720
Wire Wire Line
	11755 3720 12165 3720
Wire Wire Line
	12045 3595 12045 3920
Wire Wire Line
	11755 3295 11755 3190
Wire Wire Line
	11755 3190 11900 3190
Wire Wire Line
	12045 3190 12045 3295
Wire Wire Line
	11900 3190 11900 3105
Connection ~ 11900 3190
Wire Wire Line
	11900 3190 12045 3190
Wire Wire Line
	11330 3920 12045 3920
Wire Wire Line
	11330 3920 11330 4060
Wire Wire Line
	11330 4060 11475 4060
Connection ~ 12045 3920
$Sheet
S 8175 7985 1130 600 
U 63A22C28
F0 "~RAS~/~CAS~ Generation" 50
F1 "ras_cas_gen.sch" 50
$EndSheet
Wire Wire Line
	11600 5240 11915 5240
Text Label 11600 5240 0    50   ~ 0
aec
Text GLabel 11915 5240 2    50   Output ~ 0
AEC
Text GLabel 12275 6010 2    50   Output ~ 0
~CS_IN
Wire Wire Line
	11730 6010 12275 6010
Wire Wire Line
	11730 6110 11920 6110
Text GLabel 11920 6110 2    50   Input ~ 0
~CS_OUT
Text Notes 12560 6040 0    50   ~ 0
$FD1x (FROM LIFTED PIN 16 OF PLA)
Text Notes 12285 6150 0    50   ~ 0
$FD10 (TO PIN 15 OF PLA SOCKET)
$Comp
L Connector:Conn_01x03_Male J3
U 1 1 63E0AE52
P 11530 6010
F 0 "J3" H 11638 6291 50  0000 C CNN
F 1 "CONN_CS" H 11638 6200 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 11530 6010 50  0001 C CNN
F 3 "~" H 11530 6010 50  0001 C CNN
	1    11530 6010
	1    0    0    -1  
$EndComp
Wire Wire Line
	11730 5910 11920 5910
Text GLabel 11920 5910 2    50   Output ~ 0
~RESET
$Comp
L power:+5V #PWR0103
U 1 1 633D4159
P 4960 2630
F 0 "#PWR0103" H 4960 2480 50  0001 C CNN
F 1 "+5V" H 4975 2803 50  0000 C CNN
F 2 "" H 4960 2630 50  0001 C CNN
F 3 "" H 4960 2630 50  0001 C CNN
	1    4960 2630
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0104
U 1 1 633D4958
P 7830 2630
F 0 "#PWR0104" H 7830 2480 50  0001 C CNN
F 1 "+5V" H 7845 2803 50  0000 C CNN
F 2 "" H 7830 2630 50  0001 C CNN
F 3 "" H 7830 2630 50  0001 C CNN
	1    7830 2630
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0105
U 1 1 633D56E2
P 11900 3105
F 0 "#PWR0105" H 11900 2955 50  0001 C CNN
F 1 "+5V" H 11915 3278 50  0000 C CNN
F 2 "" H 11900 3105 50  0001 C CNN
F 3 "" H 11900 3105 50  0001 C CNN
	1    11900 3105
	1    0    0    -1  
$EndComp
$Comp
L void:Void V0
U 1 1 63C4EC1B
P 15540 9765
F 0 "V0" H 15618 9811 50  0000 L CNN
F 1 "CC_LOGO" H 15618 9720 50  0000 L CNN
F 2 "Hannes256:cc_by_nc_sa" H 15540 9765 50  0001 C CNN
F 3 "" H 15540 9765 50  0001 C CNN
	1    15540 9765
	1    0    0    -1  
$EndComp
Wire Bus Line
	8005 2375 8005 3085
Wire Bus Line
	10425 4685 10425 5600
Wire Bus Line
	10425 2375 10425 4285
$EndSCHEMATC
