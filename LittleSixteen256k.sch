EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "C16/+4 256 kB RAM Expansion"
Date "2022-07-27"
Rev "1git"
Comp "SukkoPera"
Comment1 "Hannes Version (Update 1 with \"TED Feature\")"
Comment2 "Based on drawings by Solder/Synergy"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L 74xx:74LS138 U4
U 1 1 62DF0ADC
P 2590 1955
F 0 "U4" H 2835 2415 50  0000 C CNN
F 1 "74LS138" H 2855 1390 50  0000 C CNN
F 2 "" H 2590 1955 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS138" H 2590 1955 50  0001 C CNN
	1    2590 1955
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS02 U6
U 5 1 62DF90E0
P 1625 6675
F 0 "U6" H 1855 6721 50  0000 L CNN
F 1 "74LS02" H 1855 6630 50  0000 L CNN
F 2 "" H 1625 6675 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls02" H 1625 6675 50  0001 C CNN
	5    1625 6675
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HCT02 U7
U 1 1 62DFD173
P 5645 5165
F 0 "U7" H 5645 5490 50  0000 C CNN
F 1 "74HCT02" H 5645 5399 50  0000 C CNN
F 2 "" H 5645 5165 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74hct02" H 5645 5165 50  0001 C CNN
	1    5645 5165
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HCT02 U7
U 2 1 62DFF8FE
P 5645 4550
F 0 "U7" H 5645 4875 50  0000 C CNN
F 1 "74HCT02" H 5645 4784 50  0000 C CNN
F 2 "" H 5645 4550 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74hct02" H 5645 4550 50  0001 C CNN
	2    5645 4550
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HCT02 U7
U 4 1 62E02D6B
P 6695 4880
F 0 "U7" H 6695 5205 50  0000 C CNN
F 1 "74HCT02" H 6695 5114 50  0000 C CNN
F 2 "" H 6695 4880 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74hct02" H 6695 4880 50  0001 C CNN
	4    6695 4880
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HCT02 U7
U 5 1 62E06660
P 3120 6675
F 0 "U7" H 3350 6721 50  0000 L CNN
F 1 "74HCT02" H 3350 6630 50  0000 L CNN
F 2 "" H 3120 6675 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74hct02" H 3120 6675 50  0001 C CNN
	5    3120 6675
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS257 U9
U 1 1 62E0AC95
P 9725 3050
F 0 "U9" H 9960 3800 50  0000 C CNN
F 1 "74HCT257" H 10005 2165 50  0000 C CNN
F 2 "" H 9725 3050 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS257" H 9725 3050 50  0001 C CNN
	1    9725 3050
	1    0    0    -1  
$EndComp
Text Label 3540 2355 2    50   ~ 0
~cs_eprom
Wire Wire Line
	3090 2355 3540 2355
Text Label 3540 2255 2    50   ~ 0
~cs_ram
Wire Wire Line
	2090 2255 1675 2255
Text Notes 1675 2255 0    50   ~ 0
FD1x (CS)
Wire Wire Line
	2090 2355 1675 2355
Text Label 1675 2355 0    50   ~ 0
a3
Wire Wire Line
	2090 1655 1675 1655
Text Label 1675 1655 0    50   ~ 0
a0
Wire Wire Line
	2090 1755 1675 1755
Text Label 1675 1755 0    50   ~ 0
a1
Wire Wire Line
	2090 1855 1675 1855
Text Label 1675 1855 0    50   ~ 0
a2
Text Notes 3540 2355 0    50   ~ 0
FD17 (ROM)
Text Notes 3540 2255 0    50   ~ 0
FD16 (RAM)
Wire Wire Line
	3090 1655 3540 1655
Text Notes 3540 1655 0    50   ~ 0
FD10 (ORIG. ~CS~)
NoConn ~ 3090 1755
NoConn ~ 3090 1855
NoConn ~ 3090 1955
NoConn ~ 3090 2055
NoConn ~ 3090 2155
$Comp
L MOS_6529:MOS_6529 U5
U 1 1 62E16667
P 5145 2775
F 0 "U5" H 5145 3590 50  0000 C CNN
F 1 "MOS_6529" H 5145 3499 50  0000 C CNN
F 2 "" H 5145 2775 50  0001 C CNN
F 3 "DOCUMENTATION" H 5145 2775 50  0001 C CNN
	1    5145 2775
	-1   0    0    -1  
$EndComp
$Comp
L MOS_6529:MOS_6529 U5
U 2 1 62E176DE
P 4660 6680
F 0 "U5" H 4928 6726 50  0000 L CNN
F 1 "MOS_6529" H 4928 6635 50  0000 L CNN
F 2 "" H 4660 6680 50  0001 C CNN
F 3 "DOCUMENTATION" H 4660 6680 50  0001 C CNN
	2    4660 6680
	1    0    0    -1  
$EndComp
Wire Wire Line
	2090 2155 1975 2155
Wire Wire Line
	1975 2155 1975 1240
Wire Wire Line
	1975 1240 2590 1240
Wire Wire Line
	2590 1240 2590 1355
$Comp
L power:+5V #PWR01
U 1 1 62E1A0E0
P 2590 1155
F 0 "#PWR01" H 2590 1005 50  0001 C CNN
F 1 "+5V" H 2605 1328 50  0000 C CNN
F 2 "" H 2590 1155 50  0001 C CNN
F 3 "" H 2590 1155 50  0001 C CNN
	1    2590 1155
	1    0    0    -1  
$EndComp
Wire Wire Line
	2590 1155 2590 1240
Connection ~ 2590 1240
$Comp
L power:GND #PWR03
U 1 1 62E1B69E
P 2590 2785
F 0 "#PWR03" H 2590 2535 50  0001 C CNN
F 1 "GND" H 2595 2612 50  0000 C CNN
F 2 "" H 2590 2785 50  0001 C CNN
F 3 "" H 2590 2785 50  0001 C CNN
	1    2590 2785
	1    0    0    -1  
$EndComp
Wire Wire Line
	2590 2785 2590 2655
Wire Wire Line
	3090 2255 4395 2255
Wire Wire Line
	4395 2595 4095 2595
Wire Wire Line
	4395 2695 4095 2695
Wire Wire Line
	4395 2795 4095 2795
Wire Wire Line
	4395 2895 4095 2895
Wire Wire Line
	4395 2995 4095 2995
Wire Wire Line
	4395 3095 4095 3095
Wire Wire Line
	4395 3195 4095 3195
Wire Wire Line
	4395 3295 4095 3295
Text Label 4095 2595 0    50   ~ 0
d0
Text Label 4095 2695 0    50   ~ 0
d1
Text Label 4095 2795 0    50   ~ 0
d2
Text Label 4095 2895 0    50   ~ 0
d3
Text Label 4095 2995 0    50   ~ 0
d4
Text Label 4095 3095 0    50   ~ 0
d5
Text Label 4095 3195 0    50   ~ 0
d6
Text Label 4095 3295 0    50   ~ 0
d7
Wire Wire Line
	4395 2355 4095 2355
Text Label 4095 2355 0    50   ~ 0
r_~w
NoConn ~ 5895 2795
NoConn ~ 5895 2895
NoConn ~ 5895 2995
NoConn ~ 5895 3095
Wire Wire Line
	5895 2695 6035 2695
$Comp
L 74xx:74LS02 U6
U 4 1 62DF7AF4
P 8360 2495
F 0 "U6" H 8360 2820 50  0000 C CNN
F 1 "74LS02" H 8360 2729 50  0000 C CNN
F 2 "" H 8360 2495 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls02" H 8360 2495 50  0001 C CNN
	4    8360 2495
	1    0    0    -1  
$EndComp
Wire Wire Line
	5895 2595 8060 2595
Wire Wire Line
	7995 2395 8060 2395
Wire Wire Line
	6035 2695 6035 2950
Wire Wire Line
	5345 5065 4960 5065
Text Label 4960 5065 0    50   ~ 0
a15
Wire Wire Line
	5345 5265 4960 5265
Text Label 4960 5265 0    50   ~ 0
a14
Wire Wire Line
	5345 4450 4960 4450
Text Label 4960 4450 0    50   ~ 0
a13
Wire Wire Line
	5345 4650 4960 4650
Text Label 4960 4650 0    50   ~ 0
a12
$Comp
L 74xx:74LS02 U6
U 1 1 62DF19F7
P 7635 3295
F 0 "U6" H 7635 3690 50  0000 C CNN
F 1 "74LS02" H 7635 3590 50  0000 C CNN
F 2 "" H 7635 3295 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls02" H 7635 3295 50  0001 C CNN
	1    7635 3295
	1    0    0    1   
$EndComp
$Comp
L 74xx:74LS02 U6
U 3 1 62DF5E28
P 8360 3050
F 0 "U6" H 8360 2733 50  0000 C CNN
F 1 "74LS02" H 8360 2824 50  0000 C CNN
F 2 "" H 8360 3050 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls02" H 8360 3050 50  0001 C CNN
	3    8360 3050
	1    0    0    1   
$EndComp
Wire Wire Line
	6035 2950 8060 2950
Wire Wire Line
	7995 2395 7995 3150
Wire Wire Line
	7995 3150 8060 3150
Connection ~ 7995 3150
Wire Wire Line
	7995 3150 7995 3295
Wire Wire Line
	7935 3295 7995 3295
$Comp
L 74xx:74HCT02 U7
U 3 1 62E01382
P 5645 3955
F 0 "U7" H 5645 4280 50  0000 C CNN
F 1 "74HCT02" H 5645 4189 50  0000 C CNN
F 2 "" H 5645 3955 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74hct02" H 5645 3955 50  0001 C CNN
	3    5645 3955
	1    0    0    -1  
$EndComp
Wire Wire Line
	5345 4055 4960 4055
Wire Wire Line
	7215 3395 7335 3395
Text Notes 1190 3440 0    50   ~ 0
SPARES
NoConn ~ 10225 2450
NoConn ~ 10225 2750
NoConn ~ 10225 3350
Wire Wire Line
	10225 3050 10375 3050
$Comp
L Device:R R1
U 1 1 62F51ABA
P 10525 3050
F 0 "R1" V 10318 3050 50  0000 C CNN
F 1 "33" V 10409 3050 50  0000 C CNN
F 2 "" V 10455 3050 50  0001 C CNN
F 3 "~" H 10525 3050 50  0001 C CNN
	1    10525 3050
	0    1    1    0   
$EndComp
Wire Wire Line
	10675 3050 10835 3050
Wire Wire Line
	8660 3050 9225 3050
Wire Wire Line
	9225 3150 8750 3150
Wire Wire Line
	8750 3150 8750 2495
Wire Wire Line
	8750 2495 8660 2495
$Comp
L power:+5V #PWR02
U 1 1 62F5E95B
P 9725 2065
F 0 "#PWR02" H 9725 1915 50  0001 C CNN
F 1 "+5V" H 9740 2238 50  0000 C CNN
F 2 "" H 9725 2065 50  0001 C CNN
F 3 "" H 9725 2065 50  0001 C CNN
	1    9725 2065
	1    0    0    -1  
$EndComp
Wire Wire Line
	9725 2065 9725 2150
$Comp
L power:GND #PWR05
U 1 1 62F60C46
P 9725 4180
F 0 "#PWR05" H 9725 3930 50  0001 C CNN
F 1 "GND" H 9730 4007 50  0000 C CNN
F 2 "" H 9725 4180 50  0001 C CNN
F 3 "" H 9725 4180 50  0001 C CNN
	1    9725 4180
	1    0    0    -1  
$EndComp
Wire Wire Line
	9725 4180 9725 4115
Text Label 10835 3050 2    50   ~ 0
a8
Wire Wire Line
	9225 3650 8900 3650
Wire Wire Line
	9225 3750 9120 3750
Text Label 8900 3650 0    50   ~ 0
mux
Wire Wire Line
	9120 3750 9120 4115
Wire Wire Line
	9120 4115 9725 4115
Connection ~ 9725 4115
Wire Wire Line
	9725 4115 9725 4050
Wire Wire Line
	9225 2450 8975 2450
Wire Wire Line
	9225 2550 8975 2550
Wire Wire Line
	9225 3350 8975 3350
Wire Wire Line
	9225 2750 8975 2750
Wire Wire Line
	9225 2850 8975 2850
Wire Wire Line
	9225 3450 8975 3450
Text Label 8975 2450 0    50   ~ 0
a14
Text Label 8975 2550 0    50   ~ 0
a0
Text Label 8975 2750 0    50   ~ 0
a12
Text Label 8975 2850 0    50   ~ 0
a5
Text Label 8975 3350 0    50   ~ 0
a11
Text Label 8975 3450 0    50   ~ 0
a4
Wire Notes Line
	8900 2335 8900 2970
Wire Notes Line
	8900 2970 9155 2970
Wire Notes Line
	9155 2970 9155 2335
Wire Notes Line
	9155 2335 8900 2335
Wire Notes Line
	8900 3250 8900 3510
Wire Notes Line
	8900 3510 9155 3510
Wire Notes Line
	9155 3510 9155 3250
Wire Notes Line
	9155 3250 8900 3250
Wire Notes Line
	9025 2970 9025 3250
Text Notes 9175 2300 1    50   ~ 0
I THINK IT'S NOT REALLY\nNECESSARY TO CONNECT\nTHESE, JUST STICK THEM\nTO VCC OR GND
Text Notes 9815 4160 0    50   ~ 0
'157 WILL BE\nFINE TOO
Wire Notes Line
	3975 2745 4350 2745
Wire Notes Line
	4350 2745 4350 3115
Wire Notes Line
	4350 3110 3975 3110
Wire Notes Line
	3975 3110 3975 2745
Text Notes 3935 3005 2    50   ~ 0
PROBABLY\nUNNECESSARY
$Comp
L Device:C C2
U 1 1 62DFB2A6
P 1100 6675
F 0 "C2" H 1215 6721 50  0000 L CNN
F 1 "100n" H 1215 6630 50  0000 L CNN
F 2 "" H 1138 6525 50  0001 C CNN
F 3 "~" H 1100 6675 50  0001 C CNN
	1    1100 6675
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 62DFF9C2
P 2610 6675
F 0 "C3" H 2495 6721 50  0000 R CNN
F 1 "100n" H 2495 6630 50  0000 R CNN
F 2 "" H 2648 6525 50  0001 C CNN
F 3 "~" H 2610 6675 50  0001 C CNN
	1    2610 6675
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 62E0197E
P 4125 6675
F 0 "C4" H 4010 6721 50  0000 R CNN
F 1 "100n" H 4010 6630 50  0000 R CNN
F 2 "" H 4163 6525 50  0001 C CNN
F 3 "~" H 4125 6675 50  0001 C CNN
	1    4125 6675
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 6525 1100 6070
Wire Wire Line
	1100 6070 1355 6070
Wire Wire Line
	1625 6070 1625 6175
Wire Wire Line
	1100 6825 1100 7275
Wire Wire Line
	1100 7275 1355 7275
Wire Wire Line
	1625 7275 1625 7175
Wire Wire Line
	2610 6825 2610 7275
Wire Wire Line
	2610 7275 2855 7275
Wire Wire Line
	3120 7175 3120 7275
Wire Wire Line
	4125 6825 4125 7275
Wire Wire Line
	4125 7275 4385 7275
Wire Wire Line
	4660 7275 4660 7130
Wire Wire Line
	2610 6525 2610 6070
Wire Wire Line
	2610 6070 2855 6070
Wire Wire Line
	3120 6070 3120 6175
Wire Wire Line
	4125 6525 4125 6070
Wire Wire Line
	4125 6070 4385 6070
Wire Wire Line
	4660 6070 4660 6230
$Comp
L power:GND #PWR010
U 1 1 62E1CEA8
P 1355 7405
F 0 "#PWR010" H 1355 7155 50  0001 C CNN
F 1 "GND" H 1360 7232 50  0000 C CNN
F 2 "" H 1355 7405 50  0001 C CNN
F 3 "" H 1355 7405 50  0001 C CNN
	1    1355 7405
	1    0    0    -1  
$EndComp
Wire Wire Line
	1355 7405 1355 7275
Connection ~ 1355 7275
Wire Wire Line
	1355 7275 1625 7275
$Comp
L power:GND #PWR011
U 1 1 62E20480
P 2855 7405
F 0 "#PWR011" H 2855 7155 50  0001 C CNN
F 1 "GND" H 2860 7232 50  0000 C CNN
F 2 "" H 2855 7405 50  0001 C CNN
F 3 "" H 2855 7405 50  0001 C CNN
	1    2855 7405
	1    0    0    -1  
$EndComp
Wire Wire Line
	2855 7405 2855 7275
Connection ~ 2855 7275
Wire Wire Line
	2855 7275 3120 7275
$Comp
L power:GND #PWR012
U 1 1 62E23C49
P 4385 7405
F 0 "#PWR012" H 4385 7155 50  0001 C CNN
F 1 "GND" H 4390 7232 50  0000 C CNN
F 2 "" H 4385 7405 50  0001 C CNN
F 3 "" H 4385 7405 50  0001 C CNN
	1    4385 7405
	1    0    0    -1  
$EndComp
Wire Wire Line
	4385 7405 4385 7275
Connection ~ 4385 7275
Wire Wire Line
	4385 7275 4660 7275
$Comp
L power:+5V #PWR07
U 1 1 62E273AD
P 1355 5985
F 0 "#PWR07" H 1355 5835 50  0001 C CNN
F 1 "+5V" H 1370 6158 50  0000 C CNN
F 2 "" H 1355 5985 50  0001 C CNN
F 3 "" H 1355 5985 50  0001 C CNN
	1    1355 5985
	1    0    0    -1  
$EndComp
Wire Wire Line
	1355 5985 1355 6070
Connection ~ 1355 6070
Wire Wire Line
	1355 6070 1625 6070
$Comp
L power:+5V #PWR08
U 1 1 62E2BBED
P 2855 5985
F 0 "#PWR08" H 2855 5835 50  0001 C CNN
F 1 "+5V" H 2870 6158 50  0000 C CNN
F 2 "" H 2855 5985 50  0001 C CNN
F 3 "" H 2855 5985 50  0001 C CNN
	1    2855 5985
	1    0    0    -1  
$EndComp
Wire Wire Line
	2855 5985 2855 6070
Connection ~ 2855 6070
Wire Wire Line
	2855 6070 3120 6070
$Comp
L power:+5V #PWR09
U 1 1 62E30E80
P 4385 5985
F 0 "#PWR09" H 4385 5835 50  0001 C CNN
F 1 "+5V" H 4400 6158 50  0000 C CNN
F 2 "" H 4385 5985 50  0001 C CNN
F 3 "" H 4385 5985 50  0001 C CNN
	1    4385 5985
	1    0    0    -1  
$EndComp
Wire Wire Line
	4385 5985 4385 6070
Connection ~ 4385 6070
Wire Wire Line
	4385 6070 4660 6070
$Comp
L Device:C C1
U 1 1 62E36656
P 10515 3995
F 0 "C1" H 10630 4041 50  0000 L CNN
F 1 "100n" H 10630 3950 50  0000 L CNN
F 2 "" H 10553 3845 50  0001 C CNN
F 3 "~" H 10515 3995 50  0001 C CNN
	1    10515 3995
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 62E3DF8C
P 10515 4210
F 0 "#PWR06" H 10515 3960 50  0001 C CNN
F 1 "GND" H 10520 4037 50  0000 C CNN
F 2 "" H 10515 4210 50  0001 C CNN
F 3 "" H 10515 4210 50  0001 C CNN
	1    10515 4210
	1    0    0    -1  
$EndComp
Wire Wire Line
	10515 4210 10515 4145
$Comp
L power:+5V #PWR04
U 1 1 62E44F89
P 10515 3760
F 0 "#PWR04" H 10515 3610 50  0001 C CNN
F 1 "+5V" H 10530 3933 50  0000 C CNN
F 2 "" H 10515 3760 50  0001 C CNN
F 3 "" H 10515 3760 50  0001 C CNN
	1    10515 3760
	1    0    0    -1  
$EndComp
Wire Wire Line
	10515 3760 10515 3845
NoConn ~ 3540 2355
$Comp
L 74xx:74LS27 U16
U 2 1 62E54F7D
P 1325 5100
F 0 "U16" H 1325 5425 50  0000 C CNN
F 1 "74LS27" H 1325 5334 50  0000 C CNN
F 2 "" H 1325 5100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS27" H 1325 5100 50  0001 C CNN
	2    1325 5100
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS27 U16
U 3 1 62E578A4
P 6680 3955
F 0 "U16" H 6680 4280 50  0000 C CNN
F 1 "74LS27" H 6680 4189 50  0000 C CNN
F 2 "" H 6680 3955 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS27" H 6680 3955 50  0001 C CNN
	3    6680 3955
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS27 U16
U 4 1 62E58C79
P 6310 6675
F 0 "U16" H 6540 6721 50  0000 L CNN
F 1 "74LS27" H 6540 6630 50  0000 L CNN
F 2 "" H 6310 6675 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS27" H 6310 6675 50  0001 C CNN
	4    6310 6675
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 62E688D0
P 5800 6675
F 0 "C?" H 5685 6721 50  0000 R CNN
F 1 "100n" H 5685 6630 50  0000 R CNN
F 2 "" H 5838 6525 50  0001 C CNN
F 3 "~" H 5800 6675 50  0001 C CNN
	1    5800 6675
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 6825 5800 7275
Wire Wire Line
	5800 7275 6045 7275
Wire Wire Line
	6310 7175 6310 7275
Wire Wire Line
	5800 6525 5800 6070
Wire Wire Line
	5800 6070 6045 6070
Wire Wire Line
	6310 6070 6310 6175
$Comp
L power:GND #PWR?
U 1 1 62E688E0
P 6045 7405
F 0 "#PWR?" H 6045 7155 50  0001 C CNN
F 1 "GND" H 6050 7232 50  0000 C CNN
F 2 "" H 6045 7405 50  0001 C CNN
F 3 "" H 6045 7405 50  0001 C CNN
	1    6045 7405
	1    0    0    -1  
$EndComp
Wire Wire Line
	6045 7405 6045 7275
Connection ~ 6045 7275
Wire Wire Line
	6045 7275 6310 7275
$Comp
L power:+5V #PWR?
U 1 1 62E688ED
P 6045 5985
F 0 "#PWR?" H 6045 5835 50  0001 C CNN
F 1 "+5V" H 6060 6158 50  0000 C CNN
F 2 "" H 6045 5985 50  0001 C CNN
F 3 "" H 6045 5985 50  0001 C CNN
	1    6045 5985
	1    0    0    -1  
$EndComp
Wire Wire Line
	6045 5985 6045 6070
Connection ~ 6045 6070
Wire Wire Line
	6045 6070 6310 6070
$Comp
L 74xx:74LS27 U16
U 1 1 62E54499
P 1325 4515
F 0 "U16" H 1325 4840 50  0000 C CNN
F 1 "74LS27" H 1325 4749 50  0000 C CNN
F 2 "" H 1325 4515 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS27" H 1325 4515 50  0001 C CNN
	1    1325 4515
	1    0    0    -1  
$EndComp
Wire Wire Line
	1025 4415 860  4415
Wire Wire Line
	860  4415 860  4515
Wire Wire Line
	1025 4515 860  4515
Connection ~ 860  4515
Wire Wire Line
	860  4515 860  4615
Wire Wire Line
	1025 4615 860  4615
Connection ~ 860  4615
Wire Wire Line
	860  4615 860  5000
Wire Wire Line
	1025 5000 860  5000
Connection ~ 860  5000
Wire Wire Line
	860  5000 860  5100
Wire Wire Line
	1025 5100 860  5100
Connection ~ 860  5100
Wire Wire Line
	860  5100 860  5200
Wire Wire Line
	1025 5200 860  5200
Connection ~ 860  5200
Wire Wire Line
	860  5200 860  5320
$Comp
L power:GND #PWR?
U 1 1 62E9E3D1
P 860 5320
F 0 "#PWR?" H 860 5070 50  0001 C CNN
F 1 "GND" H 865 5147 50  0000 C CNN
F 2 "" H 860 5320 50  0001 C CNN
F 3 "" H 860 5320 50  0001 C CNN
	1    860  5320
	1    0    0    -1  
$EndComp
NoConn ~ 1625 5100
NoConn ~ 1625 4515
$Comp
L 74xx:74LS02 U6
U 2 1 62DF48AF
P 1325 3940
F 0 "U6" H 1325 4265 50  0000 C CNN
F 1 "74LS02" H 1325 4174 50  0000 C CNN
F 2 "" H 1325 3940 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls02" H 1325 3940 50  0001 C CNN
	2    1325 3940
	1    0    0    -1  
$EndComp
Wire Wire Line
	1025 3840 860  3840
Wire Wire Line
	860  3840 860  4040
Connection ~ 860  4415
Wire Wire Line
	1025 4040 860  4040
Connection ~ 860  4040
Wire Wire Line
	860  4040 860  4415
NoConn ~ 1625 3940
Text Label 4960 4055 0    50   ~ 0
~aec
Wire Wire Line
	6995 4880 7215 4880
Wire Wire Line
	6980 3955 7095 3955
Wire Wire Line
	7095 3955 7095 3195
Wire Wire Line
	7095 3195 7335 3195
Wire Wire Line
	4840 3855 5345 3855
Wire Wire Line
	4840 3535 4840 3855
Wire Wire Line
	5895 3195 6035 3195
Wire Wire Line
	6035 3195 6035 3535
Wire Wire Line
	6035 3535 4840 3535
Wire Wire Line
	5895 3295 6145 3295
Wire Wire Line
	6145 3295 6145 3855
Wire Wire Line
	6145 3855 6380 3855
Wire Wire Line
	7215 3395 7215 4880
Text Notes 10975 6370 2    50   ~ 0
Update 1 adds a "TED Feature": the purpose of the change is to restrict\nTED access to RAM bank 3 when the 6th bit of the RAM register is cleared.\nIf bit 6 is HIGH, the current ram bank is retained during TED access. So:\n- U5 Bit6=0: CPU accesses current RAM, TED always accesses RAM bank 3\n- U5 Bit6=1: CPU accesses current RAM, TED accesses current RAM
Wire Wire Line
	6145 4980 6395 4980
Wire Wire Line
	6145 4980 6145 5165
Wire Wire Line
	6145 5165 5945 5165
Wire Wire Line
	5945 4550 6035 4550
Connection ~ 6145 3955
Wire Wire Line
	6145 3955 6380 3955
Wire Wire Line
	5945 3955 6145 3955
Wire Wire Line
	6145 3955 6145 4780
Wire Wire Line
	6145 4780 6395 4780
Wire Wire Line
	6380 4055 6035 4055
Wire Wire Line
	6035 4055 6035 4550
$EndSCHEMATC
