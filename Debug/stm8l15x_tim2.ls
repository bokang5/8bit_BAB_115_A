   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.11.9 - 08 Feb 2017
   3                     ; Generator (Limited) V4.4.6 - 08 Feb 2017
   4                     ; Optimizer V4.4.6 - 08 Feb 2017
  47                     ; 168 void TIM2_DeInit(void)
  47                     ; 169 {
  49                     	switch	.text
  50  0000               _TIM2_DeInit:
  54                     ; 170   TIM2->CR1 = TIM_CR1_RESET_VALUE;
  56  0000 725f5250      	clr	21072
  57                     ; 171   TIM2->CR2 = TIM_CR2_RESET_VALUE;
  59  0004 725f5251      	clr	21073
  60                     ; 172   TIM2->SMCR = TIM_SMCR_RESET_VALUE;
  62  0008 725f5252      	clr	21074
  63                     ; 173   TIM2->ETR = TIM_ETR_RESET_VALUE;
  65  000c 725f5253      	clr	21075
  66                     ; 174   TIM2->IER = TIM_IER_RESET_VALUE;
  68  0010 725f5255      	clr	21077
  69                     ; 175   TIM2->SR2 = TIM_SR2_RESET_VALUE;
  71  0014 725f5257      	clr	21079
  72                     ; 178   TIM2->CCER1 = TIM_CCER1_RESET_VALUE;
  74  0018 725f525b      	clr	21083
  75                     ; 180   TIM2->CCMR1 = 0x01;/*TIM2_ICxSource_TIxFPx */
  77  001c 35015259      	mov	21081,#1
  78                     ; 181   TIM2->CCMR2 = 0x01;/*TIM2_ICxSource_TIxFPx */
  80  0020 3501525a      	mov	21082,#1
  81                     ; 184   TIM2->CCER1 = TIM_CCER1_RESET_VALUE;
  83  0024 725f525b      	clr	21083
  84                     ; 185   TIM2->CCMR1 = TIM_CCMR1_RESET_VALUE;
  86  0028 725f5259      	clr	21081
  87                     ; 186   TIM2->CCMR2 = TIM_CCMR2_RESET_VALUE;
  89  002c 725f525a      	clr	21082
  90                     ; 188   TIM2->CNTRH = TIM_CNTRH_RESET_VALUE;
  92  0030 725f525c      	clr	21084
  93                     ; 189   TIM2->CNTRL = TIM_CNTRL_RESET_VALUE;
  95  0034 725f525d      	clr	21085
  96                     ; 191   TIM2->PSCR = TIM_PSCR_RESET_VALUE;
  98  0038 725f525e      	clr	21086
  99                     ; 193   TIM2->ARRH = TIM_ARRH_RESET_VALUE;
 101  003c 35ff525f      	mov	21087,#255
 102                     ; 194   TIM2->ARRL = TIM_ARRL_RESET_VALUE;
 104  0040 35ff5260      	mov	21088,#255
 105                     ; 196   TIM2->CCR1H = TIM_CCR1H_RESET_VALUE;
 107  0044 725f5261      	clr	21089
 108                     ; 197   TIM2->CCR1L = TIM_CCR1L_RESET_VALUE;
 110  0048 725f5262      	clr	21090
 111                     ; 198   TIM2->CCR2H = TIM_CCR2H_RESET_VALUE;
 113  004c 725f5263      	clr	21091
 114                     ; 199   TIM2->CCR2L = TIM_CCR2L_RESET_VALUE;
 116  0050 725f5264      	clr	21092
 117                     ; 202   TIM2->OISR = TIM_OISR_RESET_VALUE;
 119  0054 725f5266      	clr	21094
 120                     ; 203   TIM2->EGR = 0x01;/* TIM_EGR_UG */
 122  0058 35015258      	mov	21080,#1
 123                     ; 204   TIM2->BKR = TIM_BKR_RESET_VALUE;
 125  005c 725f5265      	clr	21093
 126                     ; 205   TIM2->SR1 = TIM_SR1_RESET_VALUE;
 128  0060 725f5256      	clr	21078
 129                     ; 206 }
 132  0064 81            	ret	
 292                     ; 231 void TIM2_TimeBaseInit(TIM2_Prescaler_TypeDef TIM2_Prescaler,
 292                     ; 232                        TIM2_CounterMode_TypeDef TIM2_CounterMode,
 292                     ; 233                        uint16_t TIM2_Period)
 292                     ; 234 {
 293                     	switch	.text
 294  0065               _TIM2_TimeBaseInit:
 296       fffffffe      OFST: set -2
 299                     ; 236   assert_param(IS_TIM2_PRESCALER(TIM2_Prescaler));
 301                     ; 237   assert_param(IS_TIM2_COUNTER_MODE(TIM2_CounterMode));
 303                     ; 242   TIM2->ARRH = (uint8_t)(TIM2_Period >> 8) ;
 305  0065 7b03          	ld	a,(OFST+5,sp)
 306  0067 c7525f        	ld	21087,a
 307                     ; 243   TIM2->ARRL = (uint8_t)(TIM2_Period);
 309  006a 7b04          	ld	a,(OFST+6,sp)
 310  006c c75260        	ld	21088,a
 311                     ; 246   TIM2->PSCR = (uint8_t)(TIM2_Prescaler);
 313  006f 9e            	ld	a,xh
 314  0070 c7525e        	ld	21086,a
 315                     ; 249   TIM2->CR1 &= (uint8_t)((uint8_t)(~TIM_CR1_CMS)) & ((uint8_t)(~TIM_CR1_DIR));
 317  0073 c65250        	ld	a,21072
 318  0076 a48f          	and	a,#143
 319  0078 c75250        	ld	21072,a
 320                     ; 250   TIM2->CR1 |= (uint8_t)(TIM2_CounterMode);
 322  007b 9f            	ld	a,xl
 323  007c ca5250        	or	a,21072
 324  007f c75250        	ld	21072,a
 325                     ; 253   TIM2->EGR = TIM2_EventSource_Update;
 327  0082 35015258      	mov	21080,#1
 328                     ; 254 }
 331  0086 81            	ret	
 399                     ; 274 void TIM2_PrescalerConfig(TIM2_Prescaler_TypeDef Prescaler,
 399                     ; 275                           TIM2_PSCReloadMode_TypeDef TIM2_PSCReloadMode)
 399                     ; 276 {
 400                     	switch	.text
 401  0087               _TIM2_PrescalerConfig:
 405                     ; 278   assert_param(IS_TIM2_PRESCALER(Prescaler));
 407                     ; 279   assert_param(IS_TIM2_PRESCALER_RELOAD(TIM2_PSCReloadMode));
 409                     ; 282   TIM2->PSCR = (uint8_t)(Prescaler);
 411  0087 9e            	ld	a,xh
 412  0088 c7525e        	ld	21086,a
 413                     ; 285   if (TIM2_PSCReloadMode == TIM2_PSCReloadMode_Immediate)
 415  008b 9f            	ld	a,xl
 416  008c 4a            	dec	a
 417  008d 2605          	jrne	L541
 418                     ; 287     TIM2->EGR |= TIM_EGR_UG ;
 420  008f 72105258      	bset	21080,#0
 423  0093 81            	ret	
 424  0094               L541:
 425                     ; 291     TIM2->EGR &= (uint8_t)(~TIM_EGR_UG) ;
 427  0094 72115258      	bres	21080,#0
 428                     ; 293 }
 431  0098 81            	ret	
 474                     ; 306 void TIM2_CounterModeConfig(TIM2_CounterMode_TypeDef TIM2_CounterMode)
 474                     ; 307 {
 475                     	switch	.text
 476  0099               _TIM2_CounterModeConfig:
 478  0099 88            	push	a
 479  009a 88            	push	a
 480       00000001      OFST:	set	1
 483                     ; 308   uint8_t tmpcr1 = 0;
 485                     ; 311   assert_param(IS_TIM2_COUNTER_MODE(TIM2_CounterMode));
 487                     ; 313   tmpcr1 = TIM2->CR1;
 489  009b c65250        	ld	a,21072
 491                     ; 316   tmpcr1 &= (uint8_t)((uint8_t)(~TIM_CR1_CMS) & (uint8_t)(~TIM_CR1_DIR));
 493  009e a48f          	and	a,#143
 495                     ; 319   tmpcr1 |= (uint8_t)TIM2_CounterMode;
 497  00a0 1a02          	or	a,(OFST+1,sp)
 499                     ; 321   TIM2->CR1 = tmpcr1;
 501  00a2 c75250        	ld	21072,a
 502                     ; 322 }
 505  00a5 85            	popw	x
 506  00a6 81            	ret	
 538                     ; 330 void TIM2_SetCounter(uint16_t Counter)
 538                     ; 331 {
 539                     	switch	.text
 540  00a7               _TIM2_SetCounter:
 544                     ; 334   TIM2->CNTRH = (uint8_t)(Counter >> 8);
 546  00a7 9e            	ld	a,xh
 547  00a8 c7525c        	ld	21084,a
 548                     ; 335   TIM2->CNTRL = (uint8_t)(Counter);
 550  00ab 9f            	ld	a,xl
 551  00ac c7525d        	ld	21085,a
 552                     ; 336 }
 555  00af 81            	ret	
 587                     ; 344 void TIM2_SetAutoreload(uint16_t Autoreload)
 587                     ; 345 {
 588                     	switch	.text
 589  00b0               _TIM2_SetAutoreload:
 593                     ; 347   TIM2->ARRH = (uint8_t)(Autoreload >> 8);
 595  00b0 9e            	ld	a,xh
 596  00b1 c7525f        	ld	21087,a
 597                     ; 348   TIM2->ARRL = (uint8_t)(Autoreload);
 599  00b4 9f            	ld	a,xl
 600  00b5 c75260        	ld	21088,a
 601                     ; 349 }
 604  00b8 81            	ret	
 650                     ; 356 uint16_t TIM2_GetCounter(void)
 650                     ; 357 {
 651                     	switch	.text
 652  00b9               _TIM2_GetCounter:
 654  00b9 5204          	subw	sp,#4
 655       00000004      OFST:	set	4
 658                     ; 358   uint16_t tmpcnt = 0;
 660                     ; 361   tmpcntrh = TIM2->CNTRH;
 662  00bb c6525c        	ld	a,21084
 663  00be 6b02          	ld	(OFST-2,sp),a
 665                     ; 362   tmpcntrl = TIM2->CNTRL;
 667  00c0 c6525d        	ld	a,21085
 668  00c3 6b01          	ld	(OFST-3,sp),a
 670                     ; 364   tmpcnt = (uint16_t)(tmpcntrl);
 672  00c5 5f            	clrw	x
 673  00c6 97            	ld	xl,a
 674  00c7 1f03          	ldw	(OFST-1,sp),x
 676                     ; 365   tmpcnt |= (uint16_t)((uint16_t)tmpcntrh << 8);
 678  00c9 5f            	clrw	x
 679  00ca 7b02          	ld	a,(OFST-2,sp)
 680  00cc 97            	ld	xl,a
 681  00cd 7b04          	ld	a,(OFST+0,sp)
 682  00cf 01            	rrwa	x,a
 683  00d0 1a03          	or	a,(OFST-1,sp)
 684  00d2 01            	rrwa	x,a
 686                     ; 367   return ((uint16_t)tmpcnt);
 690  00d3 5b04          	addw	sp,#4
 691  00d5 81            	ret	
 715                     ; 383 TIM2_Prescaler_TypeDef TIM2_GetPrescaler(void)
 715                     ; 384 {
 716                     	switch	.text
 717  00d6               _TIM2_GetPrescaler:
 721                     ; 386   return ((TIM2_Prescaler_TypeDef)TIM2->PSCR);
 723  00d6 c6525e        	ld	a,21086
 726  00d9 81            	ret	
 782                     ; 396 void TIM2_UpdateDisableConfig(FunctionalState NewState)
 782                     ; 397 {
 783                     	switch	.text
 784  00da               _TIM2_UpdateDisableConfig:
 788                     ; 399   assert_param(IS_FUNCTIONAL_STATE(NewState));
 790                     ; 402   if (NewState != DISABLE)
 792  00da 4d            	tnz	a
 793  00db 2705          	jreq	L772
 794                     ; 404     TIM2->CR1 |= TIM_CR1_UDIS;
 796  00dd 72125250      	bset	21072,#1
 799  00e1 81            	ret	
 800  00e2               L772:
 801                     ; 408     TIM2->CR1 &= (uint8_t)(~TIM_CR1_UDIS);
 803  00e2 72135250      	bres	21072,#1
 804                     ; 410 }
 807  00e6 81            	ret	
 865                     ; 420 void TIM2_UpdateRequestConfig(TIM2_UpdateSource_TypeDef TIM2_UpdateSource)
 865                     ; 421 {
 866                     	switch	.text
 867  00e7               _TIM2_UpdateRequestConfig:
 871                     ; 423   assert_param(IS_TIM2_UPDATE_SOURCE(TIM2_UpdateSource));
 873                     ; 426   if (TIM2_UpdateSource == TIM2_UpdateSource_Regular)
 875  00e7 4a            	dec	a
 876  00e8 2605          	jrne	L133
 877                     ; 428     TIM2->CR1 |= TIM_CR1_URS ;
 879  00ea 72145250      	bset	21072,#2
 882  00ee 81            	ret	
 883  00ef               L133:
 884                     ; 432     TIM2->CR1 &= (uint8_t)(~TIM_CR1_URS);
 886  00ef 72155250      	bres	21072,#2
 887                     ; 434 }
 890  00f3 81            	ret	
 926                     ; 442 void TIM2_ARRPreloadConfig(FunctionalState NewState)
 926                     ; 443 {
 927                     	switch	.text
 928  00f4               _TIM2_ARRPreloadConfig:
 932                     ; 445   assert_param(IS_FUNCTIONAL_STATE(NewState));
 934                     ; 448   if (NewState != DISABLE)
 936  00f4 4d            	tnz	a
 937  00f5 2705          	jreq	L353
 938                     ; 450     TIM2->CR1 |= TIM_CR1_ARPE;
 940  00f7 721e5250      	bset	21072,#7
 943  00fb 81            	ret	
 944  00fc               L353:
 945                     ; 454     TIM2->CR1 &= (uint8_t)(~TIM_CR1_ARPE);
 947  00fc 721f5250      	bres	21072,#7
 948                     ; 456 }
 951  0100 81            	ret	
1008                     ; 466 void TIM2_SelectOnePulseMode(TIM2_OPMode_TypeDef TIM2_OPMode)
1008                     ; 467 {
1009                     	switch	.text
1010  0101               _TIM2_SelectOnePulseMode:
1014                     ; 469   assert_param(IS_TIM2_OPM_MODE(TIM2_OPMode));
1016                     ; 472   if (TIM2_OPMode == TIM2_OPMode_Single)
1018  0101 4a            	dec	a
1019  0102 2605          	jrne	L504
1020                     ; 474     TIM2->CR1 |= TIM_CR1_OPM ;
1022  0104 72165250      	bset	21072,#3
1025  0108 81            	ret	
1026  0109               L504:
1027                     ; 478     TIM2->CR1 &= (uint8_t)(~TIM_CR1_OPM);
1029  0109 72175250      	bres	21072,#3
1030                     ; 480 }
1033  010d 81            	ret	
1068                     ; 488 void TIM2_Cmd(FunctionalState NewState)
1068                     ; 489 {
1069                     	switch	.text
1070  010e               _TIM2_Cmd:
1074                     ; 491   assert_param(IS_FUNCTIONAL_STATE(NewState));
1076                     ; 494   if (NewState != DISABLE)
1078  010e 4d            	tnz	a
1079  010f 2705          	jreq	L724
1080                     ; 496     TIM2->CR1 |= TIM_CR1_CEN;
1082  0111 72105250      	bset	21072,#0
1085  0115 81            	ret	
1086  0116               L724:
1087                     ; 500     TIM2->CR1 &= (uint8_t)(~TIM_CR1_CEN);
1089  0116 72115250      	bres	21072,#0
1090                     ; 502 }
1093  011a 81            	ret	
1287                     ; 578 void TIM2_OC1Init(TIM2_OCMode_TypeDef TIM2_OCMode,
1287                     ; 579                   TIM2_OutputState_TypeDef TIM2_OutputState,
1287                     ; 580                   uint16_t TIM2_Pulse,
1287                     ; 581                   TIM2_OCPolarity_TypeDef TIM2_OCPolarity,
1287                     ; 582                   TIM2_OCIdleState_TypeDef TIM2_OCIdleState)
1287                     ; 583 {
1288                     	switch	.text
1289  011b               _TIM2_OC1Init:
1291  011b 89            	pushw	x
1292  011c 88            	push	a
1293       00000001      OFST:	set	1
1296                     ; 584   uint8_t tmpccmr1 = 0;
1298                     ; 587   assert_param(IS_TIM2_OC_MODE(TIM2_OCMode));
1300                     ; 588   assert_param(IS_TIM2_OUTPUT_STATE(TIM2_OutputState));
1302                     ; 589   assert_param(IS_TIM2_OC_POLARITY(TIM2_OCPolarity));
1304                     ; 590   assert_param(IS_TIM2_OCIDLE_STATE(TIM2_OCIdleState));
1306                     ; 592   tmpccmr1 = TIM2->CCMR1;
1308  011d c65259        	ld	a,21081
1309  0120 6b01          	ld	(OFST+0,sp),a
1311                     ; 595   TIM2->CCER1 &= (uint8_t)(~TIM_CCER1_CC1E);
1313  0122 7211525b      	bres	21083,#0
1314                     ; 597   tmpccmr1 &= (uint8_t)(~TIM_CCMR_OCM);
1316  0126 a48f          	and	a,#143
1317  0128 6b01          	ld	(OFST+0,sp),a
1319                     ; 600   tmpccmr1 |= (uint8_t)TIM2_OCMode;
1321  012a 9e            	ld	a,xh
1322  012b 1a01          	or	a,(OFST+0,sp)
1323  012d 6b01          	ld	(OFST+0,sp),a
1325                     ; 602   TIM2->CCMR1 = tmpccmr1;
1327  012f c75259        	ld	21081,a
1328                     ; 605   if (TIM2_OutputState == TIM2_OutputState_Enable)
1330  0132 9f            	ld	a,xl
1331  0133 4a            	dec	a
1332  0134 2606          	jrne	L145
1333                     ; 607     TIM2->CCER1 |= TIM_CCER1_CC1E;
1335  0136 7210525b      	bset	21083,#0
1337  013a 2004          	jra	L345
1338  013c               L145:
1339                     ; 611     TIM2->CCER1 &= (uint8_t)(~TIM_CCER1_CC1E);
1341  013c 7211525b      	bres	21083,#0
1342  0140               L345:
1343                     ; 615   if (TIM2_OCPolarity == TIM2_OCPolarity_Low)
1345  0140 7b08          	ld	a,(OFST+7,sp)
1346  0142 4a            	dec	a
1347  0143 2606          	jrne	L545
1348                     ; 617     TIM2->CCER1 |= TIM_CCER1_CC1P;
1350  0145 7212525b      	bset	21083,#1
1352  0149 2004          	jra	L745
1353  014b               L545:
1354                     ; 621     TIM2->CCER1 &= (uint8_t)(~TIM_CCER1_CC1P);
1356  014b 7213525b      	bres	21083,#1
1357  014f               L745:
1358                     ; 625   if (TIM2_OCIdleState == TIM2_OCIdleState_Set)
1360  014f 7b09          	ld	a,(OFST+8,sp)
1361  0151 4a            	dec	a
1362  0152 2606          	jrne	L155
1363                     ; 627     TIM2->OISR |= TIM_OISR_OIS1;
1365  0154 72105266      	bset	21094,#0
1367  0158 2004          	jra	L355
1368  015a               L155:
1369                     ; 631     TIM2->OISR &= (uint8_t)(~TIM_OISR_OIS1);
1371  015a 72115266      	bres	21094,#0
1372  015e               L355:
1373                     ; 635   TIM2->CCR1H = (uint8_t)(TIM2_Pulse >> 8);
1375  015e 7b06          	ld	a,(OFST+5,sp)
1376  0160 c75261        	ld	21089,a
1377                     ; 636   TIM2->CCR1L = (uint8_t)(TIM2_Pulse);
1379  0163 7b07          	ld	a,(OFST+6,sp)
1380  0165 c75262        	ld	21090,a
1381                     ; 637 }
1384  0168 5b03          	addw	sp,#3
1385  016a 81            	ret	
1464                     ; 664 void TIM2_OC2Init(TIM2_OCMode_TypeDef TIM2_OCMode,
1464                     ; 665                   TIM2_OutputState_TypeDef TIM2_OutputState,
1464                     ; 666                   uint16_t TIM2_Pulse,
1464                     ; 667                   TIM2_OCPolarity_TypeDef TIM2_OCPolarity,
1464                     ; 668                   TIM2_OCIdleState_TypeDef TIM2_OCIdleState)
1464                     ; 669 {
1465                     	switch	.text
1466  016b               _TIM2_OC2Init:
1468  016b 89            	pushw	x
1469  016c 88            	push	a
1470       00000001      OFST:	set	1
1473                     ; 670   uint8_t tmpccmr2 = 0;
1475                     ; 673   assert_param(IS_TIM2_OC_MODE(TIM2_OCMode));
1477                     ; 674   assert_param(IS_TIM2_OUTPUT_STATE(TIM2_OutputState));
1479                     ; 675   assert_param(IS_TIM2_OC_POLARITY(TIM2_OCPolarity));
1481                     ; 676   assert_param(IS_TIM2_OCIDLE_STATE(TIM2_OCIdleState));
1483                     ; 678   tmpccmr2 = TIM2->CCMR2;
1485  016d c6525a        	ld	a,21082
1486  0170 6b01          	ld	(OFST+0,sp),a
1488                     ; 681   TIM2->CCER1 &= (uint8_t)(~TIM_CCER1_CC2E);
1490  0172 7219525b      	bres	21083,#4
1491                     ; 684   tmpccmr2 &= (uint8_t)(~TIM_CCMR_OCM);
1493  0176 a48f          	and	a,#143
1494  0178 6b01          	ld	(OFST+0,sp),a
1496                     ; 687   tmpccmr2 |= (uint8_t)TIM2_OCMode;
1498  017a 9e            	ld	a,xh
1499  017b 1a01          	or	a,(OFST+0,sp)
1500  017d 6b01          	ld	(OFST+0,sp),a
1502                     ; 689   TIM2->CCMR2 = tmpccmr2;
1504  017f c7525a        	ld	21082,a
1505                     ; 692   if (TIM2_OutputState == TIM2_OutputState_Enable)
1507  0182 9f            	ld	a,xl
1508  0183 4a            	dec	a
1509  0184 2606          	jrne	L316
1510                     ; 694     TIM2->CCER1 |= TIM_CCER1_CC2E;
1512  0186 7218525b      	bset	21083,#4
1514  018a 2004          	jra	L516
1515  018c               L316:
1516                     ; 698     TIM2->CCER1 &= (uint8_t)(~TIM_CCER1_CC2E);
1518  018c 7219525b      	bres	21083,#4
1519  0190               L516:
1520                     ; 702   if (TIM2_OCPolarity == TIM2_OCPolarity_Low)
1522  0190 7b08          	ld	a,(OFST+7,sp)
1523  0192 4a            	dec	a
1524  0193 2606          	jrne	L716
1525                     ; 704     TIM2->CCER1 |= TIM_CCER1_CC2P;
1527  0195 721a525b      	bset	21083,#5
1529  0199 2004          	jra	L126
1530  019b               L716:
1531                     ; 708     TIM2->CCER1 &= (uint8_t)(~TIM_CCER1_CC2P);
1533  019b 721b525b      	bres	21083,#5
1534  019f               L126:
1535                     ; 713   if (TIM2_OCIdleState == TIM2_OCIdleState_Set)
1537  019f 7b09          	ld	a,(OFST+8,sp)
1538  01a1 4a            	dec	a
1539  01a2 2606          	jrne	L326
1540                     ; 715     TIM2->OISR |= TIM_OISR_OIS2;
1542  01a4 72145266      	bset	21094,#2
1544  01a8 2004          	jra	L526
1545  01aa               L326:
1546                     ; 719     TIM2->OISR &= (uint8_t)(~TIM_OISR_OIS2);
1548  01aa 72155266      	bres	21094,#2
1549  01ae               L526:
1550                     ; 723   TIM2->CCR2H = (uint8_t)(TIM2_Pulse >> 8);
1552  01ae 7b06          	ld	a,(OFST+5,sp)
1553  01b0 c75263        	ld	21091,a
1554                     ; 724   TIM2->CCR2L = (uint8_t)(TIM2_Pulse);
1556  01b3 7b07          	ld	a,(OFST+6,sp)
1557  01b5 c75264        	ld	21092,a
1558                     ; 725 }
1561  01b8 5b03          	addw	sp,#3
1562  01ba 81            	ret	
1760                     ; 754 void TIM2_BKRConfig(TIM2_OSSIState_TypeDef TIM2_OSSIState,
1760                     ; 755                     TIM2_LockLevel_TypeDef TIM2_LockLevel,
1760                     ; 756                     TIM2_BreakState_TypeDef TIM2_BreakState,
1760                     ; 757                     TIM2_BreakPolarity_TypeDef TIM2_BreakPolarity,
1760                     ; 758                     TIM2_AutomaticOutput_TypeDef TIM2_AutomaticOutput)
1760                     ; 759 
1760                     ; 760 {
1761                     	switch	.text
1762  01bb               _TIM2_BKRConfig:
1764  01bb 89            	pushw	x
1765  01bc 88            	push	a
1766       00000001      OFST:	set	1
1769                     ; 762   assert_param(IS_TIM2_OSSI_STATE(TIM2_OSSIState));
1771                     ; 763   assert_param(IS_TIM2_LOCK_LEVEL(TIM2_LockLevel));
1773                     ; 764   assert_param(IS_TIM2_BREAK_STATE(TIM2_BreakState));
1775                     ; 765   assert_param(IS_TIM2_BREAK_POLARITY(TIM2_BreakPolarity));
1777                     ; 766   assert_param(IS_TIM2_AUTOMATIC_OUTPUT_STATE(TIM2_AutomaticOutput));
1779                     ; 772   TIM2->BKR = (uint8_t)((uint8_t)((uint8_t)((uint8_t)((uint8_t)TIM2_OSSIState | (uint8_t)TIM2_LockLevel) | \
1779                     ; 773                                   (uint8_t)((uint8_t)TIM2_BreakState | (uint8_t)TIM2_BreakPolarity)) | \
1779                     ; 774                                   TIM2_AutomaticOutput));
1781  01bd 7b06          	ld	a,(OFST+5,sp)
1782  01bf 1a07          	or	a,(OFST+6,sp)
1783  01c1 6b01          	ld	(OFST+0,sp),a
1785  01c3 9f            	ld	a,xl
1786  01c4 1a02          	or	a,(OFST+1,sp)
1787  01c6 1a01          	or	a,(OFST+0,sp)
1788  01c8 1a08          	or	a,(OFST+7,sp)
1789  01ca c75265        	ld	21093,a
1790                     ; 775 }
1793  01cd 5b03          	addw	sp,#3
1794  01cf 81            	ret	
1830                     ; 783 void TIM2_CtrlPWMOutputs(FunctionalState NewState)
1830                     ; 784 {
1831                     	switch	.text
1832  01d0               _TIM2_CtrlPWMOutputs:
1836                     ; 786   assert_param(IS_FUNCTIONAL_STATE(NewState));
1838                     ; 790   if (NewState != DISABLE)
1840  01d0 4d            	tnz	a
1841  01d1 2705          	jreq	L757
1842                     ; 792     TIM2->BKR |= TIM_BKR_MOE ;
1844  01d3 721e5265      	bset	21093,#7
1847  01d7 81            	ret	
1848  01d8               L757:
1849                     ; 796     TIM2->BKR &= (uint8_t)(~TIM_BKR_MOE) ;
1851  01d8 721f5265      	bres	21093,#7
1852                     ; 798 }
1855  01dc 81            	ret	
1920                     ; 818 void TIM2_SelectOCxM(TIM2_Channel_TypeDef TIM2_Channel,
1920                     ; 819                      TIM2_OCMode_TypeDef TIM2_OCMode)
1920                     ; 820 {
1921                     	switch	.text
1922  01dd               _TIM2_SelectOCxM:
1924  01dd 89            	pushw	x
1925       00000000      OFST:	set	0
1928                     ; 822   assert_param(IS_TIM2_CHANNEL(TIM2_Channel));
1930                     ; 823   assert_param(IS_TIM2_OCM(TIM2_OCMode));
1932                     ; 825   if (TIM2_Channel == TIM2_Channel_1)
1934  01de 9e            	ld	a,xh
1935  01df 4d            	tnz	a
1936  01e0 2615          	jrne	L5101
1937                     ; 828     TIM2->CCER1 &= (uint8_t)(~TIM_CCER1_CC1E);
1939  01e2 7211525b      	bres	21083,#0
1940                     ; 831     TIM2->CCMR1 &= (uint8_t)(~TIM_CCMR_OCM);
1942  01e6 c65259        	ld	a,21081
1943  01e9 a48f          	and	a,#143
1944  01eb c75259        	ld	21081,a
1945                     ; 834     TIM2->CCMR1 |= (uint8_t)TIM2_OCMode;
1947  01ee 9f            	ld	a,xl
1948  01ef ca5259        	or	a,21081
1949  01f2 c75259        	ld	21081,a
1951  01f5 2014          	jra	L7101
1952  01f7               L5101:
1953                     ; 839     TIM2->CCER1 &= (uint8_t)(~TIM_CCER1_CC2E);
1955  01f7 7219525b      	bres	21083,#4
1956                     ; 842     TIM2->CCMR2 &= (uint8_t)(~TIM_CCMR_OCM);
1958  01fb c6525a        	ld	a,21082
1959  01fe a48f          	and	a,#143
1960  0200 c7525a        	ld	21082,a
1961                     ; 845     TIM2->CCMR2 |= (uint8_t)TIM2_OCMode;
1963  0203 c6525a        	ld	a,21082
1964  0206 1a02          	or	a,(OFST+2,sp)
1965  0208 c7525a        	ld	21082,a
1966  020b               L7101:
1967                     ; 847 }
1970  020b 85            	popw	x
1971  020c 81            	ret	
2003                     ; 855 void TIM2_SetCompare1(uint16_t Compare)
2003                     ; 856 {
2004                     	switch	.text
2005  020d               _TIM2_SetCompare1:
2009                     ; 858   TIM2->CCR1H = (uint8_t)(Compare >> 8);
2011  020d 9e            	ld	a,xh
2012  020e c75261        	ld	21089,a
2013                     ; 859   TIM2->CCR1L = (uint8_t)(Compare);
2015  0211 9f            	ld	a,xl
2016  0212 c75262        	ld	21090,a
2017                     ; 860 }
2020  0215 81            	ret	
2052                     ; 868 void TIM2_SetCompare2(uint16_t Compare)
2052                     ; 869 {
2053                     	switch	.text
2054  0216               _TIM2_SetCompare2:
2058                     ; 871   TIM2->CCR2H = (uint8_t)(Compare >> 8);
2060  0216 9e            	ld	a,xh
2061  0217 c75263        	ld	21091,a
2062                     ; 872   TIM2->CCR2L = (uint8_t)(Compare);
2064  021a 9f            	ld	a,xl
2065  021b c75264        	ld	21092,a
2066                     ; 873 }
2069  021e 81            	ret	
2134                     ; 883 void TIM2_ForcedOC1Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
2134                     ; 884 {
2135                     	switch	.text
2136  021f               _TIM2_ForcedOC1Config:
2138  021f 88            	push	a
2139  0220 88            	push	a
2140       00000001      OFST:	set	1
2143                     ; 885   uint8_t tmpccmr1 = 0;
2145                     ; 888   assert_param(IS_TIM2_FORCED_ACTION(TIM2_ForcedAction));
2147                     ; 890   tmpccmr1 = TIM2->CCMR1;
2149  0221 c65259        	ld	a,21081
2151                     ; 893   tmpccmr1 &= (uint8_t)(~TIM_CCMR_OCM);
2153  0224 a48f          	and	a,#143
2155                     ; 896   tmpccmr1 |= (uint8_t)TIM2_ForcedAction;
2157  0226 1a02          	or	a,(OFST+1,sp)
2159                     ; 898   TIM2->CCMR1 = tmpccmr1;
2161  0228 c75259        	ld	21081,a
2162                     ; 899 }
2165  022b 85            	popw	x
2166  022c 81            	ret	
2209                     ; 909 void TIM2_ForcedOC2Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
2209                     ; 910 {
2210                     	switch	.text
2211  022d               _TIM2_ForcedOC2Config:
2213  022d 88            	push	a
2214  022e 88            	push	a
2215       00000001      OFST:	set	1
2218                     ; 911   uint8_t tmpccmr2 = 0;
2220                     ; 914   assert_param(IS_TIM2_FORCED_ACTION(TIM2_ForcedAction));
2222                     ; 916   tmpccmr2 = TIM2->CCMR2;
2224  022f c6525a        	ld	a,21082
2226                     ; 919   tmpccmr2 &= (uint8_t)(~TIM_CCMR_OCM);
2228  0232 a48f          	and	a,#143
2230                     ; 922   tmpccmr2 |= (uint8_t)TIM2_ForcedAction;
2232  0234 1a02          	or	a,(OFST+1,sp)
2234                     ; 924   TIM2->CCMR2 = tmpccmr2;
2236  0236 c7525a        	ld	21082,a
2237                     ; 925 }
2240  0239 85            	popw	x
2241  023a 81            	ret	
2277                     ; 933 void TIM2_OC1PreloadConfig(FunctionalState NewState)
2277                     ; 934 {
2278                     	switch	.text
2279  023b               _TIM2_OC1PreloadConfig:
2283                     ; 936   assert_param(IS_FUNCTIONAL_STATE(NewState));
2285                     ; 939   if (NewState != DISABLE)
2287  023b 4d            	tnz	a
2288  023c 2705          	jreq	L7311
2289                     ; 941     TIM2->CCMR1 |= TIM_CCMR_OCxPE ;
2291  023e 72165259      	bset	21081,#3
2294  0242 81            	ret	
2295  0243               L7311:
2296                     ; 945     TIM2->CCMR1 &= (uint8_t)(~TIM_CCMR_OCxPE) ;
2298  0243 72175259      	bres	21081,#3
2299                     ; 947 }
2302  0247 81            	ret	
2338                     ; 955 void TIM2_OC2PreloadConfig(FunctionalState NewState)
2338                     ; 956 {
2339                     	switch	.text
2340  0248               _TIM2_OC2PreloadConfig:
2344                     ; 958   assert_param(IS_FUNCTIONAL_STATE(NewState));
2346                     ; 961   if (NewState != DISABLE)
2348  0248 4d            	tnz	a
2349  0249 2705          	jreq	L1611
2350                     ; 963     TIM2->CCMR2 |= TIM_CCMR_OCxPE ;
2352  024b 7216525a      	bset	21082,#3
2355  024f 81            	ret	
2356  0250               L1611:
2357                     ; 967     TIM2->CCMR2 &= (uint8_t)(~TIM_CCMR_OCxPE) ;
2359  0250 7217525a      	bres	21082,#3
2360                     ; 969 }
2363  0254 81            	ret	
2398                     ; 977 void TIM2_OC1FastConfig(FunctionalState NewState)
2398                     ; 978 {
2399                     	switch	.text
2400  0255               _TIM2_OC1FastConfig:
2404                     ; 980   assert_param(IS_FUNCTIONAL_STATE(NewState));
2406                     ; 983   if (NewState != DISABLE)
2408  0255 4d            	tnz	a
2409  0256 2705          	jreq	L3021
2410                     ; 985     TIM2->CCMR1 |= TIM_CCMR_OCxFE ;
2412  0258 72145259      	bset	21081,#2
2415  025c 81            	ret	
2416  025d               L3021:
2417                     ; 989     TIM2->CCMR1 &= (uint8_t)(~TIM_CCMR_OCxFE) ;
2419  025d 72155259      	bres	21081,#2
2420                     ; 991 }
2423  0261 81            	ret	
2458                     ; 1000 void TIM2_OC2FastConfig(FunctionalState NewState)
2458                     ; 1001 {
2459                     	switch	.text
2460  0262               _TIM2_OC2FastConfig:
2464                     ; 1003   assert_param(IS_FUNCTIONAL_STATE(NewState));
2466                     ; 1006   if (NewState != DISABLE)
2468  0262 4d            	tnz	a
2469  0263 2705          	jreq	L5221
2470                     ; 1008     TIM2->CCMR2 |= TIM_CCMR_OCxFE ;
2472  0265 7214525a      	bset	21082,#2
2475  0269 81            	ret	
2476  026a               L5221:
2477                     ; 1012     TIM2->CCMR2 &= (uint8_t)(~TIM_CCMR_OCxFE) ;
2479  026a 7215525a      	bres	21082,#2
2480                     ; 1014 }
2483  026e 81            	ret	
2519                     ; 1024 void TIM2_OC1PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
2519                     ; 1025 {
2520                     	switch	.text
2521  026f               _TIM2_OC1PolarityConfig:
2525                     ; 1027   assert_param(IS_TIM2_OC_POLARITY(TIM2_OCPolarity));
2527                     ; 1030   if (TIM2_OCPolarity == TIM2_OCPolarity_Low)
2529  026f 4a            	dec	a
2530  0270 2605          	jrne	L7421
2531                     ; 1032     TIM2->CCER1 |= TIM_CCER1_CC1P ;
2533  0272 7212525b      	bset	21083,#1
2536  0276 81            	ret	
2537  0277               L7421:
2538                     ; 1036     TIM2->CCER1 &= (uint8_t)(~TIM_CCER1_CC1P) ;
2540  0277 7213525b      	bres	21083,#1
2541                     ; 1038 }
2544  027b 81            	ret	
2580                     ; 1048 void TIM2_OC2PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
2580                     ; 1049 {
2581                     	switch	.text
2582  027c               _TIM2_OC2PolarityConfig:
2586                     ; 1051   assert_param(IS_TIM2_OC_POLARITY(TIM2_OCPolarity));
2588                     ; 1054   if (TIM2_OCPolarity == TIM2_OCPolarity_Low)
2590  027c 4a            	dec	a
2591  027d 2605          	jrne	L1721
2592                     ; 1056     TIM2->CCER1 |= TIM_CCER1_CC2P ;
2594  027f 721a525b      	bset	21083,#5
2597  0283 81            	ret	
2598  0284               L1721:
2599                     ; 1060     TIM2->CCER1 &= (uint8_t)(~TIM_CCER1_CC2P) ;
2601  0284 721b525b      	bres	21083,#5
2602                     ; 1062 }
2605  0288 81            	ret	
2650                     ; 1074 void TIM2_CCxCmd(TIM2_Channel_TypeDef TIM2_Channel,
2650                     ; 1075                  FunctionalState NewState)
2650                     ; 1076 {
2651                     	switch	.text
2652  0289               _TIM2_CCxCmd:
2654  0289 89            	pushw	x
2655       00000000      OFST:	set	0
2658                     ; 1078   assert_param(IS_TIM2_CHANNEL(TIM2_Channel));
2660                     ; 1079   assert_param(IS_FUNCTIONAL_STATE(NewState));
2662                     ; 1081   if (TIM2_Channel == TIM2_Channel_1)
2664  028a 9e            	ld	a,xh
2665  028b 4d            	tnz	a
2666  028c 2610          	jrne	L7131
2667                     ; 1084     if (NewState != DISABLE)
2669  028e 9f            	ld	a,xl
2670  028f 4d            	tnz	a
2671  0290 2706          	jreq	L1231
2672                     ; 1086       TIM2->CCER1 |= TIM_CCER1_CC1E ;
2674  0292 7210525b      	bset	21083,#0
2676  0296 2014          	jra	L5231
2677  0298               L1231:
2678                     ; 1090       TIM2->CCER1 &= (uint8_t)(~TIM_CCER1_CC1E) ;
2680  0298 7211525b      	bres	21083,#0
2681  029c 200e          	jra	L5231
2682  029e               L7131:
2683                     ; 1097     if (NewState != DISABLE)
2685  029e 7b02          	ld	a,(OFST+2,sp)
2686  02a0 2706          	jreq	L7231
2687                     ; 1099       TIM2->CCER1 |= TIM_CCER1_CC2E;
2689  02a2 7218525b      	bset	21083,#4
2691  02a6 2004          	jra	L5231
2692  02a8               L7231:
2693                     ; 1103       TIM2->CCER1 &= (uint8_t)(~TIM_CCER1_CC2E) ;
2695  02a8 7219525b      	bres	21083,#4
2696  02ac               L5231:
2697                     ; 1106 }
2700  02ac 85            	popw	x
2701  02ad 81            	ret	
2863                     ; 1184 void TIM2_ICInit(TIM2_Channel_TypeDef TIM2_Channel,
2863                     ; 1185                  TIM2_ICPolarity_TypeDef TIM2_ICPolarity,
2863                     ; 1186                  TIM2_ICSelection_TypeDef TIM2_ICSelection,
2863                     ; 1187                  TIM2_ICPSC_TypeDef TIM2_ICPrescaler,
2863                     ; 1188                  uint8_t TIM2_ICFilter)
2863                     ; 1189 {
2864                     	switch	.text
2865  02ae               _TIM2_ICInit:
2867  02ae 89            	pushw	x
2868       00000000      OFST:	set	0
2871                     ; 1191   assert_param(IS_TIM2_CHANNEL(TIM2_Channel));
2873                     ; 1193   if (TIM2_Channel == TIM2_Channel_1)
2875  02af 9e            	ld	a,xh
2876  02b0 4d            	tnz	a
2877  02b1 2614          	jrne	L5241
2878                     ; 1196     TI1_Config(TIM2_ICPolarity, TIM2_ICSelection, TIM2_ICFilter);
2880  02b3 7b07          	ld	a,(OFST+7,sp)
2881  02b5 88            	push	a
2882  02b6 7b06          	ld	a,(OFST+6,sp)
2883  02b8 97            	ld	xl,a
2884  02b9 7b03          	ld	a,(OFST+3,sp)
2885  02bb 95            	ld	xh,a
2886  02bc cd054a        	call	L3_TI1_Config
2888  02bf 84            	pop	a
2889                     ; 1199     TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
2891  02c0 7b06          	ld	a,(OFST+6,sp)
2892  02c2 cd037c        	call	_TIM2_SetIC1Prescaler
2895  02c5 2012          	jra	L7241
2896  02c7               L5241:
2897                     ; 1204     TI2_Config(TIM2_ICPolarity, TIM2_ICSelection, TIM2_ICFilter);
2899  02c7 7b07          	ld	a,(OFST+7,sp)
2900  02c9 88            	push	a
2901  02ca 7b06          	ld	a,(OFST+6,sp)
2902  02cc 97            	ld	xl,a
2903  02cd 7b03          	ld	a,(OFST+3,sp)
2904  02cf 95            	ld	xh,a
2905  02d0 cd0582        	call	L5_TI2_Config
2907  02d3 84            	pop	a
2908                     ; 1207     TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
2910  02d4 7b06          	ld	a,(OFST+6,sp)
2911  02d6 cd038a        	call	_TIM2_SetIC2Prescaler
2913  02d9               L7241:
2914                     ; 1209 }
2917  02d9 85            	popw	x
2918  02da 81            	ret	
3008                     ; 1235 void TIM2_PWMIConfig(TIM2_Channel_TypeDef TIM2_Channel,
3008                     ; 1236                      TIM2_ICPolarity_TypeDef TIM2_ICPolarity,
3008                     ; 1237                      TIM2_ICSelection_TypeDef TIM2_ICSelection,
3008                     ; 1238                      TIM2_ICPSC_TypeDef TIM2_ICPrescaler,
3008                     ; 1239                      uint8_t TIM2_ICFilter)
3008                     ; 1240 {
3009                     	switch	.text
3010  02db               _TIM2_PWMIConfig:
3012  02db 89            	pushw	x
3013  02dc 89            	pushw	x
3014       00000002      OFST:	set	2
3017                     ; 1241   uint8_t icpolarity = TIM2_ICPolarity_Rising;
3019                     ; 1242   uint8_t icselection = TIM2_ICSelection_DirectTI;
3021                     ; 1245   assert_param(IS_TIM2_CHANNEL(TIM2_Channel));
3023                     ; 1248   if (TIM2_ICPolarity == TIM2_ICPolarity_Rising)
3025  02dd 9f            	ld	a,xl
3026  02de 4d            	tnz	a
3027  02df 2605          	jrne	L1741
3028                     ; 1250     icpolarity = TIM2_ICPolarity_Falling;
3030  02e1 4c            	inc	a
3031  02e2 6b01          	ld	(OFST-1,sp),a
3034  02e4 2002          	jra	L3741
3035  02e6               L1741:
3036                     ; 1254     icpolarity = TIM2_ICPolarity_Rising;
3038  02e6 0f01          	clr	(OFST-1,sp)
3040  02e8               L3741:
3041                     ; 1258   if (TIM2_ICSelection == TIM2_ICSelection_DirectTI)
3043  02e8 7b07          	ld	a,(OFST+5,sp)
3044  02ea 4a            	dec	a
3045  02eb 2604          	jrne	L5741
3046                     ; 1260     icselection = TIM2_ICSelection_IndirectTI;
3048  02ed a602          	ld	a,#2
3050  02ef 2002          	jra	L7741
3051  02f1               L5741:
3052                     ; 1264     icselection = TIM2_ICSelection_DirectTI;
3054  02f1 a601          	ld	a,#1
3055  02f3               L7741:
3056  02f3 6b02          	ld	(OFST+0,sp),a
3058                     ; 1267   if (TIM2_Channel == TIM2_Channel_1)
3060  02f5 7b03          	ld	a,(OFST+1,sp)
3061  02f7 2624          	jrne	L1051
3062                     ; 1270     TI1_Config(TIM2_ICPolarity, TIM2_ICSelection,
3062                     ; 1271                TIM2_ICFilter);
3064  02f9 7b09          	ld	a,(OFST+7,sp)
3065  02fb 88            	push	a
3066  02fc 7b08          	ld	a,(OFST+6,sp)
3067  02fe 97            	ld	xl,a
3068  02ff 7b05          	ld	a,(OFST+3,sp)
3069  0301 95            	ld	xh,a
3070  0302 cd054a        	call	L3_TI1_Config
3072  0305 84            	pop	a
3073                     ; 1274     TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
3075  0306 7b08          	ld	a,(OFST+6,sp)
3076  0308 ad72          	call	_TIM2_SetIC1Prescaler
3078                     ; 1277     TI2_Config((TIM2_ICPolarity_TypeDef)icpolarity, (TIM2_ICSelection_TypeDef)icselection, TIM2_ICFilter);
3080  030a 7b09          	ld	a,(OFST+7,sp)
3081  030c 88            	push	a
3082  030d 7b03          	ld	a,(OFST+1,sp)
3083  030f 97            	ld	xl,a
3084  0310 7b02          	ld	a,(OFST+0,sp)
3085  0312 95            	ld	xh,a
3086  0313 cd0582        	call	L5_TI2_Config
3088  0316 84            	pop	a
3089                     ; 1280     TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
3091  0317 7b08          	ld	a,(OFST+6,sp)
3092  0319 ad6f          	call	_TIM2_SetIC2Prescaler
3095  031b 2022          	jra	L3051
3096  031d               L1051:
3097                     ; 1285     TI2_Config(TIM2_ICPolarity, TIM2_ICSelection,
3097                     ; 1286                TIM2_ICFilter);
3099  031d 7b09          	ld	a,(OFST+7,sp)
3100  031f 88            	push	a
3101  0320 7b08          	ld	a,(OFST+6,sp)
3102  0322 97            	ld	xl,a
3103  0323 7b05          	ld	a,(OFST+3,sp)
3104  0325 95            	ld	xh,a
3105  0326 cd0582        	call	L5_TI2_Config
3107  0329 84            	pop	a
3108                     ; 1289     TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
3110  032a 7b08          	ld	a,(OFST+6,sp)
3111  032c ad5c          	call	_TIM2_SetIC2Prescaler
3113                     ; 1292     TI1_Config((TIM2_ICPolarity_TypeDef)icpolarity, (TIM2_ICSelection_TypeDef)icselection, TIM2_ICFilter);
3115  032e 7b09          	ld	a,(OFST+7,sp)
3116  0330 88            	push	a
3117  0331 7b03          	ld	a,(OFST+1,sp)
3118  0333 97            	ld	xl,a
3119  0334 7b02          	ld	a,(OFST+0,sp)
3120  0336 95            	ld	xh,a
3121  0337 cd054a        	call	L3_TI1_Config
3123  033a 84            	pop	a
3124                     ; 1295     TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
3126  033b 7b08          	ld	a,(OFST+6,sp)
3127  033d ad3d          	call	_TIM2_SetIC1Prescaler
3129  033f               L3051:
3130                     ; 1297 }
3133  033f 5b04          	addw	sp,#4
3134  0341 81            	ret	
3180                     ; 1304 uint16_t TIM2_GetCapture1(void)
3180                     ; 1305 {
3181                     	switch	.text
3182  0342               _TIM2_GetCapture1:
3184  0342 5204          	subw	sp,#4
3185       00000004      OFST:	set	4
3188                     ; 1306   uint16_t tmpccr1 = 0;
3190                     ; 1309   tmpccr1h = TIM2->CCR1H;
3192  0344 c65261        	ld	a,21089
3193  0347 6b02          	ld	(OFST-2,sp),a
3195                     ; 1310   tmpccr1l = TIM2->CCR1L;
3197  0349 c65262        	ld	a,21090
3198  034c 6b01          	ld	(OFST-3,sp),a
3200                     ; 1312   tmpccr1 = (uint16_t)(tmpccr1l);
3202  034e 5f            	clrw	x
3203  034f 97            	ld	xl,a
3204  0350 1f03          	ldw	(OFST-1,sp),x
3206                     ; 1313   tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
3208  0352 5f            	clrw	x
3209  0353 7b02          	ld	a,(OFST-2,sp)
3210  0355 97            	ld	xl,a
3211  0356 7b04          	ld	a,(OFST+0,sp)
3212  0358 01            	rrwa	x,a
3213  0359 1a03          	or	a,(OFST-1,sp)
3214  035b 01            	rrwa	x,a
3216                     ; 1315   return ((uint16_t)tmpccr1);
3220  035c 5b04          	addw	sp,#4
3221  035e 81            	ret	
3267                     ; 1323 uint16_t TIM2_GetCapture2(void)
3267                     ; 1324 {
3268                     	switch	.text
3269  035f               _TIM2_GetCapture2:
3271  035f 5204          	subw	sp,#4
3272       00000004      OFST:	set	4
3275                     ; 1325   uint16_t tmpccr2 = 0;
3277                     ; 1328   tmpccr2h = TIM2->CCR2H;
3279  0361 c65263        	ld	a,21091
3280  0364 6b02          	ld	(OFST-2,sp),a
3282                     ; 1329   tmpccr2l = TIM2->CCR2L;
3284  0366 c65264        	ld	a,21092
3285  0369 6b01          	ld	(OFST-3,sp),a
3287                     ; 1331   tmpccr2 = (uint16_t)(tmpccr2l);
3289  036b 5f            	clrw	x
3290  036c 97            	ld	xl,a
3291  036d 1f03          	ldw	(OFST-1,sp),x
3293                     ; 1332   tmpccr2 |= (uint16_t)((uint16_t)tmpccr2h << 8);
3295  036f 5f            	clrw	x
3296  0370 7b02          	ld	a,(OFST-2,sp)
3297  0372 97            	ld	xl,a
3298  0373 7b04          	ld	a,(OFST+0,sp)
3299  0375 01            	rrwa	x,a
3300  0376 1a03          	or	a,(OFST-1,sp)
3301  0378 01            	rrwa	x,a
3303                     ; 1334   return ((uint16_t)tmpccr2);
3307  0379 5b04          	addw	sp,#4
3308  037b 81            	ret	
3351                     ; 1347 void TIM2_SetIC1Prescaler(TIM2_ICPSC_TypeDef TIM2_IC1Prescaler)
3351                     ; 1348 {
3352                     	switch	.text
3353  037c               _TIM2_SetIC1Prescaler:
3355  037c 88            	push	a
3356  037d 88            	push	a
3357       00000001      OFST:	set	1
3360                     ; 1349   uint8_t tmpccmr1 = 0;
3362                     ; 1352   assert_param(IS_TIM2_IC_PRESCALER(TIM2_IC1Prescaler));
3364                     ; 1354   tmpccmr1 = TIM2->CCMR1;
3366  037e c65259        	ld	a,21081
3368                     ; 1357   tmpccmr1 &= (uint8_t)(~TIM_CCMR_ICxPSC);
3370  0381 a4f3          	and	a,#243
3372                     ; 1360   tmpccmr1 |= (uint8_t)TIM2_IC1Prescaler;
3374  0383 1a02          	or	a,(OFST+1,sp)
3376                     ; 1362   TIM2->CCMR1 = tmpccmr1;
3378  0385 c75259        	ld	21081,a
3379                     ; 1363 }
3382  0388 85            	popw	x
3383  0389 81            	ret	
3426                     ; 1375 void TIM2_SetIC2Prescaler(TIM2_ICPSC_TypeDef TIM2_IC2Prescaler)
3426                     ; 1376 {
3427                     	switch	.text
3428  038a               _TIM2_SetIC2Prescaler:
3430  038a 88            	push	a
3431  038b 88            	push	a
3432       00000001      OFST:	set	1
3435                     ; 1377   uint8_t tmpccmr2 = 0;
3437                     ; 1380   assert_param(IS_TIM2_IC_PRESCALER(TIM2_IC2Prescaler));
3439                     ; 1382   tmpccmr2 = TIM2->CCMR2;
3441  038c c6525a        	ld	a,21082
3443                     ; 1385   tmpccmr2 &= (uint8_t)(~TIM_CCMR_ICxPSC);
3445  038f a4f3          	and	a,#243
3447                     ; 1388   tmpccmr2 |= (uint8_t)TIM2_IC2Prescaler;
3449  0391 1a02          	or	a,(OFST+1,sp)
3451                     ; 1390   TIM2->CCMR2 = tmpccmr2;
3453  0393 c7525a        	ld	21082,a
3454                     ; 1391 }
3457  0396 85            	popw	x
3458  0397 81            	ret	
3544                     ; 1422 void TIM2_ITConfig(TIM2_IT_TypeDef TIM2_IT, FunctionalState NewState)
3544                     ; 1423 {
3545                     	switch	.text
3546  0398               _TIM2_ITConfig:
3548  0398 89            	pushw	x
3549       00000000      OFST:	set	0
3552                     ; 1425   assert_param(IS_TIM2_IT(TIM2_IT));
3554                     ; 1426   assert_param(IS_FUNCTIONAL_STATE(NewState));
3556                     ; 1428   if (NewState != DISABLE)
3558  0399 9f            	ld	a,xl
3559  039a 4d            	tnz	a
3560  039b 2706          	jreq	L5461
3561                     ; 1431     TIM2->IER |= (uint8_t)TIM2_IT;
3563  039d 9e            	ld	a,xh
3564  039e ca5255        	or	a,21077
3566  03a1 2006          	jra	L7461
3567  03a3               L5461:
3568                     ; 1436     TIM2->IER &= (uint8_t)(~(uint8_t)TIM2_IT);
3570  03a3 7b01          	ld	a,(OFST+1,sp)
3571  03a5 43            	cpl	a
3572  03a6 c45255        	and	a,21077
3573  03a9               L7461:
3574  03a9 c75255        	ld	21077,a
3575                     ; 1438 }
3578  03ac 85            	popw	x
3579  03ad 81            	ret	
3660                     ; 1451 void TIM2_GenerateEvent(TIM2_EventSource_TypeDef TIM2_EventSource)
3660                     ; 1452 {
3661                     	switch	.text
3662  03ae               _TIM2_GenerateEvent:
3666                     ; 1454   assert_param(IS_TIM2_EVENT_SOURCE((uint8_t)TIM2_EventSource));
3668                     ; 1457   TIM2->EGR |= (uint8_t)TIM2_EventSource;
3670  03ae ca5258        	or	a,21080
3671  03b1 c75258        	ld	21080,a
3672                     ; 1458 }
3675  03b4 81            	ret	
3810                     ; 1473 FlagStatus TIM2_GetFlagStatus(TIM2_FLAG_TypeDef TIM2_FLAG)
3810                     ; 1474 {
3811                     	switch	.text
3812  03b5               _TIM2_GetFlagStatus:
3814  03b5 89            	pushw	x
3815  03b6 89            	pushw	x
3816       00000002      OFST:	set	2
3819                     ; 1475   FlagStatus bitstatus = RESET;
3821                     ; 1476   uint8_t tim2_flag_l = 0, tim2_flag_h = 0;
3825                     ; 1479   assert_param(IS_TIM2_GET_FLAG(TIM2_FLAG));
3827                     ; 1481   tim2_flag_l = (uint8_t)(TIM2->SR1 & (uint8_t)(TIM2_FLAG));
3829  03b7 9f            	ld	a,xl
3830  03b8 c45256        	and	a,21078
3831  03bb 6b01          	ld	(OFST-1,sp),a
3833                     ; 1482   tim2_flag_h = (uint8_t)(TIM2->SR2 & (uint8_t)((uint16_t)TIM2_FLAG >> 8));
3835  03bd c65257        	ld	a,21079
3836  03c0 1403          	and	a,(OFST+1,sp)
3837  03c2 6b02          	ld	(OFST+0,sp),a
3839                     ; 1484   if ((uint8_t)(tim2_flag_l | tim2_flag_h) != 0)
3841  03c4 1a01          	or	a,(OFST-1,sp)
3842  03c6 2702          	jreq	L5671
3843                     ; 1486     bitstatus = SET;
3845  03c8 a601          	ld	a,#1
3848  03ca               L5671:
3849                     ; 1490     bitstatus = RESET;
3852                     ; 1492   return ((FlagStatus)bitstatus);
3856  03ca 5b04          	addw	sp,#4
3857  03cc 81            	ret	
3892                     ; 1506 void TIM2_ClearFlag(TIM2_FLAG_TypeDef TIM2_FLAG)
3892                     ; 1507 {
3893                     	switch	.text
3894  03cd               _TIM2_ClearFlag:
3896  03cd 89            	pushw	x
3897       00000000      OFST:	set	0
3900                     ; 1509   assert_param(IS_TIM2_CLEAR_FLAG((uint16_t)TIM2_FLAG));
3902                     ; 1511   TIM2->SR1 = (uint8_t)(~(uint8_t)(TIM2_FLAG));
3904  03ce 9f            	ld	a,xl
3905  03cf 43            	cpl	a
3906  03d0 c75256        	ld	21078,a
3907                     ; 1512   TIM2->SR2 = (uint8_t)(~(uint8_t)((uint16_t)TIM2_FLAG >> 8));
3909  03d3 7b01          	ld	a,(OFST+1,sp)
3910  03d5 43            	cpl	a
3911  03d6 c75257        	ld	21079,a
3912                     ; 1513 }
3915  03d9 85            	popw	x
3916  03da 81            	ret	
3976                     ; 1526 ITStatus TIM2_GetITStatus(TIM2_IT_TypeDef TIM2_IT)
3976                     ; 1527 {
3977                     	switch	.text
3978  03db               _TIM2_GetITStatus:
3980  03db 88            	push	a
3981  03dc 89            	pushw	x
3982       00000002      OFST:	set	2
3985                     ; 1528   ITStatus bitstatus = RESET;
3987                     ; 1530   uint8_t TIM2_itStatus = 0x0, TIM2_itEnable = 0x0;
3991                     ; 1533   assert_param(IS_TIM2_GET_IT(TIM2_IT));
3993                     ; 1535   TIM2_itStatus = (uint8_t)(TIM2->SR1 & (uint8_t)TIM2_IT);
3995  03dd c45256        	and	a,21078
3996  03e0 6b01          	ld	(OFST-1,sp),a
3998                     ; 1537   TIM2_itEnable = (uint8_t)(TIM2->IER & (uint8_t)TIM2_IT);
4000  03e2 c65255        	ld	a,21077
4001  03e5 1403          	and	a,(OFST+1,sp)
4002  03e7 6b02          	ld	(OFST+0,sp),a
4004                     ; 1539   if ((TIM2_itStatus != (uint8_t)RESET ) && (TIM2_itEnable != (uint8_t)RESET))
4006  03e9 7b01          	ld	a,(OFST-1,sp)
4007  03eb 2708          	jreq	L5302
4009  03ed 7b02          	ld	a,(OFST+0,sp)
4010  03ef 2704          	jreq	L5302
4011                     ; 1541     bitstatus = (ITStatus)SET;
4013  03f1 a601          	ld	a,#1
4016  03f3 2001          	jra	L7302
4017  03f5               L5302:
4018                     ; 1545     bitstatus = (ITStatus)RESET;
4020  03f5 4f            	clr	a
4022  03f6               L7302:
4023                     ; 1547   return ((ITStatus)bitstatus);
4027  03f6 5b03          	addw	sp,#3
4028  03f8 81            	ret	
4064                     ; 1561 void TIM2_ClearITPendingBit(TIM2_IT_TypeDef TIM2_IT)
4064                     ; 1562 {
4065                     	switch	.text
4066  03f9               _TIM2_ClearITPendingBit:
4070                     ; 1564   assert_param(IS_TIM2_IT(TIM2_IT));
4072                     ; 1567   TIM2->SR1 = (uint8_t)(~(uint8_t)TIM2_IT);
4074  03f9 43            	cpl	a
4075  03fa c75256        	ld	21078,a
4076                     ; 1568 }
4079  03fd 81            	ret	
4152                     ; 1581 void TIM2_DMACmd( TIM2_DMASource_TypeDef TIM2_DMASource, FunctionalState NewState)
4152                     ; 1582 {
4153                     	switch	.text
4154  03fe               _TIM2_DMACmd:
4156  03fe 89            	pushw	x
4157       00000000      OFST:	set	0
4160                     ; 1584   assert_param(IS_FUNCTIONAL_STATE(NewState));
4162                     ; 1585   assert_param(IS_TIM2_DMA_SOURCE(TIM2_DMASource));
4164                     ; 1587   if (NewState != DISABLE)
4166  03ff 9f            	ld	a,xl
4167  0400 4d            	tnz	a
4168  0401 2706          	jreq	L3112
4169                     ; 1590     TIM2->DER |= TIM2_DMASource;
4171  0403 9e            	ld	a,xh
4172  0404 ca5254        	or	a,21076
4174  0407 2006          	jra	L5112
4175  0409               L3112:
4176                     ; 1595     TIM2->DER &= (uint8_t)(~TIM2_DMASource);
4178  0409 7b01          	ld	a,(OFST+1,sp)
4179  040b 43            	cpl	a
4180  040c c45254        	and	a,21076
4181  040f               L5112:
4182  040f c75254        	ld	21076,a
4183                     ; 1597 }
4186  0412 85            	popw	x
4187  0413 81            	ret	
4222                     ; 1605 void TIM2_SelectCCDMA(FunctionalState NewState)
4222                     ; 1606 {
4223                     	switch	.text
4224  0414               _TIM2_SelectCCDMA:
4228                     ; 1608   assert_param(IS_FUNCTIONAL_STATE(NewState));
4230                     ; 1610   if (NewState != DISABLE)
4232  0414 4d            	tnz	a
4233  0415 2705          	jreq	L5312
4234                     ; 1613     TIM2->CR2 |= TIM_CR2_CCDS;
4236  0417 72165251      	bset	21073,#3
4239  041b 81            	ret	
4240  041c               L5312:
4241                     ; 1618     TIM2->CR2 &= (uint8_t)(~TIM_CR2_CCDS);
4243  041c 72175251      	bres	21073,#3
4244                     ; 1620 }
4247  0420 81            	ret	
4271                     ; 1644 void TIM2_InternalClockConfig(void)
4271                     ; 1645 {
4272                     	switch	.text
4273  0421               _TIM2_InternalClockConfig:
4277                     ; 1647   TIM2->SMCR &=  (uint8_t)(~TIM_SMCR_SMS);
4279  0421 c65252        	ld	a,21074
4280  0424 a4f8          	and	a,#248
4281  0426 c75252        	ld	21074,a
4282                     ; 1648 }
4285  0429 81            	ret	
4372                     ; 1665 void TIM2_TIxExternalClockConfig(TIM2_TIxExternalCLK1Source_TypeDef TIM2_TIxExternalCLKSource,
4372                     ; 1666                                  TIM2_ICPolarity_TypeDef TIM2_ICPolarity,
4372                     ; 1667                                  uint8_t ICFilter)
4372                     ; 1668 {
4373                     	switch	.text
4374  042a               _TIM2_TIxExternalClockConfig:
4376  042a 89            	pushw	x
4377       00000000      OFST:	set	0
4380                     ; 1670   assert_param(IS_TIM2_TIXCLK_SOURCE(TIM2_TIxExternalCLKSource));
4382                     ; 1671   assert_param(IS_TIM2_IC_POLARITY(TIM2_ICPolarity));
4384                     ; 1672   assert_param(IS_TIM2_IC_FILTER(ICFilter));
4386                     ; 1675   if (TIM2_TIxExternalCLKSource == TIM2_TIxExternalCLK1Source_TI2)
4388  042b 9e            	ld	a,xh
4389  042c a160          	cp	a,#96
4390  042e 260d          	jrne	L7022
4391                     ; 1677     TI2_Config(TIM2_ICPolarity, TIM2_ICSelection_DirectTI, ICFilter);
4393  0430 7b05          	ld	a,(OFST+5,sp)
4394  0432 88            	push	a
4395  0433 9f            	ld	a,xl
4396  0434 ae0001        	ldw	x,#1
4397  0437 95            	ld	xh,a
4398  0438 cd0582        	call	L5_TI2_Config
4401  043b 200c          	jra	L1122
4402  043d               L7022:
4403                     ; 1681     TI1_Config(TIM2_ICPolarity, TIM2_ICSelection_DirectTI, ICFilter);
4405  043d 7b05          	ld	a,(OFST+5,sp)
4406  043f 88            	push	a
4407  0440 7b03          	ld	a,(OFST+3,sp)
4408  0442 ae0001        	ldw	x,#1
4409  0445 95            	ld	xh,a
4410  0446 cd054a        	call	L3_TI1_Config
4412  0449               L1122:
4413  0449 84            	pop	a
4414                     ; 1685   TIM2_SelectInputTrigger((TIM2_TRGSelection_TypeDef)TIM2_TIxExternalCLKSource);
4416  044a 7b01          	ld	a,(OFST+1,sp)
4417  044c ad46          	call	_TIM2_SelectInputTrigger
4419                     ; 1688   TIM2->SMCR |= (uint8_t)(TIM2_SlaveMode_External1);
4421  044e c65252        	ld	a,21074
4422  0451 aa07          	or	a,#7
4423  0453 c75252        	ld	21074,a
4424                     ; 1689 }
4427  0456 85            	popw	x
4428  0457 81            	ret	
4543                     ; 1707 void TIM2_ETRClockMode1Config(TIM2_ExtTRGPSC_TypeDef TIM2_ExtTRGPrescaler,
4543                     ; 1708                               TIM2_ExtTRGPolarity_TypeDef TIM2_ExtTRGPolarity,
4543                     ; 1709                               uint8_t ExtTRGFilter)
4543                     ; 1710 {
4544                     	switch	.text
4545  0458               _TIM2_ETRClockMode1Config:
4547  0458 89            	pushw	x
4548       00000000      OFST:	set	0
4551                     ; 1712   TIM2_ETRConfig(TIM2_ExtTRGPrescaler, TIM2_ExtTRGPolarity, ExtTRGFilter);
4553  0459 7b05          	ld	a,(OFST+5,sp)
4554  045b 88            	push	a
4555  045c 7b02          	ld	a,(OFST+2,sp)
4556  045e 95            	ld	xh,a
4557  045f ad6a          	call	_TIM2_ETRConfig
4559  0461 84            	pop	a
4560                     ; 1715   TIM2->SMCR &= (uint8_t)(~TIM_SMCR_SMS);
4562  0462 c65252        	ld	a,21074
4563  0465 a4f8          	and	a,#248
4564  0467 c75252        	ld	21074,a
4565                     ; 1716   TIM2->SMCR |= (uint8_t)(TIM2_SlaveMode_External1);
4567  046a c65252        	ld	a,21074
4568  046d aa07          	or	a,#7
4569  046f c75252        	ld	21074,a
4570                     ; 1719   TIM2->SMCR &= (uint8_t)(~TIM_SMCR_TS);
4572  0472 c65252        	ld	a,21074
4573  0475 a48f          	and	a,#143
4574  0477 c75252        	ld	21074,a
4575                     ; 1720   TIM2->SMCR |= (uint8_t)((TIM2_TRGSelection_TypeDef)TIM2_TRGSelection_ETRF);
4577  047a c65252        	ld	a,21074
4578  047d aa70          	or	a,#112
4579  047f c75252        	ld	21074,a
4580                     ; 1721 }
4583  0482 85            	popw	x
4584  0483 81            	ret	
4640                     ; 1739 void TIM2_ETRClockMode2Config(TIM2_ExtTRGPSC_TypeDef TIM2_ExtTRGPrescaler,
4640                     ; 1740                               TIM2_ExtTRGPolarity_TypeDef TIM2_ExtTRGPolarity,
4640                     ; 1741                               uint8_t ExtTRGFilter)
4640                     ; 1742 {
4641                     	switch	.text
4642  0484               _TIM2_ETRClockMode2Config:
4644  0484 89            	pushw	x
4645       00000000      OFST:	set	0
4648                     ; 1744   TIM2_ETRConfig(TIM2_ExtTRGPrescaler, TIM2_ExtTRGPolarity, ExtTRGFilter);
4650  0485 7b05          	ld	a,(OFST+5,sp)
4651  0487 88            	push	a
4652  0488 7b02          	ld	a,(OFST+2,sp)
4653  048a 95            	ld	xh,a
4654  048b ad3e          	call	_TIM2_ETRConfig
4656  048d 721c5253      	bset	21075,#6
4657                     ; 1747   TIM2->ETR |= TIM_ETR_ECE ;
4659                     ; 1748 }
4662  0491 5b03          	addw	sp,#3
4663  0493 81            	ret	
4777                     ; 1799 void TIM2_SelectInputTrigger(TIM2_TRGSelection_TypeDef TIM2_InputTriggerSource)
4777                     ; 1800 {
4778                     	switch	.text
4779  0494               _TIM2_SelectInputTrigger:
4781  0494 88            	push	a
4782  0495 88            	push	a
4783       00000001      OFST:	set	1
4786                     ; 1801   uint8_t tmpsmcr = 0;
4788                     ; 1804   assert_param(IS_TIM2_TRIGGER_SELECTION(TIM2_InputTriggerSource));
4790                     ; 1806   tmpsmcr = TIM2->SMCR;
4792  0496 c65252        	ld	a,21074
4794                     ; 1809   tmpsmcr &= (uint8_t)(~TIM_SMCR_TS);
4796  0499 a48f          	and	a,#143
4798                     ; 1810   tmpsmcr |= (uint8_t)TIM2_InputTriggerSource;
4800  049b 1a02          	or	a,(OFST+1,sp)
4802                     ; 1812   TIM2->SMCR = (uint8_t)tmpsmcr;
4804  049d c75252        	ld	21074,a
4805                     ; 1813 }
4808  04a0 85            	popw	x
4809  04a1 81            	ret	
4906                     ; 1827 void TIM2_SelectOutputTrigger(TIM2_TRGOSource_TypeDef TIM2_TRGOSource)
4906                     ; 1828 {
4907                     	switch	.text
4908  04a2               _TIM2_SelectOutputTrigger:
4910  04a2 88            	push	a
4911  04a3 88            	push	a
4912       00000001      OFST:	set	1
4915                     ; 1829   uint8_t tmpcr2 = 0;
4917                     ; 1832   assert_param(IS_TIM2_TRGO_SOURCE(TIM2_TRGOSource));
4919                     ; 1834   tmpcr2 = TIM2->CR2;
4921  04a4 c65251        	ld	a,21073
4923                     ; 1837   tmpcr2 &= (uint8_t)(~TIM_CR2_MMS);
4925  04a7 a48f          	and	a,#143
4927                     ; 1840   tmpcr2 |=  (uint8_t)TIM2_TRGOSource;
4929  04a9 1a02          	or	a,(OFST+1,sp)
4931                     ; 1842   TIM2->CR2 = tmpcr2;
4933  04ab c75251        	ld	21073,a
4934                     ; 1843 }
4937  04ae 85            	popw	x
4938  04af 81            	ret	
5019                     ; 1855 void TIM2_SelectSlaveMode(TIM2_SlaveMode_TypeDef TIM2_SlaveMode)
5019                     ; 1856 {
5020                     	switch	.text
5021  04b0               _TIM2_SelectSlaveMode:
5023  04b0 88            	push	a
5024  04b1 88            	push	a
5025       00000001      OFST:	set	1
5028                     ; 1857   uint8_t tmpsmcr = 0;
5030                     ; 1860   assert_param(IS_TIM2_SLAVE_MODE(TIM2_SlaveMode));
5032                     ; 1862   tmpsmcr = TIM2->SMCR;
5034  04b2 c65252        	ld	a,21074
5036                     ; 1865   tmpsmcr &= (uint8_t)(~TIM_SMCR_SMS);
5038  04b5 a4f8          	and	a,#248
5040                     ; 1868   tmpsmcr |= (uint8_t)TIM2_SlaveMode;
5042  04b7 1a02          	or	a,(OFST+1,sp)
5044                     ; 1870   TIM2->SMCR = tmpsmcr;
5046  04b9 c75252        	ld	21074,a
5047                     ; 1871 }
5050  04bc 85            	popw	x
5051  04bd 81            	ret	
5087                     ; 1879 void TIM2_SelectMasterSlaveMode(FunctionalState NewState)
5087                     ; 1880 {
5088                     	switch	.text
5089  04be               _TIM2_SelectMasterSlaveMode:
5093                     ; 1882   assert_param(IS_FUNCTIONAL_STATE(NewState));
5095                     ; 1885   if (NewState != DISABLE)
5097  04be 4d            	tnz	a
5098  04bf 2705          	jreq	L5642
5099                     ; 1887     TIM2->SMCR |= TIM_SMCR_MSM;
5101  04c1 721e5252      	bset	21074,#7
5104  04c5 81            	ret	
5105  04c6               L5642:
5106                     ; 1891     TIM2->SMCR &= (uint8_t)(~TIM_SMCR_MSM);
5108  04c6 721f5252      	bres	21074,#7
5109                     ; 1893 }
5112  04ca 81            	ret	
5166                     ; 1911 void TIM2_ETRConfig(TIM2_ExtTRGPSC_TypeDef TIM2_ExtTRGPrescaler,
5166                     ; 1912                     TIM2_ExtTRGPolarity_TypeDef TIM2_ExtTRGPolarity,
5166                     ; 1913                     uint8_t ExtTRGFilter)
5166                     ; 1914 {
5167                     	switch	.text
5168  04cb               _TIM2_ETRConfig:
5170  04cb 89            	pushw	x
5171       00000000      OFST:	set	0
5174                     ; 1916   assert_param(IS_TIM2_EXT_PRESCALER(TIM2_ExtTRGPrescaler));
5176                     ; 1917   assert_param(IS_TIM2_EXT_POLARITY(TIM2_ExtTRGPolarity));
5178                     ; 1918   assert_param(IS_TIM2_EXT_FILTER(ExtTRGFilter));
5180                     ; 1921   TIM2->ETR |= (uint8_t)((uint8_t)((uint8_t)TIM2_ExtTRGPrescaler | (uint8_t)TIM2_ExtTRGPolarity)
5180                     ; 1922                          | (uint8_t)ExtTRGFilter);
5182  04cc 9f            	ld	a,xl
5183  04cd 1a01          	or	a,(OFST+1,sp)
5184  04cf 1a05          	or	a,(OFST+5,sp)
5185  04d1 ca5253        	or	a,21075
5186  04d4 c75253        	ld	21075,a
5187                     ; 1923 }
5190  04d7 85            	popw	x
5191  04d8 81            	ret	
5298                     ; 1958 void TIM2_EncoderInterfaceConfig(TIM2_EncoderMode_TypeDef TIM2_EncoderMode,
5298                     ; 1959                                  TIM2_ICPolarity_TypeDef TIM2_IC1Polarity,
5298                     ; 1960                                  TIM2_ICPolarity_TypeDef TIM2_IC2Polarity)
5298                     ; 1961 {
5299                     	switch	.text
5300  04d9               _TIM2_EncoderInterfaceConfig:
5302  04d9 89            	pushw	x
5303  04da 5203          	subw	sp,#3
5304       00000003      OFST:	set	3
5307                     ; 1962   uint8_t tmpsmcr = 0;
5309                     ; 1963   uint8_t tmpccmr1 = 0;
5311                     ; 1964   uint8_t tmpccmr2 = 0;
5313                     ; 1967   assert_param(IS_TIM2_ENCODER_MODE(TIM2_EncoderMode));
5315                     ; 1968   assert_param(IS_TIM2_IC_POLARITY(TIM2_IC1Polarity));
5317                     ; 1969   assert_param(IS_TIM2_IC_POLARITY(TIM2_IC2Polarity));
5319                     ; 1971   tmpsmcr = TIM2->SMCR;
5321  04dc c65252        	ld	a,21074
5322  04df 6b01          	ld	(OFST-2,sp),a
5324                     ; 1972   tmpccmr1 = TIM2->CCMR1;
5326  04e1 c65259        	ld	a,21081
5327  04e4 6b02          	ld	(OFST-1,sp),a
5329                     ; 1973   tmpccmr2 = TIM2->CCMR2;
5331  04e6 c6525a        	ld	a,21082
5332  04e9 6b03          	ld	(OFST+0,sp),a
5334                     ; 1976   tmpsmcr &= (uint8_t)(TIM_SMCR_MSM | TIM_SMCR_TS)  ;
5336  04eb 7b01          	ld	a,(OFST-2,sp)
5337  04ed a4f0          	and	a,#240
5338  04ef 6b01          	ld	(OFST-2,sp),a
5340                     ; 1977   tmpsmcr |= (uint8_t)TIM2_EncoderMode;
5342  04f1 9e            	ld	a,xh
5343  04f2 1a01          	or	a,(OFST-2,sp)
5344  04f4 6b01          	ld	(OFST-2,sp),a
5346                     ; 1980   tmpccmr1 &= (uint8_t)(~TIM_CCMR_CCxS);
5348  04f6 7b02          	ld	a,(OFST-1,sp)
5349  04f8 a4fc          	and	a,#252
5350  04fa 6b02          	ld	(OFST-1,sp),a
5352                     ; 1981   tmpccmr2 &= (uint8_t)(~TIM_CCMR_CCxS);
5354  04fc 7b03          	ld	a,(OFST+0,sp)
5355  04fe a4fc          	and	a,#252
5356  0500 6b03          	ld	(OFST+0,sp),a
5358                     ; 1982   tmpccmr1 |= TIM_CCMR_TIxDirect_Set;
5360  0502 7b02          	ld	a,(OFST-1,sp)
5361  0504 aa01          	or	a,#1
5362  0506 6b02          	ld	(OFST-1,sp),a
5364                     ; 1983   tmpccmr2 |= TIM_CCMR_TIxDirect_Set;
5366  0508 7b03          	ld	a,(OFST+0,sp)
5367  050a aa01          	or	a,#1
5368  050c 6b03          	ld	(OFST+0,sp),a
5370                     ; 1986   if (TIM2_IC1Polarity == TIM2_ICPolarity_Falling)
5372  050e 9f            	ld	a,xl
5373  050f 4a            	dec	a
5374  0510 2606          	jrne	L3652
5375                     ; 1988     TIM2->CCER1 |= TIM_CCER1_CC1P ;
5377  0512 7212525b      	bset	21083,#1
5379  0516 2004          	jra	L5652
5380  0518               L3652:
5381                     ; 1992     TIM2->CCER1 &= (uint8_t)(~TIM_CCER1_CC1P) ;
5383  0518 7213525b      	bres	21083,#1
5384  051c               L5652:
5385                     ; 1995   if (TIM2_IC2Polarity == TIM2_ICPolarity_Falling)
5387  051c 7b08          	ld	a,(OFST+5,sp)
5388  051e 4a            	dec	a
5389  051f 2606          	jrne	L7652
5390                     ; 1997     TIM2->CCER1 |= TIM_CCER1_CC2P ;
5392  0521 721a525b      	bset	21083,#5
5394  0525 2004          	jra	L1752
5395  0527               L7652:
5396                     ; 2001     TIM2->CCER1 &= (uint8_t)(~TIM_CCER1_CC2P) ;
5398  0527 721b525b      	bres	21083,#5
5399  052b               L1752:
5400                     ; 2004   TIM2->SMCR = tmpsmcr;
5402  052b 7b01          	ld	a,(OFST-2,sp)
5403  052d c75252        	ld	21074,a
5404                     ; 2005   TIM2->CCMR1 = tmpccmr1;
5406  0530 7b02          	ld	a,(OFST-1,sp)
5407  0532 c75259        	ld	21081,a
5408                     ; 2006   TIM2->CCMR2 = tmpccmr2;
5410  0535 7b03          	ld	a,(OFST+0,sp)
5411  0537 c7525a        	ld	21082,a
5412                     ; 2007 }
5415  053a 5b05          	addw	sp,#5
5416  053c 81            	ret	
5452                     ; 2015 void TIM2_SelectHallSensor(FunctionalState NewState)
5452                     ; 2016 {
5453                     	switch	.text
5454  053d               _TIM2_SelectHallSensor:
5458                     ; 2018   assert_param(IS_FUNCTIONAL_STATE(NewState));
5460                     ; 2021   if (NewState != DISABLE)
5462  053d 4d            	tnz	a
5463  053e 2705          	jreq	L1162
5464                     ; 2023     TIM2->CR2 |= TIM_CR2_TI1S;
5466  0540 721e5251      	bset	21073,#7
5469  0544 81            	ret	
5470  0545               L1162:
5471                     ; 2027     TIM2->CR2 &= (uint8_t)(~TIM_CR2_TI1S);
5473  0545 721f5251      	bres	21073,#7
5474                     ; 2029 }
5477  0549 81            	ret	
5543                     ; 2050 static void TI1_Config(TIM2_ICPolarity_TypeDef TIM2_ICPolarity, \
5543                     ; 2051                        TIM2_ICSelection_TypeDef TIM2_ICSelection, \
5543                     ; 2052                        uint8_t TIM2_ICFilter)
5543                     ; 2053 {
5544                     	switch	.text
5545  054a               L3_TI1_Config:
5547  054a 89            	pushw	x
5548  054b 89            	pushw	x
5549       00000002      OFST:	set	2
5552                     ; 2054   uint8_t tmpccmr1 = 0;
5554                     ; 2055   uint8_t tmpicpolarity = TIM2_ICPolarity;
5556  054c 9e            	ld	a,xh
5557  054d 6b01          	ld	(OFST-1,sp),a
5559                     ; 2056   tmpccmr1 = TIM2->CCMR1;
5561  054f c65259        	ld	a,21081
5562  0552 6b02          	ld	(OFST+0,sp),a
5564                     ; 2059   assert_param(IS_TIM2_IC_POLARITY(TIM2_ICPolarity));
5566                     ; 2060   assert_param(IS_TIM2_IC_SELECTION(TIM2_ICSelection));
5568                     ; 2061   assert_param(IS_TIM2_IC_FILTER(TIM2_ICFilter));
5570                     ; 2064   TIM2->CCER1 &=  (uint8_t)(~TIM_CCER1_CC1E);
5572  0554 7211525b      	bres	21083,#0
5573                     ; 2067   tmpccmr1 &= (uint8_t)(~TIM_CCMR_CCxS) & (uint8_t)(~TIM_CCMR_ICxF);
5575  0558 a40c          	and	a,#12
5576  055a 6b02          	ld	(OFST+0,sp),a
5578                     ; 2068   tmpccmr1 |= (uint8_t)(((uint8_t)(TIM2_ICSelection)) | ((uint8_t)(TIM2_ICFilter << 4)));
5580  055c 7b07          	ld	a,(OFST+5,sp)
5581  055e 97            	ld	xl,a
5582  055f a610          	ld	a,#16
5583  0561 42            	mul	x,a
5584  0562 9f            	ld	a,xl
5585  0563 1a04          	or	a,(OFST+2,sp)
5586  0565 1a02          	or	a,(OFST+0,sp)
5587  0567 6b02          	ld	(OFST+0,sp),a
5589                     ; 2070   TIM2->CCMR1 = tmpccmr1;
5591  0569 c75259        	ld	21081,a
5592                     ; 2073   if (tmpicpolarity == (uint8_t)(TIM2_ICPolarity_Falling))
5594  056c 7b01          	ld	a,(OFST-1,sp)
5595  056e 4a            	dec	a
5596  056f 2606          	jrne	L5462
5597                     ; 2075     TIM2->CCER1 |= TIM_CCER1_CC1P;
5599  0571 7212525b      	bset	21083,#1
5601  0575 2004          	jra	L7462
5602  0577               L5462:
5603                     ; 2079     TIM2->CCER1 &= (uint8_t)(~TIM_CCER1_CC1P);
5605  0577 7213525b      	bres	21083,#1
5606  057b               L7462:
5607                     ; 2083   TIM2->CCER1 |=  TIM_CCER1_CC1E;
5609  057b 7210525b      	bset	21083,#0
5610                     ; 2084 }
5613  057f 5b04          	addw	sp,#4
5614  0581 81            	ret	
5680                     ; 2101 static void TI2_Config(TIM2_ICPolarity_TypeDef TIM2_ICPolarity,
5680                     ; 2102                        TIM2_ICSelection_TypeDef TIM2_ICSelection,
5680                     ; 2103                        uint8_t TIM2_ICFilter)
5680                     ; 2104 {
5681                     	switch	.text
5682  0582               L5_TI2_Config:
5684  0582 89            	pushw	x
5685  0583 89            	pushw	x
5686       00000002      OFST:	set	2
5689                     ; 2105   uint8_t tmpccmr2 = 0;
5691                     ; 2106   uint8_t tmpicpolarity = TIM2_ICPolarity;
5693  0584 9e            	ld	a,xh
5694  0585 6b01          	ld	(OFST-1,sp),a
5696                     ; 2109   assert_param(IS_TIM2_IC_POLARITY(TIM2_ICPolarity));
5698                     ; 2110   assert_param(IS_TIM2_IC_SELECTION(TIM2_ICSelection));
5700                     ; 2111   assert_param(IS_TIM2_IC_FILTER(TIM2_ICFilter));
5702                     ; 2113   tmpccmr2 = TIM2->CCMR2;
5704  0587 c6525a        	ld	a,21082
5705  058a 6b02          	ld	(OFST+0,sp),a
5707                     ; 2116   TIM2->CCER1 &=  (uint8_t)(~TIM_CCER1_CC2E);
5709  058c 7219525b      	bres	21083,#4
5710                     ; 2119   tmpccmr2 &= (uint8_t)(~TIM_CCMR_CCxS) & (uint8_t)(~TIM_CCMR_ICxF);
5712  0590 a40c          	and	a,#12
5713  0592 6b02          	ld	(OFST+0,sp),a
5715                     ; 2120   tmpccmr2 |= (uint8_t)(((uint8_t)(TIM2_ICSelection)) | ((uint8_t)(TIM2_ICFilter << 4)));
5717  0594 7b07          	ld	a,(OFST+5,sp)
5718  0596 97            	ld	xl,a
5719  0597 a610          	ld	a,#16
5720  0599 42            	mul	x,a
5721  059a 9f            	ld	a,xl
5722  059b 1a04          	or	a,(OFST+2,sp)
5723  059d 1a02          	or	a,(OFST+0,sp)
5724  059f 6b02          	ld	(OFST+0,sp),a
5726                     ; 2122   TIM2->CCMR2 = tmpccmr2;
5728  05a1 c7525a        	ld	21082,a
5729                     ; 2125   if (tmpicpolarity == TIM2_ICPolarity_Falling)
5731  05a4 7b01          	ld	a,(OFST-1,sp)
5732  05a6 4a            	dec	a
5733  05a7 2606          	jrne	L1072
5734                     ; 2127     TIM2->CCER1 |= TIM_CCER1_CC2P ;
5736  05a9 721a525b      	bset	21083,#5
5738  05ad 2004          	jra	L3072
5739  05af               L1072:
5740                     ; 2131     TIM2->CCER1 &= (uint8_t)(~TIM_CCER1_CC2P) ;
5742  05af 721b525b      	bres	21083,#5
5743  05b3               L3072:
5744                     ; 2135   TIM2->CCER1 |=  TIM_CCER1_CC2E;
5746  05b3 7218525b      	bset	21083,#4
5747                     ; 2136 }
5750  05b7 5b04          	addw	sp,#4
5751  05b9 81            	ret	
5764                     	xdef	_TIM2_SelectHallSensor
5765                     	xdef	_TIM2_EncoderInterfaceConfig
5766                     	xdef	_TIM2_ETRConfig
5767                     	xdef	_TIM2_SelectMasterSlaveMode
5768                     	xdef	_TIM2_SelectSlaveMode
5769                     	xdef	_TIM2_SelectOutputTrigger
5770                     	xdef	_TIM2_SelectInputTrigger
5771                     	xdef	_TIM2_ETRClockMode2Config
5772                     	xdef	_TIM2_ETRClockMode1Config
5773                     	xdef	_TIM2_TIxExternalClockConfig
5774                     	xdef	_TIM2_InternalClockConfig
5775                     	xdef	_TIM2_SelectCCDMA
5776                     	xdef	_TIM2_DMACmd
5777                     	xdef	_TIM2_ClearITPendingBit
5778                     	xdef	_TIM2_GetITStatus
5779                     	xdef	_TIM2_ClearFlag
5780                     	xdef	_TIM2_GetFlagStatus
5781                     	xdef	_TIM2_GenerateEvent
5782                     	xdef	_TIM2_ITConfig
5783                     	xdef	_TIM2_SetIC2Prescaler
5784                     	xdef	_TIM2_SetIC1Prescaler
5785                     	xdef	_TIM2_GetCapture2
5786                     	xdef	_TIM2_GetCapture1
5787                     	xdef	_TIM2_PWMIConfig
5788                     	xdef	_TIM2_ICInit
5789                     	xdef	_TIM2_CCxCmd
5790                     	xdef	_TIM2_OC2PolarityConfig
5791                     	xdef	_TIM2_OC1PolarityConfig
5792                     	xdef	_TIM2_OC2FastConfig
5793                     	xdef	_TIM2_OC1FastConfig
5794                     	xdef	_TIM2_OC2PreloadConfig
5795                     	xdef	_TIM2_OC1PreloadConfig
5796                     	xdef	_TIM2_ForcedOC2Config
5797                     	xdef	_TIM2_ForcedOC1Config
5798                     	xdef	_TIM2_SetCompare2
5799                     	xdef	_TIM2_SetCompare1
5800                     	xdef	_TIM2_SelectOCxM
5801                     	xdef	_TIM2_CtrlPWMOutputs
5802                     	xdef	_TIM2_BKRConfig
5803                     	xdef	_TIM2_OC2Init
5804                     	xdef	_TIM2_OC1Init
5805                     	xdef	_TIM2_Cmd
5806                     	xdef	_TIM2_SelectOnePulseMode
5807                     	xdef	_TIM2_ARRPreloadConfig
5808                     	xdef	_TIM2_UpdateRequestConfig
5809                     	xdef	_TIM2_UpdateDisableConfig
5810                     	xdef	_TIM2_GetPrescaler
5811                     	xdef	_TIM2_GetCounter
5812                     	xdef	_TIM2_SetAutoreload
5813                     	xdef	_TIM2_SetCounter
5814                     	xdef	_TIM2_CounterModeConfig
5815                     	xdef	_TIM2_PrescalerConfig
5816                     	xdef	_TIM2_TimeBaseInit
5817                     	xdef	_TIM2_DeInit
5836                     	end
