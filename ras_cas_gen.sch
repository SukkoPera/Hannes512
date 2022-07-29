EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 3 3
Title "C16/+4 256 kB RAM Expansion"
Date "2022-07-29"
Rev "1git"
Comp "SukkoPera"
Comment1 "Hannes Version (Update 1 with \"TED Feature\")"
Comment2 "Based on drawings by Solder/Synergy"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L 74xx:74LS138 U?
U 1 1 63A64482
P 2960 4395
AR Path="/63A64482" Ref="U?"  Part="1" 
AR Path="/62E48B71/63A64482" Ref="U?"  Part="1" 
AR Path="/63A22C28/63A64482" Ref="U8"  Part="1" 
F 0 "U8" H 3205 4855 50  0000 C CNN
F 1 "74LS138" H 3225 3830 50  0000 C CNN
F 2 "" H 2960 4395 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS138" H 2960 4395 50  0001 C CNN
	1    2960 4395
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS02 U?
U 5 1 63A64488
P 1350 9940
AR Path="/63A64488" Ref="U?"  Part="5" 
AR Path="/62E48B71/63A64488" Ref="U?"  Part="5" 
AR Path="/63A22C28/63A64488" Ref="U7"  Part="5" 
F 0 "U7" H 1580 9986 50  0000 L CNN
F 1 "74LS02" H 1580 9895 50  0000 L CNN
F 2 "" H 1350 9940 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls02" H 1350 9940 50  0001 C CNN
	5    1350 9940
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HCT02 U?
U 1 1 63A6448E
P 6340 7605
AR Path="/63A6448E" Ref="U?"  Part="1" 
AR Path="/62E48B71/63A6448E" Ref="U?"  Part="1" 
AR Path="/63A22C28/63A6448E" Ref="U10"  Part="1" 
F 0 "U10" H 6340 7930 50  0000 C CNN
F 1 "74HCT02" H 6340 7839 50  0000 C CNN
F 2 "" H 6340 7605 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74hct02" H 6340 7605 50  0001 C CNN
	1    6340 7605
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HCT02 U?
U 2 1 63A64494
P 6340 6990
AR Path="/63A64494" Ref="U?"  Part="2" 
AR Path="/62E48B71/63A64494" Ref="U?"  Part="2" 
AR Path="/63A22C28/63A64494" Ref="U10"  Part="2" 
F 0 "U10" H 6340 7315 50  0000 C CNN
F 1 "74HCT02" H 6340 7224 50  0000 C CNN
F 2 "" H 6340 6990 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74hct02" H 6340 6990 50  0001 C CNN
	2    6340 6990
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HCT02 U?
U 4 1 63A6449A
P 7390 7320
AR Path="/63A6449A" Ref="U?"  Part="4" 
AR Path="/62E48B71/63A6449A" Ref="U?"  Part="4" 
AR Path="/63A22C28/63A6449A" Ref="U10"  Part="4" 
F 0 "U10" H 7390 7645 50  0000 C CNN
F 1 "74HCT02" H 7390 7554 50  0000 C CNN
F 2 "" H 7390 7320 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74hct02" H 7390 7320 50  0001 C CNN
	4    7390 7320
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HCT02 U?
U 5 1 63A644A0
P 2845 9940
AR Path="/63A644A0" Ref="U?"  Part="5" 
AR Path="/62E48B71/63A644A0" Ref="U?"  Part="5" 
AR Path="/63A22C28/63A644A0" Ref="U10"  Part="5" 
F 0 "U10" H 3075 9986 50  0000 L CNN
F 1 "74HCT02" H 3075 9895 50  0000 L CNN
F 2 "" H 2845 9940 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74hct02" H 2845 9940 50  0001 C CNN
	5    2845 9940
	1    0    0    -1  
$EndComp
Text Label 3845 4795 2    50   ~ 0
~cs_eprom
Wire Wire Line
	3460 4795 3885 4795
Text Label 3845 4695 2    50   ~ 0
~cs_ram
Wire Wire Line
	2460 4795 2045 4795
Text Label 2045 4795 0    50   ~ 0
a3
Wire Wire Line
	2460 4095 2045 4095
Text Label 2045 4095 0    50   ~ 0
a0
Wire Wire Line
	2460 4195 2045 4195
Text Label 2045 4195 0    50   ~ 0
a1
Wire Wire Line
	2460 4295 2045 4295
Text Label 2045 4295 0    50   ~ 0
a2
Text Notes 3870 4790 0    50   ~ 0
FD17 (ROM)
Text Notes 3870 4690 0    50   ~ 0
FD16 (RAM)
Wire Wire Line
	3460 4095 3610 4095
NoConn ~ 3460 4195
NoConn ~ 3460 4295
NoConn ~ 3460 4395
NoConn ~ 3460 4495
NoConn ~ 3460 4595
$Comp
L MOS_6529:MOS_6529 U?
U 2 1 63A644C2
P 4385 9945
AR Path="/63A644C2" Ref="U?"  Part="2" 
AR Path="/62E48B71/63A644C2" Ref="U?"  Part="2" 
AR Path="/63A22C28/63A644C2" Ref="U9"  Part="2" 
F 0 "U9" H 4653 9991 50  0000 L CNN
F 1 "MOS_6529" H 4653 9900 50  0000 L CNN
F 2 "" H 4385 9945 50  0001 C CNN
F 3 "DOCUMENTATION" H 4385 9945 50  0001 C CNN
	2    4385 9945
	1    0    0    -1  
$EndComp
Wire Wire Line
	2460 4595 2345 4595
Wire Wire Line
	2345 4595 2345 3680
Wire Wire Line
	2345 3680 2960 3680
Wire Wire Line
	2960 3680 2960 3795
$Comp
L power:+5V #PWR?
U 1 1 63A644CC
P 2960 3595
AR Path="/63A644CC" Ref="#PWR?"  Part="1" 
AR Path="/62E48B71/63A644CC" Ref="#PWR?"  Part="1" 
AR Path="/63A22C28/63A644CC" Ref="#PWR013"  Part="1" 
F 0 "#PWR013" H 2960 3445 50  0001 C CNN
F 1 "+5V" H 2975 3768 50  0000 C CNN
F 2 "" H 2960 3595 50  0001 C CNN
F 3 "" H 2960 3595 50  0001 C CNN
	1    2960 3595
	1    0    0    -1  
$EndComp
Wire Wire Line
	2960 3595 2960 3680
Connection ~ 2960 3680
$Comp
L power:GND #PWR?
U 1 1 63A644D4
P 2960 5225
AR Path="/63A644D4" Ref="#PWR?"  Part="1" 
AR Path="/62E48B71/63A644D4" Ref="#PWR?"  Part="1" 
AR Path="/63A22C28/63A644D4" Ref="#PWR015"  Part="1" 
F 0 "#PWR015" H 2960 4975 50  0001 C CNN
F 1 "GND" H 2965 5052 50  0000 C CNN
F 2 "" H 2960 5225 50  0001 C CNN
F 3 "" H 2960 5225 50  0001 C CNN
	1    2960 5225
	1    0    0    -1  
$EndComp
Wire Wire Line
	2960 5225 2960 5095
Wire Wire Line
	3460 4695 5090 4695
Wire Wire Line
	5090 5035 4790 5035
Wire Wire Line
	5090 5135 4790 5135
Wire Wire Line
	5090 5235 4790 5235
Wire Wire Line
	5090 5335 4790 5335
Wire Wire Line
	5090 5435 4790 5435
Wire Wire Line
	5090 5535 4790 5535
Wire Wire Line
	5090 5635 4790 5635
Wire Wire Line
	5090 5735 4790 5735
Text Label 4790 5035 0    50   ~ 0
d0
Text Label 4790 5135 0    50   ~ 0
d1
Text Label 4790 5235 0    50   ~ 0
d2
Text Label 4790 5335 0    50   ~ 0
d3
Text Label 4790 5435 0    50   ~ 0
d4
Text Label 4790 5535 0    50   ~ 0
d5
Text Label 4790 5635 0    50   ~ 0
d6
Text Label 4790 5735 0    50   ~ 0
d7
Wire Wire Line
	5090 4795 4790 4795
NoConn ~ 6590 5235
NoConn ~ 6590 5335
NoConn ~ 6590 5435
NoConn ~ 6590 5535
Wire Wire Line
	6590 5135 6730 5135
Wire Wire Line
	6730 5135 6730 5390
Wire Wire Line
	6040 7505 5655 7505
Text Label 5655 7505 0    50   ~ 0
a15
Wire Wire Line
	6040 7705 5655 7705
Text Label 5655 7705 0    50   ~ 0
a14
Wire Wire Line
	6040 6890 5655 6890
Text Label 5655 6890 0    50   ~ 0
a13
Wire Wire Line
	6040 7090 5655 7090
Text Label 5655 7090 0    50   ~ 0
a12
$Comp
L 74xx:74LS02 U?
U 1 1 63A644FC
P 8340 5735
AR Path="/63A644FC" Ref="U?"  Part="1" 
AR Path="/62E48B71/63A644FC" Ref="U?"  Part="1" 
AR Path="/63A22C28/63A644FC" Ref="U7"  Part="1" 
F 0 "U7" H 8340 6130 50  0000 C CNN
F 1 "74LS02" H 8340 6030 50  0000 C CNN
F 2 "" H 8340 5735 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls02" H 8340 5735 50  0001 C CNN
	1    8340 5735
	1    0    0    1   
$EndComp
$Comp
L 74xx:74HCT02 U?
U 3 1 63A64502
P 6340 6395
AR Path="/63A64502" Ref="U?"  Part="3" 
AR Path="/62E48B71/63A64502" Ref="U?"  Part="3" 
AR Path="/63A22C28/63A64502" Ref="U10"  Part="3" 
F 0 "U10" H 6340 6720 50  0000 C CNN
F 1 "74HCT02" H 6340 6629 50  0000 C CNN
F 2 "" H 6340 6395 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74hct02" H 6340 6395 50  0001 C CNN
	3    6340 6395
	1    0    0    -1  
$EndComp
Wire Wire Line
	6040 6495 5655 6495
Wire Wire Line
	7910 5835 8040 5835
Wire Wire Line
	10505 4740 10255 4740
Wire Wire Line
	10505 4840 10255 4840
Wire Wire Line
	10505 5240 10255 5240
Wire Wire Line
	10505 4990 10255 4990
Wire Wire Line
	10505 5090 10255 5090
Wire Wire Line
	10505 5340 10255 5340
Text Label 10255 4740 0    50   ~ 0
a14
Text Label 10255 4840 0    50   ~ 0
a0
Text Label 10255 4990 0    50   ~ 0
a12
Text Label 10255 5090 0    50   ~ 0
a5
Text Label 10255 5240 0    50   ~ 0
a11
Text Label 10255 5340 0    50   ~ 0
a4
Wire Notes Line
	10435 4625 10180 4625
Wire Notes Line
	10180 5400 10435 5400
Text Notes 10140 5385 1    50   ~ 0
I DON'T THINK IT'S REALLY\nNECESSARY TO CONNECT\nTHESE, JUST STICK THEM\nTO VCC OR GND
Text Notes 10985 6160 0    50   ~ 0
'157 WILL BE\nFINE TOO
Wire Notes Line
	5045 5185 5045 5555
$Comp
L Device:C C?
U 1 1 63A6451F
P 825 9940
AR Path="/63A6451F" Ref="C?"  Part="1" 
AR Path="/62E48B71/63A6451F" Ref="C?"  Part="1" 
AR Path="/63A22C28/63A6451F" Ref="C5"  Part="1" 
F 0 "C5" H 940 9986 50  0000 L CNN
F 1 "100n" H 940 9895 50  0000 L CNN
F 2 "" H 863 9790 50  0001 C CNN
F 3 "~" H 825 9940 50  0001 C CNN
	1    825  9940
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 63A64525
P 2335 9940
AR Path="/63A64525" Ref="C?"  Part="1" 
AR Path="/62E48B71/63A64525" Ref="C?"  Part="1" 
AR Path="/63A22C28/63A64525" Ref="C6"  Part="1" 
F 0 "C6" H 2220 9986 50  0000 R CNN
F 1 "100n" H 2220 9895 50  0000 R CNN
F 2 "" H 2373 9790 50  0001 C CNN
F 3 "~" H 2335 9940 50  0001 C CNN
	1    2335 9940
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 63A6452B
P 3850 9940
AR Path="/63A6452B" Ref="C?"  Part="1" 
AR Path="/62E48B71/63A6452B" Ref="C?"  Part="1" 
AR Path="/63A22C28/63A6452B" Ref="C7"  Part="1" 
F 0 "C7" H 3735 9986 50  0000 R CNN
F 1 "100n" H 3735 9895 50  0000 R CNN
F 2 "" H 3888 9790 50  0001 C CNN
F 3 "~" H 3850 9940 50  0001 C CNN
	1    3850 9940
	1    0    0    -1  
$EndComp
Wire Wire Line
	825  9790 825  9335
Wire Wire Line
	825  9335 1080 9335
Wire Wire Line
	1350 9335 1350 9440
Wire Wire Line
	825  10090 825  10540
Wire Wire Line
	825  10540 1080 10540
Wire Wire Line
	1350 10540 1350 10440
Wire Wire Line
	2335 10090 2335 10540
Wire Wire Line
	2335 10540 2580 10540
Wire Wire Line
	2845 10440 2845 10540
Wire Wire Line
	3850 10090 3850 10540
Wire Wire Line
	3850 10540 4110 10540
Wire Wire Line
	4385 10540 4385 10395
Wire Wire Line
	2335 9790 2335 9335
Wire Wire Line
	2335 9335 2580 9335
Wire Wire Line
	2845 9335 2845 9440
Wire Wire Line
	3850 9790 3850 9335
Wire Wire Line
	3850 9335 4110 9335
Wire Wire Line
	4385 9335 4385 9495
$Comp
L power:GND #PWR?
U 1 1 63A64543
P 1080 10670
AR Path="/63A64543" Ref="#PWR?"  Part="1" 
AR Path="/62E48B71/63A64543" Ref="#PWR?"  Part="1" 
AR Path="/63A22C28/63A64543" Ref="#PWR028"  Part="1" 
F 0 "#PWR028" H 1080 10420 50  0001 C CNN
F 1 "GND" H 1085 10497 50  0000 C CNN
F 2 "" H 1080 10670 50  0001 C CNN
F 3 "" H 1080 10670 50  0001 C CNN
	1    1080 10670
	1    0    0    -1  
$EndComp
Wire Wire Line
	1080 10670 1080 10540
Connection ~ 1080 10540
Wire Wire Line
	1080 10540 1350 10540
$Comp
L power:GND #PWR?
U 1 1 63A6454C
P 2580 10670
AR Path="/63A6454C" Ref="#PWR?"  Part="1" 
AR Path="/62E48B71/63A6454C" Ref="#PWR?"  Part="1" 
AR Path="/63A22C28/63A6454C" Ref="#PWR029"  Part="1" 
F 0 "#PWR029" H 2580 10420 50  0001 C CNN
F 1 "GND" H 2585 10497 50  0000 C CNN
F 2 "" H 2580 10670 50  0001 C CNN
F 3 "" H 2580 10670 50  0001 C CNN
	1    2580 10670
	1    0    0    -1  
$EndComp
Wire Wire Line
	2580 10670 2580 10540
Connection ~ 2580 10540
Wire Wire Line
	2580 10540 2845 10540
$Comp
L power:GND #PWR?
U 1 1 63A64555
P 4110 10670
AR Path="/63A64555" Ref="#PWR?"  Part="1" 
AR Path="/62E48B71/63A64555" Ref="#PWR?"  Part="1" 
AR Path="/63A22C28/63A64555" Ref="#PWR030"  Part="1" 
F 0 "#PWR030" H 4110 10420 50  0001 C CNN
F 1 "GND" H 4115 10497 50  0000 C CNN
F 2 "" H 4110 10670 50  0001 C CNN
F 3 "" H 4110 10670 50  0001 C CNN
	1    4110 10670
	1    0    0    -1  
$EndComp
Wire Wire Line
	4110 10670 4110 10540
Connection ~ 4110 10540
Wire Wire Line
	4110 10540 4385 10540
$Comp
L power:+5V #PWR?
U 1 1 63A6455E
P 1080 9250
AR Path="/63A6455E" Ref="#PWR?"  Part="1" 
AR Path="/62E48B71/63A6455E" Ref="#PWR?"  Part="1" 
AR Path="/63A22C28/63A6455E" Ref="#PWR021"  Part="1" 
F 0 "#PWR021" H 1080 9100 50  0001 C CNN
F 1 "+5V" H 1095 9423 50  0000 C CNN
F 2 "" H 1080 9250 50  0001 C CNN
F 3 "" H 1080 9250 50  0001 C CNN
	1    1080 9250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1080 9250 1080 9335
Connection ~ 1080 9335
Wire Wire Line
	1080 9335 1350 9335
$Comp
L power:+5V #PWR?
U 1 1 63A64567
P 2580 9250
AR Path="/63A64567" Ref="#PWR?"  Part="1" 
AR Path="/62E48B71/63A64567" Ref="#PWR?"  Part="1" 
AR Path="/63A22C28/63A64567" Ref="#PWR022"  Part="1" 
F 0 "#PWR022" H 2580 9100 50  0001 C CNN
F 1 "+5V" H 2595 9423 50  0000 C CNN
F 2 "" H 2580 9250 50  0001 C CNN
F 3 "" H 2580 9250 50  0001 C CNN
	1    2580 9250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2580 9250 2580 9335
Connection ~ 2580 9335
Wire Wire Line
	2580 9335 2845 9335
$Comp
L power:+5V #PWR?
U 1 1 63A64570
P 4110 9250
AR Path="/63A64570" Ref="#PWR?"  Part="1" 
AR Path="/62E48B71/63A64570" Ref="#PWR?"  Part="1" 
AR Path="/63A22C28/63A64570" Ref="#PWR023"  Part="1" 
F 0 "#PWR023" H 4110 9100 50  0001 C CNN
F 1 "+5V" H 4125 9423 50  0000 C CNN
F 2 "" H 4110 9250 50  0001 C CNN
F 3 "" H 4110 9250 50  0001 C CNN
	1    4110 9250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4110 9250 4110 9335
Connection ~ 4110 9335
Wire Wire Line
	4110 9335 4385 9335
NoConn ~ 3885 4795
$Comp
L 74xx:74LS27 U?
U 3 1 63A6457A
P 7375 6395
AR Path="/63A6457A" Ref="U?"  Part="3" 
AR Path="/62E48B71/63A6457A" Ref="U?"  Part="3" 
AR Path="/63A22C28/63A6457A" Ref="U11"  Part="3" 
F 0 "U11" H 7375 6720 50  0000 C CNN
F 1 "74LS27" H 7375 6629 50  0000 C CNN
F 2 "" H 7375 6395 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS27" H 7375 6395 50  0001 C CNN
	3    7375 6395
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS27 U?
U 4 1 63A64580
P 6035 9940
AR Path="/63A64580" Ref="U?"  Part="4" 
AR Path="/62E48B71/63A64580" Ref="U?"  Part="4" 
AR Path="/63A22C28/63A64580" Ref="U11"  Part="4" 
F 0 "U11" H 6265 9986 50  0000 L CNN
F 1 "74LS27" H 6265 9895 50  0000 L CNN
F 2 "" H 6035 9940 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS27" H 6035 9940 50  0001 C CNN
	4    6035 9940
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 63A64586
P 5525 9940
AR Path="/63A64586" Ref="C?"  Part="1" 
AR Path="/62E48B71/63A64586" Ref="C?"  Part="1" 
AR Path="/63A22C28/63A64586" Ref="C8"  Part="1" 
F 0 "C8" H 5410 9986 50  0000 R CNN
F 1 "100n" H 5410 9895 50  0000 R CNN
F 2 "" H 5563 9790 50  0001 C CNN
F 3 "~" H 5525 9940 50  0001 C CNN
	1    5525 9940
	1    0    0    -1  
$EndComp
Wire Wire Line
	5525 10090 5525 10540
Wire Wire Line
	5525 10540 5770 10540
Wire Wire Line
	6035 10440 6035 10540
Wire Wire Line
	5525 9790 5525 9335
Wire Wire Line
	5525 9335 5770 9335
Wire Wire Line
	6035 9335 6035 9440
$Comp
L power:GND #PWR?
U 1 1 63A64592
P 5770 10670
AR Path="/63A64592" Ref="#PWR?"  Part="1" 
AR Path="/62E48B71/63A64592" Ref="#PWR?"  Part="1" 
AR Path="/63A22C28/63A64592" Ref="#PWR031"  Part="1" 
F 0 "#PWR031" H 5770 10420 50  0001 C CNN
F 1 "GND" H 5775 10497 50  0000 C CNN
F 2 "" H 5770 10670 50  0001 C CNN
F 3 "" H 5770 10670 50  0001 C CNN
	1    5770 10670
	1    0    0    -1  
$EndComp
Wire Wire Line
	5770 10670 5770 10540
Connection ~ 5770 10540
Wire Wire Line
	5770 10540 6035 10540
$Comp
L power:+5V #PWR?
U 1 1 63A6459B
P 5770 9250
AR Path="/63A6459B" Ref="#PWR?"  Part="1" 
AR Path="/62E48B71/63A6459B" Ref="#PWR?"  Part="1" 
AR Path="/63A22C28/63A6459B" Ref="#PWR024"  Part="1" 
F 0 "#PWR024" H 5770 9100 50  0001 C CNN
F 1 "+5V" H 5785 9423 50  0000 C CNN
F 2 "" H 5770 9250 50  0001 C CNN
F 3 "" H 5770 9250 50  0001 C CNN
	1    5770 9250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5770 9250 5770 9335
Connection ~ 5770 9335
Wire Wire Line
	5770 9335 6035 9335
Wire Wire Line
	7690 7320 7910 7320
Wire Wire Line
	7675 6395 7790 6395
Wire Wire Line
	7790 6395 7790 5635
Wire Wire Line
	7790 5635 8040 5635
Wire Wire Line
	5535 6295 6040 6295
Wire Wire Line
	5535 5975 5535 6295
Wire Wire Line
	6590 5635 6730 5635
Wire Wire Line
	6730 5635 6730 5975
Wire Wire Line
	6730 5975 5535 5975
Wire Wire Line
	6590 5735 6840 5735
Wire Wire Line
	6840 5735 6840 6295
Wire Wire Line
	6840 6295 7075 6295
Wire Wire Line
	7910 5835 7910 7320
Text Notes 15795 9665 2    50   ~ 0
Update 1 adds a "TED Feature": the purpose of the change is to restrict\nTED access to RAM bank 3 when the 6th bit of the RAM register is cleared.\nIf bit 6 is HIGH, the current ram bank is retained during TED access. So:\n- U5 Bit6=0: CPU accesses current RAM, TED always accesses RAM bank 3\n- U5 Bit6=1: CPU accesses current RAM, TED accesses current RAM
Wire Wire Line
	6840 7420 7090 7420
Wire Wire Line
	6840 7420 6840 7605
Wire Wire Line
	6840 7605 6640 7605
Wire Wire Line
	6640 6990 6730 6990
Connection ~ 6840 6395
Wire Wire Line
	6840 6395 7075 6395
Wire Wire Line
	6640 6395 6840 6395
Wire Wire Line
	6840 6395 6840 7220
Wire Wire Line
	6840 7220 7090 7220
Wire Wire Line
	7075 6495 6730 6495
Wire Wire Line
	6730 6495 6730 6990
Entry Wire Line
	9805 1225 9905 1325
Entry Wire Line
	9805 1325 9905 1425
Entry Wire Line
	9805 1475 9905 1575
Entry Wire Line
	9805 1575 9905 1675
Entry Wire Line
	9805 1725 9905 1825
Entry Wire Line
	9805 1825 9905 1925
Entry Wire Line
	9805 1975 9905 2075
Entry Wire Line
	9805 2075 9905 2175
Entry Wire Line
	9805 2925 9905 3025
Entry Wire Line
	9805 3025 9905 3125
Entry Wire Line
	9805 3175 9905 3275
Entry Wire Line
	9805 3275 9905 3375
Entry Wire Line
	9805 3425 9905 3525
Entry Wire Line
	9805 3525 9905 3625
Entry Wire Line
	9805 3675 9905 3775
Entry Wire Line
	9805 3775 9905 3875
Text Label 10105 1325 0    60   ~ 0
a15
Text Label 10105 1425 0    60   ~ 0
a0
Text Label 10105 1575 0    60   ~ 0
a8
Text Label 10105 1675 0    60   ~ 0
a1
Text Label 10105 1825 0    60   ~ 0
a9
Text Label 10105 1925 0    60   ~ 0
a2
Text Label 10105 2075 0    60   ~ 0
a10
Text Label 10105 2175 0    60   ~ 0
a3
Text Label 10105 3025 0    60   ~ 0
a11
Text Label 10105 3275 0    60   ~ 0
a12
Text Label 10105 3525 0    60   ~ 0
a13
Text Label 10105 3625 0    60   ~ 0
a6
Text Label 10105 3775 0    60   ~ 0
a14
Text Label 10105 3875 0    60   ~ 0
a7
Entry Wire Line
	12455 1375 12555 1275
Entry Wire Line
	12455 1625 12555 1525
Entry Wire Line
	12455 1875 12555 1775
Entry Wire Line
	12455 2125 12555 2025
Entry Wire Line
	12455 3075 12555 2975
Entry Wire Line
	12455 3325 12555 3225
Entry Wire Line
	12455 3575 12555 3475
Entry Wire Line
	12455 3825 12555 3725
Text Label 12005 1375 0    60   ~ 0
m0
Text Label 12005 1625 0    60   ~ 0
m1
Text Label 12005 1875 0    60   ~ 0
m2
Text Label 12005 2125 0    60   ~ 0
m3
Text Label 12005 3075 0    60   ~ 0
m4
Text Label 12005 3325 0    60   ~ 0
m5
Text Label 12005 3575 0    60   ~ 0
m6
Text Label 12005 3825 0    60   ~ 0
m7
Wire Wire Line
	10505 2425 10255 2425
Wire Wire Line
	10255 2425 10255 2525
Wire Wire Line
	10505 4125 10255 4125
Wire Wire Line
	10255 4125 10255 4225
Wire Wire Line
	10505 2325 9705 2325
Wire Wire Line
	9705 4025 10505 4025
Wire Wire Line
	10505 1325 9905 1325
Wire Wire Line
	9905 1425 10505 1425
Wire Wire Line
	10505 1575 9905 1575
Wire Wire Line
	10505 1675 9905 1675
Wire Wire Line
	10505 1825 9905 1825
Wire Wire Line
	10505 1925 9905 1925
Wire Wire Line
	10505 2075 9905 2075
Wire Wire Line
	10505 2175 9905 2175
Wire Wire Line
	10505 3025 9905 3025
Wire Wire Line
	10505 3125 9905 3125
Wire Wire Line
	10505 3275 9905 3275
Wire Wire Line
	10505 3375 9905 3375
Wire Wire Line
	10505 3525 9905 3525
Wire Wire Line
	10505 3625 9905 3625
Wire Wire Line
	10505 3775 9905 3775
Wire Wire Line
	10505 3875 9905 3875
Wire Wire Line
	12005 1375 12455 1375
Wire Wire Line
	12005 1625 12455 1625
Wire Wire Line
	12005 1875 12455 1875
Wire Wire Line
	12005 2125 12455 2125
Wire Wire Line
	12005 3075 12455 3075
Wire Wire Line
	12005 3325 12455 3325
Wire Wire Line
	12005 3575 12455 3575
Wire Wire Line
	12005 3825 12455 3825
Text Label 9805 1075 3    60   ~ 0
C16AddressBus
Text Label 10105 2325 0    60   ~ 0
sel
Text Label 10105 4025 0    60   ~ 0
sel
Wire Wire Line
	9705 2325 9705 4025
Connection ~ 9705 2325
Wire Wire Line
	9705 2325 9490 2325
Text GLabel 9490 2325 0    50   Input ~ 0
MUX
Wire Bus Line
	9805 1075 9490 1075
Text GLabel 9490 1075 0    50   Input ~ 0
a[0..15]
$Comp
L power:GND #PWR?
U 1 1 63A64613
P 10255 2525
AR Path="/63A64613" Ref="#PWR?"  Part="1" 
AR Path="/62E48B71/63A64613" Ref="#PWR?"  Part="1" 
AR Path="/63A22C28/63A64613" Ref="#PWR012"  Part="1" 
F 0 "#PWR012" H 10255 2275 50  0001 C CNN
F 1 "GND" H 10260 2352 50  0000 C CNN
F 2 "" H 10255 2525 50  0001 C CNN
F 3 "" H 10255 2525 50  0001 C CNN
	1    10255 2525
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 63A64619
P 10255 4225
AR Path="/63A64619" Ref="#PWR?"  Part="1" 
AR Path="/62E48B71/63A64619" Ref="#PWR?"  Part="1" 
AR Path="/63A22C28/63A64619" Ref="#PWR014"  Part="1" 
F 0 "#PWR014" H 10255 3975 50  0001 C CNN
F 1 "GND" H 10260 4052 50  0000 C CNN
F 2 "" H 10255 4225 50  0001 C CNN
F 3 "" H 10255 4225 50  0001 C CNN
	1    10255 4225
	1    0    0    -1  
$EndComp
Text Label 10105 3375 0    60   ~ 0
a5
Text Label 10105 3125 0    60   ~ 0
a4
$Comp
L 74ls257:74LS257 U?
U 1 1 63A64621
P 11255 5290
AR Path="/63A64621" Ref="U?"  Part="1" 
AR Path="/62E48B71/63A64621" Ref="U?"  Part="1" 
AR Path="/63A22C28/63A64621" Ref="U6"  Part="1" 
F 0 "U6" H 11305 5440 50  0000 C CNN
F 1 "74LS257" H 11305 5140 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 11255 5290 50  0001 C CNN
F 3 "" H 11255 5290 50  0001 C CNN
	1    11255 5290
	1    0    0    -1  
$EndComp
Wire Wire Line
	9455 4935 9365 4935
Wire Wire Line
	9455 5590 9455 4935
Wire Wire Line
	10505 5590 9455 5590
Wire Wire Line
	9365 5490 10505 5490
Wire Wire Line
	8640 5735 8700 5735
Wire Wire Line
	8700 5590 8700 5735
Connection ~ 8700 5590
Wire Wire Line
	8700 5590 8765 5590
Wire Wire Line
	8700 4835 8700 5590
Wire Wire Line
	6730 5390 8765 5390
$Comp
L 74xx:74LS02 U?
U 3 1 63A64631
P 9065 5490
AR Path="/63A64631" Ref="U?"  Part="3" 
AR Path="/62E48B71/63A64631" Ref="U?"  Part="3" 
AR Path="/63A22C28/63A64631" Ref="U7"  Part="3" 
F 0 "U7" H 9065 5173 50  0000 C CNN
F 1 "74LS02" H 9065 5264 50  0000 C CNN
F 2 "" H 9065 5490 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls02" H 9065 5490 50  0001 C CNN
	3    9065 5490
	1    0    0    1   
$EndComp
Wire Wire Line
	8700 4835 8765 4835
Wire Wire Line
	6590 5035 8765 5035
$Comp
L 74xx:74LS02 U?
U 4 1 63A64639
P 9065 4935
AR Path="/63A64639" Ref="U?"  Part="4" 
AR Path="/62E48B71/63A64639" Ref="U?"  Part="4" 
AR Path="/63A22C28/63A64639" Ref="U7"  Part="4" 
F 0 "U7" H 9065 5260 50  0000 C CNN
F 1 "74LS02" H 9065 5169 50  0000 C CNN
F 2 "" H 9065 4935 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls02" H 9065 4935 50  0001 C CNN
	4    9065 4935
	1    0    0    -1  
$EndComp
Wire Notes Line
	10180 4625 10180 5400
Wire Notes Line
	10435 4625 10435 5400
Wire Wire Line
	10505 5840 10255 5840
Wire Wire Line
	10255 5840 10255 5940
$Comp
L power:GND #PWR?
U 1 1 63A64643
P 10255 5940
AR Path="/63A64643" Ref="#PWR?"  Part="1" 
AR Path="/62E48B71/63A64643" Ref="#PWR?"  Part="1" 
AR Path="/63A22C28/63A64643" Ref="#PWR016"  Part="1" 
F 0 "#PWR016" H 10255 5690 50  0001 C CNN
F 1 "GND" H 10260 5767 50  0000 C CNN
F 2 "" H 10255 5940 50  0001 C CNN
F 3 "" H 10255 5940 50  0001 C CNN
	1    10255 5940
	1    0    0    -1  
$EndComp
Entry Wire Line
	12555 5440 12455 5540
Wire Wire Line
	12005 5540 12455 5540
NoConn ~ 12005 4790
NoConn ~ 12005 5040
NoConn ~ 12005 5290
Wire Wire Line
	9705 4025 9705 5740
Wire Wire Line
	9705 5740 10505 5740
Connection ~ 9705 4025
Wire Bus Line
	12555 1275 13640 1275
Text Label 12555 1275 0    60   ~ 0
MultiplexedAddressBus
Text Label 12005 5540 0    60   ~ 0
m8
Wire Wire Line
	1360 4550 1360 4650
Wire Wire Line
	1360 4250 1360 4150
$Comp
L Device:C C?
U 1 1 63A64678
P 1360 4400
AR Path="/63A64678" Ref="C?"  Part="1" 
AR Path="/62E48B71/63A64678" Ref="C?"  Part="1" 
AR Path="/63A22C28/63A64678" Ref="C3"  Part="1" 
F 0 "C3" H 1475 4446 50  0000 L CNN
F 1 "100n" H 1475 4355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 1398 4250 50  0001 C CNN
F 3 "~" H 1360 4400 50  0001 C CNN
	1    1360 4400
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 63A64684
P 1360 4150
AR Path="/63A64684" Ref="#PWR?"  Part="1" 
AR Path="/62E48B71/63A64684" Ref="#PWR?"  Part="1" 
AR Path="/63A22C28/63A64684" Ref="#PWR017"  Part="1" 
F 0 "#PWR017" H 1360 4000 50  0001 C CNN
F 1 "VCC" H 1375 4323 50  0000 C CNN
F 2 "" H 1360 4150 50  0001 C CNN
F 3 "" H 1360 4150 50  0001 C CNN
	1    1360 4150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 63A6468A
P 1360 4650
AR Path="/63A6468A" Ref="#PWR?"  Part="1" 
AR Path="/62E48B71/63A6468A" Ref="#PWR?"  Part="1" 
AR Path="/63A22C28/63A6468A" Ref="#PWR019"  Part="1" 
F 0 "#PWR019" H 1360 4400 50  0001 C CNN
F 1 "GND" H 1365 4477 50  0000 C CNN
F 2 "" H 1360 4650 50  0001 C CNN
F 3 "" H 1360 4650 50  0001 C CNN
	1    1360 4650
	1    0    0    -1  
$EndComp
$Comp
L 74ls257:74LS257 U?
U 1 1 63A64692
P 11255 3575
AR Path="/63A64692" Ref="U?"  Part="1" 
AR Path="/62E48B71/63A64692" Ref="U?"  Part="1" 
AR Path="/63A22C28/63A64692" Ref="U5"  Part="1" 
F 0 "U5" H 11305 3725 50  0000 C CNN
F 1 "74LS257" H 11305 3425 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 11255 3575 50  0001 C CNN
F 3 "" H 11255 3575 50  0001 C CNN
	1    11255 3575
	1    0    0    -1  
$EndComp
$Comp
L 74ls257:74LS257 U?
U 1 1 63A64698
P 11255 1875
AR Path="/63A64698" Ref="U?"  Part="1" 
AR Path="/62E48B71/63A64698" Ref="U?"  Part="1" 
AR Path="/63A22C28/63A64698" Ref="U4"  Part="1" 
F 0 "U4" H 11305 2025 50  0000 C CNN
F 1 "74LS257" H 11305 1725 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 11255 1875 50  0001 C CNN
F 3 "" H 11255 1875 50  0001 C CNN
	1    11255 1875
	1    0    0    -1  
$EndComp
Entry Wire Line
	4690 5835 4790 5735
Entry Wire Line
	4690 5735 4790 5635
Entry Wire Line
	4690 5635 4790 5535
Entry Wire Line
	4690 5535 4790 5435
Entry Wire Line
	4690 5435 4790 5335
Entry Wire Line
	4690 5335 4790 5235
Entry Wire Line
	4690 5235 4790 5135
Entry Wire Line
	4690 5135 4790 5035
Text Notes 4500 5445 2    50   ~ 0
NOT STRICTLY\nNECESSARY
Wire Notes Line
	4540 5550 4540 5185
Wire Notes Line
	5045 5550 4540 5550
Wire Notes Line
	4540 5185 5045 5185
Wire Bus Line
	4690 5835 4160 5835
Text GLabel 4160 5835 0    50   Input ~ 0
d[0..7]
Text GLabel 4790 4795 0    50   Input ~ 0
R_~W
Text GLabel 5655 6495 0    50   Input ~ 0
AEC
Text GLabel 13640 1275 2    50   Output ~ 0
m[0..8]
$Comp
L power:+5V #PWR?
U 1 1 63B8CEF1
P 840 835
AR Path="/63B8CEF1" Ref="#PWR?"  Part="1" 
AR Path="/62E48B71/63B8CEF1" Ref="#PWR?"  Part="1" 
AR Path="/63A22C28/63B8CEF1" Ref="#PWR0101"  Part="1" 
F 0 "#PWR0101" H 840 685 50  0001 C CNN
F 1 "+5V" H 855 1008 50  0000 C CNN
F 2 "" H 840 835 50  0001 C CNN
F 3 "" H 840 835 50  0001 C CNN
	1    840  835 
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 63B96964
P 840 1025
F 0 "#FLG0102" H 840 1100 50  0001 C CNN
F 1 "PWR_FLAG" H 840 1198 50  0000 C CNN
F 2 "" H 840 1025 50  0001 C CNN
F 3 "~" H 840 1025 50  0001 C CNN
	1    840  1025
	-1   0    0    1   
$EndComp
Wire Wire Line
	840  1025 840  835 
NoConn ~ 11330 9290
Wire Wire Line
	10565 9390 10565 9765
Connection ~ 10565 9390
Wire Wire Line
	10730 9390 10565 9390
Connection ~ 10565 9765
Wire Wire Line
	10565 9190 10565 9390
Wire Wire Line
	10730 9190 10565 9190
$Comp
L 74xx:74LS02 U?
U 2 1 63AAB198
P 11030 9290
AR Path="/63AAB198" Ref="U?"  Part="2" 
AR Path="/63A22C28/63AAB198" Ref="U7"  Part="2" 
F 0 "U7" H 11030 9615 50  0000 C CNN
F 1 "74LS02" H 11030 9524 50  0000 C CNN
F 2 "" H 11030 9290 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls02" H 11030 9290 50  0001 C CNN
	2    11030 9290
	1    0    0    -1  
$EndComp
NoConn ~ 11330 9865
NoConn ~ 11330 10450
$Comp
L power:GND #PWR?
U 1 1 63AAB190
P 10565 10670
AR Path="/63AAB190" Ref="#PWR?"  Part="1" 
AR Path="/63A22C28/63AAB190" Ref="#PWR027"  Part="1" 
F 0 "#PWR027" H 10565 10420 50  0001 C CNN
F 1 "GND" H 10570 10497 50  0000 C CNN
F 2 "" H 10565 10670 50  0001 C CNN
F 3 "" H 10565 10670 50  0001 C CNN
	1    10565 10670
	1    0    0    -1  
$EndComp
Wire Wire Line
	10565 10550 10565 10670
Connection ~ 10565 10550
Wire Wire Line
	10730 10550 10565 10550
Wire Wire Line
	10565 10450 10565 10550
Connection ~ 10565 10450
Wire Wire Line
	10730 10450 10565 10450
Wire Wire Line
	10565 10350 10565 10450
Connection ~ 10565 10350
Wire Wire Line
	10730 10350 10565 10350
Wire Wire Line
	10565 9965 10565 10350
Connection ~ 10565 9965
Wire Wire Line
	10730 9965 10565 9965
Wire Wire Line
	10565 9865 10565 9965
Connection ~ 10565 9865
Wire Wire Line
	10730 9865 10565 9865
Wire Wire Line
	10565 9765 10565 9865
Wire Wire Line
	10730 9765 10565 9765
$Comp
L 74xx:74LS27 U?
U 1 1 63AAB179
P 11030 9865
AR Path="/63AAB179" Ref="U?"  Part="1" 
AR Path="/63A22C28/63AAB179" Ref="U11"  Part="1" 
F 0 "U11" H 11030 10190 50  0000 C CNN
F 1 "74LS27" H 11030 10099 50  0000 C CNN
F 2 "" H 11030 9865 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS27" H 11030 9865 50  0001 C CNN
	1    11030 9865
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS27 U?
U 2 1 63AAB173
P 11030 10450
AR Path="/63AAB173" Ref="U?"  Part="2" 
AR Path="/63A22C28/63AAB173" Ref="U11"  Part="2" 
F 0 "U11" H 11030 10775 50  0000 C CNN
F 1 "74LS27" H 11030 10684 50  0000 C CNN
F 2 "" H 11030 10450 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS27" H 11030 10450 50  0001 C CNN
	2    11030 10450
	1    0    0    -1  
$EndComp
Text Notes 10895 8790 0    50   ~ 0
SPARES
$Comp
L Device:C C?
U 1 1 63A6467E
P 13005 3480
AR Path="/63A6467E" Ref="C?"  Part="1" 
AR Path="/62E48B71/63A6467E" Ref="C?"  Part="1" 
AR Path="/63A22C28/63A6467E" Ref="C4"  Part="1" 
F 0 "C4" H 13120 3526 50  0000 L CNN
F 1 "100n" H 13120 3435 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 13043 3330 50  0001 C CNN
F 3 "~" H 13005 3480 50  0001 C CNN
	1    13005 3480
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 63A64672
P 13005 3730
AR Path="/63A64672" Ref="#PWR?"  Part="1" 
AR Path="/62E48B71/63A64672" Ref="#PWR?"  Part="1" 
AR Path="/63A22C28/63A64672" Ref="#PWR020"  Part="1" 
F 0 "#PWR020" H 13005 3480 50  0001 C CNN
F 1 "GND" H 13005 3580 50  0000 C CNN
F 2 "" H 13005 3730 50  0001 C CNN
F 3 "" H 13005 3730 50  0001 C CNN
	1    13005 3730
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 63A6466C
P 13005 3230
AR Path="/63A6466C" Ref="#PWR?"  Part="1" 
AR Path="/62E48B71/63A6466C" Ref="#PWR?"  Part="1" 
AR Path="/63A22C28/63A6466C" Ref="#PWR018"  Part="1" 
F 0 "#PWR018" H 13005 3080 50  0001 C CNN
F 1 "VCC" H 13005 3380 50  0000 C CNN
F 2 "" H 13005 3230 50  0001 C CNN
F 3 "" H 13005 3230 50  0001 C CNN
	1    13005 3230
	1    0    0    -1  
$EndComp
Wire Wire Line
	13005 3330 13005 3230
Wire Wire Line
	13005 3630 13005 3730
Wire Wire Line
	13005 1610 13005 1695
$Comp
L power:+5V #PWR?
U 1 1 63A64661
P 13005 1610
AR Path="/63A64661" Ref="#PWR?"  Part="1" 
AR Path="/62E48B71/63A64661" Ref="#PWR?"  Part="1" 
AR Path="/63A22C28/63A64661" Ref="#PWR025"  Part="1" 
F 0 "#PWR025" H 13005 1460 50  0001 C CNN
F 1 "+5V" H 13020 1783 50  0000 C CNN
F 2 "" H 13005 1610 50  0001 C CNN
F 3 "" H 13005 1610 50  0001 C CNN
	1    13005 1610
	1    0    0    -1  
$EndComp
Wire Wire Line
	13005 2060 13005 1995
$Comp
L power:GND #PWR?
U 1 1 63A6465A
P 13005 2060
AR Path="/63A6465A" Ref="#PWR?"  Part="1" 
AR Path="/62E48B71/63A6465A" Ref="#PWR?"  Part="1" 
AR Path="/63A22C28/63A6465A" Ref="#PWR026"  Part="1" 
F 0 "#PWR026" H 13005 1810 50  0001 C CNN
F 1 "GND" H 13010 1887 50  0000 C CNN
F 2 "" H 13005 2060 50  0001 C CNN
F 3 "" H 13005 2060 50  0001 C CNN
	1    13005 2060
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 63A64654
P 13005 1845
AR Path="/63A64654" Ref="C?"  Part="1" 
AR Path="/62E48B71/63A64654" Ref="C?"  Part="1" 
AR Path="/63A22C28/63A64654" Ref="C9"  Part="1" 
F 0 "C9" H 13120 1891 50  0000 L CNN
F 1 "100n" H 13120 1800 50  0000 L CNN
F 2 "" H 13043 1695 50  0001 C CNN
F 3 "~" H 13005 1845 50  0001 C CNN
	1    13005 1845
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 63BEEB4A
P 13005 5345
AR Path="/63BEEB4A" Ref="C?"  Part="1" 
AR Path="/62E48B71/63BEEB4A" Ref="C?"  Part="1" 
AR Path="/63A22C28/63BEEB4A" Ref="C10"  Part="1" 
F 0 "C10" H 13120 5391 50  0000 L CNN
F 1 "100n" H 13120 5300 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 13043 5195 50  0001 C CNN
F 3 "~" H 13005 5345 50  0001 C CNN
	1    13005 5345
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 63BEF564
P 13005 5595
AR Path="/63BEF564" Ref="#PWR?"  Part="1" 
AR Path="/62E48B71/63BEF564" Ref="#PWR?"  Part="1" 
AR Path="/63A22C28/63BEF564" Ref="#PWR033"  Part="1" 
F 0 "#PWR033" H 13005 5345 50  0001 C CNN
F 1 "GND" H 13005 5445 50  0000 C CNN
F 2 "" H 13005 5595 50  0001 C CNN
F 3 "" H 13005 5595 50  0001 C CNN
	1    13005 5595
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 63BEF56E
P 13005 5095
AR Path="/63BEF56E" Ref="#PWR?"  Part="1" 
AR Path="/62E48B71/63BEF56E" Ref="#PWR?"  Part="1" 
AR Path="/63A22C28/63BEF56E" Ref="#PWR032"  Part="1" 
F 0 "#PWR032" H 13005 4945 50  0001 C CNN
F 1 "VCC" H 13005 5245 50  0000 C CNN
F 2 "" H 13005 5095 50  0001 C CNN
F 3 "" H 13005 5095 50  0001 C CNN
	1    13005 5095
	1    0    0    -1  
$EndComp
Wire Wire Line
	13005 5195 13005 5095
Wire Wire Line
	13005 5495 13005 5595
$Comp
L MOS_6529:MOS_6529 U?
U 1 1 63A644BC
P 5840 5215
AR Path="/63A644BC" Ref="U?"  Part="1" 
AR Path="/62E48B71/63A644BC" Ref="U?"  Part="1" 
AR Path="/63A22C28/63A644BC" Ref="U9"  Part="1" 
F 0 "U9" H 5840 6030 50  0000 C CNN
F 1 "MOS_6529" H 5840 5939 50  0000 C CNN
F 2 "" H 5840 5215 50  0001 C CNN
F 3 "DOCUMENTATION" H 5840 5215 50  0001 C CNN
	1    5840 5215
	-1   0    0    -1  
$EndComp
Text GLabel 1390 3585 0    50   Input ~ 0
a[0..15]
Entry Wire Line
	1945 3995 2045 4095
Entry Wire Line
	1945 4095 2045 4195
Entry Wire Line
	1945 4195 2045 4295
Entry Wire Line
	1945 4695 2045 4795
Wire Bus Line
	1390 3585 1945 3585
Text GLabel 2420 4695 0    50   Input ~ 0
~CS_IN
Wire Wire Line
	2420 4695 2460 4695
Text GLabel 3610 4095 2    50   Output ~ 0
~CS_OUT
Wire Bus Line
	1945 3585 1945 4695
Wire Bus Line
	4690 5135 4690 5835
Wire Bus Line
	12555 1275 12555 5440
Wire Bus Line
	9805 1075 9805 3775
$EndSCHEMATC
