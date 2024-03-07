   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.12.9 - 19 Apr 2023
   3                     ; Generator (Limited) V4.5.6 - 18 Jul 2023
  14                     	switch	.data
  15  0000               _Version:
  16  0000 71            	dc.b	113
  17  0001               _REV_Setting:
  18  0001 312e31332c32  	dc.b	"1.13,240208",0
  19  000d               _BAB_DATA:
  20  000d 3030302c3030  	dc.b	"000,000,0,0,000",0
  21  001d               _BAB_DAT1:
  22  001d 3030302c3030  	dc.b	"000,000,000",0
  23  0029               _BAB_DAT2:
  24  0029 3030302c302c  	dc.b	"000,0,0,0000",0
  25  0036               _BAB_DAT3:
  26  0036 303030302c30  	dc.b	"0000,0000,000",0
  27  0044               _PRC_Data:
  28  0044 303030302c30  	dc.b	"0000,0000,0000",0
  29  0053               _PRC_NoCOM:
  30  0053 464646462c46  	dc.b	"FFFF,FFFF,FFFF",0
  31  0062               _BA_Bitrate:
  32  0062 00002580      	dc.l	9600
  33  0066               _BB_Bitrate:
  34  0066 00002580      	dc.l	9600
  35  006a               _ADC_VIN:
  36  006a 0000          	dc.w	0
  37  006c               _ADC_BAT:
  38  006c 0000          	dc.w	0
  39  006e               _ADC_ACC:
  40  006e 0000          	dc.w	0
  41  0070               _ADC_OUT:
  42  0070 0000          	dc.w	0
  43  0072               _ADC_BBT:
  44  0072 0000          	dc.w	0
  45  0074               _VIN_Volt:
  46  0074 00            	dc.b	0
  47  0075               _BAT_Volt:
  48  0075 76            	dc.b	118
  49  0076               _BAT_P_Volt:
  50  0076 00000000      	dc.l	0
  51  007a               _BAT_Volt1:
  52  007a 00            	dc.b	0
  53  007b               _ACC_Volt:
  54  007b 00            	dc.b	0
  55  007c               _NTC_Temp:
  56  007c 00            	dc.b	0
  57  007d               _NTC_Temp1:
  58  007d 00            	dc.b	0
  59  007e               _Curr1:
  60  007e 0000          	dc.w	0
  61  0080               _Curr2:
  62  0080 0000          	dc.w	0
  63  0082               _D_Current:
  64  0082 0000          	dc.w	0
  65  0084               _C_Current:
  66  0084 0000          	dc.w	0
  67  0086               _CalcCurrent:
  68  0086 0000          	dc.w	0
  69  0088               _ChgCap:
  70  0088 00000000      	dc.w	0,0
  71  008c               _RepCap:
  72  008c 00000000      	dc.w	0,0
  73  0090               _FullCap:
  74  0090 4617e000      	dc.w	17943,-8192
  75  0094               _ACC_CHG:
  76  0094 78            	dc.b	120
  77  0095               _ACC_DIS:
  78  0095 73            	dc.b	115
  79  0096               _ACC_LOW:
  80  0096 64            	dc.b	100
  81  0097               _TIM_8ms:
  82  0097 00            	dc.b	0
  83  0098               _TIM_8ms2:
  84  0098 00            	dc.b	0
  85  0099               _TIM_8ms3:
  86  0099 00            	dc.b	0
  87  009a               _Tim_500ms:
  88  009a 00            	dc.b	0
  89  009b               _TIM_1S:
  90  009b 01            	dc.b	1
  91  009c               _TIM_1S2:
  92  009c 00            	dc.b	0
  93  009d               _TIM_1S3:
  94  009d 00            	dc.b	0
  95  009e               _TIM_1S4:
  96  009e 00            	dc.b	0
  97  009f               _TIM_1S5:
  98  009f 00            	dc.b	0
  99  00a0               _TIM_1S6:
 100  00a0 00            	dc.b	0
 101  00a1               _TIM_1S7:
 102  00a1 02            	dc.b	2
 103  00a2               _TIM_CHG_1S1:
 104  00a2 00            	dc.b	0
 105  00a3               _TIM_CHG_1S2:
 106  00a3 00            	dc.b	0
 107  00a4               _TIM_CHG_1S3:
 108  00a4 00            	dc.b	0
 109  00a5               _waiting_Time:
 110  00a5 00            	dc.b	0
 111  00a6               _B_bounce_1S:
 112  00a6 00            	dc.b	0
 113  00a7               _DIS_Lock_10s:
 114  00a7 00            	dc.b	0
 115  00a8               _DIS_3s:
 116  00a8 00            	dc.b	0
 117  00a9               _DIS_Unlock_10s:
 118  00a9 00            	dc.b	0
 119  00aa               _DIS_Un3s:
 120  00aa 00            	dc.b	0
 121  00ab               _Warning_Time:
 122  00ab 0000          	dc.w	0
 123  00ad               _Percent_1s:
 124  00ad 00            	dc.b	0
 125  00ae               _Percent_P:
 126  00ae 00            	dc.b	0
 127  00af               _Percent_N:
 128  00af 00            	dc.b	0
 129  00b0               _NTC_Stop:
 130  00b0 00            	dc.b	0
 131  00b1               _FULL_STATE:
 132  00b1 00            	dc.b	0
 133  00b2               _CHG_State:
 134  00b2 00            	dc.b	0
 135  00b3               _LCHG_State:
 136  00b3 00            	dc.b	0
 137  00b4               _LED_State:
 138  00b4 01            	dc.b	1
 139  00b5               _NTC_ON:
 140  00b5 00            	dc.b	0
 141  00b6               _STATE_CHG:
 142  00b6 00            	dc.b	0
 143  00b7               _DIS_Lock:
 144  00b7 00            	dc.b	0
 145  00b8               _DIS_Unlock:
 146  00b8 00            	dc.b	0
 147  00b9               _Short_time:
 148  00b9 00            	dc.b	0
 149  00ba               _Short_1S:
 150  00ba 00            	dc.b	0
 151  00bb               _I2C_ON:
 152  00bb 01            	dc.b	1
 153  00bc               _APP_DATA_Start:
 154  00bc 00            	dc.b	0
 155  00bd               _DATA_TX_5s:
 156  00bd 00            	dc.b	0
 157  00be               _APP_Connect:
 158  00be 00            	dc.b	0
 159  00bf               _APP_Connect_end:
 160  00bf 00            	dc.b	0
 161  00c0               _Percentgauge:
 162  00c0 00            	dc.b	0
 163  00c1               _BLE_LED:
 164  00c1 00            	dc.b	0
 165  00c2               _BLE_Con:
 166  00c2 00            	dc.b	0
 167  00c3               _PRC_COM:
 168  00c3 00            	dc.b	0
 169  00c4               _BR_ERR:
 170  00c4 00            	dc.b	0
 171  00c5               _P_Time:
 172  00c5 00            	dc.b	0
 173  00c6               _ACC_ST:
 174  00c6 00            	dc.b	0
 175  00c7               _CHG_ST:
 176  00c7 00            	dc.b	0
 177  00c8               _Dis_j:
 178  00c8 0000          	dc.w	0
 179  00ca               _DIS_AVG:
 180  00ca 00000000      	dc.l	0
 181  00ce               _DISCHG_AVG:
 182  00ce 0000          	dc.w	0
 183  00d0               _DISCHG_Current:
 184  00d0 000a          	dc.w	10
 185  00d2               _DIS_CURR:
 186  00d2 00000000      	dc.w	0,0
 187  00d6               _DISCHG_TIME:
 188  00d6 0000          	dc.w	0
 189  00d8               _CHG_TIME:
 190  00d8 0000          	dc.w	0
 191  00da               _disChgNeedDelay:
 192  00da 00            	dc.b	0
 193  00db               _Sum:
 194  00db 00            	dc.b	0
 195  00dc               _cs1:
 196  00dc 00            	dc.b	0
 197  00dd               _cs2:
 198  00dd 00            	dc.b	0
 199  00de               _MAD1:
 200  00de 00            	dc.b	0
 201  00df               _MAD2:
 202  00df 00            	dc.b	0
 203  00e0               _MAD3:
 204  00e0 00            	dc.b	0
 205  00e1               _MAD4:
 206  00e1 00            	dc.b	0
 207  00e2               _Time_Speak_State:
 208  00e2 00            	dc.b	0
1066                     	switch	.data
1067  00e3               _powerOnSetupComplete:
1068  00e3 00            	dc.b	0
1069  00e4               _pcmStateEntered:
1070  00e4 00            	dc.b	0
1071  00e5               _old_pcmStateEntered:
1072  00e5 00            	dc.b	0
1073  00e6               _pcmStableTimeCnt:
1074  00e6 02            	dc.b	2
1075  00e7               __fgReset:
1076  00e7 00            	dc.b	0
1077  00e8               __fgPercentRead:
1078  00e8 00            	dc.b	0
1079  00e9               __5secCnt:
1080  00e9 00            	dc.b	0
1161                     ; 32 extern void TIM4_INTERRUPT_HANDLER(void)
1161                     ; 33 {
1163                     	switch	.text
1164  0000               _TIM4_INTERRUPT_HANDLER:
1168                     ; 34 	if(Time_Speak_State==1)
1170  0000 c600e2        	ld	a,_Time_Speak_State
1171  0003 a101          	cp	a,#1
1172  0005 2703          	jreq	L6
1173  0007 cc02ce        	jp	L554
1174  000a               L6:
1175                     ; 36 			TIM_8ms++;
1177  000a 725c0097      	inc	_TIM_8ms
1178                     ; 38 			if(TIM_8ms>=124)
1180  000e c60097        	ld	a,_TIM_8ms
1181  0011 a17c          	cp	a,#124
1182  0013 2403          	jruge	L01
1183  0015 cc025e        	jp	L754
1184  0018               L01:
1185                     ; 40 					TIM_1S++;
1187  0018 725c009b      	inc	_TIM_1S
1188                     ; 41 					TIM_1S2++;
1190  001c 725c009c      	inc	_TIM_1S2
1191                     ; 43 					if(DIS_Lock_10s==1)
1193  0020 c600a7        	ld	a,_DIS_Lock_10s
1194  0023 a101          	cp	a,#1
1195  0025 2619          	jrne	L164
1196                     ; 45 						DIS_3s++;
1198  0027 725c00a8      	inc	_DIS_3s
1199                     ; 46 						if(DIS_3s>=3)
1201  002b c600a8        	ld	a,_DIS_3s
1202  002e a103          	cp	a,#3
1203  0030 2512          	jrult	L564
1204                     ; 48 								DIS_Lock=1;
1206  0032 350100b7      	mov	_DIS_Lock,#1
1207                     ; 49 								DIS_Unlock=0;
1209  0036 725f00b8      	clr	_DIS_Unlock
1210                     ; 50 								DIS_3s=3;
1212  003a 350300a8      	mov	_DIS_3s,#3
1213  003e 2004          	jra	L564
1214  0040               L164:
1215                     ; 53 					else DIS_3s=0;
1217  0040 725f00a8      	clr	_DIS_3s
1218  0044               L564:
1219                     ; 55 					if(DIS_Unlock_10s==1)
1221  0044 c600a9        	ld	a,_DIS_Unlock_10s
1222  0047 a101          	cp	a,#1
1223  0049 2619          	jrne	L764
1224                     ; 57 						DIS_Un3s++;
1226  004b 725c00aa      	inc	_DIS_Un3s
1227                     ; 58 						if(DIS_Un3s>=3)
1229  004f c600aa        	ld	a,_DIS_Un3s
1230  0052 a103          	cp	a,#3
1231  0054 2512          	jrult	L374
1232                     ; 60 								DIS_Lock=0;
1234  0056 725f00b7      	clr	_DIS_Lock
1235                     ; 61 								DIS_Unlock=1;
1237  005a 350100b8      	mov	_DIS_Unlock,#1
1238                     ; 62 								DIS_Un3s=3;
1240  005e 350300aa      	mov	_DIS_Un3s,#3
1241  0062 2004          	jra	L374
1242  0064               L764:
1243                     ; 65 					else DIS_Un3s=0;
1245  0064 725f00aa      	clr	_DIS_Un3s
1246  0068               L374:
1247                     ; 67 					if(Percent_P==1||Percent_N==1)
1249  0068 c600ae        	ld	a,_Percent_P
1250  006b a101          	cp	a,#1
1251  006d 270a          	jreq	L774
1253  006f c600af        	ld	a,_Percent_N
1254  0072 a101          	cp	a,#1
1255  0074 2703          	jreq	L21
1256  0076 cc0148        	jp	L574
1257  0079               L21:
1258  0079               L774:
1259                     ; 69 						TIM_1S4++;
1261  0079 725c009e      	inc	_TIM_1S4
1262                     ; 71 						if(Percent_P==1)
1264  007d c600ae        	ld	a,_Percent_P
1265  0080 a101          	cp	a,#1
1266  0082 2641          	jrne	L105
1267                     ; 73 							if(Percentgauge>=90){P_Time=60;}
1269  0084 c600c0        	ld	a,_Percentgauge
1270  0087 a15a          	cp	a,#90
1271  0089 2506          	jrult	L305
1274  008b 353c00c5      	mov	_P_Time,#60
1276  008f 207a          	jra	L525
1277  0091               L305:
1278                     ; 74 							else if(Percentgauge>=80){P_Time=50;}
1280  0091 c600c0        	ld	a,_Percentgauge
1281  0094 a150          	cp	a,#80
1282  0096 2506          	jrult	L705
1285  0098 353200c5      	mov	_P_Time,#50
1287  009c 206d          	jra	L525
1288  009e               L705:
1289                     ; 75 							else if(Percentgauge>=70){P_Time=40;}
1291  009e c600c0        	ld	a,_Percentgauge
1292  00a1 a146          	cp	a,#70
1293  00a3 2506          	jrult	L315
1296  00a5 352800c5      	mov	_P_Time,#40
1298  00a9 2060          	jra	L525
1299  00ab               L315:
1300                     ; 76 							else if(Percentgauge>=60){P_Time=30;}
1302  00ab c600c0        	ld	a,_Percentgauge
1303  00ae a13c          	cp	a,#60
1304  00b0 2506          	jrult	L715
1307  00b2 351e00c5      	mov	_P_Time,#30
1309  00b6 2053          	jra	L525
1310  00b8               L715:
1311                     ; 77 							else if(Percentgauge>=50){P_Time=20;}
1313  00b8 c600c0        	ld	a,_Percentgauge
1314  00bb a132          	cp	a,#50
1315  00bd 254c          	jrult	L525
1318  00bf 351400c5      	mov	_P_Time,#20
1319  00c3 2046          	jra	L525
1320  00c5               L105:
1321                     ; 79 						else if(Percent_N==1)
1323  00c5 c600af        	ld	a,_Percent_N
1324  00c8 a101          	cp	a,#1
1325  00ca 263f          	jrne	L525
1326                     ; 81 							if(Percentgauge<=10){P_Time=60;}
1328  00cc c600c0        	ld	a,_Percentgauge
1329  00cf a10b          	cp	a,#11
1330  00d1 2406          	jruge	L135
1333  00d3 353c00c5      	mov	_P_Time,#60
1335  00d7 2032          	jra	L525
1336  00d9               L135:
1337                     ; 82 							else if(Percentgauge<=20){P_Time=50;}
1339  00d9 c600c0        	ld	a,_Percentgauge
1340  00dc a115          	cp	a,#21
1341  00de 2406          	jruge	L535
1344  00e0 353200c5      	mov	_P_Time,#50
1346  00e4 2025          	jra	L525
1347  00e6               L535:
1348                     ; 83 							else if(Percentgauge<=30){P_Time=40;}
1350  00e6 c600c0        	ld	a,_Percentgauge
1351  00e9 a11f          	cp	a,#31
1352  00eb 2406          	jruge	L145
1355  00ed 352800c5      	mov	_P_Time,#40
1357  00f1 2018          	jra	L525
1358  00f3               L145:
1359                     ; 84 							else if(Percentgauge<=40){P_Time=30;}
1361  00f3 c600c0        	ld	a,_Percentgauge
1362  00f6 a129          	cp	a,#41
1363  00f8 2406          	jruge	L545
1366  00fa 351e00c5      	mov	_P_Time,#30
1368  00fe 200b          	jra	L525
1369  0100               L545:
1370                     ; 85 							else if(Percentgauge<=50){P_Time=20;}
1372  0100 c600c0        	ld	a,_Percentgauge
1373  0103 a133          	cp	a,#51
1374  0105 2404          	jruge	L525
1377  0107 351400c5      	mov	_P_Time,#20
1378  010b               L525:
1379                     ; 88 						if(TIM_1S4>=P_Time)
1381  010b c6009e        	ld	a,_TIM_1S4
1382  010e c100c5        	cp	a,_P_Time
1383  0111 2535          	jrult	L574
1384                     ; 90 								if(Percent_P==1)
1386  0113 c600ae        	ld	a,_Percent_P
1387  0116 a101          	cp	a,#1
1388  0118 2613          	jrne	L555
1389                     ; 92 									if(Percentgauge>=100) Percentgauge=100;
1391  011a c600c0        	ld	a,_Percentgauge
1392  011d a164          	cp	a,#100
1393  011f 2506          	jrult	L755
1396  0121 356400c0      	mov	_Percentgauge,#100
1398  0125 201d          	jra	L365
1399  0127               L755:
1400                     ; 93 									else Percentgauge++;
1402  0127 725c00c0      	inc	_Percentgauge
1403  012b 2017          	jra	L365
1404  012d               L555:
1405                     ; 95 								else if(Percent_N==1)
1407  012d c600af        	ld	a,_Percent_N
1408  0130 a101          	cp	a,#1
1409  0132 2610          	jrne	L365
1410                     ; 97 									if(Percentgauge==0) Percentgauge=0;
1412  0134 725d00c0      	tnz	_Percentgauge
1413  0138 2606          	jrne	L765
1416  013a 725f00c0      	clr	_Percentgauge
1418  013e 2004          	jra	L365
1419  0140               L765:
1420                     ; 98 									else Percentgauge--;
1422  0140 725a00c0      	dec	_Percentgauge
1423  0144               L365:
1424                     ; 100 								TIM_1S4=0;
1426  0144 725f009e      	clr	_TIM_1S4
1427  0148               L574:
1428                     ; 104 					if(Percent_1s==0)
1430  0148 725d00ad      	tnz	_Percent_1s
1431  014c 2604          	jrne	L375
1432                     ; 105 					{Percent_1s=1;}
1434  014e 350100ad      	mov	_Percent_1s,#1
1435  0152               L375:
1436                     ; 107 					if(BLE_LED==1)
1438  0152 c600c1        	ld	a,_BLE_LED
1439  0155 a101          	cp	a,#1
1440  0157 2621          	jrne	L575
1441                     ; 109 						if(BLE_Con==0)
1443  0159 725d00c2      	tnz	_BLE_Con
1444  015d 2606          	jrne	L775
1445                     ; 110 							{TIM_1S5++;}
1447  015f 725c009f      	inc	_TIM_1S5
1449  0163 2004          	jra	L106
1450  0165               L775:
1451                     ; 111 						else TIM_1S5=0;
1453  0165 725f009f      	clr	_TIM_1S5
1454  0169               L106:
1455                     ; 113 						if(TIM_1S5>=5)
1457  0169 c6009f        	ld	a,_TIM_1S5
1458  016c a105          	cp	a,#5
1459  016e 250e          	jrult	L506
1460                     ; 115 								BLE_Con=1;	
1462  0170 350100c2      	mov	_BLE_Con,#1
1463                     ; 116 								TIM_1S5=0;
1465  0174 725f009f      	clr	_TIM_1S5
1466  0178 2004          	jra	L506
1467  017a               L575:
1468                     ; 119 					else TIM_1S5,BLE_Con=0;
1470  017a 725f00c2      	clr	_BLE_Con
1471  017e               L506:
1472                     ; 121 					if(APP_DATA_Start==1)
1474  017e c600bc        	ld	a,_APP_DATA_Start
1475  0181 a101          	cp	a,#1
1476  0183 2615          	jrne	L706
1477                     ; 123 						TIM_1S3++;
1479  0185 725c009d      	inc	_TIM_1S3
1480                     ; 124 						if(TIM_1S3>=5)
1482  0189 c6009d        	ld	a,_TIM_1S3
1483  018c a105          	cp	a,#5
1484  018e 2512          	jrult	L316
1485                     ; 126 							DATA_TX_5s=1;	
1487  0190 350100bd      	mov	_DATA_TX_5s,#1
1488                     ; 127 							TIM_1S3=0;
1490  0194 725f009d      	clr	_TIM_1S3
1491  0198 2008          	jra	L316
1492  019a               L706:
1493                     ; 130 					else DATA_TX_5s=0,TIM_1S3=0;
1495  019a 725f00bd      	clr	_DATA_TX_5s
1496  019e 725f009d      	clr	_TIM_1S3
1497  01a2               L316:
1498                     ; 132 					if(APP_Connect==1||GPIO_ReadInputDataBit(BLE_C_PORT,BLE_C_PIN)!=0)
1500  01a2 c600be        	ld	a,_APP_Connect
1501  01a5 a101          	cp	a,#1
1502  01a7 270d          	jreq	L716
1504  01a9 4b04          	push	#4
1505  01ab ae5000        	ldw	x,#20480
1506  01ae cd0000        	call	_GPIO_ReadInputDataBit
1508  01b1 5b01          	addw	sp,#1
1509  01b3 4d            	tnz	a
1510  01b4 272c          	jreq	L516
1511  01b6               L716:
1512                     ; 134 						TIM_1S7++;
1514  01b6 725c00a1      	inc	_TIM_1S7
1515                     ; 135 						if(TIM_1S7>=2)
1517  01ba c600a1        	ld	a,_TIM_1S7
1518  01bd a102          	cp	a,#2
1519  01bf 2521          	jrult	L516
1520                     ; 137 							if(APP_Connect_end==0)
1522  01c1 725d00bf      	tnz	_APP_Connect_end
1523  01c5 260f          	jrne	L326
1524                     ; 139 								BLE_LED=1;
1526  01c7 350100c1      	mov	_BLE_LED,#1
1527                     ; 140 								BLE_Con=1;
1529  01cb 350100c2      	mov	_BLE_Con,#1
1530                     ; 141 								BABAPP_TX(99);
1532  01cf a663          	ld	a,#99
1533  01d1 cd05ef        	call	_BABAPP_TX
1536  01d4 2008          	jra	L526
1537  01d6               L326:
1538                     ; 143 							else APP_Connect=0,TIM_1S7=0;
1540  01d6 725f00be      	clr	_APP_Connect
1541  01da 725f00a1      	clr	_TIM_1S7
1542  01de               L526:
1543                     ; 145 							TIM_1S7=0;
1545  01de 725f00a1      	clr	_TIM_1S7
1546  01e2               L516:
1547                     ; 149 					if(TIM_1S2>=5)
1549  01e2 c6009c        	ld	a,_TIM_1S2
1550  01e5 a105          	cp	a,#5
1551  01e7 2508          	jrult	L726
1552                     ; 150 					{I2C_ON=1; TIM_1S2=0;}
1554  01e9 350100bb      	mov	_I2C_ON,#1
1557  01ed 725f009c      	clr	_TIM_1S2
1558  01f1               L726:
1559                     ; 152 					if(CHG_State==1)
1561  01f1 c600b2        	ld	a,_CHG_State
1562  01f4 a101          	cp	a,#1
1563  01f6 260c          	jrne	L136
1564                     ; 154 							if(STATE_CHG!=0) //Full_CHG
1566  01f8 725d00b6      	tnz	_STATE_CHG
1567  01fc 270a          	jreq	L536
1568                     ; 155 								{TIM_CHG_1S3++;}
1570  01fe 725c00a4      	inc	_TIM_CHG_1S3
1571  0202 2004          	jra	L536
1572  0204               L136:
1573                     ; 157 					else TIM_CHG_1S3=0;
1575  0204 725f00a4      	clr	_TIM_CHG_1S3
1576  0208               L536:
1577                     ; 159 					if(ACC_Volt>=120) //Run_CHG
1579  0208 c6007b        	ld	a,_ACC_Volt
1580  020b a178          	cp	a,#120
1581  020d 2506          	jrult	L736
1582                     ; 160 					  {TIM_CHG_1S1++;}
1584  020f 725c00a2      	inc	_TIM_CHG_1S1
1586  0213 200b          	jra	L146
1587  0215               L736:
1588                     ; 161 					else if(ACC_Volt<=115) //Low_CHG
1590  0215 c6007b        	ld	a,_ACC_Volt
1591  0218 a174          	cp	a,#116
1592  021a 2404          	jruge	L146
1593                     ; 162 						{TIM_CHG_1S2++;}
1595  021c 725c00a3      	inc	_TIM_CHG_1S2
1596  0220               L146:
1597                     ; 164 					waiting_Time++;
1599  0220 725c00a5      	inc	_waiting_Time
1600                     ; 165 					if(waiting_Time>=2)
1602  0224 c600a5        	ld	a,_waiting_Time
1603  0227 a102          	cp	a,#2
1604  0229 2504          	jrult	L546
1605                     ; 166 						{waiting_Time=0;}
1607  022b 725f00a5      	clr	_waiting_Time
1608  022f               L546:
1609                     ; 168 					B_bounce_1S++;
1611  022f 725c00a6      	inc	_B_bounce_1S
1612                     ; 169 					if(B_bounce_1S>=2)
1614  0233 c600a6        	ld	a,_B_bounce_1S
1615  0236 a102          	cp	a,#2
1616  0238 2504          	jrult	L746
1617                     ; 170 						{B_bounce_1S=0;}
1619  023a 725f00a6      	clr	_B_bounce_1S
1620  023e               L746:
1621                     ; 172 					if(Short_time==1)
1623  023e c600b9        	ld	a,_Short_time
1624  0241 a101          	cp	a,#1
1625  0243 2611          	jrne	L156
1626                     ; 174 							Short_1S++;
1628  0245 725c00ba      	inc	_Short_1S
1629                     ; 175 							if(Short_1S>=30)
1631  0249 c600ba        	ld	a,_Short_1S
1632  024c a11e          	cp	a,#30
1633  024e 250a          	jrult	L556
1634                     ; 176 								{Short_1S=30;}
1636  0250 351e00ba      	mov	_Short_1S,#30
1637  0254 2004          	jra	L556
1638  0256               L156:
1639                     ; 179 						{Short_1S=0;}
1641  0256 725f00ba      	clr	_Short_1S
1642  025a               L556:
1643                     ; 181 					TIM_8ms=0;
1645  025a 725f0097      	clr	_TIM_8ms
1646  025e               L754:
1647                     ; 184 			if(BLE_Con==1)
1649  025e c600c2        	ld	a,_BLE_Con
1650  0261 a101          	cp	a,#1
1651  0263 2624          	jrne	L756
1652                     ; 186 					TIM_8ms2++;
1654  0265 725c0098      	inc	_TIM_8ms2
1655                     ; 187 					if(TIM_8ms2>=20)
1657  0269 c60098        	ld	a,_TIM_8ms2
1658  026c a114          	cp	a,#20
1659  026e 251d          	jrult	L566
1660                     ; 189 							Tim_500ms++;
1662  0270 725c009a      	inc	_Tim_500ms
1663                     ; 190 							if(Tim_500ms>=4)
1665  0274 c6009a        	ld	a,_Tim_500ms
1666  0277 a104          	cp	a,#4
1667  0279 2508          	jrult	L366
1668                     ; 191 								{Tim_500ms=0,BLE_Con=0;}
1670  027b 725f009a      	clr	_Tim_500ms
1671  027f 725f00c2      	clr	_BLE_Con
1672  0283               L366:
1673                     ; 192 							TIM_8ms2=0;
1675  0283 725f0098      	clr	_TIM_8ms2
1676  0287 2004          	jra	L566
1677  0289               L756:
1678                     ; 195 			else TIM_8ms2=0;
1680  0289 725f0098      	clr	_TIM_8ms2
1681  028d               L566:
1682                     ; 197 			if(PRC_COM==1)
1684  028d c600c3        	ld	a,_PRC_COM
1685  0290 a101          	cp	a,#1
1686  0292 262b          	jrne	L766
1687                     ; 199 					if(BAB_DAT2[4]!='3')
1689  0294 c6002d        	ld	a,_BAB_DAT2+4
1690  0297 a133          	cp	a,#51
1691  0299 272c          	jreq	L776
1692                     ; 201 						TIM_8ms3++;
1694  029b 725c0099      	inc	_TIM_8ms3
1695                     ; 202 						if(TIM_8ms3>=124)
1697  029f c60099        	ld	a,_TIM_8ms3
1698  02a2 a17c          	cp	a,#124
1699  02a4 2521          	jrult	L776
1700                     ; 204 								TIM_1S6++;
1702  02a6 725c00a0      	inc	_TIM_1S6
1703                     ; 205 								if(TIM_1S6>=10)
1705  02aa c600a0        	ld	a,_TIM_1S6
1706  02ad a10a          	cp	a,#10
1707  02af 2508          	jrult	L576
1708                     ; 206 									{	PRC_COM=0,TIM_1S6=0;	}
1710  02b1 725f00c3      	clr	_PRC_COM
1711  02b5 725f00a0      	clr	_TIM_1S6
1712  02b9               L576:
1713                     ; 207 								TIM_8ms3=0;
1715  02b9 725f0099      	clr	_TIM_8ms3
1716  02bd 2008          	jra	L776
1717  02bf               L766:
1718                     ; 211 			else TIM_8ms3=0,TIM_1S6=0;
1720  02bf 725f0099      	clr	_TIM_8ms3
1721  02c3 725f00a0      	clr	_TIM_1S6
1722  02c7               L776:
1723                     ; 213 			TIM4_ClearITPendingBit(TIM4_IT_Update);
1725  02c7 a601          	ld	a,#1
1726  02c9 cd0000        	call	_TIM4_ClearITPendingBit
1729  02cc 206b          	jra	L107
1730  02ce               L554:
1731                     ; 217 			SpeakTime1_pp++;
1733  02ce 725c0004      	inc	_SpeakTime1_pp
1734                     ; 218 			if(SpeakTime1_pp > SpeakAppTone)
1736  02d2 c60004        	ld	a,_SpeakTime1_pp
1737  02d5 c10001        	cp	a,_SpeakAppTone
1738  02d8 231d          	jrule	L307
1739                     ; 220 					if(SpeakOnOff == 1)
1741  02da c60000        	ld	a,_SpeakOnOff
1742  02dd a101          	cp	a,#1
1743  02df 260a          	jrne	L507
1744                     ; 222 							Speak_PORT->ODR |= Speak_PIN;//Speak_On
1746  02e1 72125005      	bset	20485,#1
1747                     ; 223 							SpeakOnOff = 0;
1749  02e5 725f0000      	clr	_SpeakOnOff
1751  02e9 2008          	jra	L707
1752  02eb               L507:
1753                     ; 227 							Speak_PORT->ODR &= ~Speak_PIN;//Speak_Off
1755  02eb 72135005      	bres	20485,#1
1756                     ; 228 							SpeakOnOff = 1;
1758  02ef 35010000      	mov	_SpeakOnOff,#1
1759  02f3               L707:
1760                     ; 230 					SpeakTime1_pp = 0;
1762  02f3 725f0004      	clr	_SpeakTime1_pp
1763  02f7               L307:
1764                     ; 232 			SpeakDelayTime_pp++;
1766  02f7 ce0005        	ldw	x,_SpeakDelayTime_pp
1767  02fa 1c0001        	addw	x,#1
1768  02fd cf0005        	ldw	_SpeakDelayTime_pp,x
1769                     ; 233 			if(SpeakDelayTime_pp > 625)
1771  0300 ce0005        	ldw	x,_SpeakDelayTime_pp
1772  0303 a30272        	cpw	x,#626
1773  0306 2508          	jrult	L117
1774                     ; 235 					SpeakTime2_pp++;
1776  0308 725c0003      	inc	_SpeakTime2_pp
1777                     ; 236 					SpeakDelayTime_pp = 0;
1779  030c 5f            	clrw	x
1780  030d cf0005        	ldw	_SpeakDelayTime_pp,x
1781  0310               L117:
1782                     ; 238 			if(SpeakTime2_pp == SpeakAppTime)
1784  0310 c60003        	ld	a,_SpeakTime2_pp
1785  0313 c10002        	cp	a,_SpeakAppTime
1786  0316 2621          	jrne	L107
1787                     ; 240 					SpeakDelayTime_pp = 0;
1789  0318 5f            	clrw	x
1790  0319 cf0005        	ldw	_SpeakDelayTime_pp,x
1791                     ; 241 					SpeakTime1_pp =0;
1793  031c 725f0004      	clr	_SpeakTime1_pp
1794                     ; 242 					SpeakTime2_pp = 0;
1796  0320 725f0003      	clr	_SpeakTime2_pp
1797                     ; 243 					SpeakAppTime = 0;
1799  0324 725f0002      	clr	_SpeakAppTime
1800                     ; 244 					SpeakAppTone = 0;
1802  0328 725f0001      	clr	_SpeakAppTone
1803                     ; 245 					SpeakOnOff = 0;
1805  032c 725f0000      	clr	_SpeakOnOff
1806                     ; 246 					Speak_PORT->ODR &= ~Speak_PIN;//Speak_Off
1808  0330 72135005      	bres	20485,#1
1809                     ; 247 					TIM4_ClearITPendingBit(TIM4_IT_Update);
1811  0334 a601          	ld	a,#1
1812  0336 cd0000        	call	_TIM4_ClearITPendingBit
1814  0339               L107:
1815                     ; 250 }
1818  0339 81            	ret
1886                     ; 253 int DATA_Check_Sum(void)
1886                     ; 254 {	
1887                     	switch	.text
1888  033a               _DATA_Check_Sum:
1890  033a 5205          	subw	sp,#5
1891       00000005      OFST:	set	5
1894                     ; 256 	uint8_t k=0;
1896  033c 0f02          	clr	(OFST-3,sp)
1898                     ; 257 	char Sum=0;
1900  033e 0f03          	clr	(OFST-2,sp)
1902                     ; 258 	char cs1=0;
1904                     ; 259 	char cs2=0;
1906                     ; 261 	for(j=0;j<=64;j++)
1908  0340 5f            	clrw	x
1909  0341 1f04          	ldw	(OFST-1,sp),x
1911  0343               L347:
1912                     ; 263 		if(B_Rx_Command[j]!='\n'){ k++; }
1914  0343 1e04          	ldw	x,(OFST-1,sp)
1915  0345 d600b5        	ld	a,(_B_Rx_Command,x)
1916  0348 a10a          	cp	a,#10
1917  034a 2711          	jreq	L747
1920  034c 0c02          	inc	(OFST-3,sp)
1923                     ; 261 	for(j=0;j<=64;j++)
1925  034e 1e04          	ldw	x,(OFST-1,sp)
1926  0350 1c0001        	addw	x,#1
1927  0353 1f04          	ldw	(OFST-1,sp),x
1931  0355 9c            	rvf
1932  0356 1e04          	ldw	x,(OFST-1,sp)
1933  0358 a30041        	cpw	x,#65
1934  035b 2fe6          	jrslt	L347
1935  035d               L747:
1936                     ; 267 	for(z=0;z<(k-2);z++){Sum+=B_Rx_Command[z];}
1938  035d 5f            	clrw	x
1939  035e 1f04          	ldw	(OFST-1,sp),x
1942  0360 2010          	jra	L167
1943  0362               L557:
1946  0362 1e04          	ldw	x,(OFST-1,sp)
1947  0364 7b03          	ld	a,(OFST-2,sp)
1948  0366 db00b5        	add	a,(_B_Rx_Command,x)
1949  0369 6b03          	ld	(OFST-2,sp),a
1953  036b 1e04          	ldw	x,(OFST-1,sp)
1954  036d 1c0001        	addw	x,#1
1955  0370 1f04          	ldw	(OFST-1,sp),x
1957  0372               L167:
1960  0372 9c            	rvf
1961  0373 7b02          	ld	a,(OFST-3,sp)
1962  0375 5f            	clrw	x
1963  0376 97            	ld	xl,a
1964  0377 5a            	decw	x
1965  0378 5a            	decw	x
1966  0379 1304          	cpw	x,(OFST-1,sp)
1967  037b 2ce5          	jrsgt	L557
1968                     ; 269 	cs1=(Sum>>4)&0x0f;
1970  037d 7b03          	ld	a,(OFST-2,sp)
1971  037f 4e            	swap	a
1972  0380 a40f          	and	a,#15
1973  0382 6b01          	ld	(OFST-4,sp),a
1975                     ; 270 	cs1=(cs1<10)?(cs1+'0'):((cs1-10)+'a');
1977  0384 7b01          	ld	a,(OFST-4,sp)
1978  0386 a10a          	cp	a,#10
1979  0388 2406          	jruge	L61
1980  038a 7b01          	ld	a,(OFST-4,sp)
1981  038c ab30          	add	a,#48
1982  038e 2004          	jra	L02
1983  0390               L61:
1984  0390 7b01          	ld	a,(OFST-4,sp)
1985  0392 ab57          	add	a,#87
1986  0394               L02:
1987  0394 6b01          	ld	(OFST-4,sp),a
1989                     ; 271 	cs2= Sum & 0x0f;
1991  0396 7b03          	ld	a,(OFST-2,sp)
1992  0398 a40f          	and	a,#15
1993  039a 6b03          	ld	(OFST-2,sp),a
1995                     ; 272 	cs2=(cs2<10)?(cs2+'0'):((cs2-10)+'a');
1997  039c 7b03          	ld	a,(OFST-2,sp)
1998  039e a10a          	cp	a,#10
1999  03a0 2406          	jruge	L22
2000  03a2 7b03          	ld	a,(OFST-2,sp)
2001  03a4 ab30          	add	a,#48
2002  03a6 2004          	jra	L42
2003  03a8               L22:
2004  03a8 7b03          	ld	a,(OFST-2,sp)
2005  03aa ab57          	add	a,#87
2006  03ac               L42:
2007  03ac 6b03          	ld	(OFST-2,sp),a
2009                     ; 274 	if(cs1==B_Rx_Command[k-2]||0x20==B_Rx_Command[k-2])
2011  03ae 7b02          	ld	a,(OFST-3,sp)
2012  03b0 5f            	clrw	x
2013  03b1 97            	ld	xl,a
2014  03b2 5a            	decw	x
2015  03b3 5a            	decw	x
2016  03b4 d600b5        	ld	a,(_B_Rx_Command,x)
2017  03b7 1101          	cp	a,(OFST-4,sp)
2018  03b9 270d          	jreq	L767
2020  03bb 7b02          	ld	a,(OFST-3,sp)
2021  03bd 5f            	clrw	x
2022  03be 97            	ld	xl,a
2023  03bf 5a            	decw	x
2024  03c0 5a            	decw	x
2025  03c1 d600b5        	ld	a,(_B_Rx_Command,x)
2026  03c4 a120          	cp	a,#32
2027  03c6 2621          	jrne	L567
2028  03c8               L767:
2029                     ; 276 		if(cs2==B_Rx_Command[k-1]||0x20==B_Rx_Command[k-1])
2031  03c8 7b02          	ld	a,(OFST-3,sp)
2032  03ca 5f            	clrw	x
2033  03cb 97            	ld	xl,a
2034  03cc 5a            	decw	x
2035  03cd d600b5        	ld	a,(_B_Rx_Command,x)
2036  03d0 1103          	cp	a,(OFST-2,sp)
2037  03d2 270c          	jreq	L377
2039  03d4 7b02          	ld	a,(OFST-3,sp)
2040  03d6 5f            	clrw	x
2041  03d7 97            	ld	xl,a
2042  03d8 5a            	decw	x
2043  03d9 d600b5        	ld	a,(_B_Rx_Command,x)
2044  03dc a120          	cp	a,#32
2045  03de 2605          	jrne	L177
2046  03e0               L377:
2047                     ; 277 			{return 1;}
2049  03e0 ae0001        	ldw	x,#1
2051  03e3 2001          	jra	L62
2052  03e5               L177:
2053                     ; 278 		else return 0;
2055  03e5 5f            	clrw	x
2057  03e6               L62:
2059  03e6 5b05          	addw	sp,#5
2060  03e8 81            	ret
2061  03e9               L567:
2062                     ; 280 	else return 0;
2064  03e9 5f            	clrw	x
2066  03ea 20fa          	jra	L62
2134                     ; 283 int APP_DATA_Check_Sum(void)
2134                     ; 284 {	
2135                     	switch	.text
2136  03ec               _APP_DATA_Check_Sum:
2138  03ec 5205          	subw	sp,#5
2139       00000005      OFST:	set	5
2142                     ; 286 	uint8_t k=0;
2144  03ee 0f02          	clr	(OFST-3,sp)
2146                     ; 287 	char Sum=0;
2148  03f0 0f03          	clr	(OFST-2,sp)
2150                     ; 288 	char cs1=0;
2152                     ; 289 	char cs2=0;
2154                     ; 291 	for(j=0;j<=64;j++)
2156  03f2 5f            	clrw	x
2157  03f3 1f04          	ldw	(OFST-1,sp),x
2159  03f5               L7201:
2160                     ; 293 		if(A_Rx_Command[j]!='\n'){ k++; }
2162  03f5 1e04          	ldw	x,(OFST-1,sp)
2163  03f7 d600f5        	ld	a,(_A_Rx_Command,x)
2164  03fa a10a          	cp	a,#10
2165  03fc 2711          	jreq	L3301
2168  03fe 0c02          	inc	(OFST-3,sp)
2171                     ; 291 	for(j=0;j<=64;j++)
2173  0400 1e04          	ldw	x,(OFST-1,sp)
2174  0402 1c0001        	addw	x,#1
2175  0405 1f04          	ldw	(OFST-1,sp),x
2179  0407 9c            	rvf
2180  0408 1e04          	ldw	x,(OFST-1,sp)
2181  040a a30041        	cpw	x,#65
2182  040d 2fe6          	jrslt	L7201
2183  040f               L3301:
2184                     ; 297 	for(z=0;z<(k-4);z++){Sum+=A_Rx_Command[z];}
2186  040f 5f            	clrw	x
2187  0410 1f04          	ldw	(OFST-1,sp),x
2190  0412 2010          	jra	L5401
2191  0414               L1401:
2194  0414 1e04          	ldw	x,(OFST-1,sp)
2195  0416 7b03          	ld	a,(OFST-2,sp)
2196  0418 db00f5        	add	a,(_A_Rx_Command,x)
2197  041b 6b03          	ld	(OFST-2,sp),a
2201  041d 1e04          	ldw	x,(OFST-1,sp)
2202  041f 1c0001        	addw	x,#1
2203  0422 1f04          	ldw	(OFST-1,sp),x
2205  0424               L5401:
2208  0424 9c            	rvf
2209  0425 7b02          	ld	a,(OFST-3,sp)
2210  0427 5f            	clrw	x
2211  0428 97            	ld	xl,a
2212  0429 1d0004        	subw	x,#4
2213  042c 1304          	cpw	x,(OFST-1,sp)
2214  042e 2ce4          	jrsgt	L1401
2215                     ; 299 	cs1=(Sum>>4)&0x0f;
2217  0430 7b03          	ld	a,(OFST-2,sp)
2218  0432 4e            	swap	a
2219  0433 a40f          	and	a,#15
2220  0435 6b01          	ld	(OFST-4,sp),a
2222                     ; 300 	cs1=(cs1<10)?(cs1+'0'):((cs1-10)+'a');
2224  0437 7b01          	ld	a,(OFST-4,sp)
2225  0439 a10a          	cp	a,#10
2226  043b 2406          	jruge	L23
2227  043d 7b01          	ld	a,(OFST-4,sp)
2228  043f ab30          	add	a,#48
2229  0441 2004          	jra	L43
2230  0443               L23:
2231  0443 7b01          	ld	a,(OFST-4,sp)
2232  0445 ab57          	add	a,#87
2233  0447               L43:
2234  0447 6b01          	ld	(OFST-4,sp),a
2236                     ; 301 	cs2= Sum & 0x0f;
2238  0449 7b03          	ld	a,(OFST-2,sp)
2239  044b a40f          	and	a,#15
2240  044d 6b03          	ld	(OFST-2,sp),a
2242                     ; 302 	cs2=(cs2<10)?(cs2+'0'):((cs2-10)+'a');
2244  044f 7b03          	ld	a,(OFST-2,sp)
2245  0451 a10a          	cp	a,#10
2246  0453 2406          	jruge	L63
2247  0455 7b03          	ld	a,(OFST-2,sp)
2248  0457 ab30          	add	a,#48
2249  0459 2004          	jra	L04
2250  045b               L63:
2251  045b 7b03          	ld	a,(OFST-2,sp)
2252  045d ab57          	add	a,#87
2253  045f               L04:
2254  045f 6b03          	ld	(OFST-2,sp),a
2256                     ; 304 	if(cs1==A_Rx_Command[k-4]||0x20==A_Rx_Command[k-4])
2258  0461 7b02          	ld	a,(OFST-3,sp)
2259  0463 5f            	clrw	x
2260  0464 97            	ld	xl,a
2261  0465 1d0004        	subw	x,#4
2262  0468 d600f5        	ld	a,(_A_Rx_Command,x)
2263  046b 1101          	cp	a,(OFST-4,sp)
2264  046d 270e          	jreq	L3501
2266  046f 7b02          	ld	a,(OFST-3,sp)
2267  0471 5f            	clrw	x
2268  0472 97            	ld	xl,a
2269  0473 1d0004        	subw	x,#4
2270  0476 d600f5        	ld	a,(_A_Rx_Command,x)
2271  0479 a120          	cp	a,#32
2272  047b 2625          	jrne	L1501
2273  047d               L3501:
2274                     ; 306 		if(cs2==A_Rx_Command[k-3]||0x20==A_Rx_Command[k-3])
2276  047d 7b02          	ld	a,(OFST-3,sp)
2277  047f 5f            	clrw	x
2278  0480 97            	ld	xl,a
2279  0481 1d0003        	subw	x,#3
2280  0484 d600f5        	ld	a,(_A_Rx_Command,x)
2281  0487 1103          	cp	a,(OFST-2,sp)
2282  0489 270e          	jreq	L7501
2284  048b 7b02          	ld	a,(OFST-3,sp)
2285  048d 5f            	clrw	x
2286  048e 97            	ld	xl,a
2287  048f 1d0003        	subw	x,#3
2288  0492 d600f5        	ld	a,(_A_Rx_Command,x)
2289  0495 a120          	cp	a,#32
2290  0497 2605          	jrne	L5501
2291  0499               L7501:
2292                     ; 307 			{return 1;}
2294  0499 ae0001        	ldw	x,#1
2296  049c 2001          	jra	L24
2297  049e               L5501:
2298                     ; 308 		else return 0;
2300  049e 5f            	clrw	x
2302  049f               L24:
2304  049f 5b05          	addw	sp,#5
2305  04a1 81            	ret
2306  04a2               L1501:
2307                     ; 310 	else return 0;
2309  04a2 5f            	clrw	x
2311  04a3 20fa          	jra	L24
2373                     ; 314 extern void USART1_INTERRUPT_HANDLER(void)  // BAB110 <-> APP
2373                     ; 315 {
2374                     	switch	.text
2375  04a5               _USART1_INTERRUPT_HANDLER:
2377  04a5 5203          	subw	sp,#3
2378       00000003      OFST:	set	3
2381                     ; 318 	int Checksum=0;
2383                     ; 320 	for(i=0;i<64;i++)
2385  04a7 5f            	clrw	x
2386  04a8 1f01          	ldw	(OFST-2,sp),x
2388  04aa               L5011:
2389                     ; 322 		c=0;
2391  04aa 0f03          	clr	(OFST+0,sp)
2394  04ac 201f          	jra	L7111
2395  04ae               L3111:
2396                     ; 324 			{	c++;	if(c==100){break;}	}
2398  04ae 0c03          	inc	(OFST+0,sp)
2402  04b0 7b03          	ld	a,(OFST+0,sp)
2403  04b2 a164          	cp	a,#100
2404  04b4 2617          	jrne	L7111
2406  04b6               L1211:
2407                     ; 325 		A_Rx_Command[i] = USART_ReceiveData8(USART1);
2409  04b6 ae5230        	ldw	x,#21040
2410  04b9 cd0000        	call	_USART_ReceiveData8
2412  04bc 1e01          	ldw	x,(OFST-2,sp)
2413  04be d700f5        	ld	(_A_Rx_Command,x),a
2414                     ; 326 		if(USART_ReceiveData8(USART1)=='\n'){break;}
2416  04c1 ae5230        	ldw	x,#21040
2417  04c4 cd0000        	call	_USART_ReceiveData8
2419  04c7 a10a          	cp	a,#10
2420  04c9 2612          	jrne	L5211
2423  04cb 201f          	jra	L1111
2424  04cd               L7111:
2425                     ; 323 		while(USART_GetFlagStatus(USART1,USART_FLAG_RXNE)==RESET)
2427  04cd ae0020        	ldw	x,#32
2428  04d0 89            	pushw	x
2429  04d1 ae5230        	ldw	x,#21040
2430  04d4 cd0000        	call	_USART_GetFlagStatus
2432  04d7 85            	popw	x
2433  04d8 4d            	tnz	a
2434  04d9 27d3          	jreq	L3111
2435  04db 20d9          	jra	L1211
2436  04dd               L5211:
2437                     ; 320 	for(i=0;i<64;i++)
2439  04dd 1e01          	ldw	x,(OFST-2,sp)
2440  04df 1c0001        	addw	x,#1
2441  04e2 1f01          	ldw	(OFST-2,sp),x
2445  04e4 9c            	rvf
2446  04e5 1e01          	ldw	x,(OFST-2,sp)
2447  04e7 a30040        	cpw	x,#64
2448  04ea 2fbe          	jrslt	L5011
2449  04ec               L1111:
2450                     ; 329 	if(A_Rx_Command[0]=='+')
2452  04ec c600f5        	ld	a,_A_Rx_Command
2453  04ef a12b          	cp	a,#43
2454  04f1 2643          	jrne	L7211
2455                     ; 331 		if(A_Rx_Command[15]==':')
2457  04f3 c60104        	ld	a,_A_Rx_Command+15
2458  04f6 a13a          	cp	a,#58
2459  04f8 2616          	jrne	L1311
2460                     ; 333 				MAD1=A_Rx_Command[16];
2462  04fa 55010500de    	mov	_MAD1,_A_Rx_Command+16
2463                     ; 334 				MAD2=A_Rx_Command[17];
2465  04ff 55010600df    	mov	_MAD2,_A_Rx_Command+17
2466                     ; 335 				MAD3=A_Rx_Command[19];
2468  0504 55010800e0    	mov	_MAD3,_A_Rx_Command+19
2469                     ; 336 				MAD4=A_Rx_Command[20];
2471  0509 55010900e1    	mov	_MAD4,_A_Rx_Command+20
2473  050e 203e          	jra	L3411
2474  0510               L1311:
2475                     ; 338 		else if(A_Rx_Command[1]=='C')
2477  0510 c600f6        	ld	a,_A_Rx_Command+1
2478  0513 a143          	cp	a,#67
2479  0515 2606          	jrne	L5311
2480                     ; 340 				APP_Connect=1;
2482  0517 350100be      	mov	_APP_Connect,#1
2484  051b 2031          	jra	L3411
2485  051d               L5311:
2486                     ; 342 		else if(A_Rx_Command[1]=='D')
2488  051d c600f6        	ld	a,_A_Rx_Command+1
2489  0520 a144          	cp	a,#68
2490  0522 262a          	jrne	L3411
2491                     ; 343 			{ APP_DATA_Start=0,APP_Connect=0,BLE_LED=0;APP_Connect_end=0; }
2493  0524 725f00bc      	clr	_APP_DATA_Start
2494  0528 725f00be      	clr	_APP_Connect
2495  052c 725f00c1      	clr	_BLE_LED
2498  0530 725f00bf      	clr	_APP_Connect_end
2499  0534 2018          	jra	L3411
2500  0536               L7211:
2501                     ; 347 		Checksum=APP_DATA_Check_Sum();
2503  0536 cd03ec        	call	_APP_DATA_Check_Sum
2505  0539 1f01          	ldw	(OFST-2,sp),x
2507                     ; 349 		if(Checksum==1)
2509  053b 1e01          	ldw	x,(OFST-2,sp)
2510  053d a30001        	cpw	x,#1
2511  0540 2608          	jrne	L5411
2512                     ; 351 			APP_Connect_end=1;
2514  0542 350100bf      	mov	_APP_Connect_end,#1
2515                     ; 352 			App_DATA_Check_string();
2517  0546 ad14          	call	_App_DATA_Check_string
2520  0548 2004          	jra	L3411
2521  054a               L5411:
2522                     ; 354 		else BABAPP_TX(0);
2524  054a 4f            	clr	a
2525  054b cd05ef        	call	_BABAPP_TX
2527  054e               L3411:
2528                     ; 356 	USART_ClearFlag(USART1,USART_FLAG_RXNE);
2530  054e ae0020        	ldw	x,#32
2531  0551 89            	pushw	x
2532  0552 ae5230        	ldw	x,#21040
2533  0555 cd0000        	call	_USART_ClearFlag
2535  0558 85            	popw	x
2536                     ; 363 }
2539  0559 5b03          	addw	sp,#3
2540  055b 81            	ret
2568                     ; 365 void App_DATA_Check_string(void)
2568                     ; 366 {
2569                     	switch	.text
2570  055c               _App_DATA_Check_string:
2574                     ; 367 	if(A_Rx_Command[0]=='S')
2576  055c c600f5        	ld	a,_A_Rx_Command
2577  055f a153          	cp	a,#83
2578  0561 2671          	jrne	L1611
2579                     ; 369 			if(A_Rx_Command[4]=='T')
2581  0563 c600f9        	ld	a,_A_Rx_Command+4
2582  0566 a154          	cp	a,#84
2583  0568 2607          	jrne	L3611
2584                     ; 370 				{	BABAPP_TX(1); }
2586  056a a601          	ld	a,#1
2587  056c cd05ef        	call	_BABAPP_TX
2590  056f 2066          	jra	L3221
2591  0571               L3611:
2592                     ; 371 			else if(A_Rx_Command[4]=='D')
2594  0571 c600f9        	ld	a,_A_Rx_Command+4
2595  0574 a144          	cp	a,#68
2596  0576 263d          	jrne	L7611
2597                     ; 373 					if(A_Rx_Command[7]=='A')
2599  0578 c600fc        	ld	a,_A_Rx_Command+7
2600  057b a141          	cp	a,#65
2601  057d 260a          	jrne	L1711
2602                     ; 374 						{	APP_DATA_Start=1,DATA_TX_5s=1;	}
2604  057f 350100bc      	mov	_APP_DATA_Start,#1
2605  0583 350100bd      	mov	_DATA_TX_5s,#1
2607  0587 204e          	jra	L3221
2608  0589               L1711:
2609                     ; 375 					else if(A_Rx_Command[7]=='1')
2611  0589 c600fc        	ld	a,_A_Rx_Command+7
2612  058c a131          	cp	a,#49
2613  058e 2606          	jrne	L5711
2614                     ; 376 						{ BABAPP_TX(3); }
2616  0590 a603          	ld	a,#3
2617  0592 ad5b          	call	_BABAPP_TX
2620  0594 2041          	jra	L3221
2621  0596               L5711:
2622                     ; 377 					else if(A_Rx_Command[7]=='2')
2624  0596 c600fc        	ld	a,_A_Rx_Command+7
2625  0599 a132          	cp	a,#50
2626  059b 2606          	jrne	L1021
2627                     ; 378 						{ BABAPP_TX(4); }
2629  059d a604          	ld	a,#4
2630  059f ad4e          	call	_BABAPP_TX
2633  05a1 2034          	jra	L3221
2634  05a3               L1021:
2635                     ; 379 					else if(A_Rx_Command[7]=='3')
2637  05a3 c600fc        	ld	a,_A_Rx_Command+7
2638  05a6 a133          	cp	a,#51
2639  05a8 2606          	jrne	L5021
2640                     ; 380 						{ BABAPP_TX(5); }
2642  05aa a605          	ld	a,#5
2643  05ac ad41          	call	_BABAPP_TX
2646  05ae 2027          	jra	L3221
2647  05b0               L5021:
2648                     ; 381 					else BABAPP_TX(0);
2650  05b0 4f            	clr	a
2651  05b1 ad3c          	call	_BABAPP_TX
2653  05b3 2022          	jra	L3221
2654  05b5               L7611:
2655                     ; 383 			else if(A_Rx_Command[4]=='R')
2657  05b5 c600f9        	ld	a,_A_Rx_Command+4
2658  05b8 a152          	cp	a,#82
2659  05ba 2606          	jrne	L3121
2660                     ; 384 				{ BABAPP_TX(2); }
2662  05bc a602          	ld	a,#2
2663  05be ad2f          	call	_BABAPP_TX
2666  05c0 2015          	jra	L3221
2667  05c2               L3121:
2668                     ; 385 			else if(A_Rx_Command[4]=='P')
2670  05c2 c600f9        	ld	a,_A_Rx_Command+4
2671  05c5 a150          	cp	a,#80
2672  05c7 2606          	jrne	L7121
2673                     ; 386 				{ BABAPP_TX(6); }
2675  05c9 a606          	ld	a,#6
2676  05cb ad22          	call	_BABAPP_TX
2679  05cd 2008          	jra	L3221
2680  05cf               L7121:
2681                     ; 387 			else BABAPP_TX(0);
2683  05cf 4f            	clr	a
2684  05d0 ad1d          	call	_BABAPP_TX
2686  05d2 2003          	jra	L3221
2687  05d4               L1611:
2688                     ; 389 	else BABAPP_TX(0);
2690  05d4 4f            	clr	a
2691  05d5 ad18          	call	_BABAPP_TX
2693  05d7               L3221:
2694                     ; 390 }
2697  05d7 81            	ret
2731                     ; 392 void DATA_APP_TX(char data)
2731                     ; 393 {
2732                     	switch	.text
2733  05d8               _DATA_APP_TX:
2737                     ; 394 	USART_SendData8(USART1,data);
2739  05d8 88            	push	a
2740  05d9 ae5230        	ldw	x,#21040
2741  05dc cd0000        	call	_USART_SendData8
2743  05df 84            	pop	a
2745  05e0               L3421:
2746                     ; 395 	while (USART_GetFlagStatus(USART1, USART_FLAG_TXE) == RESET);
2748  05e0 ae0080        	ldw	x,#128
2749  05e3 89            	pushw	x
2750  05e4 ae5230        	ldw	x,#21040
2751  05e7 cd0000        	call	_USART_GetFlagStatus
2753  05ea 85            	popw	x
2754  05eb 4d            	tnz	a
2755  05ec 27f2          	jreq	L3421
2756                     ; 396 }
2759  05ee 81            	ret
2762                     .const:	section	.text
2763  0000               L7421_Tx_DATA:
2764  0000 5330302c434f  	dc.b	"S00,CONT,00E",13
2765  000d 0a00          	dc.b	10,0
2766  000f               L1521_Tx_DATA:
2767  000f 5330322c5445  	dc.b	"S02,TEST,OK,00E",13
2768  001f 0a00          	dc.b	10,0
2769  0021               L3521_Tx_DATA:
2770  0021 5331312c5245  	dc.b	"S11,REV1,0.00,0000"
2771  0033 30302c303045  	dc.b	"00,00E",13
2772  003a 0a00          	dc.b	10,0
2773  003c               L5521_Tx_DATA:
2774  003c 5331312c4441  	dc.b	"S11,DAT1,000,000,0"
2775  004e 30302c303045  	dc.b	"00,00E",13
2776  0055 0a00          	dc.b	10,0
2777  0057               L7521_Tx_DATA:
2778  0057 5331322c4441  	dc.b	"S12,DAT2,000,0,0,0"
2779  0069 3030302c3030  	dc.b	"000,00E",13
2780  0071 0a00          	dc.b	10,0
2781  0073               L1621_Tx_DATA:
2782  0073 5331332c4441  	dc.b	"S13,DAT3,0000,0000"
2783  0085 2c3030302c30  	dc.b	",000,00E",13
2784  008e 0a00          	dc.b	10,0
2785  0090               L3621_Tx_DATA:
2786  0090 5331342c5052  	dc.b	"S14,PRC1,0000,0000"
2787  00a2 2c303030302c  	dc.b	",0000,00E",13
2788  00ac 0a00          	dc.b	10,0
2789  00ae               L5621_Tx_DATA:
2790  00ae 5330332c3030  	dc.b	"S03,0000,ERR,00E",13
2791  00bf 0a00          	dc.b	10,0
3132                     ; 398 void BABAPP_TX(uint8_t number)
3132                     ; 399 {
3133                     	switch	.text
3134  05ef               _BABAPP_TX:
3136  05ef 88            	push	a
3137  05f0 5229          	subw	sp,#41
3138       00000029      OFST:	set	41
3141                     ; 400 	uint8_t Sum =0;
3143  05f2 0f29          	clr	(OFST+0,sp)
3145                     ; 401 	char cs1 =0;
3147                     ; 402 	char cs2 =0;
3149                     ; 404 	if(number==99)//----------------------------------Connect.
3151  05f4 a163          	cp	a,#99
3152  05f6 2703          	jreq	L451
3153  05f8 cc06b3        	jp	L3441
3154  05fb               L451:
3155                     ; 407 		char Tx_DATA[] = "S00,CONT,00E\r\n";
3157  05fb 96            	ldw	x,sp
3158  05fc 1c0019        	addw	x,#OFST-16
3159  05ff 90ae0000      	ldw	y,#L7421_Tx_DATA
3160  0603 a60f          	ld	a,#15
3161  0605 cd0000        	call	c_xymov
3163                     ; 408 		uint8_t DS = sizeof(Tx_DATA)-1;
3165  0608 a60e          	ld	a,#14
3166  060a 6b14          	ld	(OFST-21,sp),a
3168                     ; 411 		for(i=0;i<(DS-5);i++){Sum += Tx_DATA[i];}
3170  060c 5f            	clrw	x
3171  060d 1f15          	ldw	(OFST-20,sp),x
3174  060f 2017          	jra	L1541
3175  0611               L5441:
3178  0611 96            	ldw	x,sp
3179  0612 1c0019        	addw	x,#OFST-16
3180  0615 1f01          	ldw	(OFST-40,sp),x
3182  0617 1e15          	ldw	x,(OFST-20,sp)
3183  0619 72fb01        	addw	x,(OFST-40,sp)
3184  061c 7b29          	ld	a,(OFST+0,sp)
3185  061e fb            	add	a,(x)
3186  061f 6b29          	ld	(OFST+0,sp),a
3190  0621 1e15          	ldw	x,(OFST-20,sp)
3191  0623 1c0001        	addw	x,#1
3192  0626 1f15          	ldw	(OFST-20,sp),x
3194  0628               L1541:
3197  0628 9c            	rvf
3198  0629 7b14          	ld	a,(OFST-21,sp)
3199  062b 5f            	clrw	x
3200  062c 97            	ld	xl,a
3201  062d 1d0005        	subw	x,#5
3202  0630 1315          	cpw	x,(OFST-20,sp)
3203  0632 2cdd          	jrsgt	L5441
3204                     ; 412 		cs1=(Sum>>4)&0x0f;
3206  0634 7b29          	ld	a,(OFST+0,sp)
3207  0636 4e            	swap	a
3208  0637 a40f          	and	a,#15
3209  0639 6b28          	ld	(OFST-1,sp),a
3211                     ; 413 		Tx_DATA[DS-5]=(cs1<10)?(cs1+'0'):((cs1-10)+'a');
3213  063b 96            	ldw	x,sp
3214  063c 1c0019        	addw	x,#OFST-16
3215  063f 1f01          	ldw	(OFST-40,sp),x
3217  0641 7b14          	ld	a,(OFST-21,sp)
3218  0643 5f            	clrw	x
3219  0644 97            	ld	xl,a
3220  0645 1d0005        	subw	x,#5
3221  0648 72fb01        	addw	x,(OFST-40,sp)
3222  064b 89            	pushw	x
3223  064c 7b2a          	ld	a,(OFST+1,sp)
3224  064e a10a          	cp	a,#10
3225  0650 2406          	jruge	L45
3226  0652 7b2a          	ld	a,(OFST+1,sp)
3227  0654 ab30          	add	a,#48
3228  0656 2004          	jra	L65
3229  0658               L45:
3230  0658 7b2a          	ld	a,(OFST+1,sp)
3231  065a ab57          	add	a,#87
3232  065c               L65:
3233  065c 85            	popw	x
3234  065d f7            	ld	(x),a
3235                     ; 414 		cs2= Sum & 0x0f;
3237  065e 7b29          	ld	a,(OFST+0,sp)
3238  0660 a40f          	and	a,#15
3239  0662 6b29          	ld	(OFST+0,sp),a
3241                     ; 415 		Tx_DATA[DS-4]=(cs2<10)?(cs2+'0'):((cs2-10)+'a');
3243  0664 96            	ldw	x,sp
3244  0665 1c0019        	addw	x,#OFST-16
3245  0668 1f01          	ldw	(OFST-40,sp),x
3247  066a 7b14          	ld	a,(OFST-21,sp)
3248  066c 5f            	clrw	x
3249  066d 97            	ld	xl,a
3250  066e 1d0004        	subw	x,#4
3251  0671 72fb01        	addw	x,(OFST-40,sp)
3252  0674 89            	pushw	x
3253  0675 7b2b          	ld	a,(OFST+2,sp)
3254  0677 a10a          	cp	a,#10
3255  0679 2406          	jruge	L06
3256  067b 7b2b          	ld	a,(OFST+2,sp)
3257  067d ab30          	add	a,#48
3258  067f 2004          	jra	L26
3259  0681               L06:
3260  0681 7b2b          	ld	a,(OFST+2,sp)
3261  0683 ab57          	add	a,#87
3262  0685               L26:
3263  0685 85            	popw	x
3264  0686 f7            	ld	(x),a
3265                     ; 417 		for(z=0;z<DS;z++)
3267  0687 5f            	clrw	x
3268  0688 1f17          	ldw	(OFST-18,sp),x
3271  068a 2016          	jra	L1641
3272  068c               L5541:
3273                     ; 418 		{DATA_APP_TX(Tx_DATA[z]);}//-----------TX_DATA.
3275  068c 96            	ldw	x,sp
3276  068d 1c0019        	addw	x,#OFST-16
3277  0690 1f01          	ldw	(OFST-40,sp),x
3279  0692 1e17          	ldw	x,(OFST-18,sp)
3280  0694 72fb01        	addw	x,(OFST-40,sp)
3281  0697 f6            	ld	a,(x)
3282  0698 cd05d8        	call	_DATA_APP_TX
3284                     ; 417 		for(z=0;z<DS;z++)
3286  069b 1e17          	ldw	x,(OFST-18,sp)
3287  069d 1c0001        	addw	x,#1
3288  06a0 1f17          	ldw	(OFST-18,sp),x
3290  06a2               L1641:
3293  06a2 9c            	rvf
3294  06a3 7b14          	ld	a,(OFST-21,sp)
3295  06a5 5f            	clrw	x
3296  06a6 97            	ld	xl,a
3297  06a7 bf00          	ldw	c_x,x
3298  06a9 1e17          	ldw	x,(OFST-18,sp)
3299  06ab b300          	cpw	x,c_x
3300  06ad 2fdd          	jrslt	L5541
3302  06af acb20cb2      	jpf	L5641
3303  06b3               L3441:
3304                     ; 421 	else if(number==1)//-----------------------------TEST_OK.
3306  06b3 7b2a          	ld	a,(OFST+1,sp)
3307  06b5 a101          	cp	a,#1
3308  06b7 2703          	jreq	L651
3309  06b9 cc0774        	jp	L7641
3310  06bc               L651:
3311                     ; 424 		char Tx_DATA[] = "S02,TEST,OK,00E\r\n";
3313  06bc 96            	ldw	x,sp
3314  06bd 1c0016        	addw	x,#OFST-19
3315  06c0 90ae000f      	ldw	y,#L1521_Tx_DATA
3316  06c4 a612          	ld	a,#18
3317  06c6 cd0000        	call	c_xymov
3319                     ; 425 		uint8_t DS = sizeof(Tx_DATA)-1;
3321  06c9 a611          	ld	a,#17
3322  06cb 6b11          	ld	(OFST-24,sp),a
3324                     ; 428 		for(i=0;i<(DS-5);i++){Sum += Tx_DATA[i];}
3326  06cd 5f            	clrw	x
3327  06ce 1f12          	ldw	(OFST-23,sp),x
3330  06d0 2017          	jra	L5741
3331  06d2               L1741:
3334  06d2 96            	ldw	x,sp
3335  06d3 1c0016        	addw	x,#OFST-19
3336  06d6 1f01          	ldw	(OFST-40,sp),x
3338  06d8 1e12          	ldw	x,(OFST-23,sp)
3339  06da 72fb01        	addw	x,(OFST-40,sp)
3340  06dd 7b29          	ld	a,(OFST+0,sp)
3341  06df fb            	add	a,(x)
3342  06e0 6b29          	ld	(OFST+0,sp),a
3346  06e2 1e12          	ldw	x,(OFST-23,sp)
3347  06e4 1c0001        	addw	x,#1
3348  06e7 1f12          	ldw	(OFST-23,sp),x
3350  06e9               L5741:
3353  06e9 9c            	rvf
3354  06ea 7b11          	ld	a,(OFST-24,sp)
3355  06ec 5f            	clrw	x
3356  06ed 97            	ld	xl,a
3357  06ee 1d0005        	subw	x,#5
3358  06f1 1312          	cpw	x,(OFST-23,sp)
3359  06f3 2cdd          	jrsgt	L1741
3360                     ; 429 		cs1=(Sum>>4)&0x0f;
3362  06f5 7b29          	ld	a,(OFST+0,sp)
3363  06f7 4e            	swap	a
3364  06f8 a40f          	and	a,#15
3365  06fa 6b28          	ld	(OFST-1,sp),a
3367                     ; 430 		Tx_DATA[DS-5]=(cs1<10)?(cs1+'0'):((cs1-10)+'a');
3369  06fc 96            	ldw	x,sp
3370  06fd 1c0016        	addw	x,#OFST-19
3371  0700 1f01          	ldw	(OFST-40,sp),x
3373  0702 7b11          	ld	a,(OFST-24,sp)
3374  0704 5f            	clrw	x
3375  0705 97            	ld	xl,a
3376  0706 1d0005        	subw	x,#5
3377  0709 72fb01        	addw	x,(OFST-40,sp)
3378  070c 89            	pushw	x
3379  070d 7b2a          	ld	a,(OFST+1,sp)
3380  070f a10a          	cp	a,#10
3381  0711 2406          	jruge	L46
3382  0713 7b2a          	ld	a,(OFST+1,sp)
3383  0715 ab30          	add	a,#48
3384  0717 2004          	jra	L66
3385  0719               L46:
3386  0719 7b2a          	ld	a,(OFST+1,sp)
3387  071b ab57          	add	a,#87
3388  071d               L66:
3389  071d 85            	popw	x
3390  071e f7            	ld	(x),a
3391                     ; 431 		cs2= Sum & 0x0f;
3393  071f 7b29          	ld	a,(OFST+0,sp)
3394  0721 a40f          	and	a,#15
3395  0723 6b29          	ld	(OFST+0,sp),a
3397                     ; 432 		Tx_DATA[DS-4]=(cs2<10)?(cs2+'0'):((cs2-10)+'a');
3399  0725 96            	ldw	x,sp
3400  0726 1c0016        	addw	x,#OFST-19
3401  0729 1f01          	ldw	(OFST-40,sp),x
3403  072b 7b11          	ld	a,(OFST-24,sp)
3404  072d 5f            	clrw	x
3405  072e 97            	ld	xl,a
3406  072f 1d0004        	subw	x,#4
3407  0732 72fb01        	addw	x,(OFST-40,sp)
3408  0735 89            	pushw	x
3409  0736 7b2b          	ld	a,(OFST+2,sp)
3410  0738 a10a          	cp	a,#10
3411  073a 2406          	jruge	L07
3412  073c 7b2b          	ld	a,(OFST+2,sp)
3413  073e ab30          	add	a,#48
3414  0740 2004          	jra	L27
3415  0742               L07:
3416  0742 7b2b          	ld	a,(OFST+2,sp)
3417  0744 ab57          	add	a,#87
3418  0746               L27:
3419  0746 85            	popw	x
3420  0747 f7            	ld	(x),a
3421                     ; 434 		for(z=0;z<DS;z++)
3423  0748 5f            	clrw	x
3424  0749 1f14          	ldw	(OFST-21,sp),x
3427  074b 2016          	jra	L5051
3428  074d               L1051:
3429                     ; 435 		{DATA_APP_TX(Tx_DATA[z]);}//-----------TX_DATA.
3431  074d 96            	ldw	x,sp
3432  074e 1c0016        	addw	x,#OFST-19
3433  0751 1f01          	ldw	(OFST-40,sp),x
3435  0753 1e14          	ldw	x,(OFST-21,sp)
3436  0755 72fb01        	addw	x,(OFST-40,sp)
3437  0758 f6            	ld	a,(x)
3438  0759 cd05d8        	call	_DATA_APP_TX
3440                     ; 434 		for(z=0;z<DS;z++)
3442  075c 1e14          	ldw	x,(OFST-21,sp)
3443  075e 1c0001        	addw	x,#1
3444  0761 1f14          	ldw	(OFST-21,sp),x
3446  0763               L5051:
3449  0763 9c            	rvf
3450  0764 7b11          	ld	a,(OFST-24,sp)
3451  0766 5f            	clrw	x
3452  0767 97            	ld	xl,a
3453  0768 bf00          	ldw	c_x,x
3454  076a 1e14          	ldw	x,(OFST-21,sp)
3455  076c b300          	cpw	x,c_x
3456  076e 2fdd          	jrslt	L1051
3458  0770 acb20cb2      	jpf	L5641
3459  0774               L7641:
3460                     ; 437 	else if(number==2)//-----------------------------REV_DATA.
3462  0774 7b2a          	ld	a,(OFST+1,sp)
3463  0776 a102          	cp	a,#2
3464  0778 2703          	jreq	L061
3465  077a cc0857        	jp	L3151
3466  077d               L061:
3467                     ; 440 		char Tx_DATA[] = "S11,REV1,0.00,000000,00E\r\n";
3469  077d 96            	ldw	x,sp
3470  077e 1c000b        	addw	x,#OFST-30
3471  0781 90ae0021      	ldw	y,#L3521_Tx_DATA
3472  0785 a61b          	ld	a,#27
3473  0787 cd0000        	call	c_xymov
3475                     ; 441 		uint8_t DS = sizeof(Tx_DATA)-1;
3477  078a a61a          	ld	a,#26
3478  078c 6b0a          	ld	(OFST-31,sp),a
3480                     ; 443 		for(j=0;j<(sizeof(REV_Setting)-1);j++)
3482  078e 5f            	clrw	x
3483  078f 1f26          	ldw	(OFST-3,sp),x
3485  0791               L5151:
3486                     ; 444 		{Tx_DATA[j+9]=REV_Setting[j];}
3488  0791 1e26          	ldw	x,(OFST-3,sp)
3489  0793 d60001        	ld	a,(_REV_Setting,x)
3490  0796 96            	ldw	x,sp
3491  0797 1c0014        	addw	x,#OFST-21
3492  079a 1f01          	ldw	(OFST-40,sp),x
3494  079c 1e26          	ldw	x,(OFST-3,sp)
3495  079e 72fb01        	addw	x,(OFST-40,sp)
3496  07a1 f7            	ld	(x),a
3497                     ; 443 		for(j=0;j<(sizeof(REV_Setting)-1);j++)
3499  07a2 1e26          	ldw	x,(OFST-3,sp)
3500  07a4 1c0001        	addw	x,#1
3501  07a7 1f26          	ldw	(OFST-3,sp),x
3505  07a9 1e26          	ldw	x,(OFST-3,sp)
3506  07ab a3000b        	cpw	x,#11
3507  07ae 25e1          	jrult	L5151
3508                     ; 446 		for(i=0;i<(DS-5);i++){Sum += Tx_DATA[i];}
3510  07b0 5f            	clrw	x
3511  07b1 1f26          	ldw	(OFST-3,sp),x
3514  07b3 2017          	jra	L7251
3515  07b5               L3251:
3518  07b5 96            	ldw	x,sp
3519  07b6 1c000b        	addw	x,#OFST-30
3520  07b9 1f01          	ldw	(OFST-40,sp),x
3522  07bb 1e26          	ldw	x,(OFST-3,sp)
3523  07bd 72fb01        	addw	x,(OFST-40,sp)
3524  07c0 7b29          	ld	a,(OFST+0,sp)
3525  07c2 fb            	add	a,(x)
3526  07c3 6b29          	ld	(OFST+0,sp),a
3530  07c5 1e26          	ldw	x,(OFST-3,sp)
3531  07c7 1c0001        	addw	x,#1
3532  07ca 1f26          	ldw	(OFST-3,sp),x
3534  07cc               L7251:
3537  07cc 9c            	rvf
3538  07cd 7b0a          	ld	a,(OFST-31,sp)
3539  07cf 5f            	clrw	x
3540  07d0 97            	ld	xl,a
3541  07d1 1d0005        	subw	x,#5
3542  07d4 1326          	cpw	x,(OFST-3,sp)
3543  07d6 2cdd          	jrsgt	L3251
3544                     ; 447 		cs1=(Sum>>4)&0x0f;
3546  07d8 7b29          	ld	a,(OFST+0,sp)
3547  07da 4e            	swap	a
3548  07db a40f          	and	a,#15
3549  07dd 6b28          	ld	(OFST-1,sp),a
3551                     ; 448 		Tx_DATA[DS-5]=(cs1<10)?(cs1+'0'):((cs1-10)+'a');
3553  07df 96            	ldw	x,sp
3554  07e0 1c000b        	addw	x,#OFST-30
3555  07e3 1f01          	ldw	(OFST-40,sp),x
3557  07e5 7b0a          	ld	a,(OFST-31,sp)
3558  07e7 5f            	clrw	x
3559  07e8 97            	ld	xl,a
3560  07e9 1d0005        	subw	x,#5
3561  07ec 72fb01        	addw	x,(OFST-40,sp)
3562  07ef 89            	pushw	x
3563  07f0 7b2a          	ld	a,(OFST+1,sp)
3564  07f2 a10a          	cp	a,#10
3565  07f4 2406          	jruge	L47
3566  07f6 7b2a          	ld	a,(OFST+1,sp)
3567  07f8 ab30          	add	a,#48
3568  07fa 2004          	jra	L67
3569  07fc               L47:
3570  07fc 7b2a          	ld	a,(OFST+1,sp)
3571  07fe ab57          	add	a,#87
3572  0800               L67:
3573  0800 85            	popw	x
3574  0801 f7            	ld	(x),a
3575                     ; 449 		cs2= Sum & 0x0f;
3577  0802 7b29          	ld	a,(OFST+0,sp)
3578  0804 a40f          	and	a,#15
3579  0806 6b29          	ld	(OFST+0,sp),a
3581                     ; 450 		Tx_DATA[DS-4]=(cs2<10)?(cs2+'0'):((cs2-10)+'a');
3583  0808 96            	ldw	x,sp
3584  0809 1c000b        	addw	x,#OFST-30
3585  080c 1f01          	ldw	(OFST-40,sp),x
3587  080e 7b0a          	ld	a,(OFST-31,sp)
3588  0810 5f            	clrw	x
3589  0811 97            	ld	xl,a
3590  0812 1d0004        	subw	x,#4
3591  0815 72fb01        	addw	x,(OFST-40,sp)
3592  0818 89            	pushw	x
3593  0819 7b2b          	ld	a,(OFST+2,sp)
3594  081b a10a          	cp	a,#10
3595  081d 2406          	jruge	L001
3596  081f 7b2b          	ld	a,(OFST+2,sp)
3597  0821 ab30          	add	a,#48
3598  0823 2004          	jra	L201
3599  0825               L001:
3600  0825 7b2b          	ld	a,(OFST+2,sp)
3601  0827 ab57          	add	a,#87
3602  0829               L201:
3603  0829 85            	popw	x
3604  082a f7            	ld	(x),a
3605                     ; 452 		for(z=0;z<DS;z++)
3607  082b 5f            	clrw	x
3608  082c 1f26          	ldw	(OFST-3,sp),x
3611  082e 2016          	jra	L7351
3612  0830               L3351:
3613                     ; 453 		{DATA_APP_TX(Tx_DATA[z]);}//-------DATA.
3615  0830 96            	ldw	x,sp
3616  0831 1c000b        	addw	x,#OFST-30
3617  0834 1f01          	ldw	(OFST-40,sp),x
3619  0836 1e26          	ldw	x,(OFST-3,sp)
3620  0838 72fb01        	addw	x,(OFST-40,sp)
3621  083b f6            	ld	a,(x)
3622  083c cd05d8        	call	_DATA_APP_TX
3624                     ; 452 		for(z=0;z<DS;z++)
3626  083f 1e26          	ldw	x,(OFST-3,sp)
3627  0841 1c0001        	addw	x,#1
3628  0844 1f26          	ldw	(OFST-3,sp),x
3630  0846               L7351:
3633  0846 9c            	rvf
3634  0847 7b0a          	ld	a,(OFST-31,sp)
3635  0849 5f            	clrw	x
3636  084a 97            	ld	xl,a
3637  084b bf00          	ldw	c_x,x
3638  084d 1e26          	ldw	x,(OFST-3,sp)
3639  084f b300          	cpw	x,c_x
3640  0851 2fdd          	jrslt	L3351
3642  0853 acb20cb2      	jpf	L5641
3643  0857               L3151:
3644                     ; 455 	else if(number==3)//----------------------------DAT1_DATA.
3646  0857 7b2a          	ld	a,(OFST+1,sp)
3647  0859 a103          	cp	a,#3
3648  085b 2703          	jreq	L261
3649  085d cc093a        	jp	L5451
3650  0860               L261:
3651                     ; 458 		char Tx_DATA[] = "S11,DAT1,000,000,000,00E\r\n";
3653  0860 96            	ldw	x,sp
3654  0861 1c000d        	addw	x,#OFST-28
3655  0864 90ae003c      	ldw	y,#L5521_Tx_DATA
3656  0868 a61b          	ld	a,#27
3657  086a cd0000        	call	c_xymov
3659                     ; 459 		uint8_t DS = sizeof(Tx_DATA)-1;
3661  086d a61a          	ld	a,#26
3662  086f 6b06          	ld	(OFST-35,sp),a
3664                     ; 461 		for(j=0;j<(sizeof(BAB_DAT1)-1);j++)
3666  0871 5f            	clrw	x
3667  0872 1f0b          	ldw	(OFST-30,sp),x
3669  0874               L7451:
3670                     ; 462 		{Tx_DATA[j+9]=BAB_DAT1[j];}
3672  0874 1e0b          	ldw	x,(OFST-30,sp)
3673  0876 d6001d        	ld	a,(_BAB_DAT1,x)
3674  0879 96            	ldw	x,sp
3675  087a 1c0016        	addw	x,#OFST-19
3676  087d 1f01          	ldw	(OFST-40,sp),x
3678  087f 1e0b          	ldw	x,(OFST-30,sp)
3679  0881 72fb01        	addw	x,(OFST-40,sp)
3680  0884 f7            	ld	(x),a
3681                     ; 461 		for(j=0;j<(sizeof(BAB_DAT1)-1);j++)
3683  0885 1e0b          	ldw	x,(OFST-30,sp)
3684  0887 1c0001        	addw	x,#1
3685  088a 1f0b          	ldw	(OFST-30,sp),x
3689  088c 1e0b          	ldw	x,(OFST-30,sp)
3690  088e a3000b        	cpw	x,#11
3691  0891 25e1          	jrult	L7451
3692                     ; 464 		for(i=0;i<(DS-5);i++){Sum += Tx_DATA[i];}
3694  0893 5f            	clrw	x
3695  0894 1f07          	ldw	(OFST-34,sp),x
3698  0896 2017          	jra	L1651
3699  0898               L5551:
3702  0898 96            	ldw	x,sp
3703  0899 1c000d        	addw	x,#OFST-28
3704  089c 1f01          	ldw	(OFST-40,sp),x
3706  089e 1e07          	ldw	x,(OFST-34,sp)
3707  08a0 72fb01        	addw	x,(OFST-40,sp)
3708  08a3 7b29          	ld	a,(OFST+0,sp)
3709  08a5 fb            	add	a,(x)
3710  08a6 6b29          	ld	(OFST+0,sp),a
3714  08a8 1e07          	ldw	x,(OFST-34,sp)
3715  08aa 1c0001        	addw	x,#1
3716  08ad 1f07          	ldw	(OFST-34,sp),x
3718  08af               L1651:
3721  08af 9c            	rvf
3722  08b0 7b06          	ld	a,(OFST-35,sp)
3723  08b2 5f            	clrw	x
3724  08b3 97            	ld	xl,a
3725  08b4 1d0005        	subw	x,#5
3726  08b7 1307          	cpw	x,(OFST-34,sp)
3727  08b9 2cdd          	jrsgt	L5551
3728                     ; 465 		cs1=(Sum>>4)&0x0f;
3730  08bb 7b29          	ld	a,(OFST+0,sp)
3731  08bd 4e            	swap	a
3732  08be a40f          	and	a,#15
3733  08c0 6b28          	ld	(OFST-1,sp),a
3735                     ; 466 		Tx_DATA[DS-5]=(cs1<10)?(cs1+'0'):((cs1-10)+'a');
3737  08c2 96            	ldw	x,sp
3738  08c3 1c000d        	addw	x,#OFST-28
3739  08c6 1f01          	ldw	(OFST-40,sp),x
3741  08c8 7b06          	ld	a,(OFST-35,sp)
3742  08ca 5f            	clrw	x
3743  08cb 97            	ld	xl,a
3744  08cc 1d0005        	subw	x,#5
3745  08cf 72fb01        	addw	x,(OFST-40,sp)
3746  08d2 89            	pushw	x
3747  08d3 7b2a          	ld	a,(OFST+1,sp)
3748  08d5 a10a          	cp	a,#10
3749  08d7 2406          	jruge	L401
3750  08d9 7b2a          	ld	a,(OFST+1,sp)
3751  08db ab30          	add	a,#48
3752  08dd 2004          	jra	L601
3753  08df               L401:
3754  08df 7b2a          	ld	a,(OFST+1,sp)
3755  08e1 ab57          	add	a,#87
3756  08e3               L601:
3757  08e3 85            	popw	x
3758  08e4 f7            	ld	(x),a
3759                     ; 467 		cs2= Sum & 0x0f;
3761  08e5 7b29          	ld	a,(OFST+0,sp)
3762  08e7 a40f          	and	a,#15
3763  08e9 6b29          	ld	(OFST+0,sp),a
3765                     ; 468 		Tx_DATA[DS-4]=(cs2<10)?(cs2+'0'):((cs2-10)+'a');
3767  08eb 96            	ldw	x,sp
3768  08ec 1c000d        	addw	x,#OFST-28
3769  08ef 1f01          	ldw	(OFST-40,sp),x
3771  08f1 7b06          	ld	a,(OFST-35,sp)
3772  08f3 5f            	clrw	x
3773  08f4 97            	ld	xl,a
3774  08f5 1d0004        	subw	x,#4
3775  08f8 72fb01        	addw	x,(OFST-40,sp)
3776  08fb 89            	pushw	x
3777  08fc 7b2b          	ld	a,(OFST+2,sp)
3778  08fe a10a          	cp	a,#10
3779  0900 2406          	jruge	L011
3780  0902 7b2b          	ld	a,(OFST+2,sp)
3781  0904 ab30          	add	a,#48
3782  0906 2004          	jra	L211
3783  0908               L011:
3784  0908 7b2b          	ld	a,(OFST+2,sp)
3785  090a ab57          	add	a,#87
3786  090c               L211:
3787  090c 85            	popw	x
3788  090d f7            	ld	(x),a
3789                     ; 470 		for(z=0;z<DS;z++)
3791  090e 5f            	clrw	x
3792  090f 1f09          	ldw	(OFST-32,sp),x
3795  0911 2016          	jra	L1751
3796  0913               L5651:
3797                     ; 471 		{DATA_APP_TX(Tx_DATA[z]);}//-------DATA.
3799  0913 96            	ldw	x,sp
3800  0914 1c000d        	addw	x,#OFST-28
3801  0917 1f01          	ldw	(OFST-40,sp),x
3803  0919 1e09          	ldw	x,(OFST-32,sp)
3804  091b 72fb01        	addw	x,(OFST-40,sp)
3805  091e f6            	ld	a,(x)
3806  091f cd05d8        	call	_DATA_APP_TX
3808                     ; 470 		for(z=0;z<DS;z++)
3810  0922 1e09          	ldw	x,(OFST-32,sp)
3811  0924 1c0001        	addw	x,#1
3812  0927 1f09          	ldw	(OFST-32,sp),x
3814  0929               L1751:
3817  0929 9c            	rvf
3818  092a 7b06          	ld	a,(OFST-35,sp)
3819  092c 5f            	clrw	x
3820  092d 97            	ld	xl,a
3821  092e bf00          	ldw	c_x,x
3822  0930 1e09          	ldw	x,(OFST-32,sp)
3823  0932 b300          	cpw	x,c_x
3824  0934 2fdd          	jrslt	L5651
3826  0936 acb20cb2      	jpf	L5641
3827  093a               L5451:
3828                     ; 473 	else if(number==4)//----------------------------DAT2_DATA.
3830  093a 7b2a          	ld	a,(OFST+1,sp)
3831  093c a104          	cp	a,#4
3832  093e 2703          	jreq	L461
3833  0940 cc0a1d        	jp	L7751
3834  0943               L461:
3835                     ; 476 		char Tx_DATA[] = "S12,DAT2,000,0,0,0000,00E\r\n";
3837  0943 96            	ldw	x,sp
3838  0944 1c000c        	addw	x,#OFST-29
3839  0947 90ae0057      	ldw	y,#L7521_Tx_DATA
3840  094b a61c          	ld	a,#28
3841  094d cd0000        	call	c_xymov
3843                     ; 477 		uint8_t DS = sizeof(Tx_DATA)-1;
3845  0950 a61b          	ld	a,#27
3846  0952 6b05          	ld	(OFST-36,sp),a
3848                     ; 479 		for(j=0;j<(sizeof(BAB_DAT2)-1);j++)
3850  0954 5f            	clrw	x
3851  0955 1f0a          	ldw	(OFST-31,sp),x
3853  0957               L1061:
3854                     ; 480 		{Tx_DATA[j+9]=BAB_DAT2[j];}
3856  0957 1e0a          	ldw	x,(OFST-31,sp)
3857  0959 d60029        	ld	a,(_BAB_DAT2,x)
3858  095c 96            	ldw	x,sp
3859  095d 1c0015        	addw	x,#OFST-20
3860  0960 1f01          	ldw	(OFST-40,sp),x
3862  0962 1e0a          	ldw	x,(OFST-31,sp)
3863  0964 72fb01        	addw	x,(OFST-40,sp)
3864  0967 f7            	ld	(x),a
3865                     ; 479 		for(j=0;j<(sizeof(BAB_DAT2)-1);j++)
3867  0968 1e0a          	ldw	x,(OFST-31,sp)
3868  096a 1c0001        	addw	x,#1
3869  096d 1f0a          	ldw	(OFST-31,sp),x
3873  096f 1e0a          	ldw	x,(OFST-31,sp)
3874  0971 a3000c        	cpw	x,#12
3875  0974 25e1          	jrult	L1061
3876                     ; 482 		for(i=0;i<(DS-5);i++){Sum += Tx_DATA[i];}
3878  0976 5f            	clrw	x
3879  0977 1f06          	ldw	(OFST-35,sp),x
3882  0979 2017          	jra	L3161
3883  097b               L7061:
3886  097b 96            	ldw	x,sp
3887  097c 1c000c        	addw	x,#OFST-29
3888  097f 1f01          	ldw	(OFST-40,sp),x
3890  0981 1e06          	ldw	x,(OFST-35,sp)
3891  0983 72fb01        	addw	x,(OFST-40,sp)
3892  0986 7b29          	ld	a,(OFST+0,sp)
3893  0988 fb            	add	a,(x)
3894  0989 6b29          	ld	(OFST+0,sp),a
3898  098b 1e06          	ldw	x,(OFST-35,sp)
3899  098d 1c0001        	addw	x,#1
3900  0990 1f06          	ldw	(OFST-35,sp),x
3902  0992               L3161:
3905  0992 9c            	rvf
3906  0993 7b05          	ld	a,(OFST-36,sp)
3907  0995 5f            	clrw	x
3908  0996 97            	ld	xl,a
3909  0997 1d0005        	subw	x,#5
3910  099a 1306          	cpw	x,(OFST-35,sp)
3911  099c 2cdd          	jrsgt	L7061
3912                     ; 483 		cs1=(Sum>>4)&0x0f;
3914  099e 7b29          	ld	a,(OFST+0,sp)
3915  09a0 4e            	swap	a
3916  09a1 a40f          	and	a,#15
3917  09a3 6b28          	ld	(OFST-1,sp),a
3919                     ; 484 		Tx_DATA[DS-5]=(cs1<10)?(cs1+'0'):((cs1-10)+'a');
3921  09a5 96            	ldw	x,sp
3922  09a6 1c000c        	addw	x,#OFST-29
3923  09a9 1f01          	ldw	(OFST-40,sp),x
3925  09ab 7b05          	ld	a,(OFST-36,sp)
3926  09ad 5f            	clrw	x
3927  09ae 97            	ld	xl,a
3928  09af 1d0005        	subw	x,#5
3929  09b2 72fb01        	addw	x,(OFST-40,sp)
3930  09b5 89            	pushw	x
3931  09b6 7b2a          	ld	a,(OFST+1,sp)
3932  09b8 a10a          	cp	a,#10
3933  09ba 2406          	jruge	L411
3934  09bc 7b2a          	ld	a,(OFST+1,sp)
3935  09be ab30          	add	a,#48
3936  09c0 2004          	jra	L611
3937  09c2               L411:
3938  09c2 7b2a          	ld	a,(OFST+1,sp)
3939  09c4 ab57          	add	a,#87
3940  09c6               L611:
3941  09c6 85            	popw	x
3942  09c7 f7            	ld	(x),a
3943                     ; 485 		cs2= Sum & 0x0f;
3945  09c8 7b29          	ld	a,(OFST+0,sp)
3946  09ca a40f          	and	a,#15
3947  09cc 6b29          	ld	(OFST+0,sp),a
3949                     ; 486 		Tx_DATA[DS-4]=(cs2<10)?(cs2+'0'):((cs2-10)+'a');
3951  09ce 96            	ldw	x,sp
3952  09cf 1c000c        	addw	x,#OFST-29
3953  09d2 1f01          	ldw	(OFST-40,sp),x
3955  09d4 7b05          	ld	a,(OFST-36,sp)
3956  09d6 5f            	clrw	x
3957  09d7 97            	ld	xl,a
3958  09d8 1d0004        	subw	x,#4
3959  09db 72fb01        	addw	x,(OFST-40,sp)
3960  09de 89            	pushw	x
3961  09df 7b2b          	ld	a,(OFST+2,sp)
3962  09e1 a10a          	cp	a,#10
3963  09e3 2406          	jruge	L021
3964  09e5 7b2b          	ld	a,(OFST+2,sp)
3965  09e7 ab30          	add	a,#48
3966  09e9 2004          	jra	L221
3967  09eb               L021:
3968  09eb 7b2b          	ld	a,(OFST+2,sp)
3969  09ed ab57          	add	a,#87
3970  09ef               L221:
3971  09ef 85            	popw	x
3972  09f0 f7            	ld	(x),a
3973                     ; 488 		for(z=0;z<DS;z++)
3975  09f1 5f            	clrw	x
3976  09f2 1f08          	ldw	(OFST-33,sp),x
3979  09f4 2016          	jra	L3261
3980  09f6               L7161:
3981                     ; 489 		{DATA_APP_TX(Tx_DATA[z]);}//-------DATA.
3983  09f6 96            	ldw	x,sp
3984  09f7 1c000c        	addw	x,#OFST-29
3985  09fa 1f01          	ldw	(OFST-40,sp),x
3987  09fc 1e08          	ldw	x,(OFST-33,sp)
3988  09fe 72fb01        	addw	x,(OFST-40,sp)
3989  0a01 f6            	ld	a,(x)
3990  0a02 cd05d8        	call	_DATA_APP_TX
3992                     ; 488 		for(z=0;z<DS;z++)
3994  0a05 1e08          	ldw	x,(OFST-33,sp)
3995  0a07 1c0001        	addw	x,#1
3996  0a0a 1f08          	ldw	(OFST-33,sp),x
3998  0a0c               L3261:
4001  0a0c 9c            	rvf
4002  0a0d 7b05          	ld	a,(OFST-36,sp)
4003  0a0f 5f            	clrw	x
4004  0a10 97            	ld	xl,a
4005  0a11 bf00          	ldw	c_x,x
4006  0a13 1e08          	ldw	x,(OFST-33,sp)
4007  0a15 b300          	cpw	x,c_x
4008  0a17 2fdd          	jrslt	L7161
4010  0a19 acb20cb2      	jpf	L5641
4011  0a1d               L7751:
4012                     ; 491 	else if(number==5)//----------------------------DAT3_DATA.
4014  0a1d 7b2a          	ld	a,(OFST+1,sp)
4015  0a1f a105          	cp	a,#5
4016  0a21 2703          	jreq	L661
4017  0a23 cc0b00        	jp	L1361
4018  0a26               L661:
4019                     ; 494 		char Tx_DATA[] = "S13,DAT3,0000,0000,000,00E\r\n";
4021  0a26 96            	ldw	x,sp
4022  0a27 1c000b        	addw	x,#OFST-30
4023  0a2a 90ae0073      	ldw	y,#L1621_Tx_DATA
4024  0a2e a61d          	ld	a,#29
4025  0a30 cd0000        	call	c_xymov
4027                     ; 495 		uint8_t DS = sizeof(Tx_DATA)-1;
4029  0a33 a61c          	ld	a,#28
4030  0a35 6b04          	ld	(OFST-37,sp),a
4032                     ; 497 		for(j=0;j<(sizeof(BAB_DAT3)-1);j++)
4034  0a37 5f            	clrw	x
4035  0a38 1f09          	ldw	(OFST-32,sp),x
4037  0a3a               L3361:
4038                     ; 498 		{Tx_DATA[j+9]=BAB_DAT3[j];}
4040  0a3a 1e09          	ldw	x,(OFST-32,sp)
4041  0a3c d60036        	ld	a,(_BAB_DAT3,x)
4042  0a3f 96            	ldw	x,sp
4043  0a40 1c0014        	addw	x,#OFST-21
4044  0a43 1f01          	ldw	(OFST-40,sp),x
4046  0a45 1e09          	ldw	x,(OFST-32,sp)
4047  0a47 72fb01        	addw	x,(OFST-40,sp)
4048  0a4a f7            	ld	(x),a
4049                     ; 497 		for(j=0;j<(sizeof(BAB_DAT3)-1);j++)
4051  0a4b 1e09          	ldw	x,(OFST-32,sp)
4052  0a4d 1c0001        	addw	x,#1
4053  0a50 1f09          	ldw	(OFST-32,sp),x
4057  0a52 1e09          	ldw	x,(OFST-32,sp)
4058  0a54 a3000d        	cpw	x,#13
4059  0a57 25e1          	jrult	L3361
4060                     ; 500 		for(i=0;i<(DS-5);i++){Sum += Tx_DATA[i];}
4062  0a59 5f            	clrw	x
4063  0a5a 1f05          	ldw	(OFST-36,sp),x
4066  0a5c 2017          	jra	L5461
4067  0a5e               L1461:
4070  0a5e 96            	ldw	x,sp
4071  0a5f 1c000b        	addw	x,#OFST-30
4072  0a62 1f01          	ldw	(OFST-40,sp),x
4074  0a64 1e05          	ldw	x,(OFST-36,sp)
4075  0a66 72fb01        	addw	x,(OFST-40,sp)
4076  0a69 7b29          	ld	a,(OFST+0,sp)
4077  0a6b fb            	add	a,(x)
4078  0a6c 6b29          	ld	(OFST+0,sp),a
4082  0a6e 1e05          	ldw	x,(OFST-36,sp)
4083  0a70 1c0001        	addw	x,#1
4084  0a73 1f05          	ldw	(OFST-36,sp),x
4086  0a75               L5461:
4089  0a75 9c            	rvf
4090  0a76 7b04          	ld	a,(OFST-37,sp)
4091  0a78 5f            	clrw	x
4092  0a79 97            	ld	xl,a
4093  0a7a 1d0005        	subw	x,#5
4094  0a7d 1305          	cpw	x,(OFST-36,sp)
4095  0a7f 2cdd          	jrsgt	L1461
4096                     ; 501 		cs1=(Sum>>4)&0x0f;
4098  0a81 7b29          	ld	a,(OFST+0,sp)
4099  0a83 4e            	swap	a
4100  0a84 a40f          	and	a,#15
4101  0a86 6b28          	ld	(OFST-1,sp),a
4103                     ; 502 		Tx_DATA[DS-5]=(cs1<10)?(cs1+'0'):((cs1-10)+'a');
4105  0a88 96            	ldw	x,sp
4106  0a89 1c000b        	addw	x,#OFST-30
4107  0a8c 1f01          	ldw	(OFST-40,sp),x
4109  0a8e 7b04          	ld	a,(OFST-37,sp)
4110  0a90 5f            	clrw	x
4111  0a91 97            	ld	xl,a
4112  0a92 1d0005        	subw	x,#5
4113  0a95 72fb01        	addw	x,(OFST-40,sp)
4114  0a98 89            	pushw	x
4115  0a99 7b2a          	ld	a,(OFST+1,sp)
4116  0a9b a10a          	cp	a,#10
4117  0a9d 2406          	jruge	L421
4118  0a9f 7b2a          	ld	a,(OFST+1,sp)
4119  0aa1 ab30          	add	a,#48
4120  0aa3 2004          	jra	L621
4121  0aa5               L421:
4122  0aa5 7b2a          	ld	a,(OFST+1,sp)
4123  0aa7 ab57          	add	a,#87
4124  0aa9               L621:
4125  0aa9 85            	popw	x
4126  0aaa f7            	ld	(x),a
4127                     ; 503 		cs2= Sum & 0x0f;
4129  0aab 7b29          	ld	a,(OFST+0,sp)
4130  0aad a40f          	and	a,#15
4131  0aaf 6b29          	ld	(OFST+0,sp),a
4133                     ; 504 		Tx_DATA[DS-4]=(cs2<10)?(cs2+'0'):((cs2-10)+'a');
4135  0ab1 96            	ldw	x,sp
4136  0ab2 1c000b        	addw	x,#OFST-30
4137  0ab5 1f01          	ldw	(OFST-40,sp),x
4139  0ab7 7b04          	ld	a,(OFST-37,sp)
4140  0ab9 5f            	clrw	x
4141  0aba 97            	ld	xl,a
4142  0abb 1d0004        	subw	x,#4
4143  0abe 72fb01        	addw	x,(OFST-40,sp)
4144  0ac1 89            	pushw	x
4145  0ac2 7b2b          	ld	a,(OFST+2,sp)
4146  0ac4 a10a          	cp	a,#10
4147  0ac6 2406          	jruge	L031
4148  0ac8 7b2b          	ld	a,(OFST+2,sp)
4149  0aca ab30          	add	a,#48
4150  0acc 2004          	jra	L231
4151  0ace               L031:
4152  0ace 7b2b          	ld	a,(OFST+2,sp)
4153  0ad0 ab57          	add	a,#87
4154  0ad2               L231:
4155  0ad2 85            	popw	x
4156  0ad3 f7            	ld	(x),a
4157                     ; 506 		for(z=0;z<DS;z++)
4159  0ad4 5f            	clrw	x
4160  0ad5 1f07          	ldw	(OFST-34,sp),x
4163  0ad7 2016          	jra	L5561
4164  0ad9               L1561:
4165                     ; 507 		{DATA_APP_TX(Tx_DATA[z]);}//-------DATA.
4167  0ad9 96            	ldw	x,sp
4168  0ada 1c000b        	addw	x,#OFST-30
4169  0add 1f01          	ldw	(OFST-40,sp),x
4171  0adf 1e07          	ldw	x,(OFST-34,sp)
4172  0ae1 72fb01        	addw	x,(OFST-40,sp)
4173  0ae4 f6            	ld	a,(x)
4174  0ae5 cd05d8        	call	_DATA_APP_TX
4176                     ; 506 		for(z=0;z<DS;z++)
4178  0ae8 1e07          	ldw	x,(OFST-34,sp)
4179  0aea 1c0001        	addw	x,#1
4180  0aed 1f07          	ldw	(OFST-34,sp),x
4182  0aef               L5561:
4185  0aef 9c            	rvf
4186  0af0 7b04          	ld	a,(OFST-37,sp)
4187  0af2 5f            	clrw	x
4188  0af3 97            	ld	xl,a
4189  0af4 bf00          	ldw	c_x,x
4190  0af6 1e07          	ldw	x,(OFST-34,sp)
4191  0af8 b300          	cpw	x,c_x
4192  0afa 2fdd          	jrslt	L1561
4194  0afc acb20cb2      	jpf	L5641
4195  0b00               L1361:
4196                     ; 509 	else if(number==6)//-----------------------------PRC_DATA.
4198  0b00 7b2a          	ld	a,(OFST+1,sp)
4199  0b02 a106          	cp	a,#6
4200  0b04 2703          	jreq	L071
4201  0b06 cc0be3        	jp	L3661
4202  0b09               L071:
4203                     ; 512 		char Tx_DATA[] = "S14,PRC1,0000,0000,0000,00E\r\n";
4205  0b09 96            	ldw	x,sp
4206  0b0a 1c000a        	addw	x,#OFST-31
4207  0b0d 90ae0090      	ldw	y,#L3621_Tx_DATA
4208  0b11 a61e          	ld	a,#30
4209  0b13 cd0000        	call	c_xymov
4211                     ; 513 		uint8_t DS = sizeof(Tx_DATA)-1;
4213  0b16 a61d          	ld	a,#29
4214  0b18 6b03          	ld	(OFST-38,sp),a
4216                     ; 515 		for(j=0;j<(sizeof(PRC_Data)-1);j++)
4218  0b1a 5f            	clrw	x
4219  0b1b 1f08          	ldw	(OFST-33,sp),x
4221  0b1d               L5661:
4222                     ; 516 		{Tx_DATA[j+9]=PRC_Data[j];}
4224  0b1d 1e08          	ldw	x,(OFST-33,sp)
4225  0b1f d60044        	ld	a,(_PRC_Data,x)
4226  0b22 96            	ldw	x,sp
4227  0b23 1c0013        	addw	x,#OFST-22
4228  0b26 1f01          	ldw	(OFST-40,sp),x
4230  0b28 1e08          	ldw	x,(OFST-33,sp)
4231  0b2a 72fb01        	addw	x,(OFST-40,sp)
4232  0b2d f7            	ld	(x),a
4233                     ; 515 		for(j=0;j<(sizeof(PRC_Data)-1);j++)
4235  0b2e 1e08          	ldw	x,(OFST-33,sp)
4236  0b30 1c0001        	addw	x,#1
4237  0b33 1f08          	ldw	(OFST-33,sp),x
4241  0b35 1e08          	ldw	x,(OFST-33,sp)
4242  0b37 a3000e        	cpw	x,#14
4243  0b3a 25e1          	jrult	L5661
4244                     ; 518 		for(i=0;i<(DS-5);i++){Sum += Tx_DATA[i];}
4246  0b3c 5f            	clrw	x
4247  0b3d 1f04          	ldw	(OFST-37,sp),x
4250  0b3f 2017          	jra	L7761
4251  0b41               L3761:
4254  0b41 96            	ldw	x,sp
4255  0b42 1c000a        	addw	x,#OFST-31
4256  0b45 1f01          	ldw	(OFST-40,sp),x
4258  0b47 1e04          	ldw	x,(OFST-37,sp)
4259  0b49 72fb01        	addw	x,(OFST-40,sp)
4260  0b4c 7b29          	ld	a,(OFST+0,sp)
4261  0b4e fb            	add	a,(x)
4262  0b4f 6b29          	ld	(OFST+0,sp),a
4266  0b51 1e04          	ldw	x,(OFST-37,sp)
4267  0b53 1c0001        	addw	x,#1
4268  0b56 1f04          	ldw	(OFST-37,sp),x
4270  0b58               L7761:
4273  0b58 9c            	rvf
4274  0b59 7b03          	ld	a,(OFST-38,sp)
4275  0b5b 5f            	clrw	x
4276  0b5c 97            	ld	xl,a
4277  0b5d 1d0005        	subw	x,#5
4278  0b60 1304          	cpw	x,(OFST-37,sp)
4279  0b62 2cdd          	jrsgt	L3761
4280                     ; 519 		cs1=(Sum>>4)&0x0f;
4282  0b64 7b29          	ld	a,(OFST+0,sp)
4283  0b66 4e            	swap	a
4284  0b67 a40f          	and	a,#15
4285  0b69 6b28          	ld	(OFST-1,sp),a
4287                     ; 520 		Tx_DATA[DS-5]=(cs1<10)?(cs1+'0'):((cs1-10)+'a');
4289  0b6b 96            	ldw	x,sp
4290  0b6c 1c000a        	addw	x,#OFST-31
4291  0b6f 1f01          	ldw	(OFST-40,sp),x
4293  0b71 7b03          	ld	a,(OFST-38,sp)
4294  0b73 5f            	clrw	x
4295  0b74 97            	ld	xl,a
4296  0b75 1d0005        	subw	x,#5
4297  0b78 72fb01        	addw	x,(OFST-40,sp)
4298  0b7b 89            	pushw	x
4299  0b7c 7b2a          	ld	a,(OFST+1,sp)
4300  0b7e a10a          	cp	a,#10
4301  0b80 2406          	jruge	L431
4302  0b82 7b2a          	ld	a,(OFST+1,sp)
4303  0b84 ab30          	add	a,#48
4304  0b86 2004          	jra	L631
4305  0b88               L431:
4306  0b88 7b2a          	ld	a,(OFST+1,sp)
4307  0b8a ab57          	add	a,#87
4308  0b8c               L631:
4309  0b8c 85            	popw	x
4310  0b8d f7            	ld	(x),a
4311                     ; 521 		cs2= Sum & 0x0f;
4313  0b8e 7b29          	ld	a,(OFST+0,sp)
4314  0b90 a40f          	and	a,#15
4315  0b92 6b29          	ld	(OFST+0,sp),a
4317                     ; 522 		Tx_DATA[DS-4]=(cs2<10)?(cs2+'0'):((cs2-10)+'a');
4319  0b94 96            	ldw	x,sp
4320  0b95 1c000a        	addw	x,#OFST-31
4321  0b98 1f01          	ldw	(OFST-40,sp),x
4323  0b9a 7b03          	ld	a,(OFST-38,sp)
4324  0b9c 5f            	clrw	x
4325  0b9d 97            	ld	xl,a
4326  0b9e 1d0004        	subw	x,#4
4327  0ba1 72fb01        	addw	x,(OFST-40,sp)
4328  0ba4 89            	pushw	x
4329  0ba5 7b2b          	ld	a,(OFST+2,sp)
4330  0ba7 a10a          	cp	a,#10
4331  0ba9 2406          	jruge	L041
4332  0bab 7b2b          	ld	a,(OFST+2,sp)
4333  0bad ab30          	add	a,#48
4334  0baf 2004          	jra	L241
4335  0bb1               L041:
4336  0bb1 7b2b          	ld	a,(OFST+2,sp)
4337  0bb3 ab57          	add	a,#87
4338  0bb5               L241:
4339  0bb5 85            	popw	x
4340  0bb6 f7            	ld	(x),a
4341                     ; 524 		for(z=0;z<DS;z++)
4343  0bb7 5f            	clrw	x
4344  0bb8 1f06          	ldw	(OFST-35,sp),x
4347  0bba 2016          	jra	L7071
4348  0bbc               L3071:
4349                     ; 525 		{DATA_APP_TX(Tx_DATA[z]);}//-------DATA.
4351  0bbc 96            	ldw	x,sp
4352  0bbd 1c000a        	addw	x,#OFST-31
4353  0bc0 1f01          	ldw	(OFST-40,sp),x
4355  0bc2 1e06          	ldw	x,(OFST-35,sp)
4356  0bc4 72fb01        	addw	x,(OFST-40,sp)
4357  0bc7 f6            	ld	a,(x)
4358  0bc8 cd05d8        	call	_DATA_APP_TX
4360                     ; 524 		for(z=0;z<DS;z++)
4362  0bcb 1e06          	ldw	x,(OFST-35,sp)
4363  0bcd 1c0001        	addw	x,#1
4364  0bd0 1f06          	ldw	(OFST-35,sp),x
4366  0bd2               L7071:
4369  0bd2 9c            	rvf
4370  0bd3 7b03          	ld	a,(OFST-38,sp)
4371  0bd5 5f            	clrw	x
4372  0bd6 97            	ld	xl,a
4373  0bd7 bf00          	ldw	c_x,x
4374  0bd9 1e06          	ldw	x,(OFST-35,sp)
4375  0bdb b300          	cpw	x,c_x
4376  0bdd 2fdd          	jrslt	L3071
4378  0bdf acb20cb2      	jpf	L5641
4379  0be3               L3661:
4380                     ; 527 	else if(number==0)//-------------------------------CS_ERR.
4382  0be3 0d2a          	tnz	(OFST+1,sp)
4383  0be5 2703          	jreq	L271
4384  0be7 cc0cb2        	jp	L5641
4385  0bea               L271:
4386                     ; 530 		char Tx_DATA[] = "S03,0000,ERR,00E\r\n";
4388  0bea 96            	ldw	x,sp
4389  0beb 1c0015        	addw	x,#OFST-20
4390  0bee 90ae00ae      	ldw	y,#L5621_Tx_DATA
4391  0bf2 a613          	ld	a,#19
4392  0bf4 cd0000        	call	c_xymov
4394                     ; 531 		uint8_t DS = sizeof(Tx_DATA)-1;
4396  0bf7 a612          	ld	a,#18
4397  0bf9 6b10          	ld	(OFST-25,sp),a
4399                     ; 533 		Tx_DATA[4]=A_Rx_Command[4];
4401  0bfb c600f9        	ld	a,_A_Rx_Command+4
4402  0bfe 6b19          	ld	(OFST-16,sp),a
4404                     ; 534 		Tx_DATA[5]=A_Rx_Command[5];
4406  0c00 c600fa        	ld	a,_A_Rx_Command+5
4407  0c03 6b1a          	ld	(OFST-15,sp),a
4409                     ; 535 		Tx_DATA[6]=A_Rx_Command[6];
4411  0c05 c600fb        	ld	a,_A_Rx_Command+6
4412  0c08 6b1b          	ld	(OFST-14,sp),a
4414                     ; 536 		Tx_DATA[7]=A_Rx_Command[7];
4416  0c0a c600fc        	ld	a,_A_Rx_Command+7
4417  0c0d 6b1c          	ld	(OFST-13,sp),a
4419                     ; 538 		for(i=0;i<(DS-5);i++){Sum += Tx_DATA[i];}
4421  0c0f 5f            	clrw	x
4422  0c10 1f11          	ldw	(OFST-24,sp),x
4425  0c12 2017          	jra	L3271
4426  0c14               L7171:
4429  0c14 96            	ldw	x,sp
4430  0c15 1c0015        	addw	x,#OFST-20
4431  0c18 1f01          	ldw	(OFST-40,sp),x
4433  0c1a 1e11          	ldw	x,(OFST-24,sp)
4434  0c1c 72fb01        	addw	x,(OFST-40,sp)
4435  0c1f 7b29          	ld	a,(OFST+0,sp)
4436  0c21 fb            	add	a,(x)
4437  0c22 6b29          	ld	(OFST+0,sp),a
4441  0c24 1e11          	ldw	x,(OFST-24,sp)
4442  0c26 1c0001        	addw	x,#1
4443  0c29 1f11          	ldw	(OFST-24,sp),x
4445  0c2b               L3271:
4448  0c2b 9c            	rvf
4449  0c2c 7b10          	ld	a,(OFST-25,sp)
4450  0c2e 5f            	clrw	x
4451  0c2f 97            	ld	xl,a
4452  0c30 1d0005        	subw	x,#5
4453  0c33 1311          	cpw	x,(OFST-24,sp)
4454  0c35 2cdd          	jrsgt	L7171
4455                     ; 539 		cs1=(Sum>>4)&0x0f;
4457  0c37 7b29          	ld	a,(OFST+0,sp)
4458  0c39 4e            	swap	a
4459  0c3a a40f          	and	a,#15
4460  0c3c 6b28          	ld	(OFST-1,sp),a
4462                     ; 540 		Tx_DATA[DS-5]=(cs1<10)?(cs1+'0'):((cs1-10)+'a');
4464  0c3e 96            	ldw	x,sp
4465  0c3f 1c0015        	addw	x,#OFST-20
4466  0c42 1f01          	ldw	(OFST-40,sp),x
4468  0c44 7b10          	ld	a,(OFST-25,sp)
4469  0c46 5f            	clrw	x
4470  0c47 97            	ld	xl,a
4471  0c48 1d0005        	subw	x,#5
4472  0c4b 72fb01        	addw	x,(OFST-40,sp)
4473  0c4e 89            	pushw	x
4474  0c4f 7b2a          	ld	a,(OFST+1,sp)
4475  0c51 a10a          	cp	a,#10
4476  0c53 2406          	jruge	L441
4477  0c55 7b2a          	ld	a,(OFST+1,sp)
4478  0c57 ab30          	add	a,#48
4479  0c59 2004          	jra	L641
4480  0c5b               L441:
4481  0c5b 7b2a          	ld	a,(OFST+1,sp)
4482  0c5d ab57          	add	a,#87
4483  0c5f               L641:
4484  0c5f 85            	popw	x
4485  0c60 f7            	ld	(x),a
4486                     ; 541 		cs2= Sum & 0x0f;
4488  0c61 7b29          	ld	a,(OFST+0,sp)
4489  0c63 a40f          	and	a,#15
4490  0c65 6b29          	ld	(OFST+0,sp),a
4492                     ; 542 		Tx_DATA[DS-4]=(cs2<10)?(cs2+'0'):((cs2-10)+'a');
4494  0c67 96            	ldw	x,sp
4495  0c68 1c0015        	addw	x,#OFST-20
4496  0c6b 1f01          	ldw	(OFST-40,sp),x
4498  0c6d 7b10          	ld	a,(OFST-25,sp)
4499  0c6f 5f            	clrw	x
4500  0c70 97            	ld	xl,a
4501  0c71 1d0004        	subw	x,#4
4502  0c74 72fb01        	addw	x,(OFST-40,sp)
4503  0c77 89            	pushw	x
4504  0c78 7b2b          	ld	a,(OFST+2,sp)
4505  0c7a a10a          	cp	a,#10
4506  0c7c 2406          	jruge	L051
4507  0c7e 7b2b          	ld	a,(OFST+2,sp)
4508  0c80 ab30          	add	a,#48
4509  0c82 2004          	jra	L251
4510  0c84               L051:
4511  0c84 7b2b          	ld	a,(OFST+2,sp)
4512  0c86 ab57          	add	a,#87
4513  0c88               L251:
4514  0c88 85            	popw	x
4515  0c89 f7            	ld	(x),a
4516                     ; 544 		for(z=0;z<DS;z++)
4518  0c8a 5f            	clrw	x
4519  0c8b 1f13          	ldw	(OFST-22,sp),x
4522  0c8d 2016          	jra	L3371
4523  0c8f               L7271:
4524                     ; 545 		{DATA_APP_TX(Tx_DATA[z]);}//-----------TX_DATA.
4526  0c8f 96            	ldw	x,sp
4527  0c90 1c0015        	addw	x,#OFST-20
4528  0c93 1f01          	ldw	(OFST-40,sp),x
4530  0c95 1e13          	ldw	x,(OFST-22,sp)
4531  0c97 72fb01        	addw	x,(OFST-40,sp)
4532  0c9a f6            	ld	a,(x)
4533  0c9b cd05d8        	call	_DATA_APP_TX
4535                     ; 544 		for(z=0;z<DS;z++)
4537  0c9e 1e13          	ldw	x,(OFST-22,sp)
4538  0ca0 1c0001        	addw	x,#1
4539  0ca3 1f13          	ldw	(OFST-22,sp),x
4541  0ca5               L3371:
4544  0ca5 9c            	rvf
4545  0ca6 7b10          	ld	a,(OFST-25,sp)
4546  0ca8 5f            	clrw	x
4547  0ca9 97            	ld	xl,a
4548  0caa bf00          	ldw	c_x,x
4549  0cac 1e13          	ldw	x,(OFST-22,sp)
4550  0cae b300          	cpw	x,c_x
4551  0cb0 2fdd          	jrslt	L7271
4552  0cb2               L5641:
4553                     ; 547 }
4556  0cb2 5b2a          	addw	sp,#42
4557  0cb4 81            	ret
4583                     ; 549 void App_Data_TX_5s(void)
4583                     ; 550 {
4584                     	switch	.text
4585  0cb5               _App_Data_TX_5s:
4589                     ; 551 	if(DATA_TX_5s==1)
4591  0cb5 c600bd        	ld	a,_DATA_TX_5s
4592  0cb8 a101          	cp	a,#1
4593  0cba 2627          	jrne	L7471
4594                     ; 553 		BABAPP_TX(3);
4596  0cbc a603          	ld	a,#3
4597  0cbe cd05ef        	call	_BABAPP_TX
4599                     ; 554 		Delay(30);
4601  0cc1 a61e          	ld	a,#30
4602  0cc3 cd2a05        	call	_Delay
4604                     ; 555 		BABAPP_TX(4);
4606  0cc6 a604          	ld	a,#4
4607  0cc8 cd05ef        	call	_BABAPP_TX
4609                     ; 556 		Delay(30);
4611  0ccb a61e          	ld	a,#30
4612  0ccd cd2a05        	call	_Delay
4614                     ; 557 		BABAPP_TX(5);
4616  0cd0 a605          	ld	a,#5
4617  0cd2 cd05ef        	call	_BABAPP_TX
4619                     ; 558 		Delay(30);
4621  0cd5 a61e          	ld	a,#30
4622  0cd7 cd2a05        	call	_Delay
4624                     ; 559 		BABAPP_TX(6);
4626  0cda a606          	ld	a,#6
4627  0cdc cd05ef        	call	_BABAPP_TX
4629                     ; 560 		DATA_TX_5s=0;
4631  0cdf 725f00bd      	clr	_DATA_TX_5s
4632  0ce3               L7471:
4633                     ; 562 }
4636  0ce3 81            	ret
4693                     ; 567 extern void USART2_INTERRUPT_HANDLER(void)//  BAB110 <-> BB
4693                     ; 568 {
4694                     	switch	.text
4695  0ce4               _USART2_INTERRUPT_HANDLER:
4697  0ce4 5203          	subw	sp,#3
4698       00000003      OFST:	set	3
4701                     ; 571 	int Checksum=0;
4703                     ; 573 	PRC_COM=1;
4705  0ce6 350100c3      	mov	_PRC_COM,#1
4706                     ; 574 	TIM_8ms3=0;
4708  0cea 725f0099      	clr	_TIM_8ms3
4709                     ; 575 	TIM_1S6=0;
4711  0cee 725f00a0      	clr	_TIM_1S6
4712                     ; 577 	for(i=0;i<64;i++)
4714  0cf2 5f            	clrw	x
4715  0cf3 1f02          	ldw	(OFST-1,sp),x
4717  0cf5               L1771:
4718                     ; 579 		c=0;
4720  0cf5 0f01          	clr	(OFST-2,sp)
4723  0cf7 201e          	jra	L3002
4724  0cf9               L7771:
4725                     ; 581 			{	c++;	if(c==100){break;}	}
4727  0cf9 0c01          	inc	(OFST-2,sp)
4731  0cfb 7b01          	ld	a,(OFST-2,sp)
4732  0cfd a164          	cp	a,#100
4733  0cff 2616          	jrne	L3002
4735  0d01               L5002:
4736                     ; 582 		B_Rx_Command[i] = USART_ReceiveData8(USART2);
4738  0d01 ae53e0        	ldw	x,#21472
4739  0d04 cd0000        	call	_USART_ReceiveData8
4741  0d07 1e02          	ldw	x,(OFST-1,sp)
4742  0d09 d700b5        	ld	(_B_Rx_Command,x),a
4743                     ; 583 		if(B_Rx_Command[i]=='\n'){break;}
4745  0d0c 1e02          	ldw	x,(OFST-1,sp)
4746  0d0e d600b5        	ld	a,(_B_Rx_Command,x)
4747  0d11 a10a          	cp	a,#10
4748  0d13 2612          	jrne	L1102
4751  0d15 201f          	jra	L5771
4752  0d17               L3002:
4753                     ; 580 		while(USART_GetFlagStatus(USART2,USART_FLAG_RXNE)==RESET)
4755  0d17 ae0020        	ldw	x,#32
4756  0d1a 89            	pushw	x
4757  0d1b ae53e0        	ldw	x,#21472
4758  0d1e cd0000        	call	_USART_GetFlagStatus
4760  0d21 85            	popw	x
4761  0d22 4d            	tnz	a
4762  0d23 27d4          	jreq	L7771
4763  0d25 20da          	jra	L5002
4764  0d27               L1102:
4765                     ; 577 	for(i=0;i<64;i++)
4767  0d27 1e02          	ldw	x,(OFST-1,sp)
4768  0d29 1c0001        	addw	x,#1
4769  0d2c 1f02          	ldw	(OFST-1,sp),x
4773  0d2e 9c            	rvf
4774  0d2f 1e02          	ldw	x,(OFST-1,sp)
4775  0d31 a30040        	cpw	x,#64
4776  0d34 2fbf          	jrslt	L1771
4777  0d36               L5771:
4778                     ; 586 	Checksum=DATA_Check_Sum();
4780  0d36 cd033a        	call	_DATA_Check_Sum
4782  0d39 1f02          	ldw	(OFST-1,sp),x
4784                     ; 588 	if(Checksum==1)
4786  0d3b 1e02          	ldw	x,(OFST-1,sp)
4787  0d3d a30001        	cpw	x,#1
4788  0d40 2604          	jrne	L3102
4789                     ; 590 			DATA_Check_string();
4791  0d42 ad15          	call	_DATA_Check_string
4794  0d44 2005          	jra	L5102
4795  0d46               L3102:
4796                     ; 592 	else BlackBox_TX(9);
4798  0d46 a609          	ld	a,#9
4799  0d48 cd1083        	call	_BlackBox_TX
4801  0d4b               L5102:
4802                     ; 594 	USART_ClearFlag(USART2,USART_FLAG_RXNE);
4804  0d4b ae0020        	ldw	x,#32
4805  0d4e 89            	pushw	x
4806  0d4f ae53e0        	ldw	x,#21472
4807  0d52 cd0000        	call	_USART_ClearFlag
4809  0d55 85            	popw	x
4810                     ; 595 }
4813  0d56 5b03          	addw	sp,#3
4814  0d58 81            	ret
4842                     ; 597 void DATA_Check_string(void)
4842                     ; 598 {
4843                     	switch	.text
4844  0d59               _DATA_Check_string:
4848                     ; 599 	if(B_Rx_Command[7]=='D')
4850  0d59 c600bc        	ld	a,_B_Rx_Command+7
4851  0d5c a144          	cp	a,#68
4852  0d5e 2625          	jrne	L7202
4853                     ; 601 			if(B_Rx_Command[10]=='P')
4855  0d60 c600bf        	ld	a,_B_Rx_Command+10
4856  0d63 a150          	cp	a,#80
4857  0d65 2609          	jrne	L1302
4858                     ; 603 					PRC_Check();
4860  0d67 ad6f          	call	_PRC_Check
4862                     ; 604 					BlackBox_TX(6);//-------------DAT_PRC.
4864  0d69 a606          	ld	a,#6
4865  0d6b cd1083        	call	_BlackBox_TX
4868  0d6e 2067          	jra	L1402
4869  0d70               L1302:
4870                     ; 606 			else if(B_Rx_Command[10]=='A'){BlackBox_TX(3);}//------------DAT.
4872  0d70 c600bf        	ld	a,_B_Rx_Command+10
4873  0d73 a141          	cp	a,#65
4874  0d75 2607          	jrne	L5302
4877  0d77 a603          	ld	a,#3
4878  0d79 cd1083        	call	_BlackBox_TX
4881  0d7c 2059          	jra	L1402
4882  0d7e               L5302:
4883                     ; 607 			else BlackBox_TX(9);//--------------ERR.
4885  0d7e a609          	ld	a,#9
4886  0d80 cd1083        	call	_BlackBox_TX
4888  0d83 2052          	jra	L1402
4889  0d85               L7202:
4890                     ; 609 	else if(B_Rx_Command[7]=='P')
4892  0d85 c600bc        	ld	a,_B_Rx_Command+7
4893  0d88 a150          	cp	a,#80
4894  0d8a 2609          	jrne	L3402
4895                     ; 611 			PRC_Check();
4897  0d8c ad4a          	call	_PRC_Check
4899                     ; 612 			BlackBox_TX(5);//----------------PRC.
4901  0d8e a605          	ld	a,#5
4902  0d90 cd1083        	call	_BlackBox_TX
4905  0d93 2042          	jra	L1402
4906  0d95               L3402:
4907                     ; 614 	else if(B_Rx_Command[7]=='R')
4909  0d95 c600bc        	ld	a,_B_Rx_Command+7
4910  0d98 a152          	cp	a,#82
4911  0d9a 2607          	jrne	L7402
4912                     ; 616 			BlackBox_TX(2);//---------------REV.
4914  0d9c a602          	ld	a,#2
4915  0d9e cd1083        	call	_BlackBox_TX
4918  0da1 2034          	jra	L1402
4919  0da3               L7402:
4920                     ; 618 	else if(B_Rx_Command[7]=='B')
4922  0da3 c600bc        	ld	a,_B_Rx_Command+7
4923  0da6 a142          	cp	a,#66
4924  0da8 261a          	jrne	L3502
4925                     ; 620 			Bit_Rate_Set();
4927  0daa ad50          	call	_Bit_Rate_Set
4929                     ; 621 			if(BR_ERR==1){BlackBox_TX(0);BR_ERR=0;}
4931  0dac c600c4        	ld	a,_BR_ERR
4932  0daf a101          	cp	a,#1
4933  0db1 260a          	jrne	L5502
4936  0db3 4f            	clr	a
4937  0db4 cd1083        	call	_BlackBox_TX
4941  0db7 725f00c4      	clr	_BR_ERR
4943  0dbb 201a          	jra	L1402
4944  0dbd               L5502:
4945                     ; 622 			else BlackBox_TX(4);//---------------BR.
4947  0dbd a604          	ld	a,#4
4948  0dbf cd1083        	call	_BlackBox_TX
4950  0dc2 2013          	jra	L1402
4951  0dc4               L3502:
4952                     ; 624 	else if(B_Rx_Command[7]=='T')
4954  0dc4 c600bc        	ld	a,_B_Rx_Command+7
4955  0dc7 a154          	cp	a,#84
4956  0dc9 2607          	jrne	L3602
4957                     ; 626 			BlackBox_TX(1);//---------------TEST.
4959  0dcb a601          	ld	a,#1
4960  0dcd cd1083        	call	_BlackBox_TX
4963  0dd0 2005          	jra	L1402
4964  0dd2               L3602:
4965                     ; 628 	else BlackBox_TX(9);//--------------ERR.
4967  0dd2 a609          	ld	a,#9
4968  0dd4 cd1083        	call	_BlackBox_TX
4970  0dd7               L1402:
4971                     ; 629 }
4974  0dd7 81            	ret
5009                     ; 631 void PRC_Check(void)
5009                     ; 632 {
5010                     	switch	.text
5011  0dd8               _PRC_Check:
5013  0dd8 89            	pushw	x
5014       00000002      OFST:	set	2
5017                     ; 635 	if(PRC_COM==1)
5019  0dd9 c600c3        	ld	a,_PRC_COM
5020  0ddc a101          	cp	a,#1
5021  0dde 261a          	jrne	L3012
5022                     ; 637 		for(i=0;i<14;i++)
5024  0de0 5f            	clrw	x
5025  0de1 1f01          	ldw	(OFST-1,sp),x
5027  0de3               L5012:
5028                     ; 638 			{ PRC_Data[i]=B_Rx_Command[i+12]; }
5030  0de3 1e01          	ldw	x,(OFST-1,sp)
5031  0de5 d600c1        	ld	a,(_B_Rx_Command+12,x)
5032  0de8 d70044        	ld	(_PRC_Data,x),a
5033                     ; 637 		for(i=0;i<14;i++)
5035  0deb 1e01          	ldw	x,(OFST-1,sp)
5036  0ded 1c0001        	addw	x,#1
5037  0df0 1f01          	ldw	(OFST-1,sp),x
5041  0df2 9c            	rvf
5042  0df3 1e01          	ldw	x,(OFST-1,sp)
5043  0df5 a3000e        	cpw	x,#14
5044  0df8 2fe9          	jrslt	L5012
5045  0dfa               L3012:
5046                     ; 640 }
5049  0dfa 85            	popw	x
5050  0dfb 81            	ret
5105                     	switch	.const
5106  00c1               L602:
5107  00c1 00002580      	dc.l	9600
5108  00c5               L012:
5109  00c5 00004b00      	dc.l	19200
5110  00c9               L212:
5111  00c9 00009600      	dc.l	38400
5112  00cd               L412:
5113  00cd 0000e100      	dc.l	57600
5114  00d1               L612:
5115  00d1 0001c200      	dc.l	115200
5116                     ; 642 void Bit_Rate_Set(void)
5116                     ; 643 {
5117                     	switch	.text
5118  0dfc               _Bit_Rate_Set:
5120  0dfc 520e          	subw	sp,#14
5121       0000000e      OFST:	set	14
5124                     ; 645 	uint32_t BB_Bitrate_TEST=0;
5126  0dfe ae0000        	ldw	x,#0
5127  0e01 1f0b          	ldw	(OFST-3,sp),x
5128  0e03 ae0000        	ldw	x,#0
5129  0e06 1f09          	ldw	(OFST-5,sp),x
5131                     ; 646 	BB_Bitrate=0;
5133  0e08 ae0000        	ldw	x,#0
5134  0e0b cf0068        	ldw	_BB_Bitrate+2,x
5135  0e0e ae0000        	ldw	x,#0
5136  0e11 cf0066        	ldw	_BB_Bitrate,x
5137                     ; 648 	for(i=0;i<6;i++)
5139  0e14 5f            	clrw	x
5140  0e15 1f0d          	ldw	(OFST-1,sp),x
5142  0e17               L3312:
5143                     ; 650 			BB_Bitrate_TEST+=(uint8_t)(B_Rx_Command[10+i]-'0')*Square_10(5-i);//----Bit Rate.
5145  0e17 1e0d          	ldw	x,(OFST-1,sp)
5146  0e19 d600bf        	ld	a,(_B_Rx_Command+10,x)
5147  0e1c a030          	sub	a,#48
5148  0e1e b703          	ld	c_lreg+3,a
5149  0e20 3f02          	clr	c_lreg+2
5150  0e22 3f01          	clr	c_lreg+1
5151  0e24 3f00          	clr	c_lreg
5152  0e26 96            	ldw	x,sp
5153  0e27 1c0005        	addw	x,#OFST-9
5154  0e2a cd0000        	call	c_rtol
5157  0e2d a605          	ld	a,#5
5158  0e2f 100e          	sub	a,(OFST+0,sp)
5159  0e31 cd2b18        	call	_Square_10
5161  0e34 96            	ldw	x,sp
5162  0e35 1c0005        	addw	x,#OFST-9
5163  0e38 cd0000        	call	c_lmul
5165  0e3b 96            	ldw	x,sp
5166  0e3c 1c0009        	addw	x,#OFST-5
5167  0e3f cd0000        	call	c_lgadd
5170                     ; 648 	for(i=0;i<6;i++)
5172  0e42 1e0d          	ldw	x,(OFST-1,sp)
5173  0e44 1c0001        	addw	x,#1
5174  0e47 1f0d          	ldw	(OFST-1,sp),x
5178  0e49 9c            	rvf
5179  0e4a 1e0d          	ldw	x,(OFST-1,sp)
5180  0e4c a30006        	cpw	x,#6
5181  0e4f 2fc6          	jrslt	L3312
5182                     ; 653 	if(BB_Bitrate_TEST==9600){	BB_Bitrate=BB_Bitrate_TEST;	}
5184  0e51 96            	ldw	x,sp
5185  0e52 1c0009        	addw	x,#OFST-5
5186  0e55 cd0000        	call	c_ltor
5188  0e58 ae00c1        	ldw	x,#L602
5189  0e5b cd0000        	call	c_lcmp
5191  0e5e 260e          	jrne	L1412
5194  0e60 1e0b          	ldw	x,(OFST-3,sp)
5195  0e62 cf0068        	ldw	_BB_Bitrate+2,x
5196  0e65 1e09          	ldw	x,(OFST-5,sp)
5197  0e67 cf0066        	ldw	_BB_Bitrate,x
5199  0e6a ac641064      	jpf	L3412
5200  0e6e               L1412:
5201                     ; 654 	else if(BB_Bitrate_TEST==19200)
5203  0e6e 96            	ldw	x,sp
5204  0e6f 1c0009        	addw	x,#OFST-5
5205  0e72 cd0000        	call	c_ltor
5207  0e75 ae00c5        	ldw	x,#L012
5208  0e78 cd0000        	call	c_lcmp
5210  0e7b 266e          	jrne	L5412
5211                     ; 656 		BB_Bitrate=BB_Bitrate_TEST;
5213  0e7d 1e0b          	ldw	x,(OFST-3,sp)
5214  0e7f cf0068        	ldw	_BB_Bitrate+2,x
5215  0e82 1e09          	ldw	x,(OFST-5,sp)
5216  0e84 cf0066        	ldw	_BB_Bitrate,x
5217                     ; 657 		for(j=0;j<6;j++)
5219  0e87 5f            	clrw	x
5220  0e88 1f0d          	ldw	(OFST-1,sp),x
5222  0e8a               L7412:
5223                     ; 659 			FLASH_ProgramByte(0x1001+j,(BB_Bitrate % Square_10(6-j))/Square_10(5-j));
5225  0e8a a605          	ld	a,#5
5226  0e8c 100e          	sub	a,(OFST+0,sp)
5227  0e8e cd2b18        	call	_Square_10
5229  0e91 96            	ldw	x,sp
5230  0e92 1c0005        	addw	x,#OFST-9
5231  0e95 cd0000        	call	c_rtol
5234  0e98 a606          	ld	a,#6
5235  0e9a 100e          	sub	a,(OFST+0,sp)
5236  0e9c cd2b18        	call	_Square_10
5238  0e9f 96            	ldw	x,sp
5239  0ea0 1c0001        	addw	x,#OFST-13
5240  0ea3 cd0000        	call	c_rtol
5243  0ea6 ae0066        	ldw	x,#_BB_Bitrate
5244  0ea9 cd0000        	call	c_ltor
5246  0eac 96            	ldw	x,sp
5247  0ead 1c0001        	addw	x,#OFST-13
5248  0eb0 cd0000        	call	c_lumd
5250  0eb3 96            	ldw	x,sp
5251  0eb4 1c0005        	addw	x,#OFST-9
5252  0eb7 cd0000        	call	c_ludv
5254  0eba b603          	ld	a,c_lreg+3
5255  0ebc 88            	push	a
5256  0ebd 1e0e          	ldw	x,(OFST+0,sp)
5257  0ebf 1c1001        	addw	x,#4097
5258  0ec2 cd0000        	call	c_itolx
5260  0ec5 be02          	ldw	x,c_lreg+2
5261  0ec7 89            	pushw	x
5262  0ec8 be00          	ldw	x,c_lreg
5263  0eca 89            	pushw	x
5264  0ecb cd0000        	call	_FLASH_ProgramByte
5266  0ece 5b05          	addw	sp,#5
5268  0ed0               L7512:
5269                     ; 660 			while(FLASH_GetFlagStatus(FLASH_FLAG_EOP) == RESET){}
5271  0ed0 a604          	ld	a,#4
5272  0ed2 cd0000        	call	_FLASH_GetFlagStatus
5274  0ed5 4d            	tnz	a
5275  0ed6 27f8          	jreq	L7512
5276                     ; 657 		for(j=0;j<6;j++)
5278  0ed8 1e0d          	ldw	x,(OFST-1,sp)
5279  0eda 1c0001        	addw	x,#1
5280  0edd 1f0d          	ldw	(OFST-1,sp),x
5284  0edf 9c            	rvf
5285  0ee0 1e0d          	ldw	x,(OFST-1,sp)
5286  0ee2 a30006        	cpw	x,#6
5287  0ee5 2fa3          	jrslt	L7412
5289  0ee7 ac641064      	jpf	L3412
5290  0eeb               L5412:
5291                     ; 663 	else if(BB_Bitrate_TEST==38400)
5293  0eeb 96            	ldw	x,sp
5294  0eec 1c0009        	addw	x,#OFST-5
5295  0eef cd0000        	call	c_ltor
5297  0ef2 ae00c9        	ldw	x,#L212
5298  0ef5 cd0000        	call	c_lcmp
5300  0ef8 266e          	jrne	L5612
5301                     ; 665 		BB_Bitrate=BB_Bitrate_TEST;
5303  0efa 1e0b          	ldw	x,(OFST-3,sp)
5304  0efc cf0068        	ldw	_BB_Bitrate+2,x
5305  0eff 1e09          	ldw	x,(OFST-5,sp)
5306  0f01 cf0066        	ldw	_BB_Bitrate,x
5307                     ; 666 		for(j=0;j<6;j++)
5309  0f04 5f            	clrw	x
5310  0f05 1f0d          	ldw	(OFST-1,sp),x
5312  0f07               L7612:
5313                     ; 668 			FLASH_ProgramByte(0x1001+j,(BB_Bitrate % Square_10(6-j))/Square_10(5-j));
5315  0f07 a605          	ld	a,#5
5316  0f09 100e          	sub	a,(OFST+0,sp)
5317  0f0b cd2b18        	call	_Square_10
5319  0f0e 96            	ldw	x,sp
5320  0f0f 1c0005        	addw	x,#OFST-9
5321  0f12 cd0000        	call	c_rtol
5324  0f15 a606          	ld	a,#6
5325  0f17 100e          	sub	a,(OFST+0,sp)
5326  0f19 cd2b18        	call	_Square_10
5328  0f1c 96            	ldw	x,sp
5329  0f1d 1c0001        	addw	x,#OFST-13
5330  0f20 cd0000        	call	c_rtol
5333  0f23 ae0066        	ldw	x,#_BB_Bitrate
5334  0f26 cd0000        	call	c_ltor
5336  0f29 96            	ldw	x,sp
5337  0f2a 1c0001        	addw	x,#OFST-13
5338  0f2d cd0000        	call	c_lumd
5340  0f30 96            	ldw	x,sp
5341  0f31 1c0005        	addw	x,#OFST-9
5342  0f34 cd0000        	call	c_ludv
5344  0f37 b603          	ld	a,c_lreg+3
5345  0f39 88            	push	a
5346  0f3a 1e0e          	ldw	x,(OFST+0,sp)
5347  0f3c 1c1001        	addw	x,#4097
5348  0f3f cd0000        	call	c_itolx
5350  0f42 be02          	ldw	x,c_lreg+2
5351  0f44 89            	pushw	x
5352  0f45 be00          	ldw	x,c_lreg
5353  0f47 89            	pushw	x
5354  0f48 cd0000        	call	_FLASH_ProgramByte
5356  0f4b 5b05          	addw	sp,#5
5358  0f4d               L7712:
5359                     ; 669 			while(FLASH_GetFlagStatus(FLASH_FLAG_EOP) == RESET){}
5361  0f4d a604          	ld	a,#4
5362  0f4f cd0000        	call	_FLASH_GetFlagStatus
5364  0f52 4d            	tnz	a
5365  0f53 27f8          	jreq	L7712
5366                     ; 666 		for(j=0;j<6;j++)
5368  0f55 1e0d          	ldw	x,(OFST-1,sp)
5369  0f57 1c0001        	addw	x,#1
5370  0f5a 1f0d          	ldw	(OFST-1,sp),x
5374  0f5c 9c            	rvf
5375  0f5d 1e0d          	ldw	x,(OFST-1,sp)
5376  0f5f a30006        	cpw	x,#6
5377  0f62 2fa3          	jrslt	L7612
5379  0f64 ac641064      	jpf	L3412
5380  0f68               L5612:
5381                     ; 672 	else if(BB_Bitrate_TEST==57600)
5383  0f68 96            	ldw	x,sp
5384  0f69 1c0009        	addw	x,#OFST-5
5385  0f6c cd0000        	call	c_ltor
5387  0f6f ae00cd        	ldw	x,#L412
5388  0f72 cd0000        	call	c_lcmp
5390  0f75 266e          	jrne	L5022
5391                     ; 674 		BB_Bitrate=BB_Bitrate_TEST;
5393  0f77 1e0b          	ldw	x,(OFST-3,sp)
5394  0f79 cf0068        	ldw	_BB_Bitrate+2,x
5395  0f7c 1e09          	ldw	x,(OFST-5,sp)
5396  0f7e cf0066        	ldw	_BB_Bitrate,x
5397                     ; 675 		for(j=0;j<6;j++)
5399  0f81 5f            	clrw	x
5400  0f82 1f0d          	ldw	(OFST-1,sp),x
5402  0f84               L7022:
5403                     ; 677 			FLASH_ProgramByte(0x1001+j,(BB_Bitrate % Square_10(6-j))/Square_10(5-j));
5405  0f84 a605          	ld	a,#5
5406  0f86 100e          	sub	a,(OFST+0,sp)
5407  0f88 cd2b18        	call	_Square_10
5409  0f8b 96            	ldw	x,sp
5410  0f8c 1c0005        	addw	x,#OFST-9
5411  0f8f cd0000        	call	c_rtol
5414  0f92 a606          	ld	a,#6
5415  0f94 100e          	sub	a,(OFST+0,sp)
5416  0f96 cd2b18        	call	_Square_10
5418  0f99 96            	ldw	x,sp
5419  0f9a 1c0001        	addw	x,#OFST-13
5420  0f9d cd0000        	call	c_rtol
5423  0fa0 ae0066        	ldw	x,#_BB_Bitrate
5424  0fa3 cd0000        	call	c_ltor
5426  0fa6 96            	ldw	x,sp
5427  0fa7 1c0001        	addw	x,#OFST-13
5428  0faa cd0000        	call	c_lumd
5430  0fad 96            	ldw	x,sp
5431  0fae 1c0005        	addw	x,#OFST-9
5432  0fb1 cd0000        	call	c_ludv
5434  0fb4 b603          	ld	a,c_lreg+3
5435  0fb6 88            	push	a
5436  0fb7 1e0e          	ldw	x,(OFST+0,sp)
5437  0fb9 1c1001        	addw	x,#4097
5438  0fbc cd0000        	call	c_itolx
5440  0fbf be02          	ldw	x,c_lreg+2
5441  0fc1 89            	pushw	x
5442  0fc2 be00          	ldw	x,c_lreg
5443  0fc4 89            	pushw	x
5444  0fc5 cd0000        	call	_FLASH_ProgramByte
5446  0fc8 5b05          	addw	sp,#5
5448  0fca               L7122:
5449                     ; 678 			while(FLASH_GetFlagStatus(FLASH_FLAG_EOP) == RESET){}
5451  0fca a604          	ld	a,#4
5452  0fcc cd0000        	call	_FLASH_GetFlagStatus
5454  0fcf 4d            	tnz	a
5455  0fd0 27f8          	jreq	L7122
5456                     ; 675 		for(j=0;j<6;j++)
5458  0fd2 1e0d          	ldw	x,(OFST-1,sp)
5459  0fd4 1c0001        	addw	x,#1
5460  0fd7 1f0d          	ldw	(OFST-1,sp),x
5464  0fd9 9c            	rvf
5465  0fda 1e0d          	ldw	x,(OFST-1,sp)
5466  0fdc a30006        	cpw	x,#6
5467  0fdf 2fa3          	jrslt	L7022
5469  0fe1 ac641064      	jpf	L3412
5470  0fe5               L5022:
5471                     ; 681 	else if(BB_Bitrate_TEST==115200)
5473  0fe5 96            	ldw	x,sp
5474  0fe6 1c0009        	addw	x,#OFST-5
5475  0fe9 cd0000        	call	c_ltor
5477  0fec ae00d1        	ldw	x,#L612
5478  0fef cd0000        	call	c_lcmp
5480  0ff2 266c          	jrne	L5222
5481                     ; 683 		BB_Bitrate=BB_Bitrate_TEST;
5483  0ff4 1e0b          	ldw	x,(OFST-3,sp)
5484  0ff6 cf0068        	ldw	_BB_Bitrate+2,x
5485  0ff9 1e09          	ldw	x,(OFST-5,sp)
5486  0ffb cf0066        	ldw	_BB_Bitrate,x
5487                     ; 684 		for(j=0;j<6;j++)
5489  0ffe 5f            	clrw	x
5490  0fff 1f0d          	ldw	(OFST-1,sp),x
5492  1001               L7222:
5493                     ; 686 			FLASH_ProgramByte(0x1001+j,(BB_Bitrate % Square_10(6-j))/Square_10(5-j));
5495  1001 a605          	ld	a,#5
5496  1003 100e          	sub	a,(OFST+0,sp)
5497  1005 cd2b18        	call	_Square_10
5499  1008 96            	ldw	x,sp
5500  1009 1c0005        	addw	x,#OFST-9
5501  100c cd0000        	call	c_rtol
5504  100f a606          	ld	a,#6
5505  1011 100e          	sub	a,(OFST+0,sp)
5506  1013 cd2b18        	call	_Square_10
5508  1016 96            	ldw	x,sp
5509  1017 1c0001        	addw	x,#OFST-13
5510  101a cd0000        	call	c_rtol
5513  101d ae0066        	ldw	x,#_BB_Bitrate
5514  1020 cd0000        	call	c_ltor
5516  1023 96            	ldw	x,sp
5517  1024 1c0001        	addw	x,#OFST-13
5518  1027 cd0000        	call	c_lumd
5520  102a 96            	ldw	x,sp
5521  102b 1c0005        	addw	x,#OFST-9
5522  102e cd0000        	call	c_ludv
5524  1031 b603          	ld	a,c_lreg+3
5525  1033 88            	push	a
5526  1034 1e0e          	ldw	x,(OFST+0,sp)
5527  1036 1c1001        	addw	x,#4097
5528  1039 cd0000        	call	c_itolx
5530  103c be02          	ldw	x,c_lreg+2
5531  103e 89            	pushw	x
5532  103f be00          	ldw	x,c_lreg
5533  1041 89            	pushw	x
5534  1042 cd0000        	call	_FLASH_ProgramByte
5536  1045 5b05          	addw	sp,#5
5538  1047               L7322:
5539                     ; 687 			while(FLASH_GetFlagStatus(FLASH_FLAG_EOP) == RESET){}
5541  1047 a604          	ld	a,#4
5542  1049 cd0000        	call	_FLASH_GetFlagStatus
5544  104c 4d            	tnz	a
5545  104d 27f8          	jreq	L7322
5546                     ; 684 		for(j=0;j<6;j++)
5548  104f 1e0d          	ldw	x,(OFST-1,sp)
5549  1051 1c0001        	addw	x,#1
5550  1054 1f0d          	ldw	(OFST-1,sp),x
5554  1056 9c            	rvf
5555  1057 1e0d          	ldw	x,(OFST-1,sp)
5556  1059 a30006        	cpw	x,#6
5557  105c 2fa3          	jrslt	L7222
5559  105e 2004          	jra	L3412
5560  1060               L5222:
5561                     ; 690 	else	BR_ERR=1;
5563  1060 350100c4      	mov	_BR_ERR,#1
5564  1064               L3412:
5565                     ; 692 	sim();
5568  1064 9b            sim
5570                     ; 693 	UART_Init();//---------------------------------Reset Uart_Init.
5573  1065 cd16fd        	call	_UART_Init
5575                     ; 694 	rim();
5578  1068 9a            rim
5580                     ; 695 }
5584  1069 5b0e          	addw	sp,#14
5585  106b 81            	ret
5619                     ; 697 void DATA_Send_TX(char data)
5619                     ; 698 {
5620                     	switch	.text
5621  106c               _DATA_Send_TX:
5625                     ; 699 	USART_SendData8(USART2,data);
5627  106c 88            	push	a
5628  106d ae53e0        	ldw	x,#21472
5629  1070 cd0000        	call	_USART_SendData8
5631  1073 84            	pop	a
5633  1074               L3622:
5634                     ; 700 	while (USART_GetFlagStatus(USART2, USART_FLAG_TXE) == RESET);
5636  1074 ae0080        	ldw	x,#128
5637  1077 89            	pushw	x
5638  1078 ae53e0        	ldw	x,#21472
5639  107b cd0000        	call	_USART_GetFlagStatus
5641  107e 85            	popw	x
5642  107f 4d            	tnz	a
5643  1080 27f2          	jreq	L3622
5644                     ; 701 }
5647  1082 81            	ret
5650                     	switch	.const
5651  00d5               L7622_Tx_DATA:
5652  00d5 244241423131  	dc.b	"$BAB110,TEST,OK,00"
5653  00e7 0a00          	dc.b	10,0
5654  00e9               L1722_Tx_DATA:
5655  00e9 244241423131  	dc.b	"$BAB110,REV1,0.00,"
5656  00fb 303030303030  	dc.b	"000000,00",10,0
5657  0106               L3722_Tx_DATA:
5658  0106 244241423131  	dc.b	"$BAB110,DATA,000,0"
5659  0118 30302c302c30  	dc.b	"00,0,0,000,00",10,0
5660  0127               L5722_Tx_DATA:
5661  0127 244241423131  	dc.b	"$BAB110,BITR,OK,00"
5662  0139 0a00          	dc.b	10,0
5663  013b               L7722_Tx_DATA:
5664  013b 244241423131  	dc.b	"$BAB110,PRC1,OK,00"
5665  014d 0a00          	dc.b	10,0
5666  014f               L1032_Tx_DATA:
5667  014f 244241423131  	dc.b	"$BAB110,DATP,000,0"
5668  0161 30302c302c30  	dc.b	"00,0,0,000,00",10,0
5669  0170               L3032_Tx_DATA:
5670  0170 244241423131  	dc.b	"$BAB110,0000,ERR,0"
5671  0182 300a00        	dc.b	"0",10,0
5672  0185               L5032_Tx_DATA:
5673  0185 244241423131  	dc.b	"$BAB110,ERR,00",10,0
5997                     ; 703 void BlackBox_TX(uint8_t number)
5997                     ; 704 {
5998                     	switch	.text
5999  1083               _BlackBox_TX:
6001  1083 88            	push	a
6002  1084 522c          	subw	sp,#44
6003       0000002c      OFST:	set	44
6006                     ; 705 	uint8_t Sum =0;
6008  1086 0f2c          	clr	(OFST+0,sp)
6010                     ; 706 	char cs1 =0;
6012                     ; 707 	char cs2 =0;
6014                     ; 709 	if(number==1)//-----------------------------------TEST_OK.
6016  1088 a101          	cp	a,#1
6017  108a 2703          	jreq	L423
6018  108c cc1146        	jp	L7542
6019  108f               L423:
6020                     ; 712 		char Tx_DATA[] = "$BAB110,TEST,OK,00\n";
6022  108f 96            	ldw	x,sp
6023  1090 1c0017        	addw	x,#OFST-21
6024  1093 90ae00d5      	ldw	y,#L7622_Tx_DATA
6025  1097 a614          	ld	a,#20
6026  1099 cd0000        	call	c_xymov
6028                     ; 713 		uint8_t DS = sizeof(Tx_DATA)-1;
6030  109c a613          	ld	a,#19
6031  109e 6b12          	ld	(OFST-26,sp),a
6033                     ; 716 		for(i=0;i<(DS-3);i++){Sum += Tx_DATA[i];}
6035  10a0 5f            	clrw	x
6036  10a1 1f13          	ldw	(OFST-25,sp),x
6039  10a3 2017          	jra	L5642
6040  10a5               L1642:
6043  10a5 96            	ldw	x,sp
6044  10a6 1c0017        	addw	x,#OFST-21
6045  10a9 1f01          	ldw	(OFST-43,sp),x
6047  10ab 1e13          	ldw	x,(OFST-25,sp)
6048  10ad 72fb01        	addw	x,(OFST-43,sp)
6049  10b0 7b2c          	ld	a,(OFST+0,sp)
6050  10b2 fb            	add	a,(x)
6051  10b3 6b2c          	ld	(OFST+0,sp),a
6055  10b5 1e13          	ldw	x,(OFST-25,sp)
6056  10b7 1c0001        	addw	x,#1
6057  10ba 1f13          	ldw	(OFST-25,sp),x
6059  10bc               L5642:
6062  10bc 9c            	rvf
6063  10bd 7b12          	ld	a,(OFST-26,sp)
6064  10bf 5f            	clrw	x
6065  10c0 97            	ld	xl,a
6066  10c1 1d0003        	subw	x,#3
6067  10c4 1313          	cpw	x,(OFST-25,sp)
6068  10c6 2cdd          	jrsgt	L1642
6069                     ; 717 		cs1=(Sum>>4)&0x0f;
6071  10c8 7b2c          	ld	a,(OFST+0,sp)
6072  10ca 4e            	swap	a
6073  10cb a40f          	and	a,#15
6074  10cd 6b2b          	ld	(OFST-1,sp),a
6076                     ; 718 		Tx_DATA[DS-3]=(cs1<10)?(cs1+'0'):((cs1-10)+'a');
6078  10cf 96            	ldw	x,sp
6079  10d0 1c0017        	addw	x,#OFST-21
6080  10d3 1f01          	ldw	(OFST-43,sp),x
6082  10d5 7b12          	ld	a,(OFST-26,sp)
6083  10d7 5f            	clrw	x
6084  10d8 97            	ld	xl,a
6085  10d9 1d0003        	subw	x,#3
6086  10dc 72fb01        	addw	x,(OFST-43,sp)
6087  10df 89            	pushw	x
6088  10e0 7b2d          	ld	a,(OFST+1,sp)
6089  10e2 a10a          	cp	a,#10
6090  10e4 2406          	jruge	L422
6091  10e6 7b2d          	ld	a,(OFST+1,sp)
6092  10e8 ab30          	add	a,#48
6093  10ea 2004          	jra	L622
6094  10ec               L422:
6095  10ec 7b2d          	ld	a,(OFST+1,sp)
6096  10ee ab57          	add	a,#87
6097  10f0               L622:
6098  10f0 85            	popw	x
6099  10f1 f7            	ld	(x),a
6100                     ; 719 		cs2= Sum & 0x0f;
6102  10f2 7b2c          	ld	a,(OFST+0,sp)
6103  10f4 a40f          	and	a,#15
6104  10f6 6b2c          	ld	(OFST+0,sp),a
6106                     ; 720 		Tx_DATA[DS-2]=(cs2<10)?(cs2+'0'):((cs2-10)+'a');
6108  10f8 96            	ldw	x,sp
6109  10f9 1c0017        	addw	x,#OFST-21
6110  10fc 1f01          	ldw	(OFST-43,sp),x
6112  10fe 7b12          	ld	a,(OFST-26,sp)
6113  1100 5f            	clrw	x
6114  1101 97            	ld	xl,a
6115  1102 5a            	decw	x
6116  1103 5a            	decw	x
6117  1104 72fb01        	addw	x,(OFST-43,sp)
6118  1107 89            	pushw	x
6119  1108 7b2e          	ld	a,(OFST+2,sp)
6120  110a a10a          	cp	a,#10
6121  110c 2406          	jruge	L032
6122  110e 7b2e          	ld	a,(OFST+2,sp)
6123  1110 ab30          	add	a,#48
6124  1112 2004          	jra	L232
6125  1114               L032:
6126  1114 7b2e          	ld	a,(OFST+2,sp)
6127  1116 ab57          	add	a,#87
6128  1118               L232:
6129  1118 85            	popw	x
6130  1119 f7            	ld	(x),a
6131                     ; 722 		for(z=0;z<DS;z++)
6133  111a 5f            	clrw	x
6134  111b 1f15          	ldw	(OFST-23,sp),x
6137  111d 2016          	jra	L5742
6138  111f               L1742:
6139                     ; 723 		{DATA_Send_TX(Tx_DATA[z]);}//-----------TX_DATA.
6141  111f 96            	ldw	x,sp
6142  1120 1c0017        	addw	x,#OFST-21
6143  1123 1f01          	ldw	(OFST-43,sp),x
6145  1125 1e15          	ldw	x,(OFST-23,sp)
6146  1127 72fb01        	addw	x,(OFST-43,sp)
6147  112a f6            	ld	a,(x)
6148  112b cd106c        	call	_DATA_Send_TX
6150                     ; 722 		for(z=0;z<DS;z++)
6152  112e 1e15          	ldw	x,(OFST-23,sp)
6153  1130 1c0001        	addw	x,#1
6154  1133 1f15          	ldw	(OFST-23,sp),x
6156  1135               L5742:
6159  1135 9c            	rvf
6160  1136 7b12          	ld	a,(OFST-26,sp)
6161  1138 5f            	clrw	x
6162  1139 97            	ld	xl,a
6163  113a bf00          	ldw	c_x,x
6164  113c 1e15          	ldw	x,(OFST-23,sp)
6165  113e b300          	cpw	x,c_x
6166  1140 2fdd          	jrslt	L1742
6168  1142 acfa16fa      	jpf	L1052
6169  1146               L7542:
6170                     ; 725 	else if(number==2)//-----------------------------REV_DATA.
6172  1146 7b2d          	ld	a,(OFST+1,sp)
6173  1148 a102          	cp	a,#2
6174  114a 2703          	jreq	L623
6175  114c cc1228        	jp	L3052
6176  114f               L623:
6177                     ; 728 		char Tx_DATA[] = "$BAB110,REV1,0.00,000000,00\n";
6179  114f 96            	ldw	x,sp
6180  1150 1c000c        	addw	x,#OFST-32
6181  1153 90ae00e9      	ldw	y,#L1722_Tx_DATA
6182  1157 a61d          	ld	a,#29
6183  1159 cd0000        	call	c_xymov
6185                     ; 729 		uint8_t DS = sizeof(Tx_DATA)-1;
6187  115c a61c          	ld	a,#28
6188  115e 6b0b          	ld	(OFST-33,sp),a
6190                     ; 731 		for(j=0;j<(sizeof(REV_Setting)-1);j++)
6192  1160 5f            	clrw	x
6193  1161 1f29          	ldw	(OFST-3,sp),x
6195  1163               L5052:
6196                     ; 732 		{Tx_DATA[j+13]=REV_Setting[j];}
6198  1163 1e29          	ldw	x,(OFST-3,sp)
6199  1165 d60001        	ld	a,(_REV_Setting,x)
6200  1168 96            	ldw	x,sp
6201  1169 1c0019        	addw	x,#OFST-19
6202  116c 1f01          	ldw	(OFST-43,sp),x
6204  116e 1e29          	ldw	x,(OFST-3,sp)
6205  1170 72fb01        	addw	x,(OFST-43,sp)
6206  1173 f7            	ld	(x),a
6207                     ; 731 		for(j=0;j<(sizeof(REV_Setting)-1);j++)
6209  1174 1e29          	ldw	x,(OFST-3,sp)
6210  1176 1c0001        	addw	x,#1
6211  1179 1f29          	ldw	(OFST-3,sp),x
6215  117b 1e29          	ldw	x,(OFST-3,sp)
6216  117d a3000b        	cpw	x,#11
6217  1180 25e1          	jrult	L5052
6218                     ; 734 		for(i=0;i<(DS-3);i++){Sum += Tx_DATA[i];}
6220  1182 5f            	clrw	x
6221  1183 1f29          	ldw	(OFST-3,sp),x
6224  1185 2017          	jra	L7152
6225  1187               L3152:
6228  1187 96            	ldw	x,sp
6229  1188 1c000c        	addw	x,#OFST-32
6230  118b 1f01          	ldw	(OFST-43,sp),x
6232  118d 1e29          	ldw	x,(OFST-3,sp)
6233  118f 72fb01        	addw	x,(OFST-43,sp)
6234  1192 7b2c          	ld	a,(OFST+0,sp)
6235  1194 fb            	add	a,(x)
6236  1195 6b2c          	ld	(OFST+0,sp),a
6240  1197 1e29          	ldw	x,(OFST-3,sp)
6241  1199 1c0001        	addw	x,#1
6242  119c 1f29          	ldw	(OFST-3,sp),x
6244  119e               L7152:
6247  119e 9c            	rvf
6248  119f 7b0b          	ld	a,(OFST-33,sp)
6249  11a1 5f            	clrw	x
6250  11a2 97            	ld	xl,a
6251  11a3 1d0003        	subw	x,#3
6252  11a6 1329          	cpw	x,(OFST-3,sp)
6253  11a8 2cdd          	jrsgt	L3152
6254                     ; 735 		cs1=(Sum>>4)&0x0f;
6256  11aa 7b2c          	ld	a,(OFST+0,sp)
6257  11ac 4e            	swap	a
6258  11ad a40f          	and	a,#15
6259  11af 6b2b          	ld	(OFST-1,sp),a
6261                     ; 736 		Tx_DATA[DS-3]=(cs1<10)?(cs1+'0'):((cs1-10)+'a');
6263  11b1 96            	ldw	x,sp
6264  11b2 1c000c        	addw	x,#OFST-32
6265  11b5 1f01          	ldw	(OFST-43,sp),x
6267  11b7 7b0b          	ld	a,(OFST-33,sp)
6268  11b9 5f            	clrw	x
6269  11ba 97            	ld	xl,a
6270  11bb 1d0003        	subw	x,#3
6271  11be 72fb01        	addw	x,(OFST-43,sp)
6272  11c1 89            	pushw	x
6273  11c2 7b2d          	ld	a,(OFST+1,sp)
6274  11c4 a10a          	cp	a,#10
6275  11c6 2406          	jruge	L432
6276  11c8 7b2d          	ld	a,(OFST+1,sp)
6277  11ca ab30          	add	a,#48
6278  11cc 2004          	jra	L632
6279  11ce               L432:
6280  11ce 7b2d          	ld	a,(OFST+1,sp)
6281  11d0 ab57          	add	a,#87
6282  11d2               L632:
6283  11d2 85            	popw	x
6284  11d3 f7            	ld	(x),a
6285                     ; 737 		cs2= Sum & 0x0f;
6287  11d4 7b2c          	ld	a,(OFST+0,sp)
6288  11d6 a40f          	and	a,#15
6289  11d8 6b2c          	ld	(OFST+0,sp),a
6291                     ; 738 		Tx_DATA[DS-2]=(cs2<10)?(cs2+'0'):((cs2-10)+'a');
6293  11da 96            	ldw	x,sp
6294  11db 1c000c        	addw	x,#OFST-32
6295  11de 1f01          	ldw	(OFST-43,sp),x
6297  11e0 7b0b          	ld	a,(OFST-33,sp)
6298  11e2 5f            	clrw	x
6299  11e3 97            	ld	xl,a
6300  11e4 5a            	decw	x
6301  11e5 5a            	decw	x
6302  11e6 72fb01        	addw	x,(OFST-43,sp)
6303  11e9 89            	pushw	x
6304  11ea 7b2e          	ld	a,(OFST+2,sp)
6305  11ec a10a          	cp	a,#10
6306  11ee 2406          	jruge	L042
6307  11f0 7b2e          	ld	a,(OFST+2,sp)
6308  11f2 ab30          	add	a,#48
6309  11f4 2004          	jra	L242
6310  11f6               L042:
6311  11f6 7b2e          	ld	a,(OFST+2,sp)
6312  11f8 ab57          	add	a,#87
6313  11fa               L242:
6314  11fa 85            	popw	x
6315  11fb f7            	ld	(x),a
6316                     ; 740 		for(z=0;z<DS;z++)
6318  11fc 5f            	clrw	x
6319  11fd 1f29          	ldw	(OFST-3,sp),x
6322  11ff 2016          	jra	L7252
6323  1201               L3252:
6324                     ; 741 		{DATA_Send_TX(Tx_DATA[z]);}//-------DATA.
6326  1201 96            	ldw	x,sp
6327  1202 1c000c        	addw	x,#OFST-32
6328  1205 1f01          	ldw	(OFST-43,sp),x
6330  1207 1e29          	ldw	x,(OFST-3,sp)
6331  1209 72fb01        	addw	x,(OFST-43,sp)
6332  120c f6            	ld	a,(x)
6333  120d cd106c        	call	_DATA_Send_TX
6335                     ; 740 		for(z=0;z<DS;z++)
6337  1210 1e29          	ldw	x,(OFST-3,sp)
6338  1212 1c0001        	addw	x,#1
6339  1215 1f29          	ldw	(OFST-3,sp),x
6341  1217               L7252:
6344  1217 9c            	rvf
6345  1218 7b0b          	ld	a,(OFST-33,sp)
6346  121a 5f            	clrw	x
6347  121b 97            	ld	xl,a
6348  121c bf00          	ldw	c_x,x
6349  121e 1e29          	ldw	x,(OFST-3,sp)
6350  1220 b300          	cpw	x,c_x
6351  1222 2fdd          	jrslt	L3252
6353  1224 acfa16fa      	jpf	L1052
6354  1228               L3052:
6355                     ; 743 	else if(number==3)//-----------------------------DAT_DATA.
6357  1228 7b2d          	ld	a,(OFST+1,sp)
6358  122a a103          	cp	a,#3
6359  122c 2703          	jreq	L033
6360  122e cc130a        	jp	L5352
6361  1231               L033:
6362                     ; 746 		char Tx_DATA[] = "$BAB110,DATA,000,000,0,0,000,00\n";
6364  1231 96            	ldw	x,sp
6365  1232 1c000a        	addw	x,#OFST-34
6366  1235 90ae0106      	ldw	y,#L3722_Tx_DATA
6367  1239 a621          	ld	a,#33
6368  123b cd0000        	call	c_xymov
6370                     ; 747 		uint8_t DS = sizeof(Tx_DATA)-1;
6372  123e a620          	ld	a,#32
6373  1240 6b03          	ld	(OFST-41,sp),a
6375                     ; 749 		for(j=0;j<(sizeof(BAB_DATA)-1);j++)
6377  1242 5f            	clrw	x
6378  1243 1f08          	ldw	(OFST-36,sp),x
6380  1245               L7352:
6381                     ; 750 		{Tx_DATA[j+13]=BAB_DATA[j];}
6383  1245 1e08          	ldw	x,(OFST-36,sp)
6384  1247 d6000d        	ld	a,(_BAB_DATA,x)
6385  124a 96            	ldw	x,sp
6386  124b 1c0017        	addw	x,#OFST-21
6387  124e 1f01          	ldw	(OFST-43,sp),x
6389  1250 1e08          	ldw	x,(OFST-36,sp)
6390  1252 72fb01        	addw	x,(OFST-43,sp)
6391  1255 f7            	ld	(x),a
6392                     ; 749 		for(j=0;j<(sizeof(BAB_DATA)-1);j++)
6394  1256 1e08          	ldw	x,(OFST-36,sp)
6395  1258 1c0001        	addw	x,#1
6396  125b 1f08          	ldw	(OFST-36,sp),x
6400  125d 1e08          	ldw	x,(OFST-36,sp)
6401  125f a3000f        	cpw	x,#15
6402  1262 25e1          	jrult	L7352
6403                     ; 752 		for(i=0;i<(DS-3);i++){Sum += Tx_DATA[i];}
6405  1264 5f            	clrw	x
6406  1265 1f04          	ldw	(OFST-40,sp),x
6409  1267 2017          	jra	L1552
6410  1269               L5452:
6413  1269 96            	ldw	x,sp
6414  126a 1c000a        	addw	x,#OFST-34
6415  126d 1f01          	ldw	(OFST-43,sp),x
6417  126f 1e04          	ldw	x,(OFST-40,sp)
6418  1271 72fb01        	addw	x,(OFST-43,sp)
6419  1274 7b2c          	ld	a,(OFST+0,sp)
6420  1276 fb            	add	a,(x)
6421  1277 6b2c          	ld	(OFST+0,sp),a
6425  1279 1e04          	ldw	x,(OFST-40,sp)
6426  127b 1c0001        	addw	x,#1
6427  127e 1f04          	ldw	(OFST-40,sp),x
6429  1280               L1552:
6432  1280 9c            	rvf
6433  1281 7b03          	ld	a,(OFST-41,sp)
6434  1283 5f            	clrw	x
6435  1284 97            	ld	xl,a
6436  1285 1d0003        	subw	x,#3
6437  1288 1304          	cpw	x,(OFST-40,sp)
6438  128a 2cdd          	jrsgt	L5452
6439                     ; 753 		cs1=(Sum>>4)&0x0f;
6441  128c 7b2c          	ld	a,(OFST+0,sp)
6442  128e 4e            	swap	a
6443  128f a40f          	and	a,#15
6444  1291 6b2b          	ld	(OFST-1,sp),a
6446                     ; 754 		Tx_DATA[DS-3]=(cs1<10)?(cs1+'0'):((cs1-10)+'a');
6448  1293 96            	ldw	x,sp
6449  1294 1c000a        	addw	x,#OFST-34
6450  1297 1f01          	ldw	(OFST-43,sp),x
6452  1299 7b03          	ld	a,(OFST-41,sp)
6453  129b 5f            	clrw	x
6454  129c 97            	ld	xl,a
6455  129d 1d0003        	subw	x,#3
6456  12a0 72fb01        	addw	x,(OFST-43,sp)
6457  12a3 89            	pushw	x
6458  12a4 7b2d          	ld	a,(OFST+1,sp)
6459  12a6 a10a          	cp	a,#10
6460  12a8 2406          	jruge	L442
6461  12aa 7b2d          	ld	a,(OFST+1,sp)
6462  12ac ab30          	add	a,#48
6463  12ae 2004          	jra	L642
6464  12b0               L442:
6465  12b0 7b2d          	ld	a,(OFST+1,sp)
6466  12b2 ab57          	add	a,#87
6467  12b4               L642:
6468  12b4 85            	popw	x
6469  12b5 f7            	ld	(x),a
6470                     ; 755 		cs2= Sum & 0x0f;
6472  12b6 7b2c          	ld	a,(OFST+0,sp)
6473  12b8 a40f          	and	a,#15
6474  12ba 6b2c          	ld	(OFST+0,sp),a
6476                     ; 756 		Tx_DATA[DS-2]=(cs2<10)?(cs2+'0'):((cs2-10)+'a');
6478  12bc 96            	ldw	x,sp
6479  12bd 1c000a        	addw	x,#OFST-34
6480  12c0 1f01          	ldw	(OFST-43,sp),x
6482  12c2 7b03          	ld	a,(OFST-41,sp)
6483  12c4 5f            	clrw	x
6484  12c5 97            	ld	xl,a
6485  12c6 5a            	decw	x
6486  12c7 5a            	decw	x
6487  12c8 72fb01        	addw	x,(OFST-43,sp)
6488  12cb 89            	pushw	x
6489  12cc 7b2e          	ld	a,(OFST+2,sp)
6490  12ce a10a          	cp	a,#10
6491  12d0 2406          	jruge	L052
6492  12d2 7b2e          	ld	a,(OFST+2,sp)
6493  12d4 ab30          	add	a,#48
6494  12d6 2004          	jra	L252
6495  12d8               L052:
6496  12d8 7b2e          	ld	a,(OFST+2,sp)
6497  12da ab57          	add	a,#87
6498  12dc               L252:
6499  12dc 85            	popw	x
6500  12dd f7            	ld	(x),a
6501                     ; 758 		for(z=0;z<DS;z++)
6503  12de 5f            	clrw	x
6504  12df 1f06          	ldw	(OFST-38,sp),x
6507  12e1 2016          	jra	L1652
6508  12e3               L5552:
6509                     ; 759 		{DATA_Send_TX(Tx_DATA[z]);}//-------DATA.
6511  12e3 96            	ldw	x,sp
6512  12e4 1c000a        	addw	x,#OFST-34
6513  12e7 1f01          	ldw	(OFST-43,sp),x
6515  12e9 1e06          	ldw	x,(OFST-38,sp)
6516  12eb 72fb01        	addw	x,(OFST-43,sp)
6517  12ee f6            	ld	a,(x)
6518  12ef cd106c        	call	_DATA_Send_TX
6520                     ; 758 		for(z=0;z<DS;z++)
6522  12f2 1e06          	ldw	x,(OFST-38,sp)
6523  12f4 1c0001        	addw	x,#1
6524  12f7 1f06          	ldw	(OFST-38,sp),x
6526  12f9               L1652:
6529  12f9 9c            	rvf
6530  12fa 7b03          	ld	a,(OFST-41,sp)
6531  12fc 5f            	clrw	x
6532  12fd 97            	ld	xl,a
6533  12fe bf00          	ldw	c_x,x
6534  1300 1e06          	ldw	x,(OFST-38,sp)
6535  1302 b300          	cpw	x,c_x
6536  1304 2fdd          	jrslt	L5552
6538  1306 acfa16fa      	jpf	L1052
6539  130a               L5352:
6540                     ; 761 	else if(number==4)//--------------------------------BR_OK.
6542  130a 7b2d          	ld	a,(OFST+1,sp)
6543  130c a104          	cp	a,#4
6544  130e 2703          	jreq	L233
6545  1310 cc13ca        	jp	L7652
6546  1313               L233:
6547                     ; 764 		char Tx_DATA[] = "$BAB110,BITR,OK,00\n";
6549  1313 96            	ldw	x,sp
6550  1314 1c0017        	addw	x,#OFST-21
6551  1317 90ae0127      	ldw	y,#L5722_Tx_DATA
6552  131b a614          	ld	a,#20
6553  131d cd0000        	call	c_xymov
6555                     ; 765 		uint8_t DS = sizeof(Tx_DATA)-1;
6557  1320 a613          	ld	a,#19
6558  1322 6b12          	ld	(OFST-26,sp),a
6560                     ; 768 		for(i=0;i<(DS-3);i++){Sum += Tx_DATA[i];}
6562  1324 5f            	clrw	x
6563  1325 1f13          	ldw	(OFST-25,sp),x
6566  1327 2017          	jra	L5752
6567  1329               L1752:
6570  1329 96            	ldw	x,sp
6571  132a 1c0017        	addw	x,#OFST-21
6572  132d 1f01          	ldw	(OFST-43,sp),x
6574  132f 1e13          	ldw	x,(OFST-25,sp)
6575  1331 72fb01        	addw	x,(OFST-43,sp)
6576  1334 7b2c          	ld	a,(OFST+0,sp)
6577  1336 fb            	add	a,(x)
6578  1337 6b2c          	ld	(OFST+0,sp),a
6582  1339 1e13          	ldw	x,(OFST-25,sp)
6583  133b 1c0001        	addw	x,#1
6584  133e 1f13          	ldw	(OFST-25,sp),x
6586  1340               L5752:
6589  1340 9c            	rvf
6590  1341 7b12          	ld	a,(OFST-26,sp)
6591  1343 5f            	clrw	x
6592  1344 97            	ld	xl,a
6593  1345 1d0003        	subw	x,#3
6594  1348 1313          	cpw	x,(OFST-25,sp)
6595  134a 2cdd          	jrsgt	L1752
6596                     ; 769 		cs1=(Sum>>4)&0x0f;
6598  134c 7b2c          	ld	a,(OFST+0,sp)
6599  134e 4e            	swap	a
6600  134f a40f          	and	a,#15
6601  1351 6b2b          	ld	(OFST-1,sp),a
6603                     ; 770 		Tx_DATA[DS-3]=(cs1<10)?(cs1+'0'):((cs1-10)+'a');
6605  1353 96            	ldw	x,sp
6606  1354 1c0017        	addw	x,#OFST-21
6607  1357 1f01          	ldw	(OFST-43,sp),x
6609  1359 7b12          	ld	a,(OFST-26,sp)
6610  135b 5f            	clrw	x
6611  135c 97            	ld	xl,a
6612  135d 1d0003        	subw	x,#3
6613  1360 72fb01        	addw	x,(OFST-43,sp)
6614  1363 89            	pushw	x
6615  1364 7b2d          	ld	a,(OFST+1,sp)
6616  1366 a10a          	cp	a,#10
6617  1368 2406          	jruge	L452
6618  136a 7b2d          	ld	a,(OFST+1,sp)
6619  136c ab30          	add	a,#48
6620  136e 2004          	jra	L652
6621  1370               L452:
6622  1370 7b2d          	ld	a,(OFST+1,sp)
6623  1372 ab57          	add	a,#87
6624  1374               L652:
6625  1374 85            	popw	x
6626  1375 f7            	ld	(x),a
6627                     ; 771 		cs2= Sum & 0x0f;
6629  1376 7b2c          	ld	a,(OFST+0,sp)
6630  1378 a40f          	and	a,#15
6631  137a 6b2c          	ld	(OFST+0,sp),a
6633                     ; 772 		Tx_DATA[DS-2]=(cs2<10)?(cs2+'0'):((cs2-10)+'a');
6635  137c 96            	ldw	x,sp
6636  137d 1c0017        	addw	x,#OFST-21
6637  1380 1f01          	ldw	(OFST-43,sp),x
6639  1382 7b12          	ld	a,(OFST-26,sp)
6640  1384 5f            	clrw	x
6641  1385 97            	ld	xl,a
6642  1386 5a            	decw	x
6643  1387 5a            	decw	x
6644  1388 72fb01        	addw	x,(OFST-43,sp)
6645  138b 89            	pushw	x
6646  138c 7b2e          	ld	a,(OFST+2,sp)
6647  138e a10a          	cp	a,#10
6648  1390 2406          	jruge	L062
6649  1392 7b2e          	ld	a,(OFST+2,sp)
6650  1394 ab30          	add	a,#48
6651  1396 2004          	jra	L262
6652  1398               L062:
6653  1398 7b2e          	ld	a,(OFST+2,sp)
6654  139a ab57          	add	a,#87
6655  139c               L262:
6656  139c 85            	popw	x
6657  139d f7            	ld	(x),a
6658                     ; 774 		for(z=0;z<DS;z++)
6660  139e 5f            	clrw	x
6661  139f 1f15          	ldw	(OFST-23,sp),x
6664  13a1 2016          	jra	L5062
6665  13a3               L1062:
6666                     ; 775 		{DATA_Send_TX(Tx_DATA[z]);}//-----------TX_DATA.
6668  13a3 96            	ldw	x,sp
6669  13a4 1c0017        	addw	x,#OFST-21
6670  13a7 1f01          	ldw	(OFST-43,sp),x
6672  13a9 1e15          	ldw	x,(OFST-23,sp)
6673  13ab 72fb01        	addw	x,(OFST-43,sp)
6674  13ae f6            	ld	a,(x)
6675  13af cd106c        	call	_DATA_Send_TX
6677                     ; 774 		for(z=0;z<DS;z++)
6679  13b2 1e15          	ldw	x,(OFST-23,sp)
6680  13b4 1c0001        	addw	x,#1
6681  13b7 1f15          	ldw	(OFST-23,sp),x
6683  13b9               L5062:
6686  13b9 9c            	rvf
6687  13ba 7b12          	ld	a,(OFST-26,sp)
6688  13bc 5f            	clrw	x
6689  13bd 97            	ld	xl,a
6690  13be bf00          	ldw	c_x,x
6691  13c0 1e15          	ldw	x,(OFST-23,sp)
6692  13c2 b300          	cpw	x,c_x
6693  13c4 2fdd          	jrslt	L1062
6695  13c6 acfa16fa      	jpf	L1052
6696  13ca               L7652:
6697                     ; 777 	else if(number==5)//-------------------------------PRC_OK.
6699  13ca 7b2d          	ld	a,(OFST+1,sp)
6700  13cc a105          	cp	a,#5
6701  13ce 2703          	jreq	L433
6702  13d0 cc148a        	jp	L3162
6703  13d3               L433:
6704                     ; 780 		char Tx_DATA[] = "$BAB110,PRC1,OK,00\n";
6706  13d3 96            	ldw	x,sp
6707  13d4 1c0017        	addw	x,#OFST-21
6708  13d7 90ae013b      	ldw	y,#L7722_Tx_DATA
6709  13db a614          	ld	a,#20
6710  13dd cd0000        	call	c_xymov
6712                     ; 781 		uint8_t DS = sizeof(Tx_DATA)-1;
6714  13e0 a613          	ld	a,#19
6715  13e2 6b12          	ld	(OFST-26,sp),a
6717                     ; 784 		for(i=0;i<(DS-3);i++){Sum += Tx_DATA[i];}
6719  13e4 5f            	clrw	x
6720  13e5 1f13          	ldw	(OFST-25,sp),x
6723  13e7 2017          	jra	L1262
6724  13e9               L5162:
6727  13e9 96            	ldw	x,sp
6728  13ea 1c0017        	addw	x,#OFST-21
6729  13ed 1f01          	ldw	(OFST-43,sp),x
6731  13ef 1e13          	ldw	x,(OFST-25,sp)
6732  13f1 72fb01        	addw	x,(OFST-43,sp)
6733  13f4 7b2c          	ld	a,(OFST+0,sp)
6734  13f6 fb            	add	a,(x)
6735  13f7 6b2c          	ld	(OFST+0,sp),a
6739  13f9 1e13          	ldw	x,(OFST-25,sp)
6740  13fb 1c0001        	addw	x,#1
6741  13fe 1f13          	ldw	(OFST-25,sp),x
6743  1400               L1262:
6746  1400 9c            	rvf
6747  1401 7b12          	ld	a,(OFST-26,sp)
6748  1403 5f            	clrw	x
6749  1404 97            	ld	xl,a
6750  1405 1d0003        	subw	x,#3
6751  1408 1313          	cpw	x,(OFST-25,sp)
6752  140a 2cdd          	jrsgt	L5162
6753                     ; 785 		cs1=(Sum>>4)&0x0f;
6755  140c 7b2c          	ld	a,(OFST+0,sp)
6756  140e 4e            	swap	a
6757  140f a40f          	and	a,#15
6758  1411 6b2b          	ld	(OFST-1,sp),a
6760                     ; 786 		Tx_DATA[DS-3]=(cs1<10)?(cs1+'0'):((cs1-10)+'a');
6762  1413 96            	ldw	x,sp
6763  1414 1c0017        	addw	x,#OFST-21
6764  1417 1f01          	ldw	(OFST-43,sp),x
6766  1419 7b12          	ld	a,(OFST-26,sp)
6767  141b 5f            	clrw	x
6768  141c 97            	ld	xl,a
6769  141d 1d0003        	subw	x,#3
6770  1420 72fb01        	addw	x,(OFST-43,sp)
6771  1423 89            	pushw	x
6772  1424 7b2d          	ld	a,(OFST+1,sp)
6773  1426 a10a          	cp	a,#10
6774  1428 2406          	jruge	L462
6775  142a 7b2d          	ld	a,(OFST+1,sp)
6776  142c ab30          	add	a,#48
6777  142e 2004          	jra	L662
6778  1430               L462:
6779  1430 7b2d          	ld	a,(OFST+1,sp)
6780  1432 ab57          	add	a,#87
6781  1434               L662:
6782  1434 85            	popw	x
6783  1435 f7            	ld	(x),a
6784                     ; 787 		cs2= Sum & 0x0f;
6786  1436 7b2c          	ld	a,(OFST+0,sp)
6787  1438 a40f          	and	a,#15
6788  143a 6b2c          	ld	(OFST+0,sp),a
6790                     ; 788 		Tx_DATA[DS-2]=(cs2<10)?(cs2+'0'):((cs2-10)+'a');
6792  143c 96            	ldw	x,sp
6793  143d 1c0017        	addw	x,#OFST-21
6794  1440 1f01          	ldw	(OFST-43,sp),x
6796  1442 7b12          	ld	a,(OFST-26,sp)
6797  1444 5f            	clrw	x
6798  1445 97            	ld	xl,a
6799  1446 5a            	decw	x
6800  1447 5a            	decw	x
6801  1448 72fb01        	addw	x,(OFST-43,sp)
6802  144b 89            	pushw	x
6803  144c 7b2e          	ld	a,(OFST+2,sp)
6804  144e a10a          	cp	a,#10
6805  1450 2406          	jruge	L072
6806  1452 7b2e          	ld	a,(OFST+2,sp)
6807  1454 ab30          	add	a,#48
6808  1456 2004          	jra	L272
6809  1458               L072:
6810  1458 7b2e          	ld	a,(OFST+2,sp)
6811  145a ab57          	add	a,#87
6812  145c               L272:
6813  145c 85            	popw	x
6814  145d f7            	ld	(x),a
6815                     ; 790 		for(z=0;z<DS;z++)
6817  145e 5f            	clrw	x
6818  145f 1f15          	ldw	(OFST-23,sp),x
6821  1461 2016          	jra	L1362
6822  1463               L5262:
6823                     ; 791 		{DATA_Send_TX(Tx_DATA[z]);}//-----------TX_DATA.
6825  1463 96            	ldw	x,sp
6826  1464 1c0017        	addw	x,#OFST-21
6827  1467 1f01          	ldw	(OFST-43,sp),x
6829  1469 1e15          	ldw	x,(OFST-23,sp)
6830  146b 72fb01        	addw	x,(OFST-43,sp)
6831  146e f6            	ld	a,(x)
6832  146f cd106c        	call	_DATA_Send_TX
6834                     ; 790 		for(z=0;z<DS;z++)
6836  1472 1e15          	ldw	x,(OFST-23,sp)
6837  1474 1c0001        	addw	x,#1
6838  1477 1f15          	ldw	(OFST-23,sp),x
6840  1479               L1362:
6843  1479 9c            	rvf
6844  147a 7b12          	ld	a,(OFST-26,sp)
6845  147c 5f            	clrw	x
6846  147d 97            	ld	xl,a
6847  147e bf00          	ldw	c_x,x
6848  1480 1e15          	ldw	x,(OFST-23,sp)
6849  1482 b300          	cpw	x,c_x
6850  1484 2fdd          	jrslt	L5262
6852  1486 acfa16fa      	jpf	L1052
6853  148a               L3162:
6854                     ; 793 	else if(number==6)//-----------------------------DAT_DATA.
6856  148a 7b2d          	ld	a,(OFST+1,sp)
6857  148c a106          	cp	a,#6
6858  148e 2703          	jreq	L633
6859  1490 cc156c        	jp	L7362
6860  1493               L633:
6861                     ; 796 		char Tx_DATA[] = "$BAB110,DATP,000,000,0,0,000,00\n";
6863  1493 96            	ldw	x,sp
6864  1494 1c000a        	addw	x,#OFST-34
6865  1497 90ae014f      	ldw	y,#L1032_Tx_DATA
6866  149b a621          	ld	a,#33
6867  149d cd0000        	call	c_xymov
6869                     ; 797 		uint8_t DS = sizeof(Tx_DATA)-1;
6871  14a0 a620          	ld	a,#32
6872  14a2 6b03          	ld	(OFST-41,sp),a
6874                     ; 799 		for(j=0;j<(sizeof(BAB_DATA)-1);j++)
6876  14a4 5f            	clrw	x
6877  14a5 1f08          	ldw	(OFST-36,sp),x
6879  14a7               L1462:
6880                     ; 800 		{Tx_DATA[j+13]=BAB_DATA[j];}
6882  14a7 1e08          	ldw	x,(OFST-36,sp)
6883  14a9 d6000d        	ld	a,(_BAB_DATA,x)
6884  14ac 96            	ldw	x,sp
6885  14ad 1c0017        	addw	x,#OFST-21
6886  14b0 1f01          	ldw	(OFST-43,sp),x
6888  14b2 1e08          	ldw	x,(OFST-36,sp)
6889  14b4 72fb01        	addw	x,(OFST-43,sp)
6890  14b7 f7            	ld	(x),a
6891                     ; 799 		for(j=0;j<(sizeof(BAB_DATA)-1);j++)
6893  14b8 1e08          	ldw	x,(OFST-36,sp)
6894  14ba 1c0001        	addw	x,#1
6895  14bd 1f08          	ldw	(OFST-36,sp),x
6899  14bf 1e08          	ldw	x,(OFST-36,sp)
6900  14c1 a3000f        	cpw	x,#15
6901  14c4 25e1          	jrult	L1462
6902                     ; 802 		for(i=0;i<(DS-3);i++){Sum += Tx_DATA[i];}
6904  14c6 5f            	clrw	x
6905  14c7 1f04          	ldw	(OFST-40,sp),x
6908  14c9 2017          	jra	L3562
6909  14cb               L7462:
6912  14cb 96            	ldw	x,sp
6913  14cc 1c000a        	addw	x,#OFST-34
6914  14cf 1f01          	ldw	(OFST-43,sp),x
6916  14d1 1e04          	ldw	x,(OFST-40,sp)
6917  14d3 72fb01        	addw	x,(OFST-43,sp)
6918  14d6 7b2c          	ld	a,(OFST+0,sp)
6919  14d8 fb            	add	a,(x)
6920  14d9 6b2c          	ld	(OFST+0,sp),a
6924  14db 1e04          	ldw	x,(OFST-40,sp)
6925  14dd 1c0001        	addw	x,#1
6926  14e0 1f04          	ldw	(OFST-40,sp),x
6928  14e2               L3562:
6931  14e2 9c            	rvf
6932  14e3 7b03          	ld	a,(OFST-41,sp)
6933  14e5 5f            	clrw	x
6934  14e6 97            	ld	xl,a
6935  14e7 1d0003        	subw	x,#3
6936  14ea 1304          	cpw	x,(OFST-40,sp)
6937  14ec 2cdd          	jrsgt	L7462
6938                     ; 803 		cs1=(Sum>>4)&0x0f;
6940  14ee 7b2c          	ld	a,(OFST+0,sp)
6941  14f0 4e            	swap	a
6942  14f1 a40f          	and	a,#15
6943  14f3 6b2b          	ld	(OFST-1,sp),a
6945                     ; 804 		Tx_DATA[DS-3]=(cs1<10)?(cs1+'0'):((cs1-10)+'a');
6947  14f5 96            	ldw	x,sp
6948  14f6 1c000a        	addw	x,#OFST-34
6949  14f9 1f01          	ldw	(OFST-43,sp),x
6951  14fb 7b03          	ld	a,(OFST-41,sp)
6952  14fd 5f            	clrw	x
6953  14fe 97            	ld	xl,a
6954  14ff 1d0003        	subw	x,#3
6955  1502 72fb01        	addw	x,(OFST-43,sp)
6956  1505 89            	pushw	x
6957  1506 7b2d          	ld	a,(OFST+1,sp)
6958  1508 a10a          	cp	a,#10
6959  150a 2406          	jruge	L472
6960  150c 7b2d          	ld	a,(OFST+1,sp)
6961  150e ab30          	add	a,#48
6962  1510 2004          	jra	L672
6963  1512               L472:
6964  1512 7b2d          	ld	a,(OFST+1,sp)
6965  1514 ab57          	add	a,#87
6966  1516               L672:
6967  1516 85            	popw	x
6968  1517 f7            	ld	(x),a
6969                     ; 805 		cs2= Sum & 0x0f;
6971  1518 7b2c          	ld	a,(OFST+0,sp)
6972  151a a40f          	and	a,#15
6973  151c 6b2c          	ld	(OFST+0,sp),a
6975                     ; 806 		Tx_DATA[DS-2]=(cs2<10)?(cs2+'0'):((cs2-10)+'a');
6977  151e 96            	ldw	x,sp
6978  151f 1c000a        	addw	x,#OFST-34
6979  1522 1f01          	ldw	(OFST-43,sp),x
6981  1524 7b03          	ld	a,(OFST-41,sp)
6982  1526 5f            	clrw	x
6983  1527 97            	ld	xl,a
6984  1528 5a            	decw	x
6985  1529 5a            	decw	x
6986  152a 72fb01        	addw	x,(OFST-43,sp)
6987  152d 89            	pushw	x
6988  152e 7b2e          	ld	a,(OFST+2,sp)
6989  1530 a10a          	cp	a,#10
6990  1532 2406          	jruge	L003
6991  1534 7b2e          	ld	a,(OFST+2,sp)
6992  1536 ab30          	add	a,#48
6993  1538 2004          	jra	L203
6994  153a               L003:
6995  153a 7b2e          	ld	a,(OFST+2,sp)
6996  153c ab57          	add	a,#87
6997  153e               L203:
6998  153e 85            	popw	x
6999  153f f7            	ld	(x),a
7000                     ; 808 		for(z=0;z<DS;z++)
7002  1540 5f            	clrw	x
7003  1541 1f06          	ldw	(OFST-38,sp),x
7006  1543 2016          	jra	L3662
7007  1545               L7562:
7008                     ; 809 		{DATA_Send_TX(Tx_DATA[z]);}//-------DATA.
7010  1545 96            	ldw	x,sp
7011  1546 1c000a        	addw	x,#OFST-34
7012  1549 1f01          	ldw	(OFST-43,sp),x
7014  154b 1e06          	ldw	x,(OFST-38,sp)
7015  154d 72fb01        	addw	x,(OFST-43,sp)
7016  1550 f6            	ld	a,(x)
7017  1551 cd106c        	call	_DATA_Send_TX
7019                     ; 808 		for(z=0;z<DS;z++)
7021  1554 1e06          	ldw	x,(OFST-38,sp)
7022  1556 1c0001        	addw	x,#1
7023  1559 1f06          	ldw	(OFST-38,sp),x
7025  155b               L3662:
7028  155b 9c            	rvf
7029  155c 7b03          	ld	a,(OFST-41,sp)
7030  155e 5f            	clrw	x
7031  155f 97            	ld	xl,a
7032  1560 bf00          	ldw	c_x,x
7033  1562 1e06          	ldw	x,(OFST-38,sp)
7034  1564 b300          	cpw	x,c_x
7035  1566 2fdd          	jrslt	L7562
7037  1568 acfa16fa      	jpf	L1052
7038  156c               L7362:
7039                     ; 811 	else if(number==9)//-----------------------Command ID ERR.
7041  156c 7b2d          	ld	a,(OFST+1,sp)
7042  156e a109          	cp	a,#9
7043  1570 2703          	jreq	L043
7044  1572 cc1640        	jp	L1762
7045  1575               L043:
7046                     ; 814 		char Tx_DATA[] = "$BAB110,0000,ERR,00\n";
7048  1575 96            	ldw	x,sp
7049  1576 1c0016        	addw	x,#OFST-22
7050  1579 90ae0170      	ldw	y,#L3032_Tx_DATA
7051  157d a615          	ld	a,#21
7052  157f cd0000        	call	c_xymov
7054                     ; 815 		uint8_t DS = sizeof(Tx_DATA)-1;
7056  1582 a614          	ld	a,#20
7057  1584 6b11          	ld	(OFST-27,sp),a
7059                     ; 817 		Tx_DATA[8]=B_Rx_Command[7];
7061  1586 c600bc        	ld	a,_B_Rx_Command+7
7062  1589 6b1e          	ld	(OFST-14,sp),a
7064                     ; 818 		Tx_DATA[9]=B_Rx_Command[8];
7066  158b c600bd        	ld	a,_B_Rx_Command+8
7067  158e 6b1f          	ld	(OFST-13,sp),a
7069                     ; 819 		Tx_DATA[10]=B_Rx_Command[9];
7071  1590 c600be        	ld	a,_B_Rx_Command+9
7072  1593 6b20          	ld	(OFST-12,sp),a
7074                     ; 820 		Tx_DATA[11]=B_Rx_Command[10];
7076  1595 c600bf        	ld	a,_B_Rx_Command+10
7077  1598 6b21          	ld	(OFST-11,sp),a
7079                     ; 822 		for(i=0;i<(DS-3);i++){Sum += Tx_DATA[i];}
7081  159a 5f            	clrw	x
7082  159b 1f12          	ldw	(OFST-26,sp),x
7085  159d 2017          	jra	L7762
7086  159f               L3762:
7089  159f 96            	ldw	x,sp
7090  15a0 1c0016        	addw	x,#OFST-22
7091  15a3 1f01          	ldw	(OFST-43,sp),x
7093  15a5 1e12          	ldw	x,(OFST-26,sp)
7094  15a7 72fb01        	addw	x,(OFST-43,sp)
7095  15aa 7b2c          	ld	a,(OFST+0,sp)
7096  15ac fb            	add	a,(x)
7097  15ad 6b2c          	ld	(OFST+0,sp),a
7101  15af 1e12          	ldw	x,(OFST-26,sp)
7102  15b1 1c0001        	addw	x,#1
7103  15b4 1f12          	ldw	(OFST-26,sp),x
7105  15b6               L7762:
7108  15b6 9c            	rvf
7109  15b7 7b11          	ld	a,(OFST-27,sp)
7110  15b9 5f            	clrw	x
7111  15ba 97            	ld	xl,a
7112  15bb 1d0003        	subw	x,#3
7113  15be 1312          	cpw	x,(OFST-26,sp)
7114  15c0 2cdd          	jrsgt	L3762
7115                     ; 823 		cs1=(Sum>>4)&0x0f;
7117  15c2 7b2c          	ld	a,(OFST+0,sp)
7118  15c4 4e            	swap	a
7119  15c5 a40f          	and	a,#15
7120  15c7 6b2b          	ld	(OFST-1,sp),a
7122                     ; 824 		Tx_DATA[DS-3]=(cs1<10)?(cs1+'0'):((cs1-10)+'a');
7124  15c9 96            	ldw	x,sp
7125  15ca 1c0016        	addw	x,#OFST-22
7126  15cd 1f01          	ldw	(OFST-43,sp),x
7128  15cf 7b11          	ld	a,(OFST-27,sp)
7129  15d1 5f            	clrw	x
7130  15d2 97            	ld	xl,a
7131  15d3 1d0003        	subw	x,#3
7132  15d6 72fb01        	addw	x,(OFST-43,sp)
7133  15d9 89            	pushw	x
7134  15da 7b2d          	ld	a,(OFST+1,sp)
7135  15dc a10a          	cp	a,#10
7136  15de 2406          	jruge	L403
7137  15e0 7b2d          	ld	a,(OFST+1,sp)
7138  15e2 ab30          	add	a,#48
7139  15e4 2004          	jra	L603
7140  15e6               L403:
7141  15e6 7b2d          	ld	a,(OFST+1,sp)
7142  15e8 ab57          	add	a,#87
7143  15ea               L603:
7144  15ea 85            	popw	x
7145  15eb f7            	ld	(x),a
7146                     ; 825 		cs2= Sum & 0x0f;
7148  15ec 7b2c          	ld	a,(OFST+0,sp)
7149  15ee a40f          	and	a,#15
7150  15f0 6b2c          	ld	(OFST+0,sp),a
7152                     ; 826 		Tx_DATA[DS-2]=(cs2<10)?(cs2+'0'):((cs2-10)+'a');
7154  15f2 96            	ldw	x,sp
7155  15f3 1c0016        	addw	x,#OFST-22
7156  15f6 1f01          	ldw	(OFST-43,sp),x
7158  15f8 7b11          	ld	a,(OFST-27,sp)
7159  15fa 5f            	clrw	x
7160  15fb 97            	ld	xl,a
7161  15fc 5a            	decw	x
7162  15fd 5a            	decw	x
7163  15fe 72fb01        	addw	x,(OFST-43,sp)
7164  1601 89            	pushw	x
7165  1602 7b2e          	ld	a,(OFST+2,sp)
7166  1604 a10a          	cp	a,#10
7167  1606 2406          	jruge	L013
7168  1608 7b2e          	ld	a,(OFST+2,sp)
7169  160a ab30          	add	a,#48
7170  160c 2004          	jra	L213
7171  160e               L013:
7172  160e 7b2e          	ld	a,(OFST+2,sp)
7173  1610 ab57          	add	a,#87
7174  1612               L213:
7175  1612 85            	popw	x
7176  1613 f7            	ld	(x),a
7177                     ; 828 		for(z=0;z<DS;z++)
7179  1614 5f            	clrw	x
7180  1615 1f14          	ldw	(OFST-24,sp),x
7183  1617 2016          	jra	L7072
7184  1619               L3072:
7185                     ; 829 		{DATA_Send_TX(Tx_DATA[z]);}//-----------TX_DATA.
7187  1619 96            	ldw	x,sp
7188  161a 1c0016        	addw	x,#OFST-22
7189  161d 1f01          	ldw	(OFST-43,sp),x
7191  161f 1e14          	ldw	x,(OFST-24,sp)
7192  1621 72fb01        	addw	x,(OFST-43,sp)
7193  1624 f6            	ld	a,(x)
7194  1625 cd106c        	call	_DATA_Send_TX
7196                     ; 828 		for(z=0;z<DS;z++)
7198  1628 1e14          	ldw	x,(OFST-24,sp)
7199  162a 1c0001        	addw	x,#1
7200  162d 1f14          	ldw	(OFST-24,sp),x
7202  162f               L7072:
7205  162f 9c            	rvf
7206  1630 7b11          	ld	a,(OFST-27,sp)
7207  1632 5f            	clrw	x
7208  1633 97            	ld	xl,a
7209  1634 bf00          	ldw	c_x,x
7210  1636 1e14          	ldw	x,(OFST-24,sp)
7211  1638 b300          	cpw	x,c_x
7212  163a 2fdd          	jrslt	L3072
7214  163c acfa16fa      	jpf	L1052
7215  1640               L1762:
7216                     ; 831 	else if(number==0)//----------------------------------ERR.
7218  1640 0d2d          	tnz	(OFST+1,sp)
7219  1642 2703          	jreq	L243
7220  1644 cc16fa        	jp	L1052
7221  1647               L243:
7222                     ; 834 		char Tx_DATA[] = "$BAB110,ERR,00\n";
7224  1647 96            	ldw	x,sp
7225  1648 1c001b        	addw	x,#OFST-17
7226  164b 90ae0185      	ldw	y,#L5032_Tx_DATA
7227  164f a610          	ld	a,#16
7228  1651 cd0000        	call	c_xymov
7230                     ; 835 		uint8_t DS = sizeof(Tx_DATA)-1;
7232  1654 a60f          	ld	a,#15
7233  1656 6b16          	ld	(OFST-22,sp),a
7235                     ; 838 		for(i=0;i<(DS-3);i++){Sum += Tx_DATA[i];}
7237  1658 5f            	clrw	x
7238  1659 1f17          	ldw	(OFST-21,sp),x
7241  165b 2017          	jra	L3272
7242  165d               L7172:
7245  165d 96            	ldw	x,sp
7246  165e 1c001b        	addw	x,#OFST-17
7247  1661 1f01          	ldw	(OFST-43,sp),x
7249  1663 1e17          	ldw	x,(OFST-21,sp)
7250  1665 72fb01        	addw	x,(OFST-43,sp)
7251  1668 7b2c          	ld	a,(OFST+0,sp)
7252  166a fb            	add	a,(x)
7253  166b 6b2c          	ld	(OFST+0,sp),a
7257  166d 1e17          	ldw	x,(OFST-21,sp)
7258  166f 1c0001        	addw	x,#1
7259  1672 1f17          	ldw	(OFST-21,sp),x
7261  1674               L3272:
7264  1674 9c            	rvf
7265  1675 7b16          	ld	a,(OFST-22,sp)
7266  1677 5f            	clrw	x
7267  1678 97            	ld	xl,a
7268  1679 1d0003        	subw	x,#3
7269  167c 1317          	cpw	x,(OFST-21,sp)
7270  167e 2cdd          	jrsgt	L7172
7271                     ; 839 		cs1=(Sum>>4)&0x0f;
7273  1680 7b2c          	ld	a,(OFST+0,sp)
7274  1682 4e            	swap	a
7275  1683 a40f          	and	a,#15
7276  1685 6b2b          	ld	(OFST-1,sp),a
7278                     ; 840 		Tx_DATA[DS-3]=(cs1<10)?(cs1+'0'):((cs1-10)+'a');
7280  1687 96            	ldw	x,sp
7281  1688 1c001b        	addw	x,#OFST-17
7282  168b 1f01          	ldw	(OFST-43,sp),x
7284  168d 7b16          	ld	a,(OFST-22,sp)
7285  168f 5f            	clrw	x
7286  1690 97            	ld	xl,a
7287  1691 1d0003        	subw	x,#3
7288  1694 72fb01        	addw	x,(OFST-43,sp)
7289  1697 89            	pushw	x
7290  1698 7b2d          	ld	a,(OFST+1,sp)
7291  169a a10a          	cp	a,#10
7292  169c 2406          	jruge	L413
7293  169e 7b2d          	ld	a,(OFST+1,sp)
7294  16a0 ab30          	add	a,#48
7295  16a2 2004          	jra	L613
7296  16a4               L413:
7297  16a4 7b2d          	ld	a,(OFST+1,sp)
7298  16a6 ab57          	add	a,#87
7299  16a8               L613:
7300  16a8 85            	popw	x
7301  16a9 f7            	ld	(x),a
7302                     ; 841 		cs2= Sum & 0x0f;
7304  16aa 7b2c          	ld	a,(OFST+0,sp)
7305  16ac a40f          	and	a,#15
7306  16ae 6b2c          	ld	(OFST+0,sp),a
7308                     ; 842 		Tx_DATA[DS-2]=(cs2<10)?(cs2+'0'):((cs2-10)+'a');
7310  16b0 96            	ldw	x,sp
7311  16b1 1c001b        	addw	x,#OFST-17
7312  16b4 1f01          	ldw	(OFST-43,sp),x
7314  16b6 7b16          	ld	a,(OFST-22,sp)
7315  16b8 5f            	clrw	x
7316  16b9 97            	ld	xl,a
7317  16ba 5a            	decw	x
7318  16bb 5a            	decw	x
7319  16bc 72fb01        	addw	x,(OFST-43,sp)
7320  16bf 89            	pushw	x
7321  16c0 7b2e          	ld	a,(OFST+2,sp)
7322  16c2 a10a          	cp	a,#10
7323  16c4 2406          	jruge	L023
7324  16c6 7b2e          	ld	a,(OFST+2,sp)
7325  16c8 ab30          	add	a,#48
7326  16ca 2004          	jra	L223
7327  16cc               L023:
7328  16cc 7b2e          	ld	a,(OFST+2,sp)
7329  16ce ab57          	add	a,#87
7330  16d0               L223:
7331  16d0 85            	popw	x
7332  16d1 f7            	ld	(x),a
7333                     ; 844 		for(z=0;z<DS;z++)
7335  16d2 5f            	clrw	x
7336  16d3 1f19          	ldw	(OFST-19,sp),x
7339  16d5 2016          	jra	L3372
7340  16d7               L7272:
7341                     ; 845 		{DATA_Send_TX(Tx_DATA[z]);}//-----------TX_DATA.
7343  16d7 96            	ldw	x,sp
7344  16d8 1c001b        	addw	x,#OFST-17
7345  16db 1f01          	ldw	(OFST-43,sp),x
7347  16dd 1e19          	ldw	x,(OFST-19,sp)
7348  16df 72fb01        	addw	x,(OFST-43,sp)
7349  16e2 f6            	ld	a,(x)
7350  16e3 cd106c        	call	_DATA_Send_TX
7352                     ; 844 		for(z=0;z<DS;z++)
7354  16e6 1e19          	ldw	x,(OFST-19,sp)
7355  16e8 1c0001        	addw	x,#1
7356  16eb 1f19          	ldw	(OFST-19,sp),x
7358  16ed               L3372:
7361  16ed 9c            	rvf
7362  16ee 7b16          	ld	a,(OFST-22,sp)
7363  16f0 5f            	clrw	x
7364  16f1 97            	ld	xl,a
7365  16f2 bf00          	ldw	c_x,x
7366  16f4 1e19          	ldw	x,(OFST-19,sp)
7367  16f6 b300          	cpw	x,c_x
7368  16f8 2fdd          	jrslt	L7272
7369  16fa               L1052:
7370                     ; 847 }
7373  16fa 5b2d          	addw	sp,#45
7374  16fc 81            	ret
7404                     ; 851 void UART_Init(void)
7404                     ; 852 {
7405                     	switch	.text
7406  16fd               _UART_Init:
7410                     ; 853 	USART_DeInit(USART1);
7412  16fd ae5230        	ldw	x,#21040
7413  1700 cd0000        	call	_USART_DeInit
7415                     ; 854 	USART_DeInit(USART2);
7417  1703 ae53e0        	ldw	x,#21472
7418  1706 cd0000        	call	_USART_DeInit
7420                     ; 856 	GPIO_ExternalPullUpConfig(BLE_PORT, BLE_TX_PIN, ENABLE);
7422  1709 4b01          	push	#1
7423  170b 4b08          	push	#8
7424  170d ae500a        	ldw	x,#20490
7425  1710 cd0000        	call	_GPIO_ExternalPullUpConfig
7427  1713 85            	popw	x
7428                     ; 857 	GPIO_ExternalPullUpConfig(BLE_PORT, BLE_RX_PIN, ENABLE);
7430  1714 4b01          	push	#1
7431  1716 4b04          	push	#4
7432  1718 ae500a        	ldw	x,#20490
7433  171b cd0000        	call	_GPIO_ExternalPullUpConfig
7435  171e 85            	popw	x
7436                     ; 859 	GPIO_ExternalPullUpConfig(COM_PORT, COM_TX_PIN, ENABLE);
7438  171f 4b01          	push	#1
7439  1721 4b10          	push	#16
7440  1723 ae5014        	ldw	x,#20500
7441  1726 cd0000        	call	_GPIO_ExternalPullUpConfig
7443  1729 85            	popw	x
7444                     ; 860 	GPIO_ExternalPullUpConfig(COM_PORT, COM_RX_PIN, ENABLE);
7446  172a 4b01          	push	#1
7447  172c 4b08          	push	#8
7448  172e ae5014        	ldw	x,#20500
7449  1731 cd0000        	call	_GPIO_ExternalPullUpConfig
7451  1734 85            	popw	x
7452                     ; 862 	USART_Init(USART1,BA_Bitrate, USART_WordLength_8b, USART_StopBits_1, USART_Parity_No,(USART_Mode_TypeDef)(USART_Mode_Tx | USART_Mode_Rx));
7454  1735 4b0c          	push	#12
7455  1737 4b00          	push	#0
7456  1739 4b00          	push	#0
7457  173b 4b00          	push	#0
7458  173d ce0064        	ldw	x,_BA_Bitrate+2
7459  1740 89            	pushw	x
7460  1741 ce0062        	ldw	x,_BA_Bitrate
7461  1744 89            	pushw	x
7462  1745 ae5230        	ldw	x,#21040
7463  1748 cd0000        	call	_USART_Init
7465  174b 5b08          	addw	sp,#8
7466                     ; 864 	USART_Init(USART2,BB_Bitrate, USART_WordLength_8b, USART_StopBits_1, USART_Parity_No,(USART_Mode_TypeDef)(USART_Mode_Tx | USART_Mode_Rx));
7468  174d 4b0c          	push	#12
7469  174f 4b00          	push	#0
7470  1751 4b00          	push	#0
7471  1753 4b00          	push	#0
7472  1755 ce0068        	ldw	x,_BB_Bitrate+2
7473  1758 89            	pushw	x
7474  1759 ce0066        	ldw	x,_BB_Bitrate
7475  175c 89            	pushw	x
7476  175d ae53e0        	ldw	x,#21472
7477  1760 cd0000        	call	_USART_Init
7479  1763 5b08          	addw	sp,#8
7480                     ; 866 	USART_ITConfig(USART1, USART_IT_RXNE, ENABLE);
7482  1765 4b01          	push	#1
7483  1767 ae0255        	ldw	x,#597
7484  176a 89            	pushw	x
7485  176b ae5230        	ldw	x,#21040
7486  176e cd0000        	call	_USART_ITConfig
7488  1771 5b03          	addw	sp,#3
7489                     ; 867 	USART_ITConfig(USART2, USART_IT_RXNE, ENABLE);
7491  1773 4b01          	push	#1
7492  1775 ae0255        	ldw	x,#597
7493  1778 89            	pushw	x
7494  1779 ae53e0        	ldw	x,#21472
7495  177c cd0000        	call	_USART_ITConfig
7497  177f 5b03          	addw	sp,#3
7498                     ; 869 	USART_Cmd(USART1,ENABLE);
7500  1781 4b01          	push	#1
7501  1783 ae5230        	ldw	x,#21040
7502  1786 cd0000        	call	_USART_Cmd
7504  1789 84            	pop	a
7505                     ; 870 	USART_Cmd(USART2,ENABLE);
7507  178a 4b01          	push	#1
7508  178c ae53e0        	ldw	x,#21472
7509  178f cd0000        	call	_USART_Cmd
7511  1792 84            	pop	a
7512                     ; 871 }
7515  1793 81            	ret
7591                     	switch	.const
7592  0195               L453:
7593  0195 00000003      	dc.l	3
7594                     ; 873 void CELLB_Calculation(void)
7594                     ; 874 {	
7595                     	switch	.text
7596  1794               _CELLB_Calculation:
7598  1794 5206          	subw	sp,#6
7599       00000006      OFST:	set	6
7602                     ; 877 	BAB_DATA[0]='0'+(BAT_Volt/100);
7604  1796 c60075        	ld	a,_BAT_Volt
7605  1799 5f            	clrw	x
7606  179a 97            	ld	xl,a
7607  179b a664          	ld	a,#100
7608  179d 62            	div	x,a
7609  179e 9f            	ld	a,xl
7610  179f ab30          	add	a,#48
7611  17a1 c7000d        	ld	_BAB_DATA,a
7612                     ; 878 	BAB_DATA[1]='0'+((BAT_Volt%100)/10);
7614  17a4 c60075        	ld	a,_BAT_Volt
7615  17a7 5f            	clrw	x
7616  17a8 97            	ld	xl,a
7617  17a9 a664          	ld	a,#100
7618  17ab cd0000        	call	c_smodx
7620  17ae a60a          	ld	a,#10
7621  17b0 cd0000        	call	c_sdivx
7623  17b3 1c0030        	addw	x,#48
7624  17b6 01            	rrwa	x,a
7625  17b7 c7000e        	ld	_BAB_DATA+1,a
7626  17ba 02            	rlwa	x,a
7627                     ; 879 	BAB_DATA[2]='0'+(BAT_Volt%10);
7629  17bb c60075        	ld	a,_BAT_Volt
7630  17be 5f            	clrw	x
7631  17bf 97            	ld	xl,a
7632  17c0 a60a          	ld	a,#10
7633  17c2 62            	div	x,a
7634  17c3 5f            	clrw	x
7635  17c4 97            	ld	xl,a
7636  17c5 9f            	ld	a,xl
7637  17c6 ab30          	add	a,#48
7638  17c8 c7000f        	ld	_BAB_DATA+2,a
7639                     ; 880 	BAB_DAT1[0]='0'+(VIN_Volt/100);
7641  17cb c60074        	ld	a,_VIN_Volt
7642  17ce 5f            	clrw	x
7643  17cf 97            	ld	xl,a
7644  17d0 a664          	ld	a,#100
7645  17d2 62            	div	x,a
7646  17d3 9f            	ld	a,xl
7647  17d4 ab30          	add	a,#48
7648  17d6 c7001d        	ld	_BAB_DAT1,a
7649                     ; 881 	BAB_DAT1[1]='0'+((VIN_Volt%100)/10);
7651  17d9 c60074        	ld	a,_VIN_Volt
7652  17dc 5f            	clrw	x
7653  17dd 97            	ld	xl,a
7654  17de a664          	ld	a,#100
7655  17e0 cd0000        	call	c_smodx
7657  17e3 a60a          	ld	a,#10
7658  17e5 cd0000        	call	c_sdivx
7660  17e8 1c0030        	addw	x,#48
7661  17eb 01            	rrwa	x,a
7662  17ec c7001e        	ld	_BAB_DAT1+1,a
7663  17ef 02            	rlwa	x,a
7664                     ; 882 	BAB_DAT1[2]='0'+(VIN_Volt%10);
7666  17f0 c60074        	ld	a,_VIN_Volt
7667  17f3 5f            	clrw	x
7668  17f4 97            	ld	xl,a
7669  17f5 a60a          	ld	a,#10
7670  17f7 62            	div	x,a
7671  17f8 5f            	clrw	x
7672  17f9 97            	ld	xl,a
7673  17fa 9f            	ld	a,xl
7674  17fb ab30          	add	a,#48
7675  17fd c7001f        	ld	_BAB_DAT1+2,a
7676                     ; 883 	if(DIS_Lock==1)
7678  1800 c600b7        	ld	a,_DIS_Lock
7679  1803 a101          	cp	a,#1
7680  1805 260e          	jrne	L3672
7681                     ; 884 	{	BAB_DAT1[4]='0',BAB_DAT1[5]='0',BAB_DAT1[6]='0';}
7683  1807 35300021      	mov	_BAB_DAT1+4,#48
7684  180b 35300022      	mov	_BAB_DAT1+5,#48
7685  180f 35300023      	mov	_BAB_DAT1+6,#48
7687  1813 203d          	jra	L5672
7688  1815               L3672:
7689                     ; 887 		BAT_Volt1=BAT_Volt-2;
7691  1815 c60075        	ld	a,_BAT_Volt
7692  1818 a002          	sub	a,#2
7693  181a c7007a        	ld	_BAT_Volt1,a
7694                     ; 888 		BAB_DAT1[4]='0'+(BAT_Volt1/100);
7696  181d c6007a        	ld	a,_BAT_Volt1
7697  1820 5f            	clrw	x
7698  1821 97            	ld	xl,a
7699  1822 a664          	ld	a,#100
7700  1824 62            	div	x,a
7701  1825 9f            	ld	a,xl
7702  1826 ab30          	add	a,#48
7703  1828 c70021        	ld	_BAB_DAT1+4,a
7704                     ; 889 		BAB_DAT1[5]='0'+((BAT_Volt1%100)/10);
7706  182b c6007a        	ld	a,_BAT_Volt1
7707  182e 5f            	clrw	x
7708  182f 97            	ld	xl,a
7709  1830 a664          	ld	a,#100
7710  1832 cd0000        	call	c_smodx
7712  1835 a60a          	ld	a,#10
7713  1837 cd0000        	call	c_sdivx
7715  183a 1c0030        	addw	x,#48
7716  183d 01            	rrwa	x,a
7717  183e c70022        	ld	_BAB_DAT1+5,a
7718  1841 02            	rlwa	x,a
7719                     ; 890 		BAB_DAT1[6]='0'+(BAT_Volt1%10);
7721  1842 c6007a        	ld	a,_BAT_Volt1
7722  1845 5f            	clrw	x
7723  1846 97            	ld	xl,a
7724  1847 a60a          	ld	a,#10
7725  1849 62            	div	x,a
7726  184a 5f            	clrw	x
7727  184b 97            	ld	xl,a
7728  184c 9f            	ld	a,xl
7729  184d ab30          	add	a,#48
7730  184f c70023        	ld	_BAB_DAT1+6,a
7731  1852               L5672:
7732                     ; 893 	if(STATE_CHG !=0 && CHG_State == 1) {	// 완충상태
7734  1852 725d00b6      	tnz	_STATE_CHG
7735  1856 2735          	jreq	L7672
7737  1858 c600b2        	ld	a,_CHG_State
7738  185b a101          	cp	a,#1
7739  185d 262e          	jrne	L7672
7740                     ; 894 		Percent_P=1;
7742  185f 350100ae      	mov	_Percent_P,#1
7743                     ; 895 		Percent_N=0; 
7745  1863 725f00af      	clr	_Percent_N
7746                     ; 896 		RepCap=Percentgauge*cap_percent;
7748  1867 c600c0        	ld	a,_Percentgauge
7749  186a 5f            	clrw	x
7750  186b 97            	ld	xl,a
7751  186c cd0000        	call	c_itof
7753  186f 96            	ldw	x,sp
7754  1870 1c0001        	addw	x,#OFST-5
7755  1873 cd0000        	call	c_rtol
7758  1876 ae0007        	ldw	x,#_cap_percent
7759  1879 cd0000        	call	c_ltor
7761  187c 96            	ldw	x,sp
7762  187d 1c0001        	addw	x,#OFST-5
7763  1880 cd0000        	call	c_fmul
7765  1883 ae008c        	ldw	x,#_RepCap
7766  1886 cd0000        	call	c_rtol
7769  1889 ac701970      	jpf	L1772
7770  188d               L7672:
7771                     ; 897 	} else if(BAT_Volt <= 115) {	// 출력중단
7773  188d c60075        	ld	a,_BAT_Volt
7774  1890 a174          	cp	a,#116
7775  1892 242e          	jruge	L3772
7776                     ; 898 		Percent_N=1;
7778  1894 350100af      	mov	_Percent_N,#1
7779                     ; 899 		Percent_P=0; 
7781  1898 725f00ae      	clr	_Percent_P
7782                     ; 900 		RepCap=Percentgauge*cap_percent;
7784  189c c600c0        	ld	a,_Percentgauge
7785  189f 5f            	clrw	x
7786  18a0 97            	ld	xl,a
7787  18a1 cd0000        	call	c_itof
7789  18a4 96            	ldw	x,sp
7790  18a5 1c0001        	addw	x,#OFST-5
7791  18a8 cd0000        	call	c_rtol
7794  18ab ae0007        	ldw	x,#_cap_percent
7795  18ae cd0000        	call	c_ltor
7797  18b1 96            	ldw	x,sp
7798  18b2 1c0001        	addw	x,#OFST-5
7799  18b5 cd0000        	call	c_fmul
7801  18b8 ae008c        	ldw	x,#_RepCap
7802  18bb cd0000        	call	c_rtol
7805  18be ac701970      	jpf	L1772
7806  18c2               L3772:
7807                     ; 901 	} else if(CHG_ST == '1') {	//충전중
7809  18c2 c600c7        	ld	a,_CHG_ST
7810  18c5 a131          	cp	a,#49
7811  18c7 2647          	jrne	L7772
7812                     ; 902 		Percent_P=0;
7814  18c9 725f00ae      	clr	_Percent_P
7815                     ; 903 		Percent_N=0;
7817  18cd 725f00af      	clr	_Percent_N
7818                     ; 904 		if (BAT_Volt >= 114) {
7820  18d1 c60075        	ld	a,_BAT_Volt
7821  18d4 a172          	cp	a,#114
7822  18d6 2517          	jrult	L1003
7823                     ; 905 			if (Percent_1s == 1) {
7825  18d8 c600ad        	ld	a,_Percent_1s
7826  18db a101          	cp	a,#1
7827  18dd 2610          	jrne	L1003
7828                     ; 906 				RepCap = (RepCap + 2.611);
7830  18df ae022a        	ldw	x,#L1103
7831  18e2 cd0000        	call	c_ltor
7833  18e5 ae008c        	ldw	x,#_RepCap
7834  18e8 cd0000        	call	c_fgadd
7836                     ; 907 				Percent_1s = 0;
7838  18eb 725f00ad      	clr	_Percent_1s
7839  18ef               L1003:
7840                     ; 910 		Percentgauge = RepCap/cap_percent;
7842  18ef ae008c        	ldw	x,#_RepCap
7843  18f2 cd0000        	call	c_ltor
7845  18f5 ae0007        	ldw	x,#_cap_percent
7846  18f8 cd0000        	call	c_fdiv
7848  18fb cd0000        	call	c_ftol
7850  18fe b603          	ld	a,c_lreg+3
7851  1900 c700c0        	ld	_Percentgauge,a
7852                     ; 911 		if (Percentgauge > 100) Percentgauge = 100;
7854  1903 c600c0        	ld	a,_Percentgauge
7855  1906 a165          	cp	a,#101
7856  1908 2566          	jrult	L1772
7859  190a 356400c0      	mov	_Percentgauge,#100
7860  190e 2060          	jra	L1772
7861  1910               L7772:
7862                     ; 912 	} else if (CHG_ST == '3') {	// 방전중
7864  1910 c600c7        	ld	a,_CHG_ST
7865  1913 a133          	cp	a,#51
7866  1915 2659          	jrne	L1772
7867                     ; 913 		Percent_P=0;
7869  1917 725f00ae      	clr	_Percent_P
7870                     ; 914 		Percent_N=0;
7872  191b 725f00af      	clr	_Percent_N
7873                     ; 915 		if(Percent_1s==1)
7875  191f c600ad        	ld	a,_Percent_1s
7876  1922 a101          	cp	a,#1
7877  1924 261f          	jrne	L3203
7878                     ; 917 			if(RepCap>=DIS_CURR) {
7880  1926 9c            	rvf
7881  1927 ae008c        	ldw	x,#_RepCap
7882  192a cd0000        	call	c_ltor
7884  192d ae00d2        	ldw	x,#_DIS_CURR
7885  1930 cd0000        	call	c_fcmp
7887  1933 2f0c          	jrslt	L5203
7888                     ; 918 				RepCap = (RepCap-DIS_CURR);
7890  1935 ae00d2        	ldw	x,#_DIS_CURR
7891  1938 cd0000        	call	c_ltor
7893  193b ae008c        	ldw	x,#_RepCap
7894  193e cd0000        	call	c_fgsub
7896  1941               L5203:
7897                     ; 920 			Percent_1s = 0;
7899  1941 725f00ad      	clr	_Percent_1s
7900  1945               L3203:
7901                     ; 922 		Percentgauge = RepCap/cap_percent;
7903  1945 ae008c        	ldw	x,#_RepCap
7904  1948 cd0000        	call	c_ltor
7906  194b ae0007        	ldw	x,#_cap_percent
7907  194e cd0000        	call	c_fdiv
7909  1951 cd0000        	call	c_ftol
7911  1954 b603          	ld	a,c_lreg+3
7912  1956 c700c0        	ld	_Percentgauge,a
7913                     ; 923 		if (Percentgauge < 1) {
7915  1959 725d00c0      	tnz	_Percentgauge
7916  195d 2606          	jrne	L7203
7917                     ; 924 			Percentgauge = 1;
7919  195f 350100c0      	mov	_Percentgauge,#1
7921  1963 200b          	jra	L1772
7922  1965               L7203:
7923                     ; 925 		} else if (Percentgauge >= 100) {
7925  1965 c600c0        	ld	a,_Percentgauge
7926  1968 a164          	cp	a,#100
7927  196a 2504          	jrult	L1772
7928                     ; 926 			Percentgauge = 100;
7930  196c 356400c0      	mov	_Percentgauge,#100
7931  1970               L1772:
7932                     ; 930 	BAB_DATA[4]='0'+(Percentgauge/100);
7934  1970 c600c0        	ld	a,_Percentgauge
7935  1973 5f            	clrw	x
7936  1974 97            	ld	xl,a
7937  1975 a664          	ld	a,#100
7938  1977 62            	div	x,a
7939  1978 9f            	ld	a,xl
7940  1979 ab30          	add	a,#48
7941  197b c70011        	ld	_BAB_DATA+4,a
7942                     ; 931 	BAB_DATA[5]='0'+((Percentgauge%100)/10);
7944  197e c600c0        	ld	a,_Percentgauge
7945  1981 5f            	clrw	x
7946  1982 97            	ld	xl,a
7947  1983 a664          	ld	a,#100
7948  1985 cd0000        	call	c_smodx
7950  1988 a60a          	ld	a,#10
7951  198a cd0000        	call	c_sdivx
7953  198d 1c0030        	addw	x,#48
7954  1990 01            	rrwa	x,a
7955  1991 c70012        	ld	_BAB_DATA+5,a
7956  1994 02            	rlwa	x,a
7957                     ; 932 	BAB_DATA[6]='0'+((Percentgauge%10)/1);
7959  1995 c600c0        	ld	a,_Percentgauge
7960  1998 5f            	clrw	x
7961  1999 97            	ld	xl,a
7962  199a a60a          	ld	a,#10
7963  199c 62            	div	x,a
7964  199d 5f            	clrw	x
7965  199e 97            	ld	xl,a
7966  199f 9f            	ld	a,xl
7967  19a0 ab30          	add	a,#48
7968  19a2 c70013        	ld	_BAB_DATA+6,a
7969                     ; 933 	BAB_DAT1[8]='0'+(Percentgauge/100);
7971  19a5 c600c0        	ld	a,_Percentgauge
7972  19a8 5f            	clrw	x
7973  19a9 97            	ld	xl,a
7974  19aa a664          	ld	a,#100
7975  19ac 62            	div	x,a
7976  19ad 9f            	ld	a,xl
7977  19ae ab30          	add	a,#48
7978  19b0 c70025        	ld	_BAB_DAT1+8,a
7979                     ; 934 	BAB_DAT1[9]='0'+((Percentgauge%100)/10);
7981  19b3 c600c0        	ld	a,_Percentgauge
7982  19b6 5f            	clrw	x
7983  19b7 97            	ld	xl,a
7984  19b8 a664          	ld	a,#100
7985  19ba cd0000        	call	c_smodx
7987  19bd a60a          	ld	a,#10
7988  19bf cd0000        	call	c_sdivx
7990  19c2 1c0030        	addw	x,#48
7991  19c5 01            	rrwa	x,a
7992  19c6 c70026        	ld	_BAB_DAT1+9,a
7993  19c9 02            	rlwa	x,a
7994                     ; 935 	BAB_DAT1[10]='0'+((Percentgauge%10)/1);
7996  19ca c600c0        	ld	a,_Percentgauge
7997  19cd 5f            	clrw	x
7998  19ce 97            	ld	xl,a
7999  19cf a60a          	ld	a,#10
8000  19d1 62            	div	x,a
8001  19d2 5f            	clrw	x
8002  19d3 97            	ld	xl,a
8003  19d4 9f            	ld	a,xl
8004  19d5 ab30          	add	a,#48
8005  19d7 c70027        	ld	_BAB_DAT1+10,a
8006                     ; 937 	ACC_ST='0'+((ACC_Volt>=ACC_LOW)?(1):(0));
8008  19da c6007b        	ld	a,_ACC_Volt
8009  19dd c10096        	cp	a,_ACC_LOW
8010  19e0 2504          	jrult	L053
8011  19e2 a631          	ld	a,#49
8012  19e4 2002          	jra	L253
8013  19e6               L053:
8014  19e6 a630          	ld	a,#48
8015  19e8               L253:
8016  19e8 c700c6        	ld	_ACC_ST,a
8017                     ; 938 	if(BAB_DAT2[6]!=ACC_ST)
8019  19eb c6002f        	ld	a,_BAB_DAT2+6
8020  19ee c100c6        	cp	a,_ACC_ST
8021  19f1 270e          	jreq	L5303
8022                     ; 940 		BAB_DATA[10]=ACC_ST;
8024  19f3 5500c60017    	mov	_BAB_DATA+10,_ACC_ST
8025                     ; 941 		BAB_DAT2[6]=ACC_ST;
8027  19f8 5500c6002f    	mov	_BAB_DAT2+6,_ACC_ST
8028                     ; 942 		TIM_1S3=5;
8030  19fd 3505009d      	mov	_TIM_1S3,#5
8031  1a01               L5303:
8032                     ; 945 	if(NTC_ON==1) {
8034  1a01 c600b5        	ld	a,_NTC_ON
8035  1a04 a101          	cp	a,#1
8036  1a06 260a          	jrne	L7303
8037                     ; 946 		BAB_DATA[8]='4';
8039  1a08 35340015      	mov	_BAB_DATA+8,#52
8040                     ; 947 		CHG_ST='5';			// 고온 경고
8042  1a0c 353500c7      	mov	_CHG_ST,#53
8044  1a10 204f          	jra	L1403
8045  1a12               L7303:
8046                     ; 948 	} else if (LCHG_State == 1) {
8048  1a12 c600b3        	ld	a,_LCHG_State
8049  1a15 a101          	cp	a,#1
8050  1a17 260a          	jrne	L3403
8051                     ; 949 		BAB_DATA[8]='3';
8053  1a19 35330015      	mov	_BAB_DATA+8,#51
8054                     ; 950 		CHG_ST='4';			// 출력 중단
8056  1a1d 353400c7      	mov	_CHG_ST,#52
8058  1a21 203e          	jra	L1403
8059  1a23               L3403:
8060                     ; 952 		BAB_DATA[8]='0'+ (CHG_State+FULL_STATE);
8062  1a23 c600b2        	ld	a,_CHG_State
8063  1a26 cb00b1        	add	a,_FULL_STATE
8064  1a29 ab30          	add	a,#48
8065  1a2b c70015        	ld	_BAB_DATA+8,a
8066                     ; 954 		if ((VIN_Volt<=50)&&(D_Current<=50)) {	
8068  1a2e c60074        	ld	a,_VIN_Volt
8069  1a31 a133          	cp	a,#51
8070  1a33 240e          	jruge	L7403
8072  1a35 ce0082        	ldw	x,_D_Current
8073  1a38 a30033        	cpw	x,#51
8074  1a3b 2406          	jruge	L7403
8075                     ; 955 			CHG_ST='0';		// 입력전원 없음, 출력전류 없음 = Idle
8077  1a3d 353000c7      	mov	_CHG_ST,#48
8079  1a41 201e          	jra	L1403
8080  1a43               L7403:
8081                     ; 956 		} else if(BAB_DATA[8]=='1') {	
8083  1a43 c60015        	ld	a,_BAB_DATA+8
8084  1a46 a131          	cp	a,#49
8085  1a48 2606          	jrne	L3503
8086                     ; 957 			CHG_ST='1';		// 충전 중
8088  1a4a 353100c7      	mov	_CHG_ST,#49
8090  1a4e 2011          	jra	L1403
8091  1a50               L3503:
8092                     ; 958 		} else if(BAB_DATA[8]=='2') {	
8094  1a50 c60015        	ld	a,_BAB_DATA+8
8095  1a53 a132          	cp	a,#50
8096  1a55 2606          	jrne	L7503
8097                     ; 959 			CHG_ST='2';		// 완충 상태
8099  1a57 353200c7      	mov	_CHG_ST,#50
8101  1a5b 2004          	jra	L1403
8102  1a5d               L7503:
8103                     ; 961 			CHG_ST='3';		// 있을 수 없음 = 에러
8105  1a5d 353300c7      	mov	_CHG_ST,#51
8106  1a61               L1403:
8107                     ; 965 	if(BAB_DAT2[4]!=CHG_ST)
8109  1a61 c6002d        	ld	a,_BAB_DAT2+4
8110  1a64 c100c7        	cp	a,_CHG_ST
8111  1a67 2709          	jreq	L3603
8112                     ; 967 		BAB_DAT2[4]=CHG_ST;
8114  1a69 5500c7002d    	mov	_BAB_DAT2+4,_CHG_ST
8115                     ; 968 		TIM_1S3=5;
8117  1a6e 3505009d      	mov	_TIM_1S3,#5
8118  1a72               L3603:
8119                     ; 971 	NTC_Temp=I2C_Data[9];
8121  1a72 55013e007c    	mov	_NTC_Temp,_I2C_Data+9
8122                     ; 972 	if(NTC_Temp>=0xDD){NTC_Temp1=((0x100-NTC_Temp)-1);}
8124  1a77 c6007c        	ld	a,_NTC_Temp
8125  1a7a a1dd          	cp	a,#221
8126  1a7c 250a          	jrult	L5603
8129  1a7e a6ff          	ld	a,#255
8130  1a80 c0007c        	sub	a,_NTC_Temp
8131  1a83 c7007d        	ld	_NTC_Temp1,a
8133  1a86 2008          	jra	L7603
8134  1a88               L5603:
8135                     ; 973 	else{NTC_Temp1=NTC_Temp+100;}
8137  1a88 c6007c        	ld	a,_NTC_Temp
8138  1a8b ab64          	add	a,#100
8139  1a8d c7007d        	ld	_NTC_Temp1,a
8140  1a90               L7603:
8141                     ; 975 	BAB_DATA[12]='0'+((NTC_Temp1%1000)/100);
8143  1a90 c6007d        	ld	a,_NTC_Temp1
8144  1a93 5f            	clrw	x
8145  1a94 97            	ld	xl,a
8146  1a95 90ae03e8      	ldw	y,#1000
8147  1a99 cd0000        	call	c_idiv
8149  1a9c 51            	exgw	x,y
8150  1a9d a664          	ld	a,#100
8151  1a9f cd0000        	call	c_sdivx
8153  1aa2 1c0030        	addw	x,#48
8154  1aa5 01            	rrwa	x,a
8155  1aa6 c70019        	ld	_BAB_DATA+12,a
8156  1aa9 02            	rlwa	x,a
8157                     ; 976 	BAB_DATA[13]='0'+((NTC_Temp1%100)/10);
8159  1aaa c6007d        	ld	a,_NTC_Temp1
8160  1aad 5f            	clrw	x
8161  1aae 97            	ld	xl,a
8162  1aaf a664          	ld	a,#100
8163  1ab1 cd0000        	call	c_smodx
8165  1ab4 a60a          	ld	a,#10
8166  1ab6 cd0000        	call	c_sdivx
8168  1ab9 1c0030        	addw	x,#48
8169  1abc 01            	rrwa	x,a
8170  1abd c7001a        	ld	_BAB_DATA+13,a
8171  1ac0 02            	rlwa	x,a
8172                     ; 977 	BAB_DATA[14]='0'+(NTC_Temp1%10);
8174  1ac1 c6007d        	ld	a,_NTC_Temp1
8175  1ac4 5f            	clrw	x
8176  1ac5 97            	ld	xl,a
8177  1ac6 a60a          	ld	a,#10
8178  1ac8 62            	div	x,a
8179  1ac9 5f            	clrw	x
8180  1aca 97            	ld	xl,a
8181  1acb 9f            	ld	a,xl
8182  1acc ab30          	add	a,#48
8183  1ace c7001b        	ld	_BAB_DATA+14,a
8184                     ; 979 	BAB_DAT2[0]='0'+((NTC_Temp1%1000)/100);
8186  1ad1 c6007d        	ld	a,_NTC_Temp1
8187  1ad4 5f            	clrw	x
8188  1ad5 97            	ld	xl,a
8189  1ad6 90ae03e8      	ldw	y,#1000
8190  1ada cd0000        	call	c_idiv
8192  1add 51            	exgw	x,y
8193  1ade a664          	ld	a,#100
8194  1ae0 cd0000        	call	c_sdivx
8196  1ae3 1c0030        	addw	x,#48
8197  1ae6 01            	rrwa	x,a
8198  1ae7 c70029        	ld	_BAB_DAT2,a
8199  1aea 02            	rlwa	x,a
8200                     ; 980 	BAB_DAT2[1]='0'+((NTC_Temp1%100)/10);
8202  1aeb c6007d        	ld	a,_NTC_Temp1
8203  1aee 5f            	clrw	x
8204  1aef 97            	ld	xl,a
8205  1af0 a664          	ld	a,#100
8206  1af2 cd0000        	call	c_smodx
8208  1af5 a60a          	ld	a,#10
8209  1af7 cd0000        	call	c_sdivx
8211  1afa 1c0030        	addw	x,#48
8212  1afd 01            	rrwa	x,a
8213  1afe c7002a        	ld	_BAB_DAT2+1,a
8214  1b01 02            	rlwa	x,a
8215                     ; 981 	BAB_DAT2[2]='0'+(NTC_Temp1%10);
8217  1b02 c6007d        	ld	a,_NTC_Temp1
8218  1b05 5f            	clrw	x
8219  1b06 97            	ld	xl,a
8220  1b07 a60a          	ld	a,#10
8221  1b09 62            	div	x,a
8222  1b0a 5f            	clrw	x
8223  1b0b 97            	ld	xl,a
8224  1b0c 9f            	ld	a,xl
8225  1b0d ab30          	add	a,#48
8226  1b0f c7002b        	ld	_BAB_DAT2+2,a
8227                     ; 983 	if(BAB_DAT2[4]=='1'||BAB_DAT2[4]=='2')
8229  1b12 c6002d        	ld	a,_BAB_DAT2+4
8230  1b15 a131          	cp	a,#49
8231  1b17 2707          	jreq	L3703
8233  1b19 c6002d        	ld	a,_BAB_DAT2+4
8234  1b1c a132          	cp	a,#50
8235  1b1e 2657          	jrne	L1703
8236  1b20               L3703:
8237                     ; 987 		D_Current=0,DIS_AVG=0,DISCHG_AVG=0;
8239  1b20 5f            	clrw	x
8240  1b21 cf0082        	ldw	_D_Current,x
8241  1b24 ae0000        	ldw	x,#0
8242  1b27 cf00cc        	ldw	_DIS_AVG+2,x
8243  1b2a ae0000        	ldw	x,#0
8244  1b2d cf00ca        	ldw	_DIS_AVG,x
8245  1b30 5f            	clrw	x
8246  1b31 cf00ce        	ldw	_DISCHG_AVG,x
8247                     ; 989 		if(PRC_COM==1)
8249  1b34 c600c3        	ld	a,_PRC_COM
8250  1b37 a101          	cp	a,#1
8251  1b39 2612          	jrne	L5703
8252                     ; 991 			BAB_DAT3[0]='0';
8254  1b3b 35300036      	mov	_BAB_DAT3,#48
8255                     ; 992 			BAB_DAT3[1]='3';
8257  1b3f 35330037      	mov	_BAB_DAT3+1,#51
8258                     ; 993 			BAB_DAT3[2]='0';
8260  1b43 35300038      	mov	_BAB_DAT3+2,#48
8261                     ; 994 			BAB_DAT3[3]='0';
8263  1b47 35300039      	mov	_BAB_DAT3+3,#48
8265  1b4b 2010          	jra	L1013
8266  1b4d               L5703:
8267                     ; 998 			BAB_DAT3[0]='F';
8269  1b4d 35460036      	mov	_BAB_DAT3,#70
8270                     ; 999 			BAB_DAT3[1]='F';
8272  1b51 35460037      	mov	_BAB_DAT3+1,#70
8273                     ; 1000 			BAB_DAT3[2]='F';
8275  1b55 35460038      	mov	_BAB_DAT3+2,#70
8276                     ; 1001 			BAB_DAT3[3]='F';
8278  1b59 35460039      	mov	_BAB_DAT3+3,#70
8279  1b5d               L1013:
8280                     ; 1100 	if(BAB_DAT2[4]=='1')
8282  1b5d c6002d        	ld	a,_BAB_DAT2+4
8283  1b60 a131          	cp	a,#49
8284  1b62 2703          	jreq	L653
8285  1b64 cc1d0b        	jp	L3413
8286  1b67               L653:
8287                     ; 1102 		CalcCurrent = C_Current=MAX_CHG_CURRENT;		//2019.11.06
8289  1b67 ae2134        	ldw	x,#8500
8290  1b6a cf0084        	ldw	_C_Current,x
8291  1b6d ce0084        	ldw	x,_C_Current
8292  1b70 cf0086        	ldw	_CalcCurrent,x
8294  1b73 ac1e1d1e      	jpf	L5413
8295  1b77               L1703:
8296                     ; 1004 	else if(DIS_Lock==1)
8298  1b77 c600b7        	ld	a,_DIS_Lock
8299  1b7a a101          	cp	a,#1
8300  1b7c 2657          	jrne	L3013
8301                     ; 1006 		D_Current=0,DIS_AVG=0,DISCHG_AVG=0;	
8303  1b7e 5f            	clrw	x
8304  1b7f cf0082        	ldw	_D_Current,x
8305  1b82 ae0000        	ldw	x,#0
8306  1b85 cf00cc        	ldw	_DIS_AVG+2,x
8307  1b88 ae0000        	ldw	x,#0
8308  1b8b cf00ca        	ldw	_DIS_AVG,x
8309  1b8e 5f            	clrw	x
8310  1b8f cf00ce        	ldw	_DISCHG_AVG,x
8311                     ; 1008 		BAB_DAT3[0]='0'+(D_Current%10000)/1000;
8313  1b92 ce0082        	ldw	x,_D_Current
8314  1b95 90ae2710      	ldw	y,#10000
8315  1b99 65            	divw	x,y
8316  1b9a 51            	exgw	x,y
8317  1b9b 90ae03e8      	ldw	y,#1000
8318  1b9f 65            	divw	x,y
8319  1ba0 1c0030        	addw	x,#48
8320  1ba3 01            	rrwa	x,a
8321  1ba4 c70036        	ld	_BAB_DAT3,a
8322  1ba7 02            	rlwa	x,a
8323                     ; 1009 		BAB_DAT3[1]='0'+(D_Current%1000)/100;
8325  1ba8 ce0082        	ldw	x,_D_Current
8326  1bab 90ae03e8      	ldw	y,#1000
8327  1baf 65            	divw	x,y
8328  1bb0 51            	exgw	x,y
8329  1bb1 a664          	ld	a,#100
8330  1bb3 62            	div	x,a
8331  1bb4 1c0030        	addw	x,#48
8332  1bb7 01            	rrwa	x,a
8333  1bb8 c70037        	ld	_BAB_DAT3+1,a
8334  1bbb 02            	rlwa	x,a
8335                     ; 1010 		BAB_DAT3[2]='0'+(D_Current%100)/10;
8337  1bbc ce0082        	ldw	x,_D_Current
8338  1bbf a664          	ld	a,#100
8339  1bc1 62            	div	x,a
8340  1bc2 5f            	clrw	x
8341  1bc3 97            	ld	xl,a
8342  1bc4 a60a          	ld	a,#10
8343  1bc6 62            	div	x,a
8344  1bc7 1c0030        	addw	x,#48
8345  1bca 01            	rrwa	x,a
8346  1bcb c70038        	ld	_BAB_DAT3+2,a
8347  1bce 02            	rlwa	x,a
8348                     ; 1011 		BAB_DAT3[3]='0';
8350  1bcf 35300039      	mov	_BAB_DAT3+3,#48
8352  1bd3 2088          	jra	L1013
8353  1bd5               L3013:
8354                     ; 1016 			Curr1=I2C_Data[13];
8356  1bd5 c60142        	ld	a,_I2C_Data+13
8357  1bd8 5f            	clrw	x
8358  1bd9 97            	ld	xl,a
8359  1bda cf007e        	ldw	_Curr1,x
8360                     ; 1017 			Curr2=I2C_Data[12];
8362  1bdd c60141        	ld	a,_I2C_Data+12
8363  1be0 5f            	clrw	x
8364  1be1 97            	ld	xl,a
8365  1be2 cf0080        	ldw	_Curr2,x
8366                     ; 1018 			D_Current=((0x10000-((Curr1<<8)+Curr2))/3.65);	// <-- 4.06 --> 3.49 --> 3.78 --> 3.65
8368  1be5 ce007e        	ldw	x,_Curr1
8369  1be8 4f            	clr	a
8370  1be9 02            	rlwa	x,a
8371  1bea 72bb0080      	addw	x,_Curr2
8372  1bee cd0000        	call	c_uitolx
8374  1bf1 96            	ldw	x,sp
8375  1bf2 1c0001        	addw	x,#OFST-5
8376  1bf5 cd0000        	call	c_rtol
8379  1bf8 ae0000        	ldw	x,#0
8380  1bfb bf02          	ldw	c_lreg+2,x
8381  1bfd ae0001        	ldw	x,#1
8382  1c00 bf00          	ldw	c_lreg,x
8383  1c02 96            	ldw	x,sp
8384  1c03 1c0001        	addw	x,#OFST-5
8385  1c06 cd0000        	call	c_lsub
8387  1c09 cd0000        	call	c_ltof
8389  1c0c ae0226        	ldw	x,#L3113
8390  1c0f cd0000        	call	c_fdiv
8392  1c12 cd0000        	call	c_ftoi
8394  1c15 cf0082        	ldw	_D_Current,x
8395                     ; 1025 				if(D_Current>=5000
8395                     ; 1026 				#ifndef SJB_DCHG_TEST
8395                     ; 1027 					|| D_Current < 20
8395                     ; 1028 				#endif
8395                     ; 1029 					) 
8397  1c18 ce0082        	ldw	x,_D_Current
8398  1c1b a31388        	cpw	x,#5000
8399  1c1e 2514          	jrult	L7113
8400                     ; 1031 					D_Current=0,DIS_AVG=0,DISCHG_AVG=0;
8402  1c20 5f            	clrw	x
8403  1c21 cf0082        	ldw	_D_Current,x
8404  1c24 ae0000        	ldw	x,#0
8405  1c27 cf00cc        	ldw	_DIS_AVG+2,x
8406  1c2a ae0000        	ldw	x,#0
8407  1c2d cf00ca        	ldw	_DIS_AVG,x
8408  1c30 5f            	clrw	x
8409  1c31 cf00ce        	ldw	_DISCHG_AVG,x
8410  1c34               L7113:
8411                     ; 1066 				DIS_AVG += D_Current;
8413  1c34 ce0082        	ldw	x,_D_Current
8414  1c37 cd0000        	call	c_uitolx
8416  1c3a ae00ca        	ldw	x,#_DIS_AVG
8417  1c3d cd0000        	call	c_lgadd
8419                     ; 1068 				if (Dis_j < 3)
8421  1c40 ce00c8        	ldw	x,_Dis_j
8422  1c43 a30003        	cpw	x,#3
8423  1c46 2421          	jruge	L1213
8424                     ; 1071 					DISCHG_AVG = (uint16_t)(DIS_AVG / Dis_j);
8426  1c48 ce00c8        	ldw	x,_Dis_j
8427  1c4b cd0000        	call	c_uitolx
8429  1c4e 96            	ldw	x,sp
8430  1c4f 1c0001        	addw	x,#OFST-5
8431  1c52 cd0000        	call	c_rtol
8434  1c55 ae00ca        	ldw	x,#_DIS_AVG
8435  1c58 cd0000        	call	c_ltor
8437  1c5b 96            	ldw	x,sp
8438  1c5c 1c0001        	addw	x,#OFST-5
8439  1c5f cd0000        	call	c_ludv
8441  1c62 be02          	ldw	x,c_lreg+2
8442  1c64 cf00ce        	ldw	_DISCHG_AVG,x
8444  1c67 201d          	jra	L3213
8445  1c69               L1213:
8446                     ; 1076 					DISCHG_AVG = (uint16_t)(DIS_AVG / 3);
8448  1c69 ae00ca        	ldw	x,#_DIS_AVG
8449  1c6c cd0000        	call	c_ltor
8451  1c6f ae0195        	ldw	x,#L453
8452  1c72 cd0000        	call	c_ludv
8454  1c75 be02          	ldw	x,c_lreg+2
8455  1c77 cf00ce        	ldw	_DISCHG_AVG,x
8456                     ; 1077 					DIS_AVG -= DISCHG_AVG;
8458  1c7a ce00ce        	ldw	x,_DISCHG_AVG
8459  1c7d cd0000        	call	c_uitolx
8461  1c80 ae00ca        	ldw	x,#_DIS_AVG
8462  1c83 cd0000        	call	c_lgsub
8464  1c86               L3213:
8465                     ; 1080 				DISCHG_Current=DISCHG_AVG;
8467  1c86 ce00ce        	ldw	x,_DISCHG_AVG
8468  1c89 cf00d0        	ldw	_DISCHG_Current,x
8469                     ; 1084 				if(Dis_j>8)
8471  1c8c ce00c8        	ldw	x,_Dis_j
8472  1c8f a30009        	cpw	x,#9
8473  1c92 2518          	jrult	L5213
8474                     ; 1086 					DIS_CURR=(float)DISCHG_Current/3600;
8476  1c94 ce00d0        	ldw	x,_DISCHG_Current
8477  1c97 cd0000        	call	c_uitof
8479  1c9a ae0222        	ldw	x,#L3313
8480  1c9d cd0000        	call	c_fdiv
8482  1ca0 ae00d2        	ldw	x,#_DIS_CURR
8483  1ca3 cd0000        	call	c_rtol
8485                     ; 1087 					Dis_j=4;
8487  1ca6 ae0004        	ldw	x,#4
8488  1ca9 cf00c8        	ldw	_Dis_j,x
8489  1cac               L5213:
8490                     ; 1093 			BAB_DAT3[0]='0'+(D_Current%10000)/1000;
8492  1cac ce0082        	ldw	x,_D_Current
8493  1caf 90ae2710      	ldw	y,#10000
8494  1cb3 65            	divw	x,y
8495  1cb4 51            	exgw	x,y
8496  1cb5 90ae03e8      	ldw	y,#1000
8497  1cb9 65            	divw	x,y
8498  1cba 1c0030        	addw	x,#48
8499  1cbd 01            	rrwa	x,a
8500  1cbe c70036        	ld	_BAB_DAT3,a
8501  1cc1 02            	rlwa	x,a
8502                     ; 1094 			BAB_DAT3[1]='0'+(D_Current%1000)/100;
8504  1cc2 ce0082        	ldw	x,_D_Current
8505  1cc5 90ae03e8      	ldw	y,#1000
8506  1cc9 65            	divw	x,y
8507  1cca 51            	exgw	x,y
8508  1ccb a664          	ld	a,#100
8509  1ccd 62            	div	x,a
8510  1cce 1c0030        	addw	x,#48
8511  1cd1 01            	rrwa	x,a
8512  1cd2 c70037        	ld	_BAB_DAT3+1,a
8513  1cd5 02            	rlwa	x,a
8514                     ; 1095 			BAB_DAT3[2]='0'+(D_Current%100)/10;
8516  1cd6 ce0082        	ldw	x,_D_Current
8517  1cd9 a664          	ld	a,#100
8518  1cdb 62            	div	x,a
8519  1cdc 5f            	clrw	x
8520  1cdd 97            	ld	xl,a
8521  1cde a60a          	ld	a,#10
8522  1ce0 62            	div	x,a
8523  1ce1 1c0030        	addw	x,#48
8524  1ce4 01            	rrwa	x,a
8525  1ce5 c70038        	ld	_BAB_DAT3+2,a
8526  1ce8 02            	rlwa	x,a
8527                     ; 1096 			if (D_Current >= 30) BAB_DAT3[3]='0';	// 30 mA보다 큰경우 끝자리는 0으로 표시
8529  1ce9 ce0082        	ldw	x,_D_Current
8530  1cec a3001e        	cpw	x,#30
8531  1cef 2508          	jrult	L7313
8534  1cf1 35300039      	mov	_BAB_DAT3+3,#48
8536  1cf5 ac5d1b5d      	jpf	L1013
8537  1cf9               L7313:
8538                     ; 1097 			else BAB_DAT3[3]='0'+(uint8_t)(D_Current%10);	// 30보다 작으면 끝자리 표시
8540  1cf9 ce0082        	ldw	x,_D_Current
8541  1cfc a60a          	ld	a,#10
8542  1cfe 62            	div	x,a
8543  1cff 5f            	clrw	x
8544  1d00 97            	ld	xl,a
8545  1d01 9f            	ld	a,xl
8546  1d02 ab30          	add	a,#48
8547  1d04 c70039        	ld	_BAB_DAT3+3,a
8548  1d07 ac5d1b5d      	jpf	L1013
8549  1d0b               L3413:
8550                     ; 1104 	else if(BAB_DAT2[4]=='2')
8552  1d0b c6002d        	ld	a,_BAB_DAT2+4
8553  1d0e a132          	cp	a,#50
8554  1d10 2608          	jrne	L7413
8555                     ; 1105 		{	C_Current=100;	}
8557  1d12 ae0064        	ldw	x,#100
8558  1d15 cf0084        	ldw	_C_Current,x
8560  1d18 2004          	jra	L5413
8561  1d1a               L7413:
8562                     ; 1106 	else C_Current=0;
8564  1d1a 5f            	clrw	x
8565  1d1b cf0084        	ldw	_C_Current,x
8566  1d1e               L5413:
8567                     ; 1108 	BAB_DAT2[8]='0'+(C_Current%10000)/1000;
8569  1d1e ce0084        	ldw	x,_C_Current
8570  1d21 90ae2710      	ldw	y,#10000
8571  1d25 65            	divw	x,y
8572  1d26 51            	exgw	x,y
8573  1d27 90ae03e8      	ldw	y,#1000
8574  1d2b 65            	divw	x,y
8575  1d2c 1c0030        	addw	x,#48
8576  1d2f 01            	rrwa	x,a
8577  1d30 c70031        	ld	_BAB_DAT2+8,a
8578  1d33 02            	rlwa	x,a
8579                     ; 1109 	BAB_DAT2[9]='0'+(C_Current%1000)/100;
8581  1d34 ce0084        	ldw	x,_C_Current
8582  1d37 90ae03e8      	ldw	y,#1000
8583  1d3b 65            	divw	x,y
8584  1d3c 51            	exgw	x,y
8585  1d3d a664          	ld	a,#100
8586  1d3f 62            	div	x,a
8587  1d40 1c0030        	addw	x,#48
8588  1d43 01            	rrwa	x,a
8589  1d44 c70032        	ld	_BAB_DAT2+9,a
8590  1d47 02            	rlwa	x,a
8591                     ; 1111 	if(BAB_DAT2[4]=='3')
8593  1d48 c6002d        	ld	a,_BAB_DAT2+4
8594  1d4b a133          	cp	a,#51
8595  1d4d 264d          	jrne	L3513
8596                     ; 1114 		if(Percentgauge==0){DISCHG_TIME=0;}
8598  1d4f 725d00c0      	tnz	_Percentgauge
8599  1d53 2606          	jrne	L5513
8602  1d55 5f            	clrw	x
8603  1d56 cf00d6        	ldw	_DISCHG_TIME,x
8605  1d59 2045          	jra	L7713
8606  1d5b               L5513:
8607                     ; 1117 			DISCHG_TIME=RepCap/(DIS_CURR*60);
8609  1d5b ae00d2        	ldw	x,#_DIS_CURR
8610  1d5e cd0000        	call	c_ltor
8612  1d61 ae021e        	ldw	x,#L5613
8613  1d64 cd0000        	call	c_fmul
8615  1d67 96            	ldw	x,sp
8616  1d68 1c0001        	addw	x,#OFST-5
8617  1d6b cd0000        	call	c_rtol
8620  1d6e ae008c        	ldw	x,#_RepCap
8621  1d71 cd0000        	call	c_ltor
8623  1d74 96            	ldw	x,sp
8624  1d75 1c0001        	addw	x,#OFST-5
8625  1d78 cd0000        	call	c_fdiv
8627  1d7b cd0000        	call	c_ftoi
8629  1d7e cf00d6        	ldw	_DISCHG_TIME,x
8630                     ; 1118 			if(DISCHG_TIME==0){DISCHG_TIME=1;}
8632  1d81 ce00d6        	ldw	x,_DISCHG_TIME
8633  1d84 2608          	jrne	L1713
8636  1d86 ae0001        	ldw	x,#1
8637  1d89 cf00d6        	ldw	_DISCHG_TIME,x
8639  1d8c 2012          	jra	L7713
8640  1d8e               L1713:
8641                     ; 1119 			else if (D_Current < 30) {
8643  1d8e ce0082        	ldw	x,_D_Current
8644  1d91 a3001e        	cpw	x,#30
8645  1d94 240a          	jruge	L7713
8646                     ; 1120 				DISCHG_TIME = 0;
8648  1d96 5f            	clrw	x
8649  1d97 cf00d6        	ldw	_DISCHG_TIME,x
8650  1d9a 2004          	jra	L7713
8651  1d9c               L3513:
8652                     ; 1124 	else DISCHG_TIME=0;	
8654  1d9c 5f            	clrw	x
8655  1d9d cf00d6        	ldw	_DISCHG_TIME,x
8656  1da0               L7713:
8657                     ; 1126 	if(DISCHG_TIME>=5940){DISCHG_TIME=5940;}
8659  1da0 ce00d6        	ldw	x,_DISCHG_TIME
8660  1da3 a31734        	cpw	x,#5940
8661  1da6 2506          	jrult	L1023
8664  1da8 ae1734        	ldw	x,#5940
8665  1dab cf00d6        	ldw	_DISCHG_TIME,x
8666  1dae               L1023:
8667                     ; 1128 	BAB_DAT3[5]='0'+(DISCHG_TIME%10000)/1000;
8669  1dae ce00d6        	ldw	x,_DISCHG_TIME
8670  1db1 90ae2710      	ldw	y,#10000
8671  1db5 65            	divw	x,y
8672  1db6 51            	exgw	x,y
8673  1db7 90ae03e8      	ldw	y,#1000
8674  1dbb 65            	divw	x,y
8675  1dbc 1c0030        	addw	x,#48
8676  1dbf 01            	rrwa	x,a
8677  1dc0 c7003b        	ld	_BAB_DAT3+5,a
8678  1dc3 02            	rlwa	x,a
8679                     ; 1129 	BAB_DAT3[6]='0'+(DISCHG_TIME%1000)/100;
8681  1dc4 ce00d6        	ldw	x,_DISCHG_TIME
8682  1dc7 90ae03e8      	ldw	y,#1000
8683  1dcb 65            	divw	x,y
8684  1dcc 51            	exgw	x,y
8685  1dcd a664          	ld	a,#100
8686  1dcf 62            	div	x,a
8687  1dd0 1c0030        	addw	x,#48
8688  1dd3 01            	rrwa	x,a
8689  1dd4 c7003c        	ld	_BAB_DAT3+6,a
8690  1dd7 02            	rlwa	x,a
8691                     ; 1130 	BAB_DAT3[7]='0'+(DISCHG_TIME%100)/10;
8693  1dd8 ce00d6        	ldw	x,_DISCHG_TIME
8694  1ddb a664          	ld	a,#100
8695  1ddd 62            	div	x,a
8696  1dde 5f            	clrw	x
8697  1ddf 97            	ld	xl,a
8698  1de0 a60a          	ld	a,#10
8699  1de2 62            	div	x,a
8700  1de3 1c0030        	addw	x,#48
8701  1de6 01            	rrwa	x,a
8702  1de7 c7003d        	ld	_BAB_DAT3+7,a
8703  1dea 02            	rlwa	x,a
8704                     ; 1131 	BAB_DAT3[8]='0'+(DISCHG_TIME%10)/1;
8706  1deb ce00d6        	ldw	x,_DISCHG_TIME
8707  1dee a60a          	ld	a,#10
8708  1df0 62            	div	x,a
8709  1df1 5f            	clrw	x
8710  1df2 97            	ld	xl,a
8711  1df3 1c0030        	addw	x,#48
8712  1df6 01            	rrwa	x,a
8713  1df7 c7003e        	ld	_BAB_DAT3+8,a
8714  1dfa 02            	rlwa	x,a
8715                     ; 1133 	if(BAB_DAT2[4]=='1')
8717  1dfb c6002d        	ld	a,_BAB_DAT2+4
8718  1dfe a131          	cp	a,#49
8719  1e00 265b          	jrne	L3023
8720                     ; 1136 		if(FullCap>=RepCap){
8722  1e02 9c            	rvf
8723  1e03 ae0090        	ldw	x,#_FullCap
8724  1e06 cd0000        	call	c_ltor
8726  1e09 ae008c        	ldw	x,#_RepCap
8727  1e0c cd0000        	call	c_fcmp
8729  1e0f 2f14          	jrslt	L5023
8730                     ; 1137 			ChgCap = FullCap - RepCap;
8732  1e11 ae0090        	ldw	x,#_FullCap
8733  1e14 cd0000        	call	c_ltor
8735  1e17 ae008c        	ldw	x,#_RepCap
8736  1e1a cd0000        	call	c_fsub
8738  1e1d ae0088        	ldw	x,#_ChgCap
8739  1e20 cd0000        	call	c_rtol
8742  1e23 200c          	jra	L7023
8743  1e25               L5023:
8744                     ; 1139 			ChgCap = 0;
8746  1e25 ae0000        	ldw	x,#0
8747  1e28 cf008a        	ldw	_ChgCap+2,x
8748  1e2b ae0000        	ldw	x,#0
8749  1e2e cf0088        	ldw	_ChgCap,x
8750  1e31               L7023:
8751                     ; 1142 		if (Percentgauge == 100) {
8753  1e31 c600c0        	ld	a,_Percentgauge
8754  1e34 a164          	cp	a,#100
8755  1e36 2606          	jrne	L1123
8756                     ; 1143 			CHG_TIME = 0;
8758  1e38 5f            	clrw	x
8759  1e39 cf00d8        	ldw	_CHG_TIME,x
8761  1e3c 2023          	jra	L7223
8762  1e3e               L1123:
8763                     ; 1148 					CHG_TIME=(float)(ChgCap/141.66);	//2019.11.06	: 141.66 = 9720 / (( 9720 / 8500 ) * 60)	//8500은 용량이 아니고 충전전류
8765  1e3e ae0088        	ldw	x,#_ChgCap
8766  1e41 cd0000        	call	c_ltor
8768  1e44 ae021a        	ldw	x,#L1223
8769  1e47 cd0000        	call	c_fdiv
8771  1e4a cd0000        	call	c_ftoi
8773  1e4d cf00d8        	ldw	_CHG_TIME,x
8774                     ; 1158 			if (CHG_TIME == 0) {
8776  1e50 ce00d8        	ldw	x,_CHG_TIME
8777  1e53 260c          	jrne	L7223
8778                     ; 1159 				CHG_TIME = 1;
8780  1e55 ae0001        	ldw	x,#1
8781  1e58 cf00d8        	ldw	_CHG_TIME,x
8782  1e5b 2004          	jra	L7223
8783  1e5d               L3023:
8784                     ; 1163 		CHG_TIME = 0;
8786  1e5d 5f            	clrw	x
8787  1e5e cf00d8        	ldw	_CHG_TIME,x
8788  1e61               L7223:
8789                     ; 1166 	BAB_DAT3[10]='0'+(CHG_TIME%1000)/100;
8791  1e61 ce00d8        	ldw	x,_CHG_TIME
8792  1e64 90ae03e8      	ldw	y,#1000
8793  1e68 65            	divw	x,y
8794  1e69 51            	exgw	x,y
8795  1e6a a664          	ld	a,#100
8796  1e6c 62            	div	x,a
8797  1e6d 1c0030        	addw	x,#48
8798  1e70 01            	rrwa	x,a
8799  1e71 c70040        	ld	_BAB_DAT3+10,a
8800  1e74 02            	rlwa	x,a
8801                     ; 1167 	BAB_DAT3[11]='0'+(CHG_TIME%100)/10;
8803  1e75 ce00d8        	ldw	x,_CHG_TIME
8804  1e78 a664          	ld	a,#100
8805  1e7a 62            	div	x,a
8806  1e7b 5f            	clrw	x
8807  1e7c 97            	ld	xl,a
8808  1e7d a60a          	ld	a,#10
8809  1e7f 62            	div	x,a
8810  1e80 1c0030        	addw	x,#48
8811  1e83 01            	rrwa	x,a
8812  1e84 c70041        	ld	_BAB_DAT3+11,a
8813  1e87 02            	rlwa	x,a
8814                     ; 1168 	BAB_DAT3[12]='0'+(CHG_TIME%10)/1;
8816  1e88 ce00d8        	ldw	x,_CHG_TIME
8817  1e8b a60a          	ld	a,#10
8818  1e8d 62            	div	x,a
8819  1e8e 5f            	clrw	x
8820  1e8f 97            	ld	xl,a
8821  1e90 1c0030        	addw	x,#48
8822  1e93 01            	rrwa	x,a
8823  1e94 c70042        	ld	_BAB_DAT3+12,a
8824  1e97 02            	rlwa	x,a
8825                     ; 1170 	if (PRC_COM == 0) {
8827  1e98 725d00c3      	tnz	_PRC_COM
8828  1e9c 261a          	jrne	L1323
8829                     ; 1171 		for(i=0;i<14;i++) { 
8831  1e9e 5f            	clrw	x
8832  1e9f 1f05          	ldw	(OFST-1,sp),x
8834  1ea1               L3323:
8835                     ; 1172 			PRC_Data[i] = PRC_NoCOM[i]; 
8837  1ea1 1e05          	ldw	x,(OFST-1,sp)
8838  1ea3 d60053        	ld	a,(_PRC_NoCOM,x)
8839  1ea6 d70044        	ld	(_PRC_Data,x),a
8840                     ; 1171 		for(i=0;i<14;i++) { 
8842  1ea9 1e05          	ldw	x,(OFST-1,sp)
8843  1eab 1c0001        	addw	x,#1
8844  1eae 1f05          	ldw	(OFST-1,sp),x
8848  1eb0 9c            	rvf
8849  1eb1 1e05          	ldw	x,(OFST-1,sp)
8850  1eb3 a3000e        	cpw	x,#14
8851  1eb6 2fe9          	jrslt	L3323
8852  1eb8               L1323:
8853                     ; 1175 }
8856  1eb8 5b06          	addw	sp,#6
8857  1eba 81            	ret
8896                     ; 1177 void BLE_SET_NAME(void)
8896                     ; 1178 {
8897                     	switch	.text
8898  1ebb               _BLE_SET_NAME:
8900  1ebb 89            	pushw	x
8901       00000002      OFST:	set	2
8904                     ; 1180 	i=GPIO_ReadInputDataBit(BLE_C_PORT,BLE_C_PIN);
8906  1ebc 4b04          	push	#4
8907  1ebe ae5000        	ldw	x,#20480
8908  1ec1 cd0000        	call	_GPIO_ReadInputDataBit
8910  1ec4 5b01          	addw	sp,#1
8911  1ec6 5f            	clrw	x
8912  1ec7 97            	ld	xl,a
8913  1ec8 1f01          	ldw	(OFST-1,sp),x
8915                     ; 1181 	if(0==i) //BLE_Connect_Check
8917  1eca 1e01          	ldw	x,(OFST-1,sp)
8918  1ecc 263e          	jrne	L5523
8919                     ; 1192 		printf("AT+INFO?\r\n");
8921  1ece ae020f        	ldw	x,#L7523
8922  1ed1 cd0000        	call	_printf
8924                     ; 1193 		Delay_ms(5);
8926  1ed4 ae0005        	ldw	x,#5
8927  1ed7 cd29bc        	call	_Delay_ms
8929                     ; 1194 		printf("AT+MANUF=IVT-%c%c%c%c\r\n",MAD1,MAD2,MAD3,MAD4);
8931  1eda 3b00e1        	push	_MAD4
8932  1edd 3b00e0        	push	_MAD3
8933  1ee0 3b00df        	push	_MAD2
8934  1ee3 3b00de        	push	_MAD1
8935  1ee6 ae01f7        	ldw	x,#L1623
8936  1ee9 cd0000        	call	_printf
8938  1eec 5b04          	addw	sp,#4
8939                     ; 1195 		Delay_ms(5);
8941  1eee ae0005        	ldw	x,#5
8942  1ef1 cd29bc        	call	_Delay_ms
8944                     ; 1196 		printf("AT+TXPWR=7\r\n");
8946  1ef4 ae01ea        	ldw	x,#L3623
8947  1ef7 cd0000        	call	_printf
8949                     ; 1197 		Delay_ms(5);
8951  1efa ae0005        	ldw	x,#5
8952  1efd cd29bc        	call	_Delay_ms
8954                     ; 1198 		printf("AT+ADVINTERVAL=520\r\n");
8956  1f00 ae01d5        	ldw	x,#L5623
8957  1f03 cd0000        	call	_printf
8959                     ; 1199 		Delay_ms(5);
8961  1f06 ae0005        	ldw	x,#5
8962  1f09 cd29bc        	call	_Delay_ms
8964  1f0c               L5523:
8965                     ; 1205 }
8968  1f0c 85            	popw	x
8969  1f0d 81            	ret
8993                     ; 1209 void I2C1_Init(void)
8993                     ; 1210 {
8994                     	switch	.text
8995  1f0e               _I2C1_Init:
8999                     ; 1211 	GPIO_Init(I2C_PORT,SDA_PIN,GPIO_Mode_Out_PP_High_Fast);  // SDA_PIN
9001  1f0e 4bf0          	push	#240
9002  1f10 4b01          	push	#1
9003  1f12 ae500a        	ldw	x,#20490
9004  1f15 cd0000        	call	_GPIO_Init
9006  1f18 85            	popw	x
9007                     ; 1212 	GPIO_Init(I2C_PORT,SCL_PIN,GPIO_Mode_Out_PP_Low_Fast);  // SCL_PIN
9009  1f19 4be0          	push	#224
9010  1f1b 4b02          	push	#2
9011  1f1d ae500a        	ldw	x,#20490
9012  1f20 cd0000        	call	_GPIO_Init
9014  1f23 85            	popw	x
9015                     ; 1213 }
9018  1f24 81            	ret
9047                     ; 1215 void I2C_Datawrite_Reset(void)
9047                     ; 1216 {
9048                     	switch	.text
9049  1f25               _I2C_Datawrite_Reset:
9053                     ; 1217 	if(GPIO_ReadInputDataBit(I2C_PORT, SDA_PIN)!=0)
9055  1f25 4b01          	push	#1
9056  1f27 ae500a        	ldw	x,#20490
9057  1f2a cd0000        	call	_GPIO_ReadInputDataBit
9059  1f2d 5b01          	addw	sp,#1
9060  1f2f 4d            	tnz	a
9061  1f30 271f          	jreq	L7033
9062                     ; 1219 		I2C_START();
9064  1f32 cd2031        	call	_I2C_START
9066                     ; 1220 		I2C_TxData(SLAVE_ADDRESS);
9068  1f35 a66c          	ld	a,#108
9069  1f37 cd2088        	call	_I2C_TxData
9071                     ; 1221 		I2C_TxData(Config2);
9073  1f3a a6bb          	ld	a,#187
9074  1f3c cd2088        	call	_I2C_TxData
9076                     ; 1222 		I2C_TxData(Reset_L);
9078  1f3f a601          	ld	a,#1
9079  1f41 cd2088        	call	_I2C_TxData
9081                     ; 1223 		I2C_TxData(Reset_M);
9083  1f44 4f            	clr	a
9084  1f45 cd2088        	call	_I2C_TxData
9086                     ; 1224 		I2C_STOP();
9088  1f48 cd2063        	call	_I2C_STOP
9090                     ; 1225 		_fgReset = 1;
9092  1f4b 350100e7      	mov	__fgReset,#1
9094  1f4f 2003          	jra	L1133
9095  1f51               L7033:
9096                     ; 1227 	else I2C_STOP();
9098  1f51 cd2063        	call	_I2C_STOP
9100  1f54               L1133:
9101                     ; 1228 }
9104  1f54 81            	ret
9160                     ; 1230 void I2C_Dataread(void)
9160                     ; 1231 {
9161                     	switch	.text
9162  1f55               _I2C_Dataread:
9164  1f55 89            	pushw	x
9165       00000002      OFST:	set	2
9168                     ; 1232 	if(I2C_ON==1)
9170  1f56 c600bb        	ld	a,_I2C_ON
9171  1f59 a101          	cp	a,#1
9172  1f5b 2703          	jreq	L273
9173  1f5d cc202f        	jp	L7233
9174  1f60               L273:
9175                     ; 1235 			if (_5secCnt == 0)
9177  1f60 725d00e9      	tnz	__5secCnt
9178  1f64 2634          	jrne	L1333
9179                     ; 1237 				sprintf(_dBuf, "%d , %d, %d, %d, %f, %d\r\n", BAT_Volt &0xFF, Percentgauge &0xFF, I2C_Data[5] &0xFF,D_Current,DIS_CURR,DISCHG_TIME); 
9181  1f66 ce00d6        	ldw	x,_DISCHG_TIME
9182  1f69 89            	pushw	x
9183  1f6a ce00d4        	ldw	x,_DIS_CURR+2
9184  1f6d 89            	pushw	x
9185  1f6e ce00d2        	ldw	x,_DIS_CURR
9186  1f71 89            	pushw	x
9187  1f72 ce0082        	ldw	x,_D_Current
9188  1f75 89            	pushw	x
9189  1f76 c6013a        	ld	a,_I2C_Data+5
9190  1f79 5f            	clrw	x
9191  1f7a 97            	ld	xl,a
9192  1f7b 89            	pushw	x
9193  1f7c c600c0        	ld	a,_Percentgauge
9194  1f7f 5f            	clrw	x
9195  1f80 97            	ld	xl,a
9196  1f81 89            	pushw	x
9197  1f82 c60075        	ld	a,_BAT_Volt
9198  1f85 5f            	clrw	x
9199  1f86 97            	ld	xl,a
9200  1f87 89            	pushw	x
9201  1f88 ae01bb        	ldw	x,#L3333
9202  1f8b 89            	pushw	x
9203  1f8c ae0157        	ldw	x,#__dBuf
9204  1f8f cd0000        	call	_sprintf
9206  1f92 5b10          	addw	sp,#16
9207                     ; 1238 				___debug(_dBuf);
9209  1f94 ae0157        	ldw	x,#__dBuf
9210  1f97 cd2b68        	call	____debug
9212  1f9a               L1333:
9213                     ; 1240 			_5secCnt = (_5secCnt+1)%3;
9215  1f9a c600e9        	ld	a,__5secCnt
9216  1f9d 5f            	clrw	x
9217  1f9e 97            	ld	xl,a
9218  1f9f 5c            	incw	x
9219  1fa0 a603          	ld	a,#3
9220  1fa2 cd0000        	call	c_smodx
9222  1fa5 01            	rrwa	x,a
9223  1fa6 c700e9        	ld	__5secCnt,a
9224  1fa9 02            	rlwa	x,a
9225                     ; 1244 			if (pcmStateEntered)
9227  1faa 725d00e4      	tnz	_pcmStateEntered
9228  1fae 2707          	jreq	L5333
9229                     ; 1246 				old_pcmStateEntered = pcmStateEntered;
9231  1fb0 5500e400e5    	mov	_old_pcmStateEntered,_pcmStateEntered
9232                     ; 1247 				return;
9234  1fb5 2011          	jra	L073
9235  1fb7               L5333:
9236                     ; 1250 			if (old_pcmStateEntered) 
9238  1fb7 725d00e5      	tnz	_old_pcmStateEntered
9239  1fbb 270d          	jreq	L7333
9240                     ; 1252 				old_pcmStateEntered = 0;
9242  1fbd 725f00e5      	clr	_old_pcmStateEntered
9243                     ; 1253 				pcmStableTimeCnt = 2;
9245  1fc1 350200e6      	mov	_pcmStableTimeCnt,#2
9246                     ; 1254 				I2C_Datawrite_Reset();
9248  1fc5 cd1f25        	call	_I2C_Datawrite_Reset
9250                     ; 1255 				return;
9251  1fc8               L073:
9254  1fc8 85            	popw	x
9255  1fc9 81            	ret
9256  1fca               L7333:
9257                     ; 1257 			else if (pcmStableTimeCnt > 0)
9259  1fca 725d00e6      	tnz	_pcmStableTimeCnt
9260  1fce 2706          	jreq	L1433
9261                     ; 1259 				pcmStableTimeCnt--;	//안정화 될 때까지 기다림.
9263  1fd0 725a00e6      	dec	_pcmStableTimeCnt
9264                     ; 1260 				return;
9266  1fd4 20f2          	jra	L073
9267  1fd6               L1433:
9268                     ; 1264 		sim();
9271  1fd6 9b            sim
9273                     ; 1265 		if(GPIO_ReadInputDataBit(I2C_PORT, SDA_PIN)!=0)
9276  1fd7 4b01          	push	#1
9277  1fd9 ae500a        	ldw	x,#20490
9278  1fdc cd0000        	call	_GPIO_ReadInputDataBit
9280  1fdf 5b01          	addw	sp,#1
9281  1fe1 4d            	tnz	a
9282  1fe2 2731          	jreq	L5433
9283                     ; 1269 			I2C_START();
9285  1fe4 ad4b          	call	_I2C_START
9287                     ; 1270 			I2C_TxData(SLAVE_ADDRESS);
9289  1fe6 a66c          	ld	a,#108
9290  1fe8 cd2088        	call	_I2C_TxData
9292                     ; 1271 			I2C_TxData(SOC);
9294  1feb a604          	ld	a,#4
9295  1fed cd2088        	call	_I2C_TxData
9297                     ; 1272 			I2C_START();
9299  1ff0 ad3f          	call	_I2C_START
9301                     ; 1273 			I2C_TxData(SLAVE_ADDRESS|0x01);
9303  1ff2 a66d          	ld	a,#109
9304  1ff4 cd2088        	call	_I2C_TxData
9306                     ; 1274 			for(i=0;i<32;i++)
9308  1ff7 5f            	clrw	x
9309  1ff8 1f01          	ldw	(OFST-1,sp),x
9311  1ffa               L7433:
9312                     ; 1275 			{I2C_Data[i]=I2C_RxData();}
9314  1ffa cd2103        	call	_I2C_RxData
9316  1ffd 1e01          	ldw	x,(OFST-1,sp)
9317  1fff d70135        	ld	(_I2C_Data,x),a
9318                     ; 1274 			for(i=0;i<32;i++)
9320  2002 1e01          	ldw	x,(OFST-1,sp)
9321  2004 1c0001        	addw	x,#1
9322  2007 1f01          	ldw	(OFST-1,sp),x
9326  2009 9c            	rvf
9327  200a 1e01          	ldw	x,(OFST-1,sp)
9328  200c a30020        	cpw	x,#32
9329  200f 2fe9          	jrslt	L7433
9330                     ; 1276 			I2C_STOP();
9332  2011 ad50          	call	_I2C_STOP
9335  2013 2002          	jra	L5533
9336  2015               L5433:
9337                     ; 1278 		else I2C_STOP();
9339  2015 ad4c          	call	_I2C_STOP
9341  2017               L5533:
9342                     ; 1279 		rim();
9345  2017 9a            rim
9347                     ; 1281 		if (_fgPercentRead == 0)
9350  2018 725d00e8      	tnz	__fgPercentRead
9351  201c 2604          	jrne	L7533
9352                     ; 1286 			_fgPercentRead = 1;
9354  201e 350100e8      	mov	__fgPercentRead,#1
9355  2022               L7533:
9356                     ; 1289 		Dis_j++;
9358  2022 ce00c8        	ldw	x,_Dis_j
9359  2025 1c0001        	addw	x,#1
9360  2028 cf00c8        	ldw	_Dis_j,x
9361                     ; 1290 		I2C_ON=0;
9363  202b 725f00bb      	clr	_I2C_ON
9364  202f               L7233:
9365                     ; 1292 }
9367  202f 2097          	jra	L073
9393                     ; 1294 void I2C_START(void)
9393                     ; 1295 {
9394                     	switch	.text
9395  2031               _I2C_START:
9399                     ; 1296 	GPIO_SetBits(I2C_PORT, SDA_PIN);
9401  2031 4b01          	push	#1
9402  2033 ae500a        	ldw	x,#20490
9403  2036 cd0000        	call	_GPIO_SetBits
9405  2039 84            	pop	a
9406                     ; 1298 	GPIO_SetBits(I2C_PORT, SCL_PIN);
9408  203a 4b02          	push	#2
9409  203c ae500a        	ldw	x,#20490
9410  203f cd0000        	call	_GPIO_SetBits
9412  2042 84            	pop	a
9413                     ; 1300 	GPIO_ResetBits(I2C_PORT, SDA_PIN);
9415  2043 4b01          	push	#1
9416  2045 ae500a        	ldw	x,#20490
9417  2048 cd0000        	call	_GPIO_ResetBits
9419  204b 84            	pop	a
9421  204c               L3733:
9422                     ; 1301 	while(GPIO_ReadInputDataBit(I2C_PORT, SDA_PIN) != 0);	// Wait for clock stretching
9424  204c 4b01          	push	#1
9425  204e ae500a        	ldw	x,#20490
9426  2051 cd0000        	call	_GPIO_ReadInputDataBit
9428  2054 5b01          	addw	sp,#1
9429  2056 4d            	tnz	a
9430  2057 26f3          	jrne	L3733
9431                     ; 1303 	GPIO_ResetBits(I2C_PORT, SCL_PIN);
9433  2059 4b02          	push	#2
9434  205b ae500a        	ldw	x,#20490
9435  205e cd0000        	call	_GPIO_ResetBits
9437  2061 84            	pop	a
9438                     ; 1304 }
9441  2062 81            	ret
9466                     ; 1306 void I2C_STOP(void)
9466                     ; 1307 {
9467                     	switch	.text
9468  2063               _I2C_STOP:
9472                     ; 1309 	GPIO_ResetBits(I2C_PORT, SDA_PIN);
9474  2063 4b01          	push	#1
9475  2065 ae500a        	ldw	x,#20490
9476  2068 cd0000        	call	_GPIO_ResetBits
9478  206b 84            	pop	a
9479                     ; 1311 	GPIO_SetBits(I2C_PORT, SCL_PIN);
9481  206c 4b02          	push	#2
9482  206e ae500a        	ldw	x,#20490
9483  2071 cd0000        	call	_GPIO_SetBits
9485  2074 84            	pop	a
9486                     ; 1313 	GPIO_SetBits(I2C_PORT, SDA_PIN);
9488  2075 4b01          	push	#1
9489  2077 ae500a        	ldw	x,#20490
9490  207a cd0000        	call	_GPIO_SetBits
9492  207d 84            	pop	a
9493                     ; 1315 	GPIO_ResetBits(I2C_PORT, SCL_PIN);
9495  207e 4b02          	push	#2
9496  2080 ae500a        	ldw	x,#20490
9497  2083 cd0000        	call	_GPIO_ResetBits
9499  2086 84            	pop	a
9500                     ; 1316 }
9503  2087 81            	ret
9552                     ; 1318 void I2C_TxData(uint8_t data)
9552                     ; 1319 {
9553                     	switch	.text
9554  2088               _I2C_TxData:
9556  2088 89            	pushw	x
9557       00000002      OFST:	set	2
9560                     ; 1321 	uint8_t temp = data;
9562  2089 6b02          	ld	(OFST+0,sp),a
9564                     ; 1324 	for(bits=8;bits!=0;bits--)
9566  208b a608          	ld	a,#8
9567  208d 6b01          	ld	(OFST-1,sp),a
9569  208f               L7243:
9570                     ; 1327 		if ( temp & (1<<7))
9572  208f 7b02          	ld	a,(OFST+0,sp)
9573  2091 a580          	bcp	a,#128
9574  2093 270b          	jreq	L5343
9575                     ; 1328 		{GPIO_SetBits(I2C_PORT, SDA_PIN);}
9577  2095 4b01          	push	#1
9578  2097 ae500a        	ldw	x,#20490
9579  209a cd0000        	call	_GPIO_SetBits
9581  209d 84            	pop	a
9583  209e 2009          	jra	L7343
9584  20a0               L5343:
9585                     ; 1330 		{GPIO_ResetBits(I2C_PORT, SDA_PIN);}
9587  20a0 4b01          	push	#1
9588  20a2 ae500a        	ldw	x,#20490
9589  20a5 cd0000        	call	_GPIO_ResetBits
9591  20a8 84            	pop	a
9592  20a9               L7343:
9593                     ; 1332 		GPIO_SetBits(I2C_PORT, SCL_PIN);
9595  20a9 4b02          	push	#2
9596  20ab ae500a        	ldw	x,#20490
9597  20ae cd0000        	call	_GPIO_SetBits
9599  20b1 84            	pop	a
9601  20b2               L3443:
9602                     ; 1333 		while(GPIO_ReadInputDataBit(I2C_PORT, SCL_PIN) == 0);	// Wait for clock stretching
9604  20b2 4b02          	push	#2
9605  20b4 ae500a        	ldw	x,#20490
9606  20b7 cd0000        	call	_GPIO_ReadInputDataBit
9608  20ba 5b01          	addw	sp,#1
9609  20bc 4d            	tnz	a
9610  20bd 27f3          	jreq	L3443
9611                     ; 1335 		GPIO_ResetBits(I2C_PORT, SCL_PIN);
9613  20bf 4b02          	push	#2
9614  20c1 ae500a        	ldw	x,#20490
9615  20c4 cd0000        	call	_GPIO_ResetBits
9617  20c7 84            	pop	a
9618                     ; 1336 		temp = temp << 1;
9620  20c8 0802          	sll	(OFST+0,sp)
9622                     ; 1324 	for(bits=8;bits!=0;bits--)
9624  20ca 0a01          	dec	(OFST-1,sp)
9628  20cc 0d01          	tnz	(OFST-1,sp)
9629  20ce 26bf          	jrne	L7243
9630                     ; 1339 	GPIO_SetBits(I2C_PORT, SDA_PIN);
9632  20d0 4b01          	push	#1
9633  20d2 ae500a        	ldw	x,#20490
9634  20d5 cd0000        	call	_GPIO_SetBits
9636  20d8 84            	pop	a
9637                     ; 1341 	GPIO_SetBits(I2C_PORT, SCL_PIN);
9639  20d9 4b02          	push	#2
9640  20db ae500a        	ldw	x,#20490
9641  20de cd0000        	call	_GPIO_SetBits
9643  20e1 84            	pop	a
9645  20e2               L1543:
9646                     ; 1342 	while(GPIO_ReadInputDataBit(I2C_PORT, SCL_PIN) == 0);	// Wait for clock stretching
9648  20e2 4b02          	push	#2
9649  20e4 ae500a        	ldw	x,#20490
9650  20e7 cd0000        	call	_GPIO_ReadInputDataBit
9652  20ea 5b01          	addw	sp,#1
9653  20ec 4d            	tnz	a
9654  20ed 27f3          	jreq	L1543
9655                     ; 1345 	GPIO_ResetBits(I2C_PORT, SCL_PIN);
9657  20ef 4b02          	push	#2
9658  20f1 ae500a        	ldw	x,#20490
9659  20f4 cd0000        	call	_GPIO_ResetBits
9661  20f7 84            	pop	a
9662                     ; 1347 	GPIO_ResetBits(I2C_PORT, SDA_PIN);
9664  20f8 4b01          	push	#1
9665  20fa ae500a        	ldw	x,#20490
9666  20fd cd0000        	call	_GPIO_ResetBits
9668  2100 84            	pop	a
9669                     ; 1349 }
9672  2101 85            	popw	x
9673  2102 81            	ret
9715                     ; 1351 uint8_t I2C_RxData(void)
9715                     ; 1352 {
9716                     	switch	.text
9717  2103               _I2C_RxData:
9719  2103 89            	pushw	x
9720       00000002      OFST:	set	2
9723                     ; 1353 	uint8_t data=0;
9725  2104 0f02          	clr	(OFST+0,sp)
9727                     ; 1356 	GPIO_SetBits(I2C_PORT, SDA_PIN); // SDA Pin Open.
9729  2106 4b01          	push	#1
9730  2108 ae500a        	ldw	x,#20490
9731  210b cd0000        	call	_GPIO_SetBits
9733  210e 84            	pop	a
9734                     ; 1358 	for(bits=8;bits!=0;bits--)
9736  210f a608          	ld	a,#8
9737  2111 6b01          	ld	(OFST-1,sp),a
9739  2113               L3743:
9740                     ; 1360 		GPIO_SetBits(I2C_PORT , SCL_PIN);
9742  2113 4b02          	push	#2
9743  2115 ae500a        	ldw	x,#20490
9744  2118 cd0000        	call	_GPIO_SetBits
9746  211b 84            	pop	a
9748  211c               L3053:
9749                     ; 1361 		while(GPIO_ReadInputDataBit(I2C_PORT, SCL_PIN) == 0);	// Wait for clock stretching
9751  211c 4b02          	push	#2
9752  211e ae500a        	ldw	x,#20490
9753  2121 cd0000        	call	_GPIO_ReadInputDataBit
9755  2124 5b01          	addw	sp,#1
9756  2126 4d            	tnz	a
9757  2127 27f3          	jreq	L3053
9758                     ; 1363 		data = (data << 1);
9760  2129 0802          	sll	(OFST+0,sp)
9762                     ; 1364 		if( GPIO_ReadInputDataBit(I2C_PORT, SDA_PIN))
9764  212b 4b01          	push	#1
9765  212d ae500a        	ldw	x,#20490
9766  2130 cd0000        	call	_GPIO_ReadInputDataBit
9768  2133 5b01          	addw	sp,#1
9769  2135 4d            	tnz	a
9770  2136 2702          	jreq	L7053
9771                     ; 1365 			{data += 0x01;}
9773  2138 0c02          	inc	(OFST+0,sp)
9775  213a               L7053:
9776                     ; 1366 		GPIO_ResetBits(I2C_PORT, SCL_PIN);
9778  213a 4b02          	push	#2
9779  213c ae500a        	ldw	x,#20490
9780  213f cd0000        	call	_GPIO_ResetBits
9782  2142 84            	pop	a
9783                     ; 1358 	for(bits=8;bits!=0;bits--)
9785  2143 0a01          	dec	(OFST-1,sp)
9789  2145 0d01          	tnz	(OFST-1,sp)
9790  2147 26ca          	jrne	L3743
9791                     ; 1369 	GPIO_ResetBits(I2C_PORT, SDA_PIN);
9793  2149 4b01          	push	#1
9794  214b ae500a        	ldw	x,#20490
9795  214e cd0000        	call	_GPIO_ResetBits
9797  2151 84            	pop	a
9798                     ; 1371 	GPIO_SetBits(I2C_PORT, SCL_PIN);
9800  2152 4b02          	push	#2
9801  2154 ae500a        	ldw	x,#20490
9802  2157 cd0000        	call	_GPIO_SetBits
9804  215a 84            	pop	a
9806  215b               L3153:
9807                     ; 1372 	while(GPIO_ReadInputDataBit(I2C_PORT, SCL_PIN) == 0);	// Wait for clock stretching
9809  215b 4b02          	push	#2
9810  215d ae500a        	ldw	x,#20490
9811  2160 cd0000        	call	_GPIO_ReadInputDataBit
9813  2163 5b01          	addw	sp,#1
9814  2165 4d            	tnz	a
9815  2166 27f3          	jreq	L3153
9816                     ; 1374 	GPIO_ResetBits(I2C_PORT, SCL_PIN);
9818  2168 4b02          	push	#2
9819  216a ae500a        	ldw	x,#20490
9820  216d cd0000        	call	_GPIO_ResetBits
9822  2170 84            	pop	a
9823                     ; 1375 	GPIO_SetBits(I2C_PORT, SDA_PIN); // SDA Pin Open.
9825  2171 4b01          	push	#1
9826  2173 ae500a        	ldw	x,#20490
9827  2176 cd0000        	call	_GPIO_SetBits
9829  2179 84            	pop	a
9830                     ; 1377 	return data;
9832  217a 7b02          	ld	a,(OFST+0,sp)
9835  217c 85            	popw	x
9836  217d 81            	ret
9864                     ; 1381 static void Timer4Init(void)
9864                     ; 1382 {
9865                     	switch	.text
9866  217e               L3_Timer4Init:
9870                     ; 1385  TIM4_DeInit();
9872  217e cd0000        	call	_TIM4_DeInit
9874                     ; 1386  TIM4_TimeBaseInit(TIM4_Prescaler_128,124);
9876  2181 ae077c        	ldw	x,#1916
9877  2184 cd0000        	call	_TIM4_TimeBaseInit
9879                     ; 1387  TIM4_ClearFlag(TIM4_FLAG_Update);
9881  2187 a601          	ld	a,#1
9882  2189 cd0000        	call	_TIM4_ClearFlag
9884                     ; 1388  TIM4_ITConfig(TIM4_IT_Update,ENABLE);
9886  218c ae0101        	ldw	x,#257
9887  218f cd0000        	call	_TIM4_ITConfig
9889                     ; 1389  TIM4_Cmd(ENABLE);
9891  2192 a601          	ld	a,#1
9892  2194 cd0000        	call	_TIM4_Cmd
9894                     ; 1390 }
9897  2197 81            	ret
9922                     ; 1392 void Port_init(void)
9922                     ; 1393 {
9923                     	switch	.text
9924  2198               _Port_init:
9928                     ; 1394   GPIO_Init(VIN_PORT,VIN_PIN,GPIO_Mode_In_FL_No_IT); // VIN_ADC
9930  2198 4b00          	push	#0
9931  219a 4b80          	push	#128
9932  219c ae500f        	ldw	x,#20495
9933  219f cd0000        	call	_GPIO_Init
9935  21a2 85            	popw	x
9936                     ; 1395 	GPIO_Init(BAT_PORT,BAT_PIN,GPIO_Mode_In_FL_No_IT); // BAT_ADC
9938  21a3 4b00          	push	#0
9939  21a5 4b80          	push	#128
9940  21a7 ae500a        	ldw	x,#20490
9941  21aa cd0000        	call	_GPIO_Init
9943  21ad 85            	popw	x
9944                     ; 1396 	GPIO_Init(NTC_PORT,NTC_PIN,GPIO_Mode_In_FL_No_IT); // NTC_ADC
9946  21ae 4b00          	push	#0
9947  21b0 4b10          	push	#16
9948  21b2 ae5000        	ldw	x,#20480
9949  21b5 cd0000        	call	_GPIO_Init
9951  21b8 85            	popw	x
9952                     ; 1397 	GPIO_Init(ACC_PORT,ACC_PIN,GPIO_Mode_In_FL_No_IT); // ACC_ADC
9954  21b9 4b00          	push	#0
9955  21bb 4b10          	push	#16
9956  21bd ae500a        	ldw	x,#20490
9957  21c0 cd0000        	call	_GPIO_Init
9959  21c3 85            	popw	x
9960                     ; 1399 	GPIO_Init(STATE_PORT,STATE_PIN,GPIO_Mode_In_FL_No_IT); // STATE1
9962  21c4 4b00          	push	#0
9963  21c6 4b40          	push	#64
9964  21c8 ae500a        	ldw	x,#20490
9965  21cb cd0000        	call	_GPIO_Init
9967  21ce 85            	popw	x
9968                     ; 1401 	GPIO_Init(BLE_C_PORT,BLE_C_PIN,GPIO_Mode_In_FL_No_IT); // BLE_Connect
9970  21cf 4b00          	push	#0
9971  21d1 4b04          	push	#4
9972  21d3 ae5000        	ldw	x,#20480
9973  21d6 cd0000        	call	_GPIO_Init
9975  21d9 85            	popw	x
9976                     ; 1403 	GPIO_Init(ALRT_PORT,ALRT_PIN,GPIO_Mode_In_FL_No_IT); // ALRT
9978  21da 4b00          	push	#0
9979  21dc 4b80          	push	#128
9980  21de ae5005        	ldw	x,#20485
9981  21e1 cd0000        	call	_GPIO_Init
9983  21e4 85            	popw	x
9984                     ; 1405 	GPIO_Init(Dischg_PORT,Dischg_PIN,GPIO_Mode_Out_PP_High_Fast);  //Dischg_on_off
9986  21e5 4bf0          	push	#240
9987  21e7 4b04          	push	#4
9988  21e9 ae5005        	ldw	x,#20485
9989  21ec cd0000        	call	_GPIO_Init
9991  21ef 85            	popw	x
9992                     ; 1406 	GPIO_SetBits(Dischg_PORT,Dischg_PIN);
9994  21f0 4b04          	push	#4
9995  21f2 ae5005        	ldw	x,#20485
9996  21f5 cd0000        	call	_GPIO_SetBits
9998  21f8 84            	pop	a
9999                     ; 1408 	GPIO_Init(CHG_RUN_PORT,CHG_RUN_PIN,GPIO_Mode_Out_PP_High_Fast);  //CHG_RUN_ON_OFF
10001  21f9 4bf0          	push	#240
10002  21fb 4b10          	push	#16
10003  21fd ae5005        	ldw	x,#20485
10004  2200 cd0000        	call	_GPIO_Init
10006  2203 85            	popw	x
10007                     ; 1410 	GPIO_Init(BLE_U_PORT,BLE_U_PIN,GPIO_Mode_Out_PP_High_Fast); //uart sw
10009  2204 4bf0          	push	#240
10010  2206 4b10          	push	#16
10011  2208 ae500f        	ldw	x,#20495
10012  220b cd0000        	call	_GPIO_Init
10014  220e 85            	popw	x
10015                     ; 1412 	GPIO_Init(CHG_LED_PORT,CHG_LED_PIN,GPIO_Mode_Out_PP_High_Fast);  //CHG_LED
10017  220f 4bf0          	push	#240
10018  2211 4b01          	push	#1
10019  2213 ae5014        	ldw	x,#20500
10020  2216 cd0000        	call	_GPIO_Init
10022  2219 85            	popw	x
10023                     ; 1413 	GPIO_Init(FULL_LED_PORT,FULL_LED_PIN,GPIO_Mode_Out_PP_High_Fast);  //FULL_LED
10025  221a 4bf0          	push	#240
10026  221c 4b02          	push	#2
10027  221e ae5014        	ldw	x,#20500
10028  2221 cd0000        	call	_GPIO_Init
10030  2224 85            	popw	x
10031                     ; 1415 	GPIO_Init(Speak_PORT,Speak_PIN,GPIO_Mode_Out_PP_High_Slow);  //Speak
10033  2225 4bd0          	push	#208
10034  2227 4b02          	push	#2
10035  2229 ae5005        	ldw	x,#20485
10036  222c cd0000        	call	_GPIO_Init
10038  222f 85            	popw	x
10039                     ; 1416 }
10042  2230 81            	ret
10153                     ; 1418 void LED_CTR(LEDTypeDef Selection)
10153                     ; 1419 {
10154                     	switch	.text
10155  2231               _LED_CTR:
10159                     ; 1420 	switch(Selection)
10162                     ; 1490 											break;
10163  2231 4d            	tnz	a
10164  2232 272b          	jreq	L7353
10165  2234 4a            	dec	a
10166  2235 273e          	jreq	L1453
10167  2237 4a            	dec	a
10168  2238 275a          	jreq	L3453
10169  223a 4a            	dec	a
10170  223b 2776          	jreq	L5453
10171  223d 4a            	dec	a
10172  223e 2603          	jrne	L214
10173  2240 cc22d2        	jp	L7453
10174  2243               L214:
10175  2243 4a            	dec	a
10176  2244 2603          	jrne	L414
10177  2246 cc2320        	jp	L1553
10178  2249               L414:
10179  2249 4a            	dec	a
10180  224a 2603          	jrne	L614
10181  224c cc235c        	jp	L3553
10182  224f               L614:
10183  224f 4a            	dec	a
10184  2250 2603          	jrne	L024
10185  2252 cc2372        	jp	L5553
10186  2255               L024:
10187  2255 4a            	dec	a
10188  2256 2603          	jrne	L224
10189  2258 cc23b6        	jp	L7553
10190  225b               L224:
10191  225b ac092409      	jpf	L7263
10192  225f               L7353:
10193                     ; 1422 		case RUN_LED: 		GPIO_ResetBits(CHG_LED_PORT,CHG_LED_PIN);
10195  225f 4b01          	push	#1
10196  2261 ae5014        	ldw	x,#20500
10197  2264 cd0000        	call	_GPIO_ResetBits
10199  2267 84            	pop	a
10200                     ; 1423 											GPIO_ResetBits(FULL_LED_PORT,FULL_LED_PIN);
10202  2268 4b02          	push	#2
10203  226a ae5014        	ldw	x,#20500
10204  226d cd0000        	call	_GPIO_ResetBits
10206  2270 84            	pop	a
10207                     ; 1424 											break;
10209  2271 ac092409      	jpf	L7263
10210  2275               L1453:
10211                     ; 1426 		case STOP_LED: 		GPIO_SetBits(CHG_LED_PORT,CHG_LED_PIN);
10213  2275 4b01          	push	#1
10214  2277 ae5014        	ldw	x,#20500
10215  227a cd0000        	call	_GPIO_SetBits
10217  227d 84            	pop	a
10218                     ; 1427 											if(BLE_Con==0){GPIO_SetBits(FULL_LED_PORT,FULL_LED_PIN);}
10220  227e 725d00c2      	tnz	_BLE_Con
10221  2282 2703          	jreq	L424
10222  2284 cc2409        	jp	L7263
10223  2287               L424:
10226  2287 4b02          	push	#2
10227  2289 ae5014        	ldw	x,#20500
10228  228c cd0000        	call	_GPIO_SetBits
10230  228f 84            	pop	a
10231  2290 ac092409      	jpf	L7263
10232  2294               L3453:
10233                     ; 1430 		case CHG_LED:			GPIO_ResetBits(CHG_LED_PORT,CHG_LED_PIN);
10235  2294 4b01          	push	#1
10236  2296 ae5014        	ldw	x,#20500
10237  2299 cd0000        	call	_GPIO_ResetBits
10239  229c 84            	pop	a
10240                     ; 1431 											if(BLE_Con==0){GPIO_SetBits(FULL_LED_PORT,FULL_LED_PIN);}
10242  229d 725d00c2      	tnz	_BLE_Con
10243  22a1 2703          	jreq	L624
10244  22a3 cc2409        	jp	L7263
10245  22a6               L624:
10248  22a6 4b02          	push	#2
10249  22a8 ae5014        	ldw	x,#20500
10250  22ab cd0000        	call	_GPIO_SetBits
10252  22ae 84            	pop	a
10253  22af ac092409      	jpf	L7263
10254  22b3               L5453:
10255                     ; 1434 		case FULL_LED:		GPIO_SetBits(CHG_LED_PORT,CHG_LED_PIN);
10257  22b3 4b01          	push	#1
10258  22b5 ae5014        	ldw	x,#20500
10259  22b8 cd0000        	call	_GPIO_SetBits
10261  22bb 84            	pop	a
10262                     ; 1435 											if(BLE_Con==0){GPIO_ResetBits(FULL_LED_PORT,FULL_LED_PIN);}
10264  22bc 725d00c2      	tnz	_BLE_Con
10265  22c0 2703          	jreq	L034
10266  22c2 cc2409        	jp	L7263
10267  22c5               L034:
10270  22c5 4b02          	push	#2
10271  22c7 ae5014        	ldw	x,#20500
10272  22ca cd0000        	call	_GPIO_ResetBits
10274  22cd 84            	pop	a
10275  22ce ac092409      	jpf	L7263
10276  22d2               L7453:
10277                     ; 1438 		case waiting_LED:	if(waiting_Time==0)
10279  22d2 725d00a5      	tnz	_waiting_Time
10280  22d6 261f          	jrne	L7363
10281                     ; 1440 												GPIO_SetBits(CHG_LED_PORT,CHG_LED_PIN);
10283  22d8 4b01          	push	#1
10284  22da ae5014        	ldw	x,#20500
10285  22dd cd0000        	call	_GPIO_SetBits
10287  22e0 84            	pop	a
10288                     ; 1441 												if(BLE_Con==0){GPIO_SetBits(FULL_LED_PORT,FULL_LED_PIN);}
10290  22e1 725d00c2      	tnz	_BLE_Con
10291  22e5 2703          	jreq	L234
10292  22e7 cc2409        	jp	L7263
10293  22ea               L234:
10296  22ea 4b02          	push	#2
10297  22ec ae5014        	ldw	x,#20500
10298  22ef cd0000        	call	_GPIO_SetBits
10300  22f2 84            	pop	a
10301  22f3 ac092409      	jpf	L7263
10302  22f7               L7363:
10303                     ; 1443 											else if(waiting_Time==1)
10305  22f7 c600a5        	ld	a,_waiting_Time
10306  22fa a101          	cp	a,#1
10307  22fc 2703          	jreq	L434
10308  22fe cc2409        	jp	L7263
10309  2301               L434:
10310                     ; 1445 												GPIO_ResetBits(CHG_LED_PORT,CHG_LED_PIN);
10312  2301 4b01          	push	#1
10313  2303 ae5014        	ldw	x,#20500
10314  2306 cd0000        	call	_GPIO_ResetBits
10316  2309 84            	pop	a
10317                     ; 1446 												if(BLE_Con==0){GPIO_SetBits(FULL_LED_PORT,FULL_LED_PIN);}
10319  230a 725d00c2      	tnz	_BLE_Con
10320  230e 2703          	jreq	L634
10321  2310 cc2409        	jp	L7263
10322  2313               L634:
10325  2313 4b02          	push	#2
10326  2315 ae5014        	ldw	x,#20500
10327  2318 cd0000        	call	_GPIO_SetBits
10329  231b 84            	pop	a
10330  231c ac092409      	jpf	L7263
10331  2320               L1553:
10332                     ; 1450 		case LOW_LED:			if(waiting_Time==0)
10334  2320 725d00a5      	tnz	_waiting_Time
10335  2324 2616          	jrne	L1563
10336                     ; 1452 												GPIO_SetBits(CHG_LED_PORT,CHG_LED_PIN);
10338  2326 4b01          	push	#1
10339  2328 ae5014        	ldw	x,#20500
10340  232b cd0000        	call	_GPIO_SetBits
10342  232e 84            	pop	a
10343                     ; 1453 												GPIO_SetBits(FULL_LED_PORT,FULL_LED_PIN);
10345  232f 4b02          	push	#2
10346  2331 ae5014        	ldw	x,#20500
10347  2334 cd0000        	call	_GPIO_SetBits
10349  2337 84            	pop	a
10351  2338 ac092409      	jpf	L7263
10352  233c               L1563:
10353                     ; 1455 											else if(waiting_Time==1)
10355  233c c600a5        	ld	a,_waiting_Time
10356  233f a101          	cp	a,#1
10357  2341 2703          	jreq	L044
10358  2343 cc2409        	jp	L7263
10359  2346               L044:
10360                     ; 1457 												GPIO_ResetBits(CHG_LED_PORT,CHG_LED_PIN);
10362  2346 4b01          	push	#1
10363  2348 ae5014        	ldw	x,#20500
10364  234b cd0000        	call	_GPIO_ResetBits
10366  234e 84            	pop	a
10367                     ; 1458 												GPIO_ResetBits(FULL_LED_PORT,FULL_LED_PIN);
10369  234f 4b02          	push	#2
10370  2351 ae5014        	ldw	x,#20500
10371  2354 cd0000        	call	_GPIO_ResetBits
10373  2357 84            	pop	a
10374  2358 ac092409      	jpf	L7263
10375  235c               L3553:
10376                     ; 1462 		case Short_LED:		GPIO_ResetBits(CHG_LED_PORT,CHG_LED_PIN);
10378  235c 4b01          	push	#1
10379  235e ae5014        	ldw	x,#20500
10380  2361 cd0000        	call	_GPIO_ResetBits
10382  2364 84            	pop	a
10383                     ; 1463 											GPIO_ResetBits(FULL_LED_PORT,FULL_LED_PIN);
10385  2365 4b02          	push	#2
10386  2367 ae5014        	ldw	x,#20500
10387  236a cd0000        	call	_GPIO_ResetBits
10389  236d 84            	pop	a
10390                     ; 1464 											break;
10392  236e ac092409      	jpf	L7263
10393  2372               L5553:
10394                     ; 1466 		case Warning_LED:	if(Warning_Time%5000==0)
10396  2372 ce00ab        	ldw	x,_Warning_Time
10397  2375 90ae1388      	ldw	y,#5000
10398  2379 65            	divw	x,y
10399  237a 51            	exgw	x,y
10400  237b a30000        	cpw	x,#0
10401  237e 2614          	jrne	L7563
10402                     ; 1468 												GPIO_SetBits(CHG_LED_PORT,CHG_LED_PIN);
10404  2380 4b01          	push	#1
10405  2382 ae5014        	ldw	x,#20500
10406  2385 cd0000        	call	_GPIO_SetBits
10408  2388 84            	pop	a
10409                     ; 1469 												GPIO_ResetBits(FULL_LED_PORT,FULL_LED_PIN);
10411  2389 4b02          	push	#2
10412  238b ae5014        	ldw	x,#20500
10413  238e cd0000        	call	_GPIO_ResetBits
10415  2391 84            	pop	a
10417  2392 2075          	jra	L7263
10418  2394               L7563:
10419                     ; 1471 											else if(Warning_Time%2500==0)
10421  2394 ce00ab        	ldw	x,_Warning_Time
10422  2397 90ae09c4      	ldw	y,#2500
10423  239b 65            	divw	x,y
10424  239c 51            	exgw	x,y
10425  239d a30000        	cpw	x,#0
10426  23a0 2667          	jrne	L7263
10427                     ; 1473 												GPIO_ResetBits(CHG_LED_PORT,CHG_LED_PIN);
10429  23a2 4b01          	push	#1
10430  23a4 ae5014        	ldw	x,#20500
10431  23a7 cd0000        	call	_GPIO_ResetBits
10433  23aa 84            	pop	a
10434                     ; 1474 												GPIO_SetBits(FULL_LED_PORT,FULL_LED_PIN);
10436  23ab 4b02          	push	#2
10437  23ad ae5014        	ldw	x,#20500
10438  23b0 cd0000        	call	_GPIO_SetBits
10440  23b3 84            	pop	a
10441  23b4 2053          	jra	L7263
10442  23b6               L7553:
10443                     ; 1478 		case BLE_C_LED:		if(Tim_500ms==0||Tim_500ms==2)
10445  23b6 725d009a      	tnz	_Tim_500ms
10446  23ba 2707          	jreq	L7663
10448  23bc c6009a        	ld	a,_Tim_500ms
10449  23bf a102          	cp	a,#2
10450  23c1 261d          	jrne	L5663
10451  23c3               L7663:
10452                     ; 1480 												if(BAB_DATA[10]!=2)
10454  23c3 c60017        	ld	a,_BAB_DATA+10
10455  23c6 a102          	cp	a,#2
10456  23c8 270b          	jreq	L1763
10457                     ; 1481 												{GPIO_SetBits(FULL_LED_PORT,FULL_LED_PIN);}
10459  23ca 4b02          	push	#2
10460  23cc ae5014        	ldw	x,#20500
10461  23cf cd0000        	call	_GPIO_SetBits
10463  23d2 84            	pop	a
10465  23d3 2034          	jra	L7263
10466  23d5               L1763:
10467                     ; 1482 												else GPIO_ResetBits(FULL_LED_PORT,FULL_LED_PIN);
10469  23d5 4b02          	push	#2
10470  23d7 ae5014        	ldw	x,#20500
10471  23da cd0000        	call	_GPIO_ResetBits
10473  23dd 84            	pop	a
10474  23de 2029          	jra	L7263
10475  23e0               L5663:
10476                     ; 1484 											else if(Tim_500ms==1||Tim_500ms==3)
10478  23e0 c6009a        	ld	a,_Tim_500ms
10479  23e3 a101          	cp	a,#1
10480  23e5 2707          	jreq	L1073
10482  23e7 c6009a        	ld	a,_Tim_500ms
10483  23ea a103          	cp	a,#3
10484  23ec 261b          	jrne	L7263
10485  23ee               L1073:
10486                     ; 1486 												if(BAB_DATA[10]!=2)
10488  23ee c60017        	ld	a,_BAB_DATA+10
10489  23f1 a102          	cp	a,#2
10490  23f3 270b          	jreq	L3073
10491                     ; 1487 												{GPIO_ResetBits(FULL_LED_PORT,FULL_LED_PIN);}
10493  23f5 4b02          	push	#2
10494  23f7 ae5014        	ldw	x,#20500
10495  23fa cd0000        	call	_GPIO_ResetBits
10497  23fd 84            	pop	a
10499  23fe 2009          	jra	L7263
10500  2400               L3073:
10501                     ; 1488 												else GPIO_SetBits(FULL_LED_PORT,FULL_LED_PIN);
10503  2400 4b02          	push	#2
10504  2402 ae5014        	ldw	x,#20500
10505  2405 cd0000        	call	_GPIO_SetBits
10507  2408 84            	pop	a
10508  2409               L7263:
10509                     ; 1492 }
10512  2409 81            	ret
10538                     ; 1494 void BLE_Connect_Check(void)
10538                     ; 1495 {
10539                     	switch	.text
10540  240a               _BLE_Connect_Check:
10544                     ; 1496 	if(BLE_LED==1)
10546  240a c600c1        	ld	a,_BLE_LED
10547  240d a101          	cp	a,#1
10548  240f 260c          	jrne	L7173
10549                     ; 1498 		if(BLE_Con==1)
10551  2411 c600c2        	ld	a,_BLE_Con
10552  2414 a101          	cp	a,#1
10553  2416 2605          	jrne	L7173
10554                     ; 1499 		{	LED_CTR(BLE_C_LED);	}	
10556  2418 a608          	ld	a,#8
10557  241a cd2231        	call	_LED_CTR
10559  241d               L7173:
10560                     ; 1501 }
10563  241d 81            	ret
10611                     ; 1503 uint16_t Channel_7_ReadADC(void)//VIN_ADC
10611                     ; 1504 {
10612                     	switch	.text
10613  241e               _Channel_7_ReadADC:
10615  241e 5203          	subw	sp,#3
10616       00000003      OFST:	set	3
10619                     ; 1508 	ADC_DeInit(ADC1);
10621  2420 ae5340        	ldw	x,#21312
10622  2423 cd0000        	call	_ADC_DeInit
10624                     ; 1509 	ADC_Init(ADC1, ADC_ConversionMode_Continuous, ADC_Resolution_12Bit, ADC_Prescaler_2);
10626  2426 4b80          	push	#128
10627  2428 4b00          	push	#0
10628  242a 4b04          	push	#4
10629  242c ae5340        	ldw	x,#21312
10630  242f cd0000        	call	_ADC_Init
10632  2432 5b03          	addw	sp,#3
10633                     ; 1510 	ADC_SamplingTimeConfig(ADC1, ADC_Group_SlowChannels, ADC_SamplingTime_384Cycles);
10635  2434 4b07          	push	#7
10636  2436 4b00          	push	#0
10637  2438 ae5340        	ldw	x,#21312
10638  243b cd0000        	call	_ADC_SamplingTimeConfig
10640  243e 85            	popw	x
10641                     ; 1511 	ADC_Cmd(ADC1, ENABLE);
10643  243f 4b01          	push	#1
10644  2441 ae5340        	ldw	x,#21312
10645  2444 cd0000        	call	_ADC_Cmd
10647  2447 84            	pop	a
10648                     ; 1512 	ADC_ChannelCmd(ADC1, ADC_Channel_7, ENABLE);/*--------Channel_7----*/
10650  2448 4b01          	push	#1
10651  244a ae0380        	ldw	x,#896
10652  244d 89            	pushw	x
10653  244e ae5340        	ldw	x,#21312
10654  2451 cd0000        	call	_ADC_ChannelCmd
10656  2454 5b03          	addw	sp,#3
10657                     ; 1513 	ADC_SoftwareStartConv(ADC1);
10659  2456 ae5340        	ldw	x,#21312
10660  2459 cd0000        	call	_ADC_SoftwareStartConv
10662                     ; 1514 	for(j=5 ; j>0 ; j--);  //delay for stabilization
10664  245c a605          	ld	a,#5
10665  245e 6b03          	ld	(OFST+0,sp),a
10668  2460 2002          	jra	L7473
10669  2462               L3473:
10673  2462 0a03          	dec	(OFST+0,sp)
10675  2464               L7473:
10678  2464 0d03          	tnz	(OFST+0,sp)
10679  2466 26fa          	jrne	L3473
10681  2468               L5573:
10682                     ; 1515 	while(!(ADC1->SR & 0x01)); //wait for end of conversion
10684  2468 c65343        	ld	a,21315
10685  246b a501          	bcp	a,#1
10686  246d 27f9          	jreq	L5573
10687                     ; 1516 	result = ADC_GetConversionValue(ADC1);
10689  246f ae5340        	ldw	x,#21312
10690  2472 cd0000        	call	_ADC_GetConversionValue
10692  2475 1f01          	ldw	(OFST-2,sp),x
10694                     ; 1517   return result;
10696  2477 1e01          	ldw	x,(OFST-2,sp)
10699  2479 5b03          	addw	sp,#3
10700  247b 81            	ret
10748                     ; 1520 uint16_t Channel_3_ReadADC(void)//BAT_ADC
10748                     ; 1521 {
10749                     	switch	.text
10750  247c               _Channel_3_ReadADC:
10752  247c 5203          	subw	sp,#3
10753       00000003      OFST:	set	3
10756                     ; 1525 	ADC_DeInit(ADC1);
10758  247e ae5340        	ldw	x,#21312
10759  2481 cd0000        	call	_ADC_DeInit
10761                     ; 1526 	ADC_Init(ADC1, ADC_ConversionMode_Continuous, ADC_Resolution_12Bit, ADC_Prescaler_2);
10763  2484 4b80          	push	#128
10764  2486 4b00          	push	#0
10765  2488 4b04          	push	#4
10766  248a ae5340        	ldw	x,#21312
10767  248d cd0000        	call	_ADC_Init
10769  2490 5b03          	addw	sp,#3
10770                     ; 1527 	ADC_SamplingTimeConfig(ADC1, ADC_Group_SlowChannels, ADC_SamplingTime_384Cycles);
10772  2492 4b07          	push	#7
10773  2494 4b00          	push	#0
10774  2496 ae5340        	ldw	x,#21312
10775  2499 cd0000        	call	_ADC_SamplingTimeConfig
10777  249c 85            	popw	x
10778                     ; 1528 	ADC_Cmd(ADC1, ENABLE);
10780  249d 4b01          	push	#1
10781  249f ae5340        	ldw	x,#21312
10782  24a2 cd0000        	call	_ADC_Cmd
10784  24a5 84            	pop	a
10785                     ; 1529 	ADC_ChannelCmd(ADC1, ADC_Channel_3, ENABLE);/*--------Channel_3----*/
10787  24a6 4b01          	push	#1
10788  24a8 ae0308        	ldw	x,#776
10789  24ab 89            	pushw	x
10790  24ac ae5340        	ldw	x,#21312
10791  24af cd0000        	call	_ADC_ChannelCmd
10793  24b2 5b03          	addw	sp,#3
10794                     ; 1530 	ADC_SoftwareStartConv(ADC1);
10796  24b4 ae5340        	ldw	x,#21312
10797  24b7 cd0000        	call	_ADC_SoftwareStartConv
10799                     ; 1531 	for(j=5 ; j>0 ; j--);  //delay for stabilization
10801  24ba a605          	ld	a,#5
10802  24bc 6b03          	ld	(OFST+0,sp),a
10805  24be 2002          	jra	L5004
10806  24c0               L1004:
10810  24c0 0a03          	dec	(OFST+0,sp)
10812  24c2               L5004:
10815  24c2 0d03          	tnz	(OFST+0,sp)
10816  24c4 26fa          	jrne	L1004
10818  24c6               L3104:
10819                     ; 1532 	while(!(ADC1->SR & 0x01)); //wait for end of conversion
10821  24c6 c65343        	ld	a,21315
10822  24c9 a501          	bcp	a,#1
10823  24cb 27f9          	jreq	L3104
10824                     ; 1533 	result = ADC_GetConversionValue(ADC1);
10826  24cd ae5340        	ldw	x,#21312
10827  24d0 cd0000        	call	_ADC_GetConversionValue
10829  24d3 1f01          	ldw	(OFST-2,sp),x
10831                     ; 1534   return result;
10833  24d5 1e01          	ldw	x,(OFST-2,sp)
10836  24d7 5b03          	addw	sp,#3
10837  24d9 81            	ret
10885                     ; 1537 uint16_t Channel_4_ReadADC(void)//ACC_ADC
10885                     ; 1538 {
10886                     	switch	.text
10887  24da               _Channel_4_ReadADC:
10889  24da 5203          	subw	sp,#3
10890       00000003      OFST:	set	3
10893                     ; 1542 	ADC_DeInit(ADC1);
10895  24dc ae5340        	ldw	x,#21312
10896  24df cd0000        	call	_ADC_DeInit
10898                     ; 1543 	ADC_Init(ADC1, ADC_ConversionMode_Continuous, ADC_Resolution_12Bit, ADC_Prescaler_2);
10900  24e2 4b80          	push	#128
10901  24e4 4b00          	push	#0
10902  24e6 4b04          	push	#4
10903  24e8 ae5340        	ldw	x,#21312
10904  24eb cd0000        	call	_ADC_Init
10906  24ee 5b03          	addw	sp,#3
10907                     ; 1544 	ADC_SamplingTimeConfig(ADC1, ADC_Group_SlowChannels, ADC_SamplingTime_384Cycles);
10909  24f0 4b07          	push	#7
10910  24f2 4b00          	push	#0
10911  24f4 ae5340        	ldw	x,#21312
10912  24f7 cd0000        	call	_ADC_SamplingTimeConfig
10914  24fa 85            	popw	x
10915                     ; 1545 	ADC_Cmd(ADC1, ENABLE);
10917  24fb 4b01          	push	#1
10918  24fd ae5340        	ldw	x,#21312
10919  2500 cd0000        	call	_ADC_Cmd
10921  2503 84            	pop	a
10922                     ; 1546 	ADC_ChannelCmd(ADC1, ADC_Channel_4, ENABLE);/*--------Channel_4----*/
10924  2504 4b01          	push	#1
10925  2506 ae0310        	ldw	x,#784
10926  2509 89            	pushw	x
10927  250a ae5340        	ldw	x,#21312
10928  250d cd0000        	call	_ADC_ChannelCmd
10930  2510 5b03          	addw	sp,#3
10931                     ; 1547 	ADC_SoftwareStartConv(ADC1);
10933  2512 ae5340        	ldw	x,#21312
10934  2515 cd0000        	call	_ADC_SoftwareStartConv
10936                     ; 1548 	for(j=5 ; j>0 ; j--);  //delay for stabilization
10938  2518 a605          	ld	a,#5
10939  251a 6b03          	ld	(OFST+0,sp),a
10942  251c 2002          	jra	L3404
10943  251e               L7304:
10947  251e 0a03          	dec	(OFST+0,sp)
10949  2520               L3404:
10952  2520 0d03          	tnz	(OFST+0,sp)
10953  2522 26fa          	jrne	L7304
10955  2524               L1504:
10956                     ; 1549 	while(!(ADC1->SR & 0x01)); //wait for end of conversion
10958  2524 c65343        	ld	a,21315
10959  2527 a501          	bcp	a,#1
10960  2529 27f9          	jreq	L1504
10961                     ; 1550 	result = ADC_GetConversionValue(ADC1);
10963  252b ae5340        	ldw	x,#21312
10964  252e cd0000        	call	_ADC_GetConversionValue
10966  2531 1f01          	ldw	(OFST-2,sp),x
10968                     ; 1551   return result;
10970  2533 1e01          	ldw	x,(OFST-2,sp)
10973  2535 5b03          	addw	sp,#3
10974  2537 81            	ret
11022                     ; 1554 uint16_t Channel_1_ReadADC(void)//OUT_ADC
11022                     ; 1555 {
11023                     	switch	.text
11024  2538               _Channel_1_ReadADC:
11026  2538 5203          	subw	sp,#3
11027       00000003      OFST:	set	3
11030                     ; 1559 	ADC_DeInit(ADC1);
11032  253a ae5340        	ldw	x,#21312
11033  253d cd0000        	call	_ADC_DeInit
11035                     ; 1560 	ADC_Init(ADC1, ADC_ConversionMode_Continuous, ADC_Resolution_12Bit, ADC_Prescaler_2);
11037  2540 4b80          	push	#128
11038  2542 4b00          	push	#0
11039  2544 4b04          	push	#4
11040  2546 ae5340        	ldw	x,#21312
11041  2549 cd0000        	call	_ADC_Init
11043  254c 5b03          	addw	sp,#3
11044                     ; 1561 	ADC_SamplingTimeConfig(ADC1, ADC_Group_SlowChannels, ADC_SamplingTime_384Cycles);
11046  254e 4b07          	push	#7
11047  2550 4b00          	push	#0
11048  2552 ae5340        	ldw	x,#21312
11049  2555 cd0000        	call	_ADC_SamplingTimeConfig
11051  2558 85            	popw	x
11052                     ; 1562 	ADC_Cmd(ADC1, ENABLE);
11054  2559 4b01          	push	#1
11055  255b ae5340        	ldw	x,#21312
11056  255e cd0000        	call	_ADC_Cmd
11058  2561 84            	pop	a
11059                     ; 1563 	ADC_ChannelCmd(ADC1, ADC_Channel_1, ENABLE);/*--------Channel_1----*/
11061  2562 4b01          	push	#1
11062  2564 ae0302        	ldw	x,#770
11063  2567 89            	pushw	x
11064  2568 ae5340        	ldw	x,#21312
11065  256b cd0000        	call	_ADC_ChannelCmd
11067  256e 5b03          	addw	sp,#3
11068                     ; 1564 	ADC_SoftwareStartConv(ADC1);
11070  2570 ae5340        	ldw	x,#21312
11071  2573 cd0000        	call	_ADC_SoftwareStartConv
11073                     ; 1565 	for(j=5 ; j>0 ; j--);  //delay for stabilization
11075  2576 a605          	ld	a,#5
11076  2578 6b03          	ld	(OFST+0,sp),a
11079  257a 2002          	jra	L1014
11080  257c               L5704:
11084  257c 0a03          	dec	(OFST+0,sp)
11086  257e               L1014:
11089  257e 0d03          	tnz	(OFST+0,sp)
11090  2580 26fa          	jrne	L5704
11092  2582               L7014:
11093                     ; 1566 	while(!(ADC1->SR & 0x01)); //wait for end of conversion
11095  2582 c65343        	ld	a,21315
11096  2585 a501          	bcp	a,#1
11097  2587 27f9          	jreq	L7014
11098                     ; 1567 	result = ADC_GetConversionValue(ADC1);
11100  2589 ae5340        	ldw	x,#21312
11101  258c cd0000        	call	_ADC_GetConversionValue
11103  258f 1f01          	ldw	(OFST-2,sp),x
11105                     ; 1568   return result;
11107  2591 1e01          	ldw	x,(OFST-2,sp)
11110  2593 5b03          	addw	sp,#3
11111  2595 81            	ret
11172                     ; 1571 uint16_t Channel_7_AvgADC(void)//VIN
11172                     ; 1572 {
11173                     	switch	.text
11174  2596               _Channel_7_AvgADC:
11176  2596 5208          	subw	sp,#8
11177       00000008      OFST:	set	8
11180                     ; 1575   a1 = Channel_7_ReadADC();
11182  2598 cd241e        	call	_Channel_7_ReadADC
11184  259b 1f07          	ldw	(OFST-1,sp),x
11186                     ; 1576   a2 = Channel_7_ReadADC();
11188  259d cd241e        	call	_Channel_7_ReadADC
11190  25a0 1f01          	ldw	(OFST-7,sp),x
11192                     ; 1577   a3 = Channel_7_ReadADC();
11194  25a2 cd241e        	call	_Channel_7_ReadADC
11196  25a5 1f03          	ldw	(OFST-5,sp),x
11198                     ; 1578   a4 = Channel_7_ReadADC();
11200  25a7 cd241e        	call	_Channel_7_ReadADC
11202  25aa 1f05          	ldw	(OFST-3,sp),x
11204                     ; 1579   avg = (a1+a2+a3+a4)/4;
11206  25ac 1e07          	ldw	x,(OFST-1,sp)
11207  25ae 72fb01        	addw	x,(OFST-7,sp)
11208  25b1 72fb03        	addw	x,(OFST-5,sp)
11209  25b4 72fb05        	addw	x,(OFST-3,sp)
11210  25b7 54            	srlw	x
11211  25b8 54            	srlw	x
11212  25b9 1f07          	ldw	(OFST-1,sp),x
11214                     ; 1580   return avg;
11216  25bb 1e07          	ldw	x,(OFST-1,sp)
11219  25bd 5b08          	addw	sp,#8
11220  25bf 81            	ret
11281                     ; 1583 uint16_t Channel_3_AvgADC(void)//BAT
11281                     ; 1584 {
11282                     	switch	.text
11283  25c0               _Channel_3_AvgADC:
11285  25c0 5208          	subw	sp,#8
11286       00000008      OFST:	set	8
11289                     ; 1587   a1 = Channel_3_ReadADC();
11291  25c2 cd247c        	call	_Channel_3_ReadADC
11293  25c5 1f07          	ldw	(OFST-1,sp),x
11295                     ; 1588   a2 = Channel_3_ReadADC();
11297  25c7 cd247c        	call	_Channel_3_ReadADC
11299  25ca 1f01          	ldw	(OFST-7,sp),x
11301                     ; 1589   a3 = Channel_3_ReadADC();
11303  25cc cd247c        	call	_Channel_3_ReadADC
11305  25cf 1f03          	ldw	(OFST-5,sp),x
11307                     ; 1590   a4 = Channel_3_ReadADC();
11309  25d1 cd247c        	call	_Channel_3_ReadADC
11311  25d4 1f05          	ldw	(OFST-3,sp),x
11313                     ; 1591   avg = (a1+a2+a3+a4)/4;
11315  25d6 1e07          	ldw	x,(OFST-1,sp)
11316  25d8 72fb01        	addw	x,(OFST-7,sp)
11317  25db 72fb03        	addw	x,(OFST-5,sp)
11318  25de 72fb05        	addw	x,(OFST-3,sp)
11319  25e1 54            	srlw	x
11320  25e2 54            	srlw	x
11321  25e3 1f07          	ldw	(OFST-1,sp),x
11323                     ; 1592   return avg;
11325  25e5 1e07          	ldw	x,(OFST-1,sp)
11328  25e7 5b08          	addw	sp,#8
11329  25e9 81            	ret
11390                     ; 1595 uint16_t Channel_4_AvgADC(void)//ACC
11390                     ; 1596 {
11391                     	switch	.text
11392  25ea               _Channel_4_AvgADC:
11394  25ea 5208          	subw	sp,#8
11395       00000008      OFST:	set	8
11398                     ; 1599   a1 = Channel_4_ReadADC();
11400  25ec cd24da        	call	_Channel_4_ReadADC
11402  25ef 1f07          	ldw	(OFST-1,sp),x
11404                     ; 1600   a2 = Channel_4_ReadADC();
11406  25f1 cd24da        	call	_Channel_4_ReadADC
11408  25f4 1f01          	ldw	(OFST-7,sp),x
11410                     ; 1601   a3 = Channel_4_ReadADC();
11412  25f6 cd24da        	call	_Channel_4_ReadADC
11414  25f9 1f03          	ldw	(OFST-5,sp),x
11416                     ; 1602   a4 = Channel_4_ReadADC();
11418  25fb cd24da        	call	_Channel_4_ReadADC
11420  25fe 1f05          	ldw	(OFST-3,sp),x
11422                     ; 1603   avg = (a1+a2+a3+a4)/4;
11424  2600 1e07          	ldw	x,(OFST-1,sp)
11425  2602 72fb01        	addw	x,(OFST-7,sp)
11426  2605 72fb03        	addw	x,(OFST-5,sp)
11427  2608 72fb05        	addw	x,(OFST-3,sp)
11428  260b 54            	srlw	x
11429  260c 54            	srlw	x
11430  260d 1f07          	ldw	(OFST-1,sp),x
11432                     ; 1604   return avg;
11434  260f 1e07          	ldw	x,(OFST-1,sp)
11437  2611 5b08          	addw	sp,#8
11438  2613 81            	ret
11499                     ; 1607 uint16_t Channel_1_AvgADC(void)//OUT
11499                     ; 1608 {
11500                     	switch	.text
11501  2614               _Channel_1_AvgADC:
11503  2614 5208          	subw	sp,#8
11504       00000008      OFST:	set	8
11507                     ; 1611   a1 = Channel_1_ReadADC();
11509  2616 cd2538        	call	_Channel_1_ReadADC
11511  2619 1f07          	ldw	(OFST-1,sp),x
11513                     ; 1612   a2 = Channel_1_ReadADC();
11515  261b cd2538        	call	_Channel_1_ReadADC
11517  261e 1f01          	ldw	(OFST-7,sp),x
11519                     ; 1613   a3 = Channel_1_ReadADC();
11521  2620 cd2538        	call	_Channel_1_ReadADC
11523  2623 1f03          	ldw	(OFST-5,sp),x
11525                     ; 1614   a4 = Channel_1_ReadADC();
11527  2625 cd2538        	call	_Channel_1_ReadADC
11529  2628 1f05          	ldw	(OFST-3,sp),x
11531                     ; 1615   avg = (a1+a2+a3+a4)/4;
11533  262a 1e07          	ldw	x,(OFST-1,sp)
11534  262c 72fb01        	addw	x,(OFST-7,sp)
11535  262f 72fb03        	addw	x,(OFST-5,sp)
11536  2632 72fb05        	addw	x,(OFST-3,sp)
11537  2635 54            	srlw	x
11538  2636 54            	srlw	x
11539  2637 1f07          	ldw	(OFST-1,sp),x
11541                     ; 1616   return avg;
11543  2639 1e07          	ldw	x,(OFST-1,sp)
11546  263b 5b08          	addw	sp,#8
11547  263d 81            	ret
11585                     ; 1619 void ADC_CHK(void)
11585                     ; 1620 {
11586                     	switch	.text
11587  263e               _ADC_CHK:
11591                     ; 1621 	if(TIM_1S>=1)
11593  263e 725d009b      	tnz	_TIM_1S
11594  2642 2603          	jrne	L664
11595  2644 cc26d3        	jp	L3424
11596  2647               L664:
11597                     ; 1623 		ADC_VIN = Channel_7_AvgADC();
11599  2647 cd2596        	call	_Channel_7_AvgADC
11601  264a cf006a        	ldw	_ADC_VIN,x
11602                     ; 1624 		VIN_Volt = (uint16_t)((uint16_t)ADC_VIN*0.1557279236); //----------VIN_CHK
11604  264d ce006a        	ldw	x,_ADC_VIN
11605  2650 cd0000        	call	c_uitof
11607  2653 ae01b7        	ldw	x,#L1524
11608  2656 cd0000        	call	c_fmul
11610  2659 cd0000        	call	c_ftol
11612  265c b603          	ld	a,c_lreg+3
11613  265e c70074        	ld	_VIN_Volt,a
11614                     ; 1626 		ADC_BAT = Channel_3_AvgADC();
11616  2661 cd25c0        	call	_Channel_3_AvgADC
11618  2664 cf006c        	ldw	_ADC_BAT,x
11619                     ; 1627 		BAT_Volt = (uint16_t)((uint16_t)ADC_BAT*0.0559273422); //----------BAT_CHK
11621  2667 ce006c        	ldw	x,_ADC_BAT
11622  266a cd0000        	call	c_uitof
11624  266d ae01b3        	ldw	x,#L1624
11625  2670 cd0000        	call	c_fmul
11627  2673 cd0000        	call	c_ftol
11629  2676 b603          	ld	a,c_lreg+3
11630  2678 c70075        	ld	_BAT_Volt,a
11631                     ; 1630 			if (powerOnSetupComplete)
11633  267b 725d00e3      	tnz	_powerOnSetupComplete
11634  267f 271a          	jreq	L5624
11635                     ; 1632 				if (BAT_Volt < 100) pcmStateEntered = 1;
11637  2681 c60075        	ld	a,_BAT_Volt
11638  2684 a164          	cp	a,#100
11639  2686 2406          	jruge	L7624
11642  2688 350100e4      	mov	_pcmStateEntered,#1
11644  268c 2018          	jra	L5724
11645  268e               L7624:
11646                     ; 1633 				else if (BAT_Volt > 120) pcmStateEntered = 0;
11648  268e c60075        	ld	a,_BAT_Volt
11649  2691 a179          	cp	a,#121
11650  2693 2511          	jrult	L5724
11653  2695 725f00e4      	clr	_pcmStateEntered
11654  2699 200b          	jra	L5724
11655  269b               L5624:
11656                     ; 1637 				if (BAT_Volt < 120) pcmStateEntered = 1;
11658  269b c60075        	ld	a,_BAT_Volt
11659  269e a178          	cp	a,#120
11660  26a0 2404          	jruge	L5724
11663  26a2 350100e4      	mov	_pcmStateEntered,#1
11664  26a6               L5724:
11665                     ; 1641 		ADC_ACC = Channel_4_AvgADC();
11667  26a6 cd25ea        	call	_Channel_4_AvgADC
11669  26a9 cf006e        	ldw	_ADC_ACC,x
11670                     ; 1642 		ACC_Volt = (uint16_t)((uint16_t)ADC_ACC*0.1564935064); //----------ACC_CHK
11672  26ac ce006e        	ldw	x,_ADC_ACC
11673  26af cd0000        	call	c_uitof
11675  26b2 ae01af        	ldw	x,#L5034
11676  26b5 cd0000        	call	c_fmul
11678  26b8 cd0000        	call	c_ftol
11680  26bb b603          	ld	a,c_lreg+3
11681  26bd c7007b        	ld	_ACC_Volt,a
11682                     ; 1644 		ADC_OUT = Channel_1_AvgADC();
11684  26c0 cd2614        	call	_Channel_1_AvgADC
11686  26c3 cf0070        	ldw	_ADC_OUT,x
11687                     ; 1645 		ADC_BBT = ADC_BAT-1655;
11689  26c6 ce006c        	ldw	x,_ADC_BAT
11690  26c9 1d0677        	subw	x,#1655
11691  26cc cf0072        	ldw	_ADC_BBT,x
11692                     ; 1647 		TIM_1S=0;
11694  26cf 725f009b      	clr	_TIM_1S
11695  26d3               L3424:
11696                     ; 1649 }
11699  26d3 81            	ret
11731                     ; 1651 void DISCHG_CHK(void)
11731                     ; 1652 {
11732                     	switch	.text
11733  26d4               _DISCHG_CHK:
11737                     ; 1653 	if(CHG_State==1)
11739  26d4 c600b2        	ld	a,_CHG_State
11740  26d7 a101          	cp	a,#1
11741  26d9 2634          	jrne	L1234
11742                     ; 1655 		if (BAT_Volt>=120)
11744  26db c60075        	ld	a,_BAT_Volt
11745  26de a178          	cp	a,#120
11746  26e0 251b          	jrult	L3234
11747                     ; 1658 			GPIO_ResetBits(Dischg_PORT,Dischg_PIN);
11749  26e2 4b04          	push	#4
11750  26e4 ae5005        	ldw	x,#20485
11751  26e7 cd0000        	call	_GPIO_ResetBits
11753  26ea 84            	pop	a
11754                     ; 1659 			DIS_Lock=0;
11756  26eb 725f00b7      	clr	_DIS_Lock
11757                     ; 1660 			DIS_Unlock=1;
11759  26ef 350100b8      	mov	_DIS_Unlock,#1
11760                     ; 1661 			DIS_Lock_10s=0;
11762  26f3 725f00a7      	clr	_DIS_Lock_10s
11763                     ; 1662 			DIS_Unlock_10s=0;
11765  26f7 725f00a9      	clr	_DIS_Unlock_10s
11767  26fb 207c          	jra	L1334
11768  26fd               L3234:
11769                     ; 1664 		else if (BAT_Volt <= 112) GPIO_SetBits(Dischg_PORT,Dischg_PIN);	//Lock
11771  26fd c60075        	ld	a,_BAT_Volt
11772  2700 a171          	cp	a,#113
11773  2702 2475          	jruge	L1334
11776  2704 4b04          	push	#4
11777  2706 ae5005        	ldw	x,#20485
11778  2709 cd0000        	call	_GPIO_SetBits
11780  270c 84            	pop	a
11781  270d 206a          	jra	L1334
11782  270f               L1234:
11783                     ; 1666 	else if(DIS_Lock==1)
11785  270f c600b7        	ld	a,_DIS_Lock
11786  2712 a101          	cp	a,#1
11787  2714 261a          	jrne	L3334
11788                     ; 1669 		if (BAT_Volt <= 112) GPIO_SetBits(Dischg_PORT,Dischg_PIN);			//Lock
11790  2716 c60075        	ld	a,_BAT_Volt
11791  2719 a171          	cp	a,#113
11792  271b 2409          	jruge	L5334
11795  271d 4b04          	push	#4
11796  271f ae5005        	ldw	x,#20485
11797  2722 cd0000        	call	_GPIO_SetBits
11799  2725 84            	pop	a
11800  2726               L5334:
11801                     ; 1672 		DIS_Lock_10s=0;
11803  2726 725f00a7      	clr	_DIS_Lock_10s
11804                     ; 1673 		DIS_Unlock_10s=0;
11806  272a 725f00a9      	clr	_DIS_Unlock_10s
11808  272e 2049          	jra	L1334
11809  2730               L3334:
11810                     ; 1675 	else if (BAT_Volt <= 120 && Percentgauge == 0)
11812  2730 c60075        	ld	a,_BAT_Volt
11813  2733 a179          	cp	a,#121
11814  2735 2410          	jruge	L1434
11816  2737 725d00c0      	tnz	_Percentgauge
11817  273b 260a          	jrne	L1434
11818                     ; 1677 		DIS_Lock_10s=1;
11820  273d 350100a7      	mov	_DIS_Lock_10s,#1
11821                     ; 1678 		DIS_Unlock_10s=0;
11823  2741 725f00a9      	clr	_DIS_Unlock_10s
11825  2745 2032          	jra	L1334
11826  2747               L1434:
11827                     ; 1680 	else if(DIS_Unlock==1)
11829  2747 c600b8        	ld	a,_DIS_Unlock
11830  274a a101          	cp	a,#1
11831  274c 261a          	jrne	L5434
11832                     ; 1682 		if (BAT_Volt <= 112) GPIO_SetBits(Dischg_PORT,Dischg_PIN);			//Lock
11834  274e c60075        	ld	a,_BAT_Volt
11835  2751 a171          	cp	a,#113
11836  2753 2409          	jruge	L7434
11839  2755 4b04          	push	#4
11840  2757 ae5005        	ldw	x,#20485
11841  275a cd0000        	call	_GPIO_SetBits
11843  275d 84            	pop	a
11844  275e               L7434:
11845                     ; 1687 		DIS_Lock_10s=0;
11847  275e 725f00a7      	clr	_DIS_Lock_10s
11848                     ; 1688 		DIS_Unlock_10s=0;
11850  2762 725f00a9      	clr	_DIS_Unlock_10s
11852  2766 2011          	jra	L1334
11853  2768               L5434:
11854                     ; 1692 		DIS_Lock_10s=0;
11856  2768 725f00a7      	clr	_DIS_Lock_10s
11857                     ; 1693 		DIS_Unlock_10s=1;
11859  276c 350100a9      	mov	_DIS_Unlock_10s,#1
11860                     ; 1694 		GPIO_ResetBits(Dischg_PORT,Dischg_PIN);	//UnLock
11862  2770 4b04          	push	#4
11863  2772 ae5005        	ldw	x,#20485
11864  2775 cd0000        	call	_GPIO_ResetBits
11866  2778 84            	pop	a
11867  2779               L1334:
11868                     ; 1696 }
11871  2779 81            	ret
11908                     ; 1698 void CHG_CHK(void)
11908                     ; 1699 {
11909                     	switch	.text
11910  277a               _CHG_CHK:
11914                     ; 1700 	if(NTC_Stop==0)
11916  277a 725d00b0      	tnz	_NTC_Stop
11917  277e 2703          	jreq	L474
11918  2780 cc281a        	jp	L3634
11919  2783               L474:
11920                     ; 1702 			if(VIN_Volt>=100)//-------------------------Vin_10V
11922  2783 c60074        	ld	a,_VIN_Volt
11923  2786 a164          	cp	a,#100
11924  2788 2579          	jrult	L5634
11925                     ; 1704 						STATE_CHG = GPIO_ReadInputDataBit(STATE_PORT,STATE_PIN); //STATE_1
11927  278a 4b40          	push	#64
11928  278c ae500a        	ldw	x,#20490
11929  278f cd0000        	call	_GPIO_ReadInputDataBit
11931  2792 5b01          	addw	sp,#1
11932  2794 c700b6        	ld	_STATE_CHG,a
11933                     ; 1706 						if(ACC_Volt>=ACC_CHG)
11935  2797 c6007b        	ld	a,_ACC_Volt
11936  279a c10094        	cp	a,_ACC_CHG
11937  279d 2524          	jrult	L7634
11938                     ; 1708 								if(TIM_CHG_1S1>=10)//------10s
11940  279f c600a2        	ld	a,_TIM_CHG_1S1
11941  27a2 a10a          	cp	a,#10
11942  27a4 2516          	jrult	L1734
11943                     ; 1710 										CHG_State=1;
11945  27a6 350100b2      	mov	_CHG_State,#1
11946                     ; 1711 										LCHG_State=0;
11948  27aa 725f00b3      	clr	_LCHG_State
11949                     ; 1712 										TIM_CHG_1S1=10;
11951  27ae 350a00a2      	mov	_TIM_CHG_1S1,#10
11952                     ; 1713 										TIM_CHG_1S2=0;
11954  27b2 725f00a3      	clr	_TIM_CHG_1S2
11955                     ; 1715 										disChgNeedDelay = 1;
11957  27b6 350100da      	mov	_disChgNeedDelay,#1
11959  27ba 2073          	jra	L1144
11960  27bc               L1734:
11961                     ; 1717 								else LED_CTR(waiting_LED);
11963  27bc a604          	ld	a,#4
11964  27be cd2231        	call	_LED_CTR
11966  27c1 206c          	jra	L1144
11967  27c3               L7634:
11968                     ; 1719 						else if(ACC_Volt<=ACC_LOW)
11970  27c3 c6007b        	ld	a,_ACC_Volt
11971  27c6 c10096        	cp	a,_ACC_LOW
11972  27c9 2217          	jrugt	L7734
11973                     ; 1721 								LED_CTR(STOP_LED);
11975  27cb a601          	ld	a,#1
11976  27cd cd2231        	call	_LED_CTR
11978                     ; 1722 								CHG_State=0;
11980  27d0 725f00b2      	clr	_CHG_State
11981                     ; 1723 								LCHG_State=0;
11983  27d4 725f00b3      	clr	_LCHG_State
11984                     ; 1724 								TIM_CHG_1S1=0;
11986  27d8 725f00a2      	clr	_TIM_CHG_1S1
11987                     ; 1725 								TIM_CHG_1S2=0;
11989  27dc 725f00a3      	clr	_TIM_CHG_1S2
11991  27e0 204d          	jra	L1144
11992  27e2               L7734:
11993                     ; 1727 						else if(ACC_Volt<=ACC_DIS)
11995  27e2 c6007b        	ld	a,_ACC_Volt
11996  27e5 c10095        	cp	a,_ACC_DIS
11997  27e8 2245          	jrugt	L1144
11998                     ; 1729 								if(TIM_CHG_1S2>5)//--------5s
12000  27ea c600a3        	ld	a,_TIM_CHG_1S2
12001  27ed a106          	cp	a,#6
12002  27ef 253e          	jrult	L1144
12003                     ; 1731 										CHG_State=0;
12005  27f1 725f00b2      	clr	_CHG_State
12006                     ; 1732 										LCHG_State=1;
12008  27f5 350100b3      	mov	_LCHG_State,#1
12009                     ; 1733 										TIM_CHG_1S1=0;
12011  27f9 725f00a2      	clr	_TIM_CHG_1S1
12012                     ; 1734 										TIM_CHG_1S2=5;
12014  27fd 350500a3      	mov	_TIM_CHG_1S2,#5
12015  2801 202c          	jra	L1144
12016  2803               L5634:
12017                     ; 1738 			else CHG_State=0,LCHG_State=0,LED_CTR(STOP_LED),TIM_CHG_1S1=0,TIM_CHG_1S2=0;
12019  2803 725f00b2      	clr	_CHG_State
12020  2807 725f00b3      	clr	_LCHG_State
12021  280b a601          	ld	a,#1
12022  280d cd2231        	call	_LED_CTR
12024  2810 725f00a2      	clr	_TIM_CHG_1S1
12025  2814 725f00a3      	clr	_TIM_CHG_1S2
12026  2818 2015          	jra	L1144
12027  281a               L3634:
12028                     ; 1740 	else CHG_State=0,LCHG_State=0,LED_CTR(Warning_LED),TIM_CHG_1S1=0,TIM_CHG_1S2=0;
12030  281a 725f00b2      	clr	_CHG_State
12031  281e 725f00b3      	clr	_LCHG_State
12032  2822 a607          	ld	a,#7
12033  2824 cd2231        	call	_LED_CTR
12035  2827 725f00a2      	clr	_TIM_CHG_1S1
12036  282b 725f00a3      	clr	_TIM_CHG_1S2
12037  282f               L1144:
12038                     ; 1741 }
12041  282f 81            	ret
12078                     ; 1743 void CHG_STATE(void)
12078                     ; 1744 {
12079                     	switch	.text
12080  2830               _CHG_STATE:
12084                     ; 1745 	if(CHG_State==1)
12086  2830 c600b2        	ld	a,_CHG_State
12087  2833 a101          	cp	a,#1
12088  2835 2675          	jrne	L3244
12089                     ; 1747 		if(BAT_Volt<=80)
12091  2837 c60075        	ld	a,_BAT_Volt
12092  283a a151          	cp	a,#81
12093  283c 2425          	jruge	L5244
12094                     ; 1751 			if (disChgNeedDelay)
12096  283e 725d00da      	tnz	_disChgNeedDelay
12097  2842 2713          	jreq	L7244
12098                     ; 1753 				GPIO_SetBits(Dischg_PORT,Dischg_PIN);
12100  2844 4b04          	push	#4
12101  2846 ae5005        	ldw	x,#20485
12102  2849 cd0000        	call	_GPIO_SetBits
12104  284c 84            	pop	a
12105                     ; 1754 				Delay_ms(1000);
12107  284d ae03e8        	ldw	x,#1000
12108  2850 cd29bc        	call	_Delay_ms
12110                     ; 1755 				disChgNeedDelay = 0;
12112  2853 725f00da      	clr	_disChgNeedDelay
12113  2857               L7244:
12114                     ; 1757 			GPIO_ResetBits(CHG_RUN_PORT,CHG_RUN_PIN);
12116  2857 4b10          	push	#16
12117  2859 ae5005        	ldw	x,#20485
12118  285c cd0000        	call	_GPIO_ResetBits
12120  285f 84            	pop	a
12122  2860 cc28eb        	jra	L5444
12123  2863               L5244:
12124                     ; 1779 			GPIO_ResetBits(CHG_RUN_PORT,CHG_RUN_PIN); //Chg run
12126  2863 4b10          	push	#16
12127  2865 ae5005        	ldw	x,#20485
12128  2868 cd0000        	call	_GPIO_ResetBits
12130  286b 84            	pop	a
12131                     ; 1781 			if(STATE_CHG!=0&&Percentgauge==100)//-------chg display state
12133  286c 725d00b6      	tnz	_STATE_CHG
12134  2870 271d          	jreq	L3344
12136  2872 c600c0        	ld	a,_Percentgauge
12137  2875 a164          	cp	a,#100
12138  2877 2616          	jrne	L3344
12139                     ; 1783 				if(TIM_CHG_1S3>=3)
12141  2879 c600a4        	ld	a,_TIM_CHG_1S3
12142  287c a103          	cp	a,#3
12143  287e 256b          	jrult	L5444
12144                     ; 1785 					LED_CTR(FULL_LED);
12146  2880 a603          	ld	a,#3
12147  2882 cd2231        	call	_LED_CTR
12149                     ; 1786 					FULL_STATE=1;
12151  2885 350100b1      	mov	_FULL_STATE,#1
12152                     ; 1787 					TIM_CHG_1S3=3;
12154  2889 350300a4      	mov	_TIM_CHG_1S3,#3
12155  288d 205c          	jra	L5444
12156  288f               L3344:
12157                     ; 1790 			else if(FULL_STATE==1)
12159  288f c600b1        	ld	a,_FULL_STATE
12160  2892 a101          	cp	a,#1
12161  2894 260b          	jrne	L1444
12162                     ; 1792 				LED_CTR(FULL_LED);
12164  2896 a603          	ld	a,#3
12165  2898 cd2231        	call	_LED_CTR
12167                     ; 1793 				TIM_CHG_1S3=3;
12169  289b 350300a4      	mov	_TIM_CHG_1S3,#3
12171  289f 204a          	jra	L5444
12172  28a1               L1444:
12173                     ; 1795 			else LED_CTR(CHG_LED),TIM_CHG_1S3=0;
12175  28a1 a602          	ld	a,#2
12176  28a3 cd2231        	call	_LED_CTR
12178  28a6 725f00a4      	clr	_TIM_CHG_1S3
12179  28aa 203f          	jra	L5444
12180  28ac               L3244:
12181                     ; 1798 	else if(LCHG_State==1)
12183  28ac c600b3        	ld	a,_LCHG_State
12184  28af a101          	cp	a,#1
12185  28b1 2623          	jrne	L7444
12186                     ; 1800 			if(ACC_Volt<120)
12188  28b3 c6007b        	ld	a,_ACC_Volt
12189  28b6 a178          	cp	a,#120
12190  28b8 2405          	jruge	L1544
12191                     ; 1801 				{LED_CTR(LOW_LED);}
12193  28ba a605          	ld	a,#5
12194  28bc cd2231        	call	_LED_CTR
12196  28bf               L1544:
12197                     ; 1802 			GPIO_SetBits(CHG_RUN_PORT,CHG_RUN_PIN);//--------------------chg stop
12199  28bf 4b10          	push	#16
12200  28c1 ae5005        	ldw	x,#20485
12201  28c4 cd0000        	call	_GPIO_SetBits
12203  28c7 84            	pop	a
12204                     ; 1803 			TIM_CHG_1S3=0;
12206  28c8 725f00a4      	clr	_TIM_CHG_1S3
12207                     ; 1804 			FULL_STATE=0;
12209  28cc 725f00b1      	clr	_FULL_STATE
12210                     ; 1805 			Short_time=0;
12212  28d0 725f00b9      	clr	_Short_time
12214  28d4 2015          	jra	L5444
12215  28d6               L7444:
12216                     ; 1809 			GPIO_SetBits(CHG_RUN_PORT,CHG_RUN_PIN);//--------------------chg stop
12218  28d6 4b10          	push	#16
12219  28d8 ae5005        	ldw	x,#20485
12220  28db cd0000        	call	_GPIO_SetBits
12222  28de 84            	pop	a
12223                     ; 1810 			TIM_CHG_1S3=0;
12225  28df 725f00a4      	clr	_TIM_CHG_1S3
12226                     ; 1811 			FULL_STATE=0;
12228  28e3 725f00b1      	clr	_FULL_STATE
12229                     ; 1812 			Short_time=0;
12231  28e7 725f00b9      	clr	_Short_time
12232  28eb               L5444:
12233                     ; 1814 }
12236  28eb 81            	ret
12266                     ; 1816 void NTC_CHK(void)
12266                     ; 1817 {
12267                     	switch	.text
12268  28ec               _NTC_CHK:
12272                     ; 1818 	if(BAT_Volt>110)
12274  28ec c60075        	ld	a,_BAT_Volt
12275  28ef a16f          	cp	a,#111
12276  28f1 255a          	jrult	L5644
12277                     ; 1820 		if(NTC_Temp>=0xDD)//------------------------NTC CUT ON
12279  28f3 c6007c        	ld	a,_NTC_Temp
12280  28f6 a1dd          	cp	a,#221
12281  28f8 2453          	jruge	L5644
12283                     ; 1824 		else if(NTC_Temp>=NTC_CUT_ON)//------------------------NTC CUT ON
12285  28fa c6007c        	ld	a,_NTC_Temp
12286  28fd a150          	cp	a,#80
12287  28ff 2515          	jrult	L3744
12288                     ; 1826 				Warning_Time++;
12290  2901 ce00ab        	ldw	x,_Warning_Time
12291  2904 1c0001        	addw	x,#1
12292  2907 cf00ab        	ldw	_Warning_Time,x
12293                     ; 1827 				NTC_Stop=1;
12295  290a 350100b0      	mov	_NTC_Stop,#1
12296                     ; 1828 				WarningSpeak();
12298  290e ad78          	call	_WarningSpeak
12300                     ; 1829 				NTC_ON=1;
12302  2910 350100b5      	mov	_NTC_ON,#1
12304  2914 2037          	jra	L5644
12305  2916               L3744:
12306                     ; 1831 		else if(NTC_Temp<=NTC_CUT_OFF)//------------------NTC CUT OFF
12308  2916 c6007c        	ld	a,_NTC_Temp
12309  2919 a13d          	cp	a,#61
12310  291b 241a          	jruge	L7744
12311                     ; 1833 				if(NTC_Stop==1)
12313  291d c600b0        	ld	a,_NTC_Stop
12314  2920 a101          	cp	a,#1
12315  2922 2605          	jrne	L1054
12316                     ; 1834 				{LED_CTR(STOP_LED);}
12318  2924 a601          	ld	a,#1
12319  2926 cd2231        	call	_LED_CTR
12321  2929               L1054:
12322                     ; 1835 				NTC_Stop=0;
12324  2929 725f00b0      	clr	_NTC_Stop
12325                     ; 1836 				Warning_Time=0;
12327  292d 5f            	clrw	x
12328  292e cf00ab        	ldw	_Warning_Time,x
12329                     ; 1837 				NTC_ON=0;
12331  2931 725f00b5      	clr	_NTC_ON
12333  2935 2016          	jra	L5644
12334  2937               L7744:
12335                     ; 1839 		else if(NTC_ON==1)
12337  2937 c600b5        	ld	a,_NTC_ON
12338  293a a101          	cp	a,#1
12339  293c 260f          	jrne	L5644
12340                     ; 1841 				Warning_Time++;
12342  293e ce00ab        	ldw	x,_Warning_Time
12343  2941 1c0001        	addw	x,#1
12344  2944 cf00ab        	ldw	_Warning_Time,x
12345                     ; 1842 				NTC_Stop=1;
12347  2947 350100b0      	mov	_NTC_Stop,#1
12348                     ; 1843 				WarningSpeak();
12350  294b ad3b          	call	_WarningSpeak
12352  294d               L5644:
12353                     ; 1846 }
12356  294d 81            	ret
12401                     ; 1848 void Speak_Value(uint8_t tone, uint8_t time)
12401                     ; 1849 {
12402                     	switch	.text
12403  294e               _Speak_Value:
12405  294e 89            	pushw	x
12406       00000000      OFST:	set	0
12409                     ; 1850   SpeakDelayTime_pp=0;
12411  294f 5f            	clrw	x
12412  2950 cf0005        	ldw	_SpeakDelayTime_pp,x
12413                     ; 1851   SpeakTime1_pp=0;
12415  2953 725f0004      	clr	_SpeakTime1_pp
12416                     ; 1852   SpeakTime2_pp=0;
12418  2957 725f0003      	clr	_SpeakTime2_pp
12419                     ; 1853   SpeakOnOff=0;
12421  295b 725f0000      	clr	_SpeakOnOff
12422                     ; 1854   SpeakAppTime=time;
12424  295f 7b02          	ld	a,(OFST+2,sp)
12425  2961 c70002        	ld	_SpeakAppTime,a
12426                     ; 1855   SpeakAppTone=tone;
12428  2964 7b01          	ld	a,(OFST+1,sp)
12429  2966 c70001        	ld	_SpeakAppTone,a
12431  2969               L1354:
12432                     ; 1857   while(SpeakTime2_pp != SpeakAppTime)
12434  2969 c60003        	ld	a,_SpeakTime2_pp
12435  296c c10002        	cp	a,_SpeakAppTime
12436  296f 26f8          	jrne	L1354
12437                     ; 1859 }
12440  2971 85            	popw	x
12441  2972 81            	ret
12465                     ; 1861 void StartSpeak(void)
12465                     ; 1862 {
12466                     	switch	.text
12467  2973               _StartSpeak:
12471                     ; 1863   Speak_Value(9,6);
12473  2973 ae0906        	ldw	x,#2310
12474  2976 add6          	call	_Speak_Value
12476                     ; 1864   Speak_Value(7,6);
12478  2978 ae0706        	ldw	x,#1798
12479  297b add1          	call	_Speak_Value
12481                     ; 1865   Speak_Value(5,6);
12483  297d ae0506        	ldw	x,#1286
12484  2980 adcc          	call	_Speak_Value
12486                     ; 1866   Speak_Value(4,6);
12488  2982 ae0406        	ldw	x,#1030
12489  2985 adc7          	call	_Speak_Value
12491                     ; 1867 }
12494  2987 81            	ret
12520                     ; 1869 void WarningSpeak(void)
12520                     ; 1870 {
12521                     	switch	.text
12522  2988               _WarningSpeak:
12526                     ; 1871 	if(Warning_Time<1000)
12528  2988 ce00ab        	ldw	x,_Warning_Time
12529  298b a303e8        	cpw	x,#1000
12530  298e 2406          	jruge	L5554
12531                     ; 1873 			Time_Speak_State=1;
12533  2990 350100e2      	mov	_Time_Speak_State,#1
12535  2994 2025          	jra	L7554
12536  2996               L5554:
12537                     ; 1875 	else if(Warning_Time==1000)
12539  2996 ce00ab        	ldw	x,_Warning_Time
12540  2999 a303e8        	cpw	x,#1000
12541  299c 260b          	jrne	L1654
12542                     ; 1877 			Time_Speak_State=0;
12544  299e 725f00e2      	clr	_Time_Speak_State
12545                     ; 1878 			Speak_Value(3,10);
12547  29a2 ae030a        	ldw	x,#778
12548  29a5 ada7          	call	_Speak_Value
12551  29a7 2012          	jra	L7554
12552  29a9               L1654:
12553                     ; 1880   else if(Warning_Time>10000)
12555  29a9 ce00ab        	ldw	x,_Warning_Time
12556  29ac a32711        	cpw	x,#10001
12557  29af 2506          	jrult	L5654
12558                     ; 1882 			Warning_Time=0;
12560  29b1 5f            	clrw	x
12561  29b2 cf00ab        	ldw	_Warning_Time,x
12563  29b5 2004          	jra	L7554
12564  29b7               L5654:
12565                     ; 1884 	else Time_Speak_State=1;
12567  29b7 350100e2      	mov	_Time_Speak_State,#1
12568  29bb               L7554:
12569                     ; 1885 }
12572  29bb 81            	ret
12605                     ; 1887 void Delay_ms(u16 n_ms)
12605                     ; 1888 { 
12606                     	switch	.text
12607  29bc               _Delay_ms:
12609  29bc 89            	pushw	x
12610       00000000      OFST:	set	0
12613                     ; 1890 	CLK_PeripheralClockConfig(CLK_Peripheral_TIM2, ENABLE);
12615  29bd ae0001        	ldw	x,#1
12616  29c0 cd0000        	call	_CLK_PeripheralClockConfig
12618                     ; 1892   TIM2->PSCR = 6;
12620  29c3 3506525e      	mov	21086,#6
12621                     ; 1894   TIM2->ARRH = 0; 
12623  29c7 725f525f      	clr	21087
12624                     ; 1895   TIM2->ARRL = 100; 
12626  29cb 35645260      	mov	21088,#100
12627                     ; 1897   TIM2->CNTRH = 0;
12629  29cf 725f525c      	clr	21084
12630                     ; 1898   TIM2->CNTRL = 2;
12632  29d3 3502525d      	mov	21085,#2
12633                     ; 1900   TIM2->SR1 &= (u8)(~0x01);
12635  29d7 72115256      	bres	21078,#0
12636                     ; 1902   TIM2->CR1 |= 0x01;
12638  29db 72105250      	bset	21072,#0
12640  29df 200b          	jra	L7064
12641  29e1               L5164:
12642                     ; 1905     while((TIM2->SR1 & 0x01) == 0);
12644  29e1 c65256        	ld	a,21078
12645  29e4 a501          	bcp	a,#1
12646  29e6 27f9          	jreq	L5164
12647                     ; 1906     TIM2->SR1 &= (u8)(~0x01);
12649  29e8 72115256      	bres	21078,#0
12650  29ec               L7064:
12651                     ; 1903   while(n_ms--)
12653  29ec 1e01          	ldw	x,(OFST+1,sp)
12654  29ee 1d0001        	subw	x,#1
12655  29f1 1f01          	ldw	(OFST+1,sp),x
12656  29f3 1c0001        	addw	x,#1
12657  29f6 a30000        	cpw	x,#0
12658  29f9 26e6          	jrne	L5164
12659                     ; 1909   TIM2->CR1 &= (u8)(~0x01);
12661  29fb 72115250      	bres	21072,#0
12662                     ; 1910   CLK_PeripheralClockConfig(CLK_Peripheral_TIM2, DISABLE);
12664  29ff 5f            	clrw	x
12665  2a00 cd0000        	call	_CLK_PeripheralClockConfig
12667                     ; 1911 }
12670  2a03 85            	popw	x
12671  2a04 81            	ret
12710                     ; 1913 void Delay(uint8_t n)
12710                     ; 1914 {
12711                     	switch	.text
12712  2a05               _Delay:
12714  2a05 88            	push	a
12715       00000001      OFST:	set	1
12718                     ; 1915 	uint8_t i = n * 100; 
12720  2a06 97            	ld	xl,a
12721  2a07 a664          	ld	a,#100
12722  2a09 42            	mul	x,a
12723  2a0a 9f            	ld	a,xl
12724  2a0b 6b01          	ld	(OFST+0,sp),a
12726                     ; 1916 	for(i;i!=0;i--);
12729  2a0d 2002          	jra	L3464
12730  2a0f               L7364:
12734  2a0f 0a01          	dec	(OFST+0,sp)
12736  2a11               L3464:
12739  2a11 0d01          	tnz	(OFST+0,sp)
12740  2a13 26fa          	jrne	L7364
12741                     ; 1917 }
12744  2a15 84            	pop	a
12745  2a16 81            	ret
12771                     ; 1919 void Flash_Init(void)
12771                     ; 1920 {
12772                     	switch	.text
12773  2a17               _Flash_Init:
12777                     ; 1921 	FLASH_SetProgrammingTime(FLASH_ProgramMode_Fast);
12779  2a17 a610          	ld	a,#16
12780  2a19 cd0000        	call	_FLASH_SetProgrammingTime
12782                     ; 1922 	FLASH_Unlock(FLASH_MemType_Data); 
12784  2a1c a6f7          	ld	a,#247
12785  2a1e cd0000        	call	_FLASH_Unlock
12788  2a21               L1664:
12789                     ; 1924 	while(FLASH_GetFlagStatus(FLASH_FLAG_DUL) == RESET){}
12791  2a21 a608          	ld	a,#8
12792  2a23 cd0000        	call	_FLASH_GetFlagStatus
12794  2a26 4d            	tnz	a
12795  2a27 27f8          	jreq	L1664
12796                     ; 1925 }
12799  2a29 81            	ret
12860                     ; 1927 void Setup_Flash_Data(void)
12860                     ; 1928 {
12861                     	switch	.text
12862  2a2a               _Setup_Flash_Data:
12864  2a2a 520b          	subw	sp,#11
12865       0000000b      OFST:	set	11
12868                     ; 1930 	uint8_t EEP_data=0;
12870  2a2c 0f09          	clr	(OFST-2,sp)
12872                     ; 1932 	for(i=0;i<6;i++)
12874  2a2e 5f            	clrw	x
12875  2a2f 1f0a          	ldw	(OFST-1,sp),x
12877  2a31               L7074:
12878                     ; 1933 	{EEP_data += FLASH_ReadByte(0x1001+i);}
12880  2a31 1e0a          	ldw	x,(OFST-1,sp)
12881  2a33 1c1001        	addw	x,#4097
12882  2a36 cd0000        	call	c_itolx
12884  2a39 be02          	ldw	x,c_lreg+2
12885  2a3b 89            	pushw	x
12886  2a3c be00          	ldw	x,c_lreg
12887  2a3e 89            	pushw	x
12888  2a3f cd0000        	call	_FLASH_ReadByte
12890  2a42 5b04          	addw	sp,#4
12891  2a44 1b09          	add	a,(OFST-2,sp)
12892  2a46 6b09          	ld	(OFST-2,sp),a
12894                     ; 1932 	for(i=0;i<6;i++)
12896  2a48 1e0a          	ldw	x,(OFST-1,sp)
12897  2a4a 1c0001        	addw	x,#1
12898  2a4d 1f0a          	ldw	(OFST-1,sp),x
12902  2a4f 9c            	rvf
12903  2a50 1e0a          	ldw	x,(OFST-1,sp)
12904  2a52 a30006        	cpw	x,#6
12905  2a55 2fda          	jrslt	L7074
12906                     ; 1935 	if(EEP_data==0)
12908  2a57 0d09          	tnz	(OFST-2,sp)
12909  2a59 2662          	jrne	L5174
12910                     ; 1938 		for(i=0;i<6;i++)
12912  2a5b 5f            	clrw	x
12913  2a5c 1f0a          	ldw	(OFST-1,sp),x
12915  2a5e               L7174:
12916                     ; 1940 			FLASH_ProgramByte(0x1001+i,(BB_Bitrate % Square_10(6-i))/Square_10(5-i));
12918  2a5e a605          	ld	a,#5
12919  2a60 100b          	sub	a,(OFST+0,sp)
12920  2a62 cd2b18        	call	_Square_10
12922  2a65 96            	ldw	x,sp
12923  2a66 1c0005        	addw	x,#OFST-6
12924  2a69 cd0000        	call	c_rtol
12927  2a6c a606          	ld	a,#6
12928  2a6e 100b          	sub	a,(OFST+0,sp)
12929  2a70 cd2b18        	call	_Square_10
12931  2a73 96            	ldw	x,sp
12932  2a74 1c0001        	addw	x,#OFST-10
12933  2a77 cd0000        	call	c_rtol
12936  2a7a ae0066        	ldw	x,#_BB_Bitrate
12937  2a7d cd0000        	call	c_ltor
12939  2a80 96            	ldw	x,sp
12940  2a81 1c0001        	addw	x,#OFST-10
12941  2a84 cd0000        	call	c_lumd
12943  2a87 96            	ldw	x,sp
12944  2a88 1c0005        	addw	x,#OFST-6
12945  2a8b cd0000        	call	c_ludv
12947  2a8e b603          	ld	a,c_lreg+3
12948  2a90 88            	push	a
12949  2a91 1e0b          	ldw	x,(OFST+0,sp)
12950  2a93 1c1001        	addw	x,#4097
12951  2a96 cd0000        	call	c_itolx
12953  2a99 be02          	ldw	x,c_lreg+2
12954  2a9b 89            	pushw	x
12955  2a9c be00          	ldw	x,c_lreg
12956  2a9e 89            	pushw	x
12957  2a9f cd0000        	call	_FLASH_ProgramByte
12959  2aa2 5b05          	addw	sp,#5
12961  2aa4               L7274:
12962                     ; 1941 			while(FLASH_GetFlagStatus(FLASH_FLAG_EOP) == RESET){}
12964  2aa4 a604          	ld	a,#4
12965  2aa6 cd0000        	call	_FLASH_GetFlagStatus
12967  2aa9 4d            	tnz	a
12968  2aaa 27f8          	jreq	L7274
12969                     ; 1938 		for(i=0;i<6;i++)
12971  2aac 1e0a          	ldw	x,(OFST-1,sp)
12972  2aae 1c0001        	addw	x,#1
12973  2ab1 1f0a          	ldw	(OFST-1,sp),x
12977  2ab3 9c            	rvf
12978  2ab4 1e0a          	ldw	x,(OFST-1,sp)
12979  2ab6 a30006        	cpw	x,#6
12980  2ab9 2fa3          	jrslt	L7174
12982  2abb 2058          	jra	L3374
12983  2abd               L5174:
12984                     ; 1947 		BB_Bitrate=0;
12986  2abd ae0000        	ldw	x,#0
12987  2ac0 cf0068        	ldw	_BB_Bitrate+2,x
12988  2ac3 ae0000        	ldw	x,#0
12989  2ac6 cf0066        	ldw	_BB_Bitrate,x
12990                     ; 1949 		for(i=0;i<6;i++)
12992  2ac9 5f            	clrw	x
12993  2aca 1f0a          	ldw	(OFST-1,sp),x
12995  2acc               L5374:
12996                     ; 1950 			{BB_Bitrate += Square_10(5-i)*FLASH_ReadByte(0x1001+i);}
12998  2acc 1e0a          	ldw	x,(OFST-1,sp)
12999  2ace 1c1001        	addw	x,#4097
13000  2ad1 cd0000        	call	c_itolx
13002  2ad4 be02          	ldw	x,c_lreg+2
13003  2ad6 89            	pushw	x
13004  2ad7 be00          	ldw	x,c_lreg
13005  2ad9 89            	pushw	x
13006  2ada cd0000        	call	_FLASH_ReadByte
13008  2add 5b04          	addw	sp,#4
13009  2adf b703          	ld	c_lreg+3,a
13010  2ae1 3f02          	clr	c_lreg+2
13011  2ae3 3f01          	clr	c_lreg+1
13012  2ae5 3f00          	clr	c_lreg
13013  2ae7 96            	ldw	x,sp
13014  2ae8 1c0005        	addw	x,#OFST-6
13015  2aeb cd0000        	call	c_rtol
13018  2aee a605          	ld	a,#5
13019  2af0 100b          	sub	a,(OFST+0,sp)
13020  2af2 ad24          	call	_Square_10
13022  2af4 96            	ldw	x,sp
13023  2af5 1c0005        	addw	x,#OFST-6
13024  2af8 cd0000        	call	c_lmul
13026  2afb ae0066        	ldw	x,#_BB_Bitrate
13027  2afe cd0000        	call	c_lgadd
13029                     ; 1949 		for(i=0;i<6;i++)
13031  2b01 1e0a          	ldw	x,(OFST-1,sp)
13032  2b03 1c0001        	addw	x,#1
13033  2b06 1f0a          	ldw	(OFST-1,sp),x
13037  2b08 9c            	rvf
13038  2b09 1e0a          	ldw	x,(OFST-1,sp)
13039  2b0b a30006        	cpw	x,#6
13040  2b0e 2fbc          	jrslt	L5374
13041                     ; 1952 		sim();
13044  2b10 9b            sim
13046                     ; 1953 		UART_Init();//---------------------------------Reset Uart_Init.
13049  2b11 cd16fd        	call	_UART_Init
13051                     ; 1954 		rim();
13054  2b14 9a            rim
13056  2b15               L3374:
13057                     ; 1956 }
13060  2b15 5b0b          	addw	sp,#11
13061  2b17 81            	ret
13107                     ; 1958 uint32_t Square_10(uint8_t number)
13107                     ; 1959 {
13108                     	switch	.text
13109  2b18               _Square_10:
13111  2b18 88            	push	a
13112  2b19 5206          	subw	sp,#6
13113       00000006      OFST:	set	6
13116                     ; 1960 	uint32_t a=1;
13118  2b1b ae0001        	ldw	x,#1
13119  2b1e 1f03          	ldw	(OFST-3,sp),x
13120  2b20 ae0000        	ldw	x,#0
13121  2b23 1f01          	ldw	(OFST-5,sp),x
13123                     ; 1963 	if(number==0)
13125  2b25 4d            	tnz	a
13126  2b26 260c          	jrne	L3674
13127                     ; 1965 		return a;
13129  2b28 ae0001        	ldw	x,#1
13130  2b2b bf02          	ldw	c_lreg+2,x
13131  2b2d ae0000        	ldw	x,#0
13132  2b30 bf00          	ldw	c_lreg,x
13134  2b32 2031          	jra	L225
13135  2b34               L3674:
13136                     ; 1969 		for(i=0;i<number;i++)
13138  2b34 5f            	clrw	x
13139  2b35 1f05          	ldw	(OFST-1,sp),x
13142  2b37 2018          	jra	L3774
13143  2b39               L7674:
13144                     ; 1970 			{	a*=10;}
13146  2b39 ae000a        	ldw	x,#10
13147  2b3c bf02          	ldw	c_lreg+2,x
13148  2b3e ae0000        	ldw	x,#0
13149  2b41 bf00          	ldw	c_lreg,x
13150  2b43 96            	ldw	x,sp
13151  2b44 1c0001        	addw	x,#OFST-5
13152  2b47 cd0000        	call	c_lgmul
13155                     ; 1969 		for(i=0;i<number;i++)
13157  2b4a 1e05          	ldw	x,(OFST-1,sp)
13158  2b4c 1c0001        	addw	x,#1
13159  2b4f 1f05          	ldw	(OFST-1,sp),x
13161  2b51               L3774:
13164  2b51 9c            	rvf
13165  2b52 7b07          	ld	a,(OFST+1,sp)
13166  2b54 5f            	clrw	x
13167  2b55 97            	ld	xl,a
13168  2b56 bf00          	ldw	c_x,x
13169  2b58 1e05          	ldw	x,(OFST-1,sp)
13170  2b5a b300          	cpw	x,c_x
13171  2b5c 2fdb          	jrslt	L7674
13172                     ; 1971 		return a;
13174  2b5e 96            	ldw	x,sp
13175  2b5f 1c0001        	addw	x,#OFST-5
13176  2b62 cd0000        	call	c_ltor
13179  2b65               L225:
13181  2b65 5b07          	addw	sp,#7
13182  2b67 81            	ret
13233                     ; 1989 void ___debug(char *msg)
13233                     ; 1990 {
13234                     	switch	.text
13235  2b68               ____debug:
13237  2b68 89            	pushw	x
13238  2b69 5204          	subw	sp,#4
13239       00000004      OFST:	set	4
13242                     ; 1994 	int sLen = strlen(msg);
13244  2b6b cd0000        	call	_strlen
13246  2b6e 1f01          	ldw	(OFST-3,sp),x
13248                     ; 1996 	for(i=0; i<sLen; i++) DATA_Send_TX(msg[i]);
13250  2b70 5f            	clrw	x
13251  2b71 1f03          	ldw	(OFST-1,sp),x
13254  2b73 2010          	jra	L5205
13255  2b75               L1205:
13258  2b75 1e03          	ldw	x,(OFST-1,sp)
13259  2b77 72fb05        	addw	x,(OFST+1,sp)
13260  2b7a f6            	ld	a,(x)
13261  2b7b cd106c        	call	_DATA_Send_TX
13265  2b7e 1e03          	ldw	x,(OFST-1,sp)
13266  2b80 1c0001        	addw	x,#1
13267  2b83 1f03          	ldw	(OFST-1,sp),x
13269  2b85               L5205:
13272  2b85 9c            	rvf
13273  2b86 1e03          	ldw	x,(OFST-1,sp)
13274  2b88 1301          	cpw	x,(OFST-3,sp)
13275  2b8a 2fe9          	jrslt	L1205
13276                     ; 1998 	DATA_Send_TX(13);
13278  2b8c a60d          	ld	a,#13
13279  2b8e cd106c        	call	_DATA_Send_TX
13281                     ; 2000 }
13284  2b91 5b06          	addw	sp,#6
13285  2b93 81            	ret
13387                     ; 2002 void LCD_TX(uint8_t number)
13387                     ; 2003 {
13388                     	switch	.text
13389  2b94               _LCD_TX:
13391  2b94 5224          	subw	sp,#36
13392       00000024      OFST:	set	36
13395                     ; 2004 	switch(number)
13398                     ; 2054 			break;
13399  2b96 a040          	sub	a,#64
13400  2b98 2708          	jreq	L1305
13401  2b9a a011          	sub	a,#17
13402  2b9c 276c          	jreq	L3305
13403  2b9e ac562c56      	jpf	L7705
13404  2ba2               L1305:
13405                     ; 2008 			uint8_t Data_size=B_Rx_Command[2];
13407                     ; 2010 			uint8_t DS=14;
13409  2ba2 a60e          	ld	a,#14
13410  2ba4 6b14          	ld	(OFST-16,sp),a
13412                     ; 2012 			Tx_DATA[0]=PC_COMM_HEADER;//-----Header ID.
13414  2ba6 a644          	ld	a,#68
13415  2ba8 6b17          	ld	(OFST-13,sp),a
13417                     ; 2013 			Tx_DATA[1]=PC_COMM_ACK;						//-----ACK.
13419  2baa a606          	ld	a,#6
13420  2bac 6b18          	ld	(OFST-12,sp),a
13422                     ; 2014 			Tx_DATA[2]=8;//-----Data size.
13424  2bae a608          	ld	a,#8
13425  2bb0 6b19          	ld	(OFST-11,sp),a
13427                     ; 2015 			Tx_DATA[3]=C_ID_BTINFO;//-----Command ID.
13429  2bb2 a640          	ld	a,#64
13430  2bb4 6b1a          	ld	(OFST-10,sp),a
13432                     ; 2017 			Tx_DATA[4] = 'I';
13434  2bb6 a649          	ld	a,#73
13435  2bb8 6b1b          	ld	(OFST-9,sp),a
13437                     ; 2018 			Tx_DATA[5] = 'V';
13439  2bba a656          	ld	a,#86
13440  2bbc 6b1c          	ld	(OFST-8,sp),a
13442                     ; 2019 			Tx_DATA[6] = 'T';
13444  2bbe a654          	ld	a,#84
13445  2bc0 6b1d          	ld	(OFST-7,sp),a
13447                     ; 2020 			Tx_DATA[7] = '-';
13449  2bc2 a62d          	ld	a,#45
13450  2bc4 6b1e          	ld	(OFST-6,sp),a
13452                     ; 2021 			Tx_DATA[8] = MAD1;
13454  2bc6 c600de        	ld	a,_MAD1
13455  2bc9 6b1f          	ld	(OFST-5,sp),a
13457                     ; 2022 			Tx_DATA[9] = MAD2;
13459  2bcb c600df        	ld	a,_MAD2
13460  2bce 6b20          	ld	(OFST-4,sp),a
13462                     ; 2023 			Tx_DATA[10] = MAD3;
13464  2bd0 c600e0        	ld	a,_MAD3
13465  2bd3 6b21          	ld	(OFST-3,sp),a
13467                     ; 2024 			Tx_DATA[11] = MAD4;
13469  2bd5 c600e1        	ld	a,_MAD4
13470  2bd8 6b22          	ld	(OFST-2,sp),a
13472                     ; 2026 			Tx_DATA[12]=0x00;
13474  2bda 0f23          	clr	(OFST-1,sp)
13476                     ; 2028 			Tx_DATA[13]=0x0d;
13478  2bdc a60d          	ld	a,#13
13479  2bde 6b24          	ld	(OFST+0,sp),a
13481                     ; 2030 			for(z=0;z<DS;z++) DATA_Send_TX(Tx_DATA[z]);
13483  2be0 5f            	clrw	x
13484  2be1 1f15          	ldw	(OFST-15,sp),x
13487  2be3 2016          	jra	L5015
13488  2be5               L1015:
13491  2be5 96            	ldw	x,sp
13492  2be6 1c0017        	addw	x,#OFST-13
13493  2be9 1f01          	ldw	(OFST-35,sp),x
13495  2beb 1e15          	ldw	x,(OFST-15,sp)
13496  2bed 72fb01        	addw	x,(OFST-35,sp)
13497  2bf0 f6            	ld	a,(x)
13498  2bf1 cd106c        	call	_DATA_Send_TX
13502  2bf4 1e15          	ldw	x,(OFST-15,sp)
13503  2bf6 1c0001        	addw	x,#1
13504  2bf9 1f15          	ldw	(OFST-15,sp),x
13506  2bfb               L5015:
13509  2bfb 9c            	rvf
13510  2bfc 7b14          	ld	a,(OFST-16,sp)
13511  2bfe 5f            	clrw	x
13512  2bff 97            	ld	xl,a
13513  2c00 bf00          	ldw	c_x,x
13514  2c02 1e15          	ldw	x,(OFST-15,sp)
13515  2c04 b300          	cpw	x,c_x
13516  2c06 2fdd          	jrslt	L1015
13517                     ; 2031 			break;
13519  2c08 204c          	jra	L7705
13520  2c0a               L3305:
13521                     ; 2036 			uint8_t Data_size=18;
13523                     ; 2038 			uint8_t DS=24;
13525  2c0a a618          	ld	a,#24
13526  2c0c 6b04          	ld	(OFST-32,sp),a
13528                     ; 2040 			Tx_DATA[0]=PC_COMM_HEADER;//-----Header ID.
13530  2c0e a644          	ld	a,#68
13531  2c10 6b07          	ld	(OFST-29,sp),a
13533                     ; 2041 			Tx_DATA[1]=PC_COMM_ACK;						//-----ACK.
13535  2c12 a606          	ld	a,#6
13536  2c14 6b08          	ld	(OFST-28,sp),a
13538                     ; 2042 			Tx_DATA[2]=Data_size;//-----Data size.
13540  2c16 a612          	ld	a,#18
13541  2c18 6b09          	ld	(OFST-27,sp),a
13543                     ; 2043 			Tx_DATA[3]=C_ID_BATDAT;//-----Command ID.
13545  2c1a a651          	ld	a,#81
13546  2c1c 6b0a          	ld	(OFST-26,sp),a
13548                     ; 2045 			Tx_DATA[4+5] = NTC_Temp1;
13550  2c1e c6007d        	ld	a,_NTC_Temp1
13551  2c21 6b10          	ld	(OFST-20,sp),a
13553                     ; 2046 			Tx_DATA[4+6] = BAT_Volt;
13555  2c23 c60075        	ld	a,_BAT_Volt
13556  2c26 6b11          	ld	(OFST-19,sp),a
13558                     ; 2049 			Tx_DATA[4+Data_size]=0x00;
13560  2c28 0f1d          	clr	(OFST-7,sp)
13562                     ; 2051 			Tx_DATA[5+Data_size]=0x0d;
13564  2c2a a60d          	ld	a,#13
13565  2c2c 6b1e          	ld	(OFST-6,sp),a
13567                     ; 2053 			for(z=0;z<DS;z++) DATA_Send_TX(Tx_DATA[z]);
13569  2c2e 5f            	clrw	x
13570  2c2f 1f05          	ldw	(OFST-31,sp),x
13573  2c31 2016          	jra	L5115
13574  2c33               L1115:
13577  2c33 96            	ldw	x,sp
13578  2c34 1c0007        	addw	x,#OFST-29
13579  2c37 1f01          	ldw	(OFST-35,sp),x
13581  2c39 1e05          	ldw	x,(OFST-31,sp)
13582  2c3b 72fb01        	addw	x,(OFST-35,sp)
13583  2c3e f6            	ld	a,(x)
13584  2c3f cd106c        	call	_DATA_Send_TX
13588  2c42 1e05          	ldw	x,(OFST-31,sp)
13589  2c44 1c0001        	addw	x,#1
13590  2c47 1f05          	ldw	(OFST-31,sp),x
13592  2c49               L5115:
13595  2c49 9c            	rvf
13596  2c4a 7b04          	ld	a,(OFST-32,sp)
13597  2c4c 5f            	clrw	x
13598  2c4d 97            	ld	xl,a
13599  2c4e bf00          	ldw	c_x,x
13600  2c50 1e05          	ldw	x,(OFST-31,sp)
13601  2c52 b300          	cpw	x,c_x
13602  2c54 2fdd          	jrslt	L1115
13603                     ; 2054 			break;
13605  2c56               L7705:
13606                     ; 2057 }
13609  2c56 5b24          	addw	sp,#36
13610  2c58 81            	ret
13635                     ; 2059 void send_btInfoToPC()
13635                     ; 2060 {
13636                     	switch	.text
13637  2c59               _send_btInfoToPC:
13641                     ; 2061 	LCD_TX(C_ID_BTINFO);	//USART 2À¸·Î Ãâ·Â
13643  2c59 a640          	ld	a,#64
13644  2c5b cd2b94        	call	_LCD_TX
13646                     ; 2062 	Delay_ms(20);
13648  2c5e ae0014        	ldw	x,#20
13649  2c61 cd29bc        	call	_Delay_ms
13651                     ; 2063 	LCD_TX(C_ID_BATDAT);	//USART 2À¸·Î Ãâ·Â
13653  2c64 a651          	ld	a,#81
13654  2c66 cd2b94        	call	_LCD_TX
13656                     ; 2064 	Delay_ms(20);
13658  2c69 ae0014        	ldw	x,#20
13659  2c6c cd29bc        	call	_Delay_ms
13661                     ; 2065 }
13664  2c6f 81            	ret
13761                     ; 2069 void main(void)
13761                     ; 2070 { 
13762                     	switch	.text
13763  2c70               _main:
13765  2c70 520a          	subw	sp,#10
13766       0000000a      OFST:	set	10
13769                     ; 2072 	uint16_t _start_recap = 0;
13771                     ; 2073 	uint8_t _startBAT_pecent = 0;
13773                     ; 2079   sim();
13776  2c72 9b            sim
13778                     ; 2080 	CLK_DeInit();
13781  2c73 cd0000        	call	_CLK_DeInit
13783                     ; 2081 	CLK_PeripheralClockConfig(CLK_Peripheral_TIM4, ENABLE);
13785  2c76 ae0201        	ldw	x,#513
13786  2c79 cd0000        	call	_CLK_PeripheralClockConfig
13788                     ; 2082 	CLK_PeripheralClockConfig(CLK_Peripheral_USART1, ENABLE);
13790  2c7c ae0501        	ldw	x,#1281
13791  2c7f cd0000        	call	_CLK_PeripheralClockConfig
13793                     ; 2083 	CLK_PeripheralClockConfig(CLK_Peripheral_USART2, ENABLE);
13795  2c82 ae2301        	ldw	x,#8961
13796  2c85 cd0000        	call	_CLK_PeripheralClockConfig
13798                     ; 2084 	CLK_PeripheralClockConfig(CLK_Peripheral_ADC1, ENABLE);
13800  2c88 ae1001        	ldw	x,#4097
13801  2c8b cd0000        	call	_CLK_PeripheralClockConfig
13803                     ; 2085   Port_init();
13805  2c8e cd2198        	call	_Port_init
13807                     ; 2086   Timer4Init();
13809  2c91 cd217e        	call	L3_Timer4Init
13811                     ; 2087 	UART_Init();
13813  2c94 cd16fd        	call	_UART_Init
13815                     ; 2088 	I2C1_Init();
13817  2c97 cd1f0e        	call	_I2C1_Init
13819                     ; 2090   rim();//---------------------------------initialization.
13822  2c9a 9a            rim
13824                     ; 2092   	Delay_ms(500);
13827  2c9b ae01f4        	ldw	x,#500
13828  2c9e cd29bc        	call	_Delay_ms
13830                     ; 2093 	LED_CTR(RUN_LED);
13832  2ca1 4f            	clr	a
13833  2ca2 cd2231        	call	_LED_CTR
13835                     ; 2094 	StartSpeak();  //-----------------Cellink B6 Start Beep.
13837  2ca5 cd2973        	call	_StartSpeak
13839                     ; 2095 	GPIO_SetBits(CHG_RUN_PORT,CHG_RUN_PIN); //Chg Stop
13841  2ca8 4b10          	push	#16
13842  2caa ae5005        	ldw	x,#20485
13843  2cad cd0000        	call	_GPIO_SetBits
13845  2cb0 84            	pop	a
13846                     ; 2096 	Delay_ms(100);
13848  2cb1 ae0064        	ldw	x,#100
13849  2cb4 cd29bc        	call	_Delay_ms
13851                     ; 2097 	Flash_Init();
13853  2cb7 cd2a17        	call	_Flash_Init
13855                     ; 2098 	Setup_Flash_Data();
13857  2cba cd2a2a        	call	_Setup_Flash_Data
13859                     ; 2099 	Delay_ms(100);
13861  2cbd ae0064        	ldw	x,#100
13862  2cc0 cd29bc        	call	_Delay_ms
13864                     ; 2100 	BLE_SET_NAME();
13866  2cc3 cd1ebb        	call	_BLE_SET_NAME
13868                     ; 2101 	Delay_ms(100);
13870  2cc6 ae0064        	ldw	x,#100
13871  2cc9 cd29bc        	call	_Delay_ms
13873                     ; 2102 	I2C_Datawrite_Reset();
13875  2ccc cd1f25        	call	_I2C_Datawrite_Reset
13877                     ; 2103 	if (_fgReset == 0) I2C_Datawrite_Reset();
13879  2ccf 725d00e7      	tnz	__fgReset
13880  2cd3 2603          	jrne	L3515
13883  2cd5 cd1f25        	call	_I2C_Datawrite_Reset
13885  2cd8               L3515:
13886                     ; 2111 	ver = FLASH_ReadByte(VERSION_ADDR);
13888  2cd8 ae100d        	ldw	x,#4109
13889  2cdb 89            	pushw	x
13890  2cdc ae0000        	ldw	x,#0
13891  2cdf 89            	pushw	x
13892  2ce0 cd0000        	call	_FLASH_ReadByte
13894  2ce3 5b04          	addw	sp,#4
13895  2ce5 6b08          	ld	(OFST-2,sp),a
13897                     ; 2112 	if (ver != Version) FLASH_ProgramByte(VERSION_ADDR,Version);
13899  2ce7 7b08          	ld	a,(OFST-2,sp)
13900  2ce9 c10000        	cp	a,_Version
13901  2cec 2710          	jreq	L5515
13904  2cee 3b0000        	push	_Version
13905  2cf1 ae100d        	ldw	x,#4109
13906  2cf4 89            	pushw	x
13907  2cf5 ae0000        	ldw	x,#0
13908  2cf8 89            	pushw	x
13909  2cf9 cd0000        	call	_FLASH_ProgramByte
13911  2cfc 5b05          	addw	sp,#5
13912  2cfe               L5515:
13913                     ; 2114 	Time_Speak_State=1;
13915  2cfe 350100e2      	mov	_Time_Speak_State,#1
13916                     ; 2115 	LED_CTR(STOP_LED);
13918  2d02 a601          	ld	a,#1
13919  2d04 cd2231        	call	_LED_CTR
13922  2d07 2006          	jra	L1615
13923  2d09               L7515:
13924                     ; 2123 			Delay_ms(100);
13926  2d09 ae0064        	ldw	x,#100
13927  2d0c cd29bc        	call	_Delay_ms
13929  2d0f               L1615:
13930                     ; 2118 		while(MAD1 == 0)
13932  2d0f 725d00de      	tnz	_MAD1
13933  2d13 27f4          	jreq	L7515
13934                     ; 2127 		ADC_CHK();
13936  2d15 cd263e        	call	_ADC_CHK
13938                     ; 2128 		NTC_CHK();
13940  2d18 cd28ec        	call	_NTC_CHK
13942                     ; 2129 		CELLB_Calculation();
13944  2d1b cd1794        	call	_CELLB_Calculation
13946                     ; 2130 		send_btInfoToPC();
13948  2d1e cd2c59        	call	_send_btInfoToPC
13950                     ; 2135 	cap_percent = (float)((uint16_t)FullCap/100);
13952  2d21 ae0090        	ldw	x,#_FullCap
13953  2d24 cd0000        	call	c_ltor
13955  2d27 cd0000        	call	c_ftoi
13957  2d2a a664          	ld	a,#100
13958  2d2c 62            	div	x,a
13959  2d2d cd0000        	call	c_uitof
13961  2d30 ae0007        	ldw	x,#_cap_percent
13962  2d33 cd0000        	call	c_rtol
13964                     ; 2136 	for (i = 0; i<POWER_ON_BAT_CHECK_CNT; i++)
13966  2d36 5f            	clrw	x
13967  2d37 1f09          	ldw	(OFST-1,sp),x
13969  2d39               L5615:
13970                     ; 2138 		ADC_BAT = Channel_3_AvgADC(); Delay_ms(10);
13972  2d39 cd25c0        	call	_Channel_3_AvgADC
13974  2d3c cf006c        	ldw	_ADC_BAT,x
13977  2d3f ae000a        	ldw	x,#10
13978  2d42 cd29bc        	call	_Delay_ms
13980                     ; 2136 	for (i = 0; i<POWER_ON_BAT_CHECK_CNT; i++)
13982  2d45 1e09          	ldw	x,(OFST-1,sp)
13983  2d47 1c0001        	addw	x,#1
13984  2d4a 1f09          	ldw	(OFST-1,sp),x
13988  2d4c 9c            	rvf
13989  2d4d 1e09          	ldw	x,(OFST-1,sp)
13990  2d4f a30003        	cpw	x,#3
13991  2d52 2fe5          	jrslt	L5615
13992                     ; 2141 	BAT_P_Volt = (uint32_t)((uint32_t)ADC_BAT*5.59273422);
13994  2d54 ce006c        	ldw	x,_ADC_BAT
13995  2d57 cd0000        	call	c_uitolx
13997  2d5a cd0000        	call	c_ultof
13999  2d5d ae01ab        	ldw	x,#L7715
14000  2d60 cd0000        	call	c_fmul
14002  2d63 cd0000        	call	c_ftol
14004  2d66 ae0076        	ldw	x,#_BAT_P_Volt
14005  2d69 cd0000        	call	c_rtol
14007                     ; 2142 	_startBAT_pecent = Percentgauge = BAT_Percentgauge_Check(BAT_P_Volt);
14009  2d6c ce0078        	ldw	x,_BAT_P_Volt+2
14010  2d6f 89            	pushw	x
14011  2d70 ce0076        	ldw	x,_BAT_P_Volt
14012  2d73 89            	pushw	x
14013  2d74 cd0000        	call	_BAT_Percentgauge_Check
14015  2d77 5b04          	addw	sp,#4
14016  2d79 c700c0        	ld	_Percentgauge,a
14017                     ; 2143 	_start_recap = RepCap = Percentgauge*cap_percent;
14019  2d7c c600c0        	ld	a,_Percentgauge
14020  2d7f 5f            	clrw	x
14021  2d80 97            	ld	xl,a
14022  2d81 cd0000        	call	c_itof
14024  2d84 96            	ldw	x,sp
14025  2d85 1c0001        	addw	x,#OFST-9
14026  2d88 cd0000        	call	c_rtol
14029  2d8b ae0007        	ldw	x,#_cap_percent
14030  2d8e cd0000        	call	c_ltor
14032  2d91 96            	ldw	x,sp
14033  2d92 1c0001        	addw	x,#OFST-9
14034  2d95 cd0000        	call	c_fmul
14036  2d98 ae008c        	ldw	x,#_RepCap
14037  2d9b cd0000        	call	c_rtol
14039                     ; 2145 		sprintf(_dBuf, "\r\n\n%ld ,%d ,%f\r\n\n",BAT_P_Volt,Percentgauge &0xFF ,RepCap); 
14041  2d9e ce008e        	ldw	x,_RepCap+2
14042  2da1 89            	pushw	x
14043  2da2 ce008c        	ldw	x,_RepCap
14044  2da5 89            	pushw	x
14045  2da6 c600c0        	ld	a,_Percentgauge
14046  2da9 5f            	clrw	x
14047  2daa 97            	ld	xl,a
14048  2dab 89            	pushw	x
14049  2dac ce0078        	ldw	x,_BAT_P_Volt+2
14050  2daf 89            	pushw	x
14051  2db0 ce0076        	ldw	x,_BAT_P_Volt
14052  2db3 89            	pushw	x
14053  2db4 ae0199        	ldw	x,#L3025
14054  2db7 89            	pushw	x
14055  2db8 ae0157        	ldw	x,#__dBuf
14056  2dbb cd0000        	call	_sprintf
14058  2dbe 5b0c          	addw	sp,#12
14059                     ; 2146 		___debug(_dBuf);
14061  2dc0 ae0157        	ldw	x,#__dBuf
14062  2dc3 cd2b68        	call	____debug
14064                     ; 2152 	powerOnSetupComplete = 1;
14066  2dc6 350100e3      	mov	_powerOnSetupComplete,#1
14067  2dca               L5025:
14068                     ; 2156 		 I2C_Dataread();
14070  2dca cd1f55        	call	_I2C_Dataread
14072                     ; 2157 		 CELLB_Calculation();
14074  2dcd cd1794        	call	_CELLB_Calculation
14076                     ; 2158 		 ADC_CHK();
14078  2dd0 cd263e        	call	_ADC_CHK
14080                     ; 2159 		 NTC_CHK();
14082  2dd3 cd28ec        	call	_NTC_CHK
14084                     ; 2160 		 CHG_CHK();
14086  2dd6 cd277a        	call	_CHG_CHK
14088                     ; 2161 		 CHG_STATE();
14090  2dd9 cd2830        	call	_CHG_STATE
14092                     ; 2162 		 DISCHG_CHK();
14094  2ddc cd26d4        	call	_DISCHG_CHK
14096                     ; 2163 		 App_Data_TX_5s();
14098  2ddf cd0cb5        	call	_App_Data_TX_5s
14100                     ; 2164 		 BLE_Connect_Check();
14102  2de2 cd240a        	call	_BLE_Connect_Check
14105  2de5 20e3          	jra	L5025
14129                     ; 2169 static void WWDG_Config(void) 
14129                     ; 2170 {
14130                     	switch	.text
14131  2de7               L1125_WWDG_Config:
14135                     ; 2171   WWDG_Init(COUNTER_INIT, WINDOW_VALUE);
14137  2de7 ae6861        	ldw	x,#26721
14138  2dea cd0000        	call	_WWDG_Init
14140                     ; 2172 }
14143  2ded 81            	ret
14177                     ; 2174 PUTCHAR_PROTOTYPE
14177                     ; 2175 {
14178                     	switch	.text
14179  2dee               _putchar:
14181  2dee 88            	push	a
14182       00000000      OFST:	set	0
14185                     ; 2177   USART_SendData8(USART1, c);
14187  2def 88            	push	a
14188  2df0 ae5230        	ldw	x,#21040
14189  2df3 cd0000        	call	_USART_SendData8
14191  2df6 84            	pop	a
14193  2df7               L1425:
14194                     ; 2179   while (USART_GetFlagStatus(USART1, USART_FLAG_TXE) == RESET);
14196  2df7 ae0080        	ldw	x,#128
14197  2dfa 89            	pushw	x
14198  2dfb ae5230        	ldw	x,#21040
14199  2dfe cd0000        	call	_USART_GetFlagStatus
14201  2e01 85            	popw	x
14202  2e02 4d            	tnz	a
14203  2e03 27f2          	jreq	L1425
14204                     ; 2181   return (c);
14206  2e05 7b01          	ld	a,(OFST+1,sp)
14209  2e07 5b01          	addw	sp,#1
14210  2e09 81            	ret
14244                     ; 2184 GETCHAR_PROTOTYPE
14244                     ; 2185 {
14245                     	switch	.text
14246  2e0a               _getchar:
14248  2e0a 88            	push	a
14249       00000001      OFST:	set	1
14252                     ; 2187   char c = 0;
14255  2e0b               L3625:
14256                     ; 2192   while (USART_GetFlagStatus(USART1,USART_FLAG_RXNE) == RESET);
14258  2e0b ae0020        	ldw	x,#32
14259  2e0e 89            	pushw	x
14260  2e0f ae5230        	ldw	x,#21040
14261  2e12 cd0000        	call	_USART_GetFlagStatus
14263  2e15 85            	popw	x
14264  2e16 4d            	tnz	a
14265  2e17 27f2          	jreq	L3625
14266                     ; 2193     c = USART_ReceiveData8(USART1);
14268  2e19 ae5230        	ldw	x,#21040
14269  2e1c cd0000        	call	_USART_ReceiveData8
14271  2e1f 6b01          	ld	(OFST+0,sp),a
14273                     ; 2194   return (c);
14275  2e21 7b01          	ld	a,(OFST+0,sp)
14278  2e23 5b01          	addw	sp,#1
14279  2e25 81            	ret
14345                     	xdef	_main
14346                     	xref	_BAT_Percentgauge_Check
14347                     	xdef	_Channel_1_AvgADC
14348                     	xdef	_Channel_4_AvgADC
14349                     	xdef	_Channel_3_AvgADC
14350                     	xdef	_Channel_7_AvgADC
14351                     	xdef	_Channel_1_ReadADC
14352                     	xdef	_Channel_4_ReadADC
14353                     	xdef	_Channel_3_ReadADC
14354                     	xdef	_Channel_7_ReadADC
14355                     	xdef	_TIM4_INTERRUPT_HANDLER
14356                     	xdef	__5secCnt
14357                     	xdef	__fgPercentRead
14358                     	xdef	__fgReset
14359                     	xdef	_pcmStableTimeCnt
14360                     	xdef	_old_pcmStateEntered
14361                     	xdef	_pcmStateEntered
14362                     	xdef	_powerOnSetupComplete
14363                     	xdef	_BLE_Connect_Check
14364                     	xdef	_BABAPP_TX
14365                     	xdef	_DATA_APP_TX
14366                     	xdef	_App_Data_TX_5s
14367                     	xdef	_APP_DATA_Check_Sum
14368                     	xdef	_Square_10
14369                     	xdef	_Setup_Flash_Data
14370                     	xdef	_Flash_Init
14371                     	xdef	_Bit_Rate_Set
14372                     	xdef	_PRC_Check
14373                     	xdef	_App_DATA_Check_string
14374                     	xdef	_DATA_Check_string
14375                     	xdef	_DATA_Check_Sum
14376                     	xdef	_BLE_SET_NAME
14377                     	xdef	_DATA_Send_TX
14378                     	xdef	_USART2_INTERRUPT_HANDLER
14379                     	xdef	_USART1_INTERRUPT_HANDLER
14380                     	xdef	_Delay
14381                     	xdef	_I2C_RxData
14382                     	xdef	_I2C_TxData
14383                     	xdef	_I2C_STOP
14384                     	xdef	_I2C_START
14385                     	xdef	_I2C_Dataread
14386                     	xdef	_I2C_Datawrite_Reset
14387                     	xdef	_I2C1_Init
14388                     	xdef	_BlackBox_TX
14389                     	xdef	_CELLB_Calculation
14390                     	xdef	_UART_Init
14391                     	xdef	_Delay_ms
14392                     	xdef	_CHG_STATE
14393                     	xdef	_DISCHG_CHK
14394                     	xdef	_LED_CTR
14395                     	xdef	_WarningSpeak
14396                     	xdef	_StartSpeak
14397                     	xdef	_Speak_Value
14398                     	xdef	_NTC_CHK
14399                     	xdef	_CHG_CHK
14400                     	xdef	_ADC_CHK
14401                     	xdef	_Port_init
14402                     	xdef	_Time_Speak_State
14403                     	switch	.bss
14404  0000               _SpeakOnOff:
14405  0000 00            	ds.b	1
14406                     	xdef	_SpeakOnOff
14407  0001               _SpeakAppTone:
14408  0001 00            	ds.b	1
14409                     	xdef	_SpeakAppTone
14410  0002               _SpeakAppTime:
14411  0002 00            	ds.b	1
14412                     	xdef	_SpeakAppTime
14413  0003               _SpeakTime2_pp:
14414  0003 00            	ds.b	1
14415                     	xdef	_SpeakTime2_pp
14416  0004               _SpeakTime1_pp:
14417  0004 00            	ds.b	1
14418                     	xdef	_SpeakTime1_pp
14419  0005               _SpeakDelayTime_pp:
14420  0005 0000          	ds.b	2
14421                     	xdef	_SpeakDelayTime_pp
14422                     	xdef	_MAD4
14423                     	xdef	_MAD3
14424                     	xdef	_MAD2
14425                     	xdef	_MAD1
14426                     	xdef	_cs2
14427                     	xdef	_cs1
14428                     	xdef	_Sum
14429                     	xdef	_disChgNeedDelay
14430                     	xdef	_CHG_TIME
14431                     	xdef	_DISCHG_TIME
14432                     	xdef	_DIS_CURR
14433                     	xdef	_DISCHG_Current
14434                     	xdef	_DISCHG_AVG
14435                     	xdef	_DIS_AVG
14436                     	xdef	_Dis_j
14437                     	xdef	_CHG_ST
14438                     	xdef	_ACC_ST
14439                     	xdef	_P_Time
14440                     	xdef	_BR_ERR
14441                     	xdef	_PRC_COM
14442                     	xdef	_BLE_Con
14443                     	xdef	_BLE_LED
14444                     	xdef	_Percentgauge
14445                     	xdef	_APP_Connect_end
14446                     	xdef	_APP_Connect
14447                     	xdef	_DATA_TX_5s
14448                     	xdef	_APP_DATA_Start
14449                     	xdef	_I2C_ON
14450                     	xdef	_Short_1S
14451                     	xdef	_Short_time
14452                     	xdef	_DIS_Unlock
14453                     	xdef	_DIS_Lock
14454                     	xdef	_STATE_CHG
14455                     	xdef	_NTC_ON
14456                     	xdef	_LED_State
14457                     	xdef	_LCHG_State
14458                     	xdef	_CHG_State
14459                     	xdef	_FULL_STATE
14460                     	xdef	_NTC_Stop
14461                     	xdef	_Percent_N
14462                     	xdef	_Percent_P
14463                     	xdef	_Percent_1s
14464                     	xdef	_Warning_Time
14465                     	xdef	_DIS_Un3s
14466                     	xdef	_DIS_Unlock_10s
14467                     	xdef	_DIS_3s
14468                     	xdef	_DIS_Lock_10s
14469                     	xdef	_B_bounce_1S
14470                     	xdef	_waiting_Time
14471                     	xdef	_TIM_CHG_1S3
14472                     	xdef	_TIM_CHG_1S2
14473                     	xdef	_TIM_CHG_1S1
14474                     	xdef	_TIM_1S7
14475                     	xdef	_TIM_1S6
14476                     	xdef	_TIM_1S5
14477                     	xdef	_TIM_1S4
14478                     	xdef	_TIM_1S3
14479                     	xdef	_TIM_1S2
14480                     	xdef	_TIM_1S
14481                     	xdef	_Tim_500ms
14482                     	xdef	_TIM_8ms3
14483                     	xdef	_TIM_8ms2
14484                     	xdef	_TIM_8ms
14485                     	xdef	_ACC_LOW
14486                     	xdef	_ACC_DIS
14487                     	xdef	_ACC_CHG
14488  0007               _cap_percent:
14489  0007 00000000      	ds.b	4
14490                     	xdef	_cap_percent
14491                     	xdef	_FullCap
14492                     	xdef	_RepCap
14493                     	xdef	_ChgCap
14494                     	xdef	_CalcCurrent
14495                     	xdef	_C_Current
14496                     	xdef	_D_Current
14497                     	xdef	_Curr2
14498                     	xdef	_Curr1
14499                     	xdef	_NTC_Temp1
14500                     	xdef	_NTC_Temp
14501                     	xdef	_ACC_Volt
14502                     	xdef	_BAT_Volt1
14503                     	xdef	_BAT_P_Volt
14504                     	xdef	_BAT_Volt
14505                     	xdef	_VIN_Volt
14506                     	xdef	_ADC_BBT
14507                     	xdef	_ADC_OUT
14508                     	xdef	_ADC_ACC
14509                     	xdef	_ADC_BAT
14510                     	xdef	_ADC_VIN
14511                     	xdef	_BB_Bitrate
14512                     	xdef	_BA_Bitrate
14513  000b               _DischgAVG:
14514  000b 000000000000  	ds.b	160
14515                     	xdef	_DischgAVG
14516  00ab               _Manuf_Data:
14517  00ab 000000000000  	ds.b	10
14518                     	xdef	_Manuf_Data
14519  00b5               _B_Rx_Command:
14520  00b5 000000000000  	ds.b	64
14521                     	xdef	_B_Rx_Command
14522  00f5               _A_Rx_Command:
14523  00f5 000000000000  	ds.b	64
14524                     	xdef	_A_Rx_Command
14525  0135               _I2C_Data:
14526  0135 000000000000  	ds.b	34
14527                     	xdef	_I2C_Data
14528                     	xdef	_PRC_NoCOM
14529                     	xdef	_PRC_Data
14530                     	xdef	_BAB_DAT3
14531                     	xdef	_BAB_DAT2
14532                     	xdef	_BAB_DAT1
14533                     	xdef	_BAB_DATA
14534                     	xdef	_REV_Setting
14535                     	xdef	_Version
14536                     	xdef	_send_btInfoToPC
14537                     	xdef	_LCD_TX
14538                     	xdef	____debug
14539  0157               __dBuf:
14540  0157 000000000000  	ds.b	64
14541                     	xdef	__dBuf
14542                     	xref	_sprintf
14543                     	xdef	_putchar
14544                     	xref	_printf
14545                     	xdef	_getchar
14546                     	xref	_WWDG_Init
14547                     	xref	_USART_ClearFlag
14548                     	xref	_USART_GetFlagStatus
14549                     	xref	_USART_ITConfig
14550                     	xref	_USART_ReceiveData8
14551                     	xref	_USART_SendData8
14552                     	xref	_USART_Cmd
14553                     	xref	_USART_Init
14554                     	xref	_USART_DeInit
14555                     	xref	_TIM4_ClearITPendingBit
14556                     	xref	_TIM4_ClearFlag
14557                     	xref	_TIM4_ITConfig
14558                     	xref	_TIM4_Cmd
14559                     	xref	_TIM4_TimeBaseInit
14560                     	xref	_TIM4_DeInit
14561                     	xref	_GPIO_ReadInputDataBit
14562                     	xref	_GPIO_ResetBits
14563                     	xref	_GPIO_SetBits
14564                     	xref	_GPIO_ExternalPullUpConfig
14565                     	xref	_GPIO_Init
14566                     	xref	_FLASH_GetFlagStatus
14567                     	xref	_FLASH_ReadByte
14568                     	xref	_FLASH_ProgramByte
14569                     	xref	_FLASH_Unlock
14570                     	xref	_FLASH_SetProgrammingTime
14571                     	xref	_CLK_PeripheralClockConfig
14572                     	xref	_CLK_DeInit
14573                     	xref	_ADC_GetConversionValue
14574                     	xref	_ADC_SamplingTimeConfig
14575                     	xref	_ADC_ChannelCmd
14576                     	xref	_ADC_SoftwareStartConv
14577                     	xref	_ADC_Cmd
14578                     	xref	_ADC_Init
14579                     	xref	_ADC_DeInit
14580                     	xref	_strlen
14581                     	switch	.const
14582  0199               L3025:
14583  0199 0d0a0a256c64  	dc.b	13,10,10,37,108,100
14584  019f 202c2564202c  	dc.b	" ,%d ,%f",13
14585  01a8 0a0a00        	dc.b	10,10,0
14586  01ab               L7715:
14587  01ab 40b2f7ad      	dc.w	16562,-2131
14588  01af               L5034:
14589  01af 3e203fd5      	dc.w	15904,16341
14590  01b3               L1624:
14591  01b3 3d651411      	dc.w	15717,5137
14592  01b7               L1524:
14593  01b7 3e1f7724      	dc.w	15903,30500
14594  01bb               L3333:
14595  01bb 2564202c2025  	dc.b	"%d , %d, %d, %d, %"
14596  01cd 662c2025640d  	dc.b	"f, %d",13
14597  01d3 0a00          	dc.b	10,0
14598  01d5               L5623:
14599  01d5 41542b414456  	dc.b	"AT+ADVINTERVAL=520"
14600  01e7 0d0a00        	dc.b	13,10,0
14601  01ea               L3623:
14602  01ea 41542b545850  	dc.b	"AT+TXPWR=7",13
14603  01f5 0a00          	dc.b	10,0
14604  01f7               L1623:
14605  01f7 41542b4d414e  	dc.b	"AT+MANUF=IVT-%c%c%"
14606  0209 6325630d      	dc.b	"c%c",13
14607  020d 0a00          	dc.b	10,0
14608  020f               L7523:
14609  020f 41542b494e46  	dc.b	"AT+INFO?",13
14610  0218 0a00          	dc.b	10,0
14611  021a               L1223:
14612  021a 430da8f5      	dc.w	17165,-22283
14613  021e               L5613:
14614  021e 42700000      	dc.w	17008,0
14615  0222               L3313:
14616  0222 45610000      	dc.w	17761,0
14617  0226               L3113:
14618  0226 40699999      	dc.w	16489,-26215
14619  022a               L1103:
14620  022a 40271a9f      	dc.w	16423,6815
14621                     	xref.b	c_lreg
14622                     	xref.b	c_x
14642                     	xref	c_ultof
14643                     	xref	c_lgmul
14644                     	xref	c_fsub
14645                     	xref	c_uitof
14646                     	xref	c_lgsub
14647                     	xref	c_ftoi
14648                     	xref	c_ltof
14649                     	xref	c_lsub
14650                     	xref	c_uitolx
14651                     	xref	c_idiv
14652                     	xref	c_fgsub
14653                     	xref	c_fcmp
14654                     	xref	c_ftol
14655                     	xref	c_fdiv
14656                     	xref	c_fgadd
14657                     	xref	c_fmul
14658                     	xref	c_itof
14659                     	xref	c_sdivx
14660                     	xref	c_smodx
14661                     	xref	c_itolx
14662                     	xref	c_ludv
14663                     	xref	c_lumd
14664                     	xref	c_lcmp
14665                     	xref	c_ltor
14666                     	xref	c_lgadd
14667                     	xref	c_lmul
14668                     	xref	c_rtol
14669                     	xref	c_xymov
14670                     	end
