EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 2 3
Title "Hannes256: C16/+4 256 kB RAM Expansion"
Date "2023-02-21"
Rev "3git"
Comp "SukkoPera"
Comment1 "Hannes Version (Update 1 with \"TED Feature\")"
Comment2 "Based on drawings by Solder/Synergy"
Comment3 "Licensed under CC BY-NC-SA 4.0"
Comment4 ""
$EndDescr
$Comp
L Device:C C?
U 1 1 63BD05FA
P 6485 4235
AR Path="/63BD05FA" Ref="C?"  Part="1" 
AR Path="/62E48B71/63BD05FA" Ref="C1"  Part="1" 
AR Path="/63A22C28/63BD05FA" Ref="C?"  Part="1" 
F 0 "C1" H 6600 4281 50  0000 L CNN
F 1 "100n" H 6600 4190 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 6523 4085 50  0001 C CNN
F 3 "~" H 6485 4235 50  0001 C CNN
	1    6485 4235
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 63BD0600
P 6485 4485
AR Path="/63BD0600" Ref="#PWR?"  Part="1" 
AR Path="/62E48B71/63BD0600" Ref="#PWR07"  Part="1" 
AR Path="/63A22C28/63BD0600" Ref="#PWR?"  Part="1" 
F 0 "#PWR07" H 6485 4235 50  0001 C CNN
F 1 "GND" H 6485 4335 50  0000 C CNN
F 2 "" H 6485 4485 50  0001 C CNN
F 3 "" H 6485 4485 50  0001 C CNN
	1    6485 4485
	1    0    0    -1  
$EndComp
Wire Wire Line
	6485 4085 6485 3985
Wire Wire Line
	6485 4385 6485 4485
$Comp
L power:+5V #PWR?
U 1 1 63BD0608
P 6485 3985
AR Path="/63BD0608" Ref="#PWR?"  Part="1" 
AR Path="/62E48B71/63BD0608" Ref="#PWR06"  Part="1" 
AR Path="/63A22C28/63BD0608" Ref="#PWR?"  Part="1" 
F 0 "#PWR06" H 6485 3835 50  0001 C CNN
F 1 "+5V" H 6500 4158 50  0000 C CNN
F 2 "" H 6485 3985 50  0001 C CNN
F 3 "" H 6485 3985 50  0001 C CNN
	1    6485 3985
	1    0    0    -1  
$EndComp
$Comp
L AS6C4008:AS6C4008 U2
U 1 1 63F5A21F
P 8535 4290
F 0 "U2" H 8535 5405 50  0000 C CNN
F 1 "AS6C4008" H 8535 5314 50  0000 C CNN
F 2 "Package_DIP:DIP-32_W15.24mm_Socket_LongPads" H 8535 4290 50  0001 C CNN
F 3 "DOCUMENTATION" H 8535 4290 50  0001 C CNN
	1    8535 4290
	1    0    0    -1  
$EndComp
Wire Wire Line
	7785 3540 7340 3540
Wire Wire Line
	7785 3640 7340 3640
Wire Wire Line
	7785 3740 7340 3740
Wire Wire Line
	7785 3840 7340 3840
Wire Wire Line
	7785 3940 7340 3940
Wire Wire Line
	7785 4040 7340 4040
Wire Wire Line
	7785 4140 7340 4140
Wire Wire Line
	7785 4240 7340 4240
Wire Wire Line
	7785 4340 7340 4340
Wire Wire Line
	7785 4440 7340 4440
Wire Wire Line
	7785 4540 7340 4540
Wire Wire Line
	7785 4640 7340 4640
Wire Wire Line
	7785 4740 7340 4740
Wire Wire Line
	7785 4840 7340 4840
Wire Wire Line
	7785 4940 7340 4940
Wire Wire Line
	7785 5040 7605 5040
Wire Wire Line
	7605 5040 7605 5385
$Comp
L power:GND #PWR?
U 1 1 63FAC74C
P 7605 5385
AR Path="/63FAC74C" Ref="#PWR?"  Part="1" 
AR Path="/62E48B71/63FAC74C" Ref="#PWR08"  Part="1" 
AR Path="/63A22C28/63FAC74C" Ref="#PWR?"  Part="1" 
F 0 "#PWR08" H 7605 5135 50  0001 C CNN
F 1 "GND" H 7605 5235 50  0000 C CNN
F 2 "" H 7605 5385 50  0001 C CNN
F 3 "" H 7605 5385 50  0001 C CNN
	1    7605 5385
	1    0    0    -1  
$EndComp
Wire Wire Line
	9730 3640 9285 3640
Wire Wire Line
	9730 3740 9285 3740
Wire Wire Line
	9730 3940 9285 3940
Wire Wire Line
	9730 4040 9285 4040
Wire Wire Line
	9730 4140 9285 4140
Wire Wire Line
	9730 4240 9285 4240
Wire Wire Line
	9730 4440 9285 4440
Wire Wire Line
	9730 4640 9285 4640
Wire Wire Line
	9730 4740 9285 4740
Wire Wire Line
	9730 4840 9285 4840
Wire Wire Line
	9730 4940 9285 4940
Wire Wire Line
	9730 5040 9285 5040
Entry Wire Line
	7240 3440 7340 3540
Entry Wire Line
	7240 3540 7340 3640
Entry Wire Line
	7240 3640 7340 3740
Entry Wire Line
	7240 3740 7340 3840
Entry Wire Line
	7240 3840 7340 3940
Entry Wire Line
	7240 3940 7340 4040
Entry Wire Line
	7240 4040 7340 4140
Entry Wire Line
	7240 4140 7340 4240
Entry Wire Line
	7240 4240 7340 4340
Entry Wire Line
	7240 4340 7340 4440
Entry Wire Line
	7240 4440 7340 4540
Entry Wire Line
	7240 4540 7340 4640
Entry Wire Line
	7240 4640 7340 4740
Entry Wire Line
	7240 4740 7340 4840
Entry Wire Line
	7240 4840 7340 4940
Entry Wire Line
	9830 4940 9730 5040
Entry Wire Line
	9830 4840 9730 4940
Entry Wire Line
	9830 4740 9730 4840
Entry Wire Line
	9830 4640 9730 4740
Entry Wire Line
	9830 4540 9730 4640
Entry Wire Line
	9830 4340 9730 4440
Entry Wire Line
	9830 4140 9730 4240
Entry Wire Line
	9830 4040 9730 4140
Entry Wire Line
	9830 3940 9730 4040
Entry Wire Line
	9830 3840 9730 3940
Entry Wire Line
	9830 3640 9730 3740
Wire Wire Line
	9285 3540 9465 3540
Wire Wire Line
	9465 3540 9465 3195
$Comp
L power:+5V #PWR?
U 1 1 6400E4BF
P 9465 3195
AR Path="/6400E4BF" Ref="#PWR?"  Part="1" 
AR Path="/62E48B71/6400E4BF" Ref="#PWR09"  Part="1" 
AR Path="/63A22C28/6400E4BF" Ref="#PWR?"  Part="1" 
F 0 "#PWR09" H 9465 3045 50  0001 C CNN
F 1 "+5V" H 9480 3368 50  0000 C CNN
F 2 "" H 9465 3195 50  0001 C CNN
F 3 "" H 9465 3195 50  0001 C CNN
	1    9465 3195
	1    0    0    -1  
$EndComp
Entry Wire Line
	9830 3540 9730 3640
Wire Bus Line
	7240 2895 6275 2895
Wire Bus Line
	7240 2895 9830 2895
Connection ~ 7240 2895
Text Label 9730 3640 2    50   ~ 0
a3
Text Label 9730 3740 2    50   ~ 0
a17
Text Label 9730 3940 2    50   ~ 0
a5
Text Label 9730 4140 2    50   ~ 0
a7
Text Label 9730 4440 2    50   ~ 0
a2
Text Label 7340 3540 0    50   ~ 0
a18
Text Label 7340 3640 0    50   ~ 0
a16
Text Label 7340 3740 0    50   ~ 0
a1
Text Label 7340 3840 0    50   ~ 0
a0
Text Label 7340 3940 0    50   ~ 0
a8
Text Label 7340 4040 0    50   ~ 0
a9
Text Label 7340 4140 0    50   ~ 0
a10
Text Label 7340 4240 0    50   ~ 0
a13
Text Label 7340 4340 0    50   ~ 0
a11
Text Label 7340 4440 0    50   ~ 0
a12
Text Label 7340 4540 0    50   ~ 0
a14
Text Label 7340 4640 0    50   ~ 0
a15
Text GLabel 9375 3840 2    50   Input ~ 0
R_~W
Wire Wire Line
	9285 3840 9375 3840
Wire Bus Line
	9830 5670 7240 5670
Wire Bus Line
	7240 5670 6275 5670
Text GLabel 6275 5670 0    50   BiDi ~ 0
d[0..7]
Text Label 7340 4740 0    50   ~ 0
d2
Text Label 7340 4840 0    50   ~ 0
d1
Text Label 7340 4940 0    50   ~ 0
d0
Text Label 9730 4840 2    50   ~ 0
d5
Text Label 9730 4940 2    50   ~ 0
d4
Text Label 9730 5040 2    50   ~ 0
d3
Text Label 7240 5670 2    60   ~ 0
DataBus
Connection ~ 7240 5670
Text GLabel 6275 2895 0    50   Input ~ 0
a[0..18]
Text Label 9730 4540 2    50   ~ 0
~sram_ce
Wire Wire Line
	9285 4340 9380 4340
Wire Wire Line
	9380 4340 9380 4540
Connection ~ 9380 4540
Wire Wire Line
	9380 4540 9285 4540
Text GLabel 9955 4440 2    50   Input ~ 0
~SRAM_CE
Wire Wire Line
	9775 4540 9775 4440
Wire Wire Line
	9775 4440 9955 4440
Wire Wire Line
	9380 4540 9775 4540
Text Label 9730 4040 2    50   ~ 0
a6
Text Label 9730 4240 2    50   ~ 0
a4
Text Label 9730 4740 2    50   ~ 0
d6
Text Label 9730 4640 2    50   ~ 0
d7
Wire Bus Line
	7240 4640 7240 5670
Wire Bus Line
	9830 4540 9830 5670
Wire Bus Line
	9830 2895 9830 4340
Wire Bus Line
	7240 2895 7240 4540
$EndSCHEMATC
