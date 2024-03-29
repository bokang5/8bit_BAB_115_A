   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.12.9 - 19 Apr 2023
   3                     ; Generator (Limited) V4.5.6 - 18 Jul 2023
  42                     ; 123 void EXTI_DeInit(void)
  42                     ; 124 {
  44                     	switch	.text
  45  0000               _EXTI_DeInit:
  49                     ; 125   EXTI->CR1 = EXTI_CR1_RESET_VALUE;
  51  0000 725f50a0      	clr	20640
  52                     ; 126   EXTI->CR2 = EXTI_CR2_RESET_VALUE;
  54  0004 725f50a1      	clr	20641
  55                     ; 127   EXTI->CR3 = EXTI_CR3_RESET_VALUE;
  57  0008 725f50a2      	clr	20642
  58                     ; 128   EXTI->CR4 = EXTI_CR4_RESET_VALUE;
  60  000c 725f50aa      	clr	20650
  61                     ; 129   EXTI->SR1 = 0xFF; /* Setting SR1 bits in order to clear flags */
  63  0010 35ff50a3      	mov	20643,#255
  64                     ; 130   EXTI->SR2 = 0xFF; /* Setting SR2 bits in order to clear flags */
  66  0014 35ff50a4      	mov	20644,#255
  67                     ; 131   EXTI->CONF1 = EXTI_CONF1_RESET_VALUE;
  69  0018 725f50a5      	clr	20645
  70                     ; 132   EXTI->CONF2 = EXTI_CONF2_RESET_VALUE;
  72  001c 725f50ab      	clr	20651
  73                     ; 133 }
  76  0020 81            	ret
 222                     ; 160 void EXTI_SetPinSensitivity(EXTI_Pin_TypeDef EXTI_Pin, EXTI_Trigger_TypeDef EXTI_Trigger)
 222                     ; 161 {
 223                     	switch	.text
 224  0021               _EXTI_SetPinSensitivity:
 226  0021 89            	pushw	x
 227       00000000      OFST:	set	0
 230                     ; 164   assert_param(IS_EXTI_PINNUM(EXTI_Pin));
 232                     ; 165   assert_param(IS_EXTI_TRIGGER(EXTI_Trigger));
 234                     ; 168   switch (EXTI_Pin)
 236  0022 9e            	ld	a,xh
 238                     ; 202     default:
 238                     ; 203       break;
 239  0023 4d            	tnz	a
 240  0024 272f          	jreq	L12
 241  0026 a002          	sub	a,#2
 242  0028 274a          	jreq	L32
 243  002a a002          	sub	a,#2
 244  002c 2765          	jreq	L52
 245  002e a002          	sub	a,#2
 246  0030 2603cc00b2    	jreq	L72
 247  0035 a00a          	sub	a,#10
 248  0037 2603          	jrne	L05
 249  0039 cc00cf        	jp	L13
 250  003c               L05:
 251  003c a002          	sub	a,#2
 252  003e 2603          	jrne	L25
 253  0040 cc00ee        	jp	L33
 254  0043               L25:
 255  0043 a002          	sub	a,#2
 256  0045 2603          	jrne	L45
 257  0047 cc010d        	jp	L53
 258  004a               L45:
 259  004a a002          	sub	a,#2
 260  004c 2603          	jrne	L65
 261  004e cc012c        	jp	L73
 262  0051               L65:
 263  0051 ac490149      	jpf	L721
 264  0055               L12:
 265                     ; 170     case EXTI_Pin_0:
 265                     ; 171       EXTI->CR1 &=  (uint8_t)(~EXTI_CR1_P0IS);
 267  0055 c650a0        	ld	a,20640
 268  0058 a4fc          	and	a,#252
 269  005a c750a0        	ld	20640,a
 270                     ; 172       EXTI->CR1 |= (uint8_t)((uint8_t)(EXTI_Trigger) << EXTI_Pin);
 272  005d 7b01          	ld	a,(OFST+1,sp)
 273  005f 5f            	clrw	x
 274  0060 97            	ld	xl,a
 275  0061 7b02          	ld	a,(OFST+2,sp)
 276  0063 5d            	tnzw	x
 277  0064 2704          	jreq	L01
 278  0066               L21:
 279  0066 48            	sll	a
 280  0067 5a            	decw	x
 281  0068 26fc          	jrne	L21
 282  006a               L01:
 283  006a ca50a0        	or	a,20640
 284  006d c750a0        	ld	20640,a
 285                     ; 173       break;
 287  0070 ac490149      	jpf	L721
 288  0074               L32:
 289                     ; 174     case EXTI_Pin_1:
 289                     ; 175       EXTI->CR1 &=  (uint8_t)(~EXTI_CR1_P1IS);
 291  0074 c650a0        	ld	a,20640
 292  0077 a4f3          	and	a,#243
 293  0079 c750a0        	ld	20640,a
 294                     ; 176       EXTI->CR1 |= (uint8_t)((uint8_t)(EXTI_Trigger) << EXTI_Pin);
 296  007c 7b01          	ld	a,(OFST+1,sp)
 297  007e 5f            	clrw	x
 298  007f 97            	ld	xl,a
 299  0080 7b02          	ld	a,(OFST+2,sp)
 300  0082 5d            	tnzw	x
 301  0083 2704          	jreq	L41
 302  0085               L61:
 303  0085 48            	sll	a
 304  0086 5a            	decw	x
 305  0087 26fc          	jrne	L61
 306  0089               L41:
 307  0089 ca50a0        	or	a,20640
 308  008c c750a0        	ld	20640,a
 309                     ; 177       break;
 311  008f ac490149      	jpf	L721
 312  0093               L52:
 313                     ; 178     case EXTI_Pin_2:
 313                     ; 179       EXTI->CR1 &=  (uint8_t)(~EXTI_CR1_P2IS);
 315  0093 c650a0        	ld	a,20640
 316  0096 a4cf          	and	a,#207
 317  0098 c750a0        	ld	20640,a
 318                     ; 180       EXTI->CR1 |= (uint8_t)((uint8_t)(EXTI_Trigger) << EXTI_Pin);
 320  009b 7b01          	ld	a,(OFST+1,sp)
 321  009d 5f            	clrw	x
 322  009e 97            	ld	xl,a
 323  009f 7b02          	ld	a,(OFST+2,sp)
 324  00a1 5d            	tnzw	x
 325  00a2 2704          	jreq	L02
 326  00a4               L22:
 327  00a4 48            	sll	a
 328  00a5 5a            	decw	x
 329  00a6 26fc          	jrne	L22
 330  00a8               L02:
 331  00a8 ca50a0        	or	a,20640
 332  00ab c750a0        	ld	20640,a
 333                     ; 181       break;
 335  00ae ac490149      	jpf	L721
 336  00b2               L72:
 337                     ; 182     case EXTI_Pin_3:
 337                     ; 183       EXTI->CR1 &=  (uint8_t)(~EXTI_CR1_P3IS);
 339  00b2 c650a0        	ld	a,20640
 340  00b5 a43f          	and	a,#63
 341  00b7 c750a0        	ld	20640,a
 342                     ; 184       EXTI->CR1 |= (uint8_t)((uint8_t)(EXTI_Trigger) << EXTI_Pin);
 344  00ba 7b01          	ld	a,(OFST+1,sp)
 345  00bc 5f            	clrw	x
 346  00bd 97            	ld	xl,a
 347  00be 7b02          	ld	a,(OFST+2,sp)
 348  00c0 5d            	tnzw	x
 349  00c1 2704          	jreq	L42
 350  00c3               L62:
 351  00c3 48            	sll	a
 352  00c4 5a            	decw	x
 353  00c5 26fc          	jrne	L62
 354  00c7               L42:
 355  00c7 ca50a0        	or	a,20640
 356  00ca c750a0        	ld	20640,a
 357                     ; 185       break;
 359  00cd 207a          	jra	L721
 360  00cf               L13:
 361                     ; 186     case EXTI_Pin_4:
 361                     ; 187       EXTI->CR2 &=  (uint8_t)(~EXTI_CR2_P4IS);
 363  00cf c650a1        	ld	a,20641
 364  00d2 a4fc          	and	a,#252
 365  00d4 c750a1        	ld	20641,a
 366                     ; 188       EXTI->CR2 |= (uint8_t)((uint8_t)(EXTI_Trigger) << ((uint8_t)EXTI_Pin & (uint8_t)0xEF));
 368  00d7 7b01          	ld	a,(OFST+1,sp)
 369  00d9 a4ef          	and	a,#239
 370  00db 5f            	clrw	x
 371  00dc 97            	ld	xl,a
 372  00dd 7b02          	ld	a,(OFST+2,sp)
 373  00df 5d            	tnzw	x
 374  00e0 2704          	jreq	L03
 375  00e2               L23:
 376  00e2 48            	sll	a
 377  00e3 5a            	decw	x
 378  00e4 26fc          	jrne	L23
 379  00e6               L03:
 380  00e6 ca50a1        	or	a,20641
 381  00e9 c750a1        	ld	20641,a
 382                     ; 189       break;
 384  00ec 205b          	jra	L721
 385  00ee               L33:
 386                     ; 190     case EXTI_Pin_5:
 386                     ; 191       EXTI->CR2 &=  (uint8_t)(~EXTI_CR2_P5IS);
 388  00ee c650a1        	ld	a,20641
 389  00f1 a4f3          	and	a,#243
 390  00f3 c750a1        	ld	20641,a
 391                     ; 192       EXTI->CR2 |= (uint8_t)((uint8_t)(EXTI_Trigger) << ((uint8_t)EXTI_Pin & (uint8_t)0xEF));
 393  00f6 7b01          	ld	a,(OFST+1,sp)
 394  00f8 a4ef          	and	a,#239
 395  00fa 5f            	clrw	x
 396  00fb 97            	ld	xl,a
 397  00fc 7b02          	ld	a,(OFST+2,sp)
 398  00fe 5d            	tnzw	x
 399  00ff 2704          	jreq	L43
 400  0101               L63:
 401  0101 48            	sll	a
 402  0102 5a            	decw	x
 403  0103 26fc          	jrne	L63
 404  0105               L43:
 405  0105 ca50a1        	or	a,20641
 406  0108 c750a1        	ld	20641,a
 407                     ; 193       break;
 409  010b 203c          	jra	L721
 410  010d               L53:
 411                     ; 194     case EXTI_Pin_6:
 411                     ; 195       EXTI->CR2 &=  (uint8_t)(~EXTI_CR2_P6IS);
 413  010d c650a1        	ld	a,20641
 414  0110 a4cf          	and	a,#207
 415  0112 c750a1        	ld	20641,a
 416                     ; 196       EXTI->CR2 |= (uint8_t)((uint8_t)(EXTI_Trigger) << ((uint8_t)EXTI_Pin & (uint8_t)0xEF));
 418  0115 7b01          	ld	a,(OFST+1,sp)
 419  0117 a4ef          	and	a,#239
 420  0119 5f            	clrw	x
 421  011a 97            	ld	xl,a
 422  011b 7b02          	ld	a,(OFST+2,sp)
 423  011d 5d            	tnzw	x
 424  011e 2704          	jreq	L04
 425  0120               L24:
 426  0120 48            	sll	a
 427  0121 5a            	decw	x
 428  0122 26fc          	jrne	L24
 429  0124               L04:
 430  0124 ca50a1        	or	a,20641
 431  0127 c750a1        	ld	20641,a
 432                     ; 197       break;
 434  012a 201d          	jra	L721
 435  012c               L73:
 436                     ; 198     case EXTI_Pin_7:
 436                     ; 199       EXTI->CR2 &=  (uint8_t)(~EXTI_CR2_P7IS);
 438  012c c650a1        	ld	a,20641
 439  012f a43f          	and	a,#63
 440  0131 c750a1        	ld	20641,a
 441                     ; 200       EXTI->CR2 |= (uint8_t)((uint8_t)(EXTI_Trigger) << ((uint8_t)EXTI_Pin & (uint8_t)0xEF));
 443  0134 7b01          	ld	a,(OFST+1,sp)
 444  0136 a4ef          	and	a,#239
 445  0138 5f            	clrw	x
 446  0139 97            	ld	xl,a
 447  013a 7b02          	ld	a,(OFST+2,sp)
 448  013c 5d            	tnzw	x
 449  013d 2704          	jreq	L44
 450  013f               L64:
 451  013f 48            	sll	a
 452  0140 5a            	decw	x
 453  0141 26fc          	jrne	L64
 454  0143               L44:
 455  0143 ca50a1        	or	a,20641
 456  0146 c750a1        	ld	20641,a
 457                     ; 201       break;
 459  0149               L14:
 460                     ; 202     default:
 460                     ; 203       break;
 462  0149               L721:
 463                     ; 205 }
 466  0149 85            	popw	x
 467  014a 81            	ret
 550                     ; 219 void EXTI_SelectPort(EXTI_Port_TypeDef EXTI_Port)
 550                     ; 220 {
 551                     	switch	.text
 552  014b               _EXTI_SelectPort:
 554  014b 88            	push	a
 555       00000000      OFST:	set	0
 558                     ; 222   assert_param(IS_EXTI_PORT(EXTI_Port));
 560                     ; 224   if (EXTI_Port == EXTI_Port_B)
 562  014c 4d            	tnz	a
 563  014d 2606          	jrne	L761
 564                     ; 227     EXTI->CONF2 &= (uint8_t) (~EXTI_CONF2_PGBS);
 566  014f 721b50ab      	bres	20651,#5
 568  0153 2034          	jra	L171
 569  0155               L761:
 570                     ; 229   else if (EXTI_Port == EXTI_Port_D)
 572  0155 7b01          	ld	a,(OFST+1,sp)
 573  0157 a102          	cp	a,#2
 574  0159 2606          	jrne	L371
 575                     ; 232     EXTI->CONF2 &= (uint8_t) (~EXTI_CONF2_PHDS);
 577  015b 721d50ab      	bres	20651,#6
 579  015f 2028          	jra	L171
 580  0161               L371:
 581                     ; 234   else if (EXTI_Port == EXTI_Port_E)
 583  0161 7b01          	ld	a,(OFST+1,sp)
 584  0163 a104          	cp	a,#4
 585  0165 2606          	jrne	L771
 586                     ; 237     EXTI->CONF1 &= (uint8_t) (~EXTI_CONF1_PFES);
 588  0167 721f50a5      	bres	20645,#7
 590  016b 201c          	jra	L171
 591  016d               L771:
 592                     ; 239   else if (EXTI_Port == EXTI_Port_F)
 594  016d 7b01          	ld	a,(OFST+1,sp)
 595  016f a106          	cp	a,#6
 596  0171 2606          	jrne	L302
 597                     ; 242     EXTI->CONF1 |= (uint8_t) (EXTI_CONF1_PFES);
 599  0173 721e50a5      	bset	20645,#7
 601  0177 2010          	jra	L171
 602  0179               L302:
 603                     ; 244   else if (EXTI_Port == EXTI_Port_G)
 605  0179 7b01          	ld	a,(OFST+1,sp)
 606  017b a110          	cp	a,#16
 607  017d 2606          	jrne	L702
 608                     ; 247     EXTI->CONF2 |= (uint8_t) (EXTI_CONF2_PGBS);
 610  017f 721a50ab      	bset	20651,#5
 612  0183 2004          	jra	L171
 613  0185               L702:
 614                     ; 252     EXTI->CONF2 |= (uint8_t) (EXTI_CONF2_PHDS);
 616  0185 721c50ab      	bset	20651,#6
 617  0189               L171:
 618                     ; 254 }
 621  0189 84            	pop	a
 622  018a 81            	ret
 790                     ; 280 void EXTI_SetHalfPortSelection(EXTI_HalfPort_TypeDef EXTI_HalfPort,
 790                     ; 281                                FunctionalState NewState)
 790                     ; 282 {
 791                     	switch	.text
 792  018b               _EXTI_SetHalfPortSelection:
 794  018b 89            	pushw	x
 795       00000000      OFST:	set	0
 798                     ; 284   assert_param(IS_EXTI_HALFPORT(EXTI_HalfPort));
 800                     ; 285   assert_param(IS_FUNCTIONAL_STATE(NewState));
 802                     ; 287   if ((EXTI_HalfPort & 0x80) == 0x00)
 804  018c 9e            	ld	a,xh
 805  018d a580          	bcp	a,#128
 806  018f 2619          	jrne	L103
 807                     ; 289     if (NewState != DISABLE)
 809  0191 0d02          	tnz	(OFST+2,sp)
 810  0193 270a          	jreq	L303
 811                     ; 292       EXTI->CONF1 |= (uint8_t)EXTI_HalfPort;
 813  0195 c650a5        	ld	a,20645
 814  0198 1a01          	or	a,(OFST+1,sp)
 815  019a c750a5        	ld	20645,a
 817  019d 2026          	jra	L703
 818  019f               L303:
 819                     ; 297       EXTI->CONF1 &= (uint8_t)(~(uint8_t)EXTI_HalfPort);
 821  019f 7b01          	ld	a,(OFST+1,sp)
 822  01a1 43            	cpl	a
 823  01a2 c450a5        	and	a,20645
 824  01a5 c750a5        	ld	20645,a
 825  01a8 201b          	jra	L703
 826  01aa               L103:
 827                     ; 302     if (NewState != DISABLE)
 829  01aa 0d02          	tnz	(OFST+2,sp)
 830  01ac 270c          	jreq	L113
 831                     ; 305       EXTI->CONF2 |= (uint8_t)(EXTI_HalfPort & (uint8_t)0x7F);
 833  01ae 7b01          	ld	a,(OFST+1,sp)
 834  01b0 a47f          	and	a,#127
 835  01b2 ca50ab        	or	a,20651
 836  01b5 c750ab        	ld	20651,a
 838  01b8 200b          	jra	L703
 839  01ba               L113:
 840                     ; 310       EXTI->CONF2 &= (uint8_t)(~(uint8_t) (EXTI_HalfPort & (uint8_t)0x7F));
 842  01ba 7b01          	ld	a,(OFST+1,sp)
 843  01bc a47f          	and	a,#127
 844  01be 43            	cpl	a
 845  01bf c450ab        	and	a,20651
 846  01c2 c750ab        	ld	20651,a
 847  01c5               L703:
 848                     ; 313 }
 851  01c5 85            	popw	x
 852  01c6 81            	ret
 898                     ; 338 void EXTI_SetPortSensitivity(EXTI_Port_TypeDef EXTI_Port,
 898                     ; 339                              EXTI_Trigger_TypeDef EXTI_Trigger)
 898                     ; 340 {
 899                     	switch	.text
 900  01c7               _EXTI_SetPortSensitivity:
 902  01c7 89            	pushw	x
 903       00000000      OFST:	set	0
 906                     ; 342   assert_param(IS_EXTI_PORT(EXTI_Port));
 908                     ; 343   assert_param(IS_EXTI_TRIGGER(EXTI_Trigger));
 910                     ; 346   if ((EXTI_Port & 0xF0) == 0x00)
 912  01c8 9e            	ld	a,xh
 913  01c9 a5f0          	bcp	a,#240
 914  01cb 2629          	jrne	L733
 915                     ; 349     EXTI->CR3 &= (uint8_t) (~(uint8_t)((uint8_t)0x03 << EXTI_Port));
 917  01cd 7b01          	ld	a,(OFST+1,sp)
 918  01cf 5f            	clrw	x
 919  01d0 97            	ld	xl,a
 920  01d1 a603          	ld	a,#3
 921  01d3 5d            	tnzw	x
 922  01d4 2704          	jreq	L66
 923  01d6               L07:
 924  01d6 48            	sll	a
 925  01d7 5a            	decw	x
 926  01d8 26fc          	jrne	L07
 927  01da               L66:
 928  01da 43            	cpl	a
 929  01db c450a2        	and	a,20642
 930  01de c750a2        	ld	20642,a
 931                     ; 351     EXTI->CR3 |= (uint8_t)((uint8_t)(EXTI_Trigger) << EXTI_Port);
 933  01e1 7b01          	ld	a,(OFST+1,sp)
 934  01e3 5f            	clrw	x
 935  01e4 97            	ld	xl,a
 936  01e5 7b02          	ld	a,(OFST+2,sp)
 937  01e7 5d            	tnzw	x
 938  01e8 2704          	jreq	L27
 939  01ea               L47:
 940  01ea 48            	sll	a
 941  01eb 5a            	decw	x
 942  01ec 26fc          	jrne	L47
 943  01ee               L27:
 944  01ee ca50a2        	or	a,20642
 945  01f1 c750a2        	ld	20642,a
 947  01f4 202b          	jra	L143
 948  01f6               L733:
 949                     ; 356     EXTI->CR4 &= (uint8_t) (~(uint8_t)((uint8_t)0x03 << (EXTI_Port & 0x0F)));
 951  01f6 7b01          	ld	a,(OFST+1,sp)
 952  01f8 a40f          	and	a,#15
 953  01fa 5f            	clrw	x
 954  01fb 97            	ld	xl,a
 955  01fc a603          	ld	a,#3
 956  01fe 5d            	tnzw	x
 957  01ff 2704          	jreq	L67
 958  0201               L001:
 959  0201 48            	sll	a
 960  0202 5a            	decw	x
 961  0203 26fc          	jrne	L001
 962  0205               L67:
 963  0205 43            	cpl	a
 964  0206 c450aa        	and	a,20650
 965  0209 c750aa        	ld	20650,a
 966                     ; 358     EXTI->CR4 |= (uint8_t)(EXTI_Trigger << (EXTI_Port & 0x0F));
 968  020c 7b01          	ld	a,(OFST+1,sp)
 969  020e a40f          	and	a,#15
 970  0210 5f            	clrw	x
 971  0211 97            	ld	xl,a
 972  0212 7b02          	ld	a,(OFST+2,sp)
 973  0214 5d            	tnzw	x
 974  0215 2704          	jreq	L201
 975  0217               L401:
 976  0217 48            	sll	a
 977  0218 5a            	decw	x
 978  0219 26fc          	jrne	L401
 979  021b               L201:
 980  021b ca50aa        	or	a,20650
 981  021e c750aa        	ld	20650,a
 982  0221               L143:
 983                     ; 360 }
 986  0221 85            	popw	x
 987  0222 81            	ret
1031                     ; 376 EXTI_Trigger_TypeDef EXTI_GetPinSensitivity(EXTI_Pin_TypeDef EXTI_Pin)
1031                     ; 377 {
1032                     	switch	.text
1033  0223               _EXTI_GetPinSensitivity:
1035  0223 88            	push	a
1036       00000001      OFST:	set	1
1039                     ; 378   uint8_t value = 0;
1041  0224 0f01          	clr	(OFST+0,sp)
1043                     ; 381   assert_param(IS_EXTI_PINNUM(EXTI_Pin));
1045                     ; 383   switch (EXTI_Pin)
1048                     ; 409     default:
1048                     ; 410       break;
1049  0226 4d            	tnz	a
1050  0227 271e          	jreq	L343
1051  0229 a002          	sub	a,#2
1052  022b 2723          	jreq	L543
1053  022d a002          	sub	a,#2
1054  022f 272a          	jreq	L743
1055  0231 a002          	sub	a,#2
1056  0233 2732          	jreq	L153
1057  0235 a00a          	sub	a,#10
1058  0237 273c          	jreq	L353
1059  0239 a002          	sub	a,#2
1060  023b 2741          	jreq	L553
1061  023d a002          	sub	a,#2
1062  023f 2748          	jreq	L753
1063  0241 a002          	sub	a,#2
1064  0243 2750          	jreq	L163
1065  0245 205a          	jra	L704
1066  0247               L343:
1067                     ; 385     case EXTI_Pin_0:
1067                     ; 386       value = (uint8_t)(EXTI->CR1 & EXTI_CR1_P0IS);
1069  0247 c650a0        	ld	a,20640
1070  024a a403          	and	a,#3
1071  024c 6b01          	ld	(OFST+0,sp),a
1073                     ; 387       break;
1075  024e 2051          	jra	L704
1076  0250               L543:
1077                     ; 388     case EXTI_Pin_1:
1077                     ; 389       value = (uint8_t)((uint8_t)(EXTI->CR1 & EXTI_CR1_P1IS) >> EXTI_Pin_1);
1079  0250 c650a0        	ld	a,20640
1080  0253 a40c          	and	a,#12
1081  0255 44            	srl	a
1082  0256 44            	srl	a
1083  0257 6b01          	ld	(OFST+0,sp),a
1085                     ; 390       break;
1087  0259 2046          	jra	L704
1088  025b               L743:
1089                     ; 391     case EXTI_Pin_2:
1089                     ; 392       value = (uint8_t)((uint8_t)(EXTI->CR1 & EXTI_CR1_P2IS) >> EXTI_Pin_2);
1091  025b c650a0        	ld	a,20640
1092  025e a430          	and	a,#48
1093  0260 4e            	swap	a
1094  0261 a40f          	and	a,#15
1095  0263 6b01          	ld	(OFST+0,sp),a
1097                     ; 393       break;
1099  0265 203a          	jra	L704
1100  0267               L153:
1101                     ; 394     case EXTI_Pin_3:
1101                     ; 395       value = (uint8_t)((uint8_t)(EXTI->CR1 & EXTI_CR1_P3IS) >> EXTI_Pin_3);
1103  0267 c650a0        	ld	a,20640
1104  026a a4c0          	and	a,#192
1105  026c 4e            	swap	a
1106  026d 44            	srl	a
1107  026e 44            	srl	a
1108  026f a403          	and	a,#3
1109  0271 6b01          	ld	(OFST+0,sp),a
1111                     ; 396       break;
1113  0273 202c          	jra	L704
1114  0275               L353:
1115                     ; 397     case EXTI_Pin_4:
1115                     ; 398       value = (uint8_t)(EXTI->CR2 & EXTI_CR2_P4IS);
1117  0275 c650a1        	ld	a,20641
1118  0278 a403          	and	a,#3
1119  027a 6b01          	ld	(OFST+0,sp),a
1121                     ; 399       break;
1123  027c 2023          	jra	L704
1124  027e               L553:
1125                     ; 400     case EXTI_Pin_5:
1125                     ; 401       value = (uint8_t)((uint8_t)(EXTI->CR2 & EXTI_CR2_P5IS) >> ((uint8_t)EXTI_Pin_5 & (uint8_t)0x0F));
1127  027e c650a1        	ld	a,20641
1128  0281 a40c          	and	a,#12
1129  0283 44            	srl	a
1130  0284 44            	srl	a
1131  0285 6b01          	ld	(OFST+0,sp),a
1133                     ; 402       break;
1135  0287 2018          	jra	L704
1136  0289               L753:
1137                     ; 403     case EXTI_Pin_6:
1137                     ; 404       value = (uint8_t)((uint8_t)(EXTI->CR2 & EXTI_CR2_P6IS) >> ((uint8_t)EXTI_Pin_6 & (uint8_t)0x0F));
1139  0289 c650a1        	ld	a,20641
1140  028c a430          	and	a,#48
1141  028e 4e            	swap	a
1142  028f a40f          	and	a,#15
1143  0291 6b01          	ld	(OFST+0,sp),a
1145                     ; 405       break;
1147  0293 200c          	jra	L704
1148  0295               L163:
1149                     ; 406     case EXTI_Pin_7:
1149                     ; 407       value = (uint8_t)((uint8_t)(EXTI->CR2 & EXTI_CR2_P7IS) >> ((uint8_t)EXTI_Pin_7 & (uint8_t)0x0F));
1151  0295 c650a1        	ld	a,20641
1152  0298 a4c0          	and	a,#192
1153  029a 4e            	swap	a
1154  029b 44            	srl	a
1155  029c 44            	srl	a
1156  029d a403          	and	a,#3
1157  029f 6b01          	ld	(OFST+0,sp),a
1159                     ; 408       break;
1161  02a1               L363:
1162                     ; 409     default:
1162                     ; 410       break;
1164  02a1               L704:
1165                     ; 412   return((EXTI_Trigger_TypeDef)value);
1167  02a1 7b01          	ld	a,(OFST+0,sp)
1170  02a3 5b01          	addw	sp,#1
1171  02a5 81            	ret
1215                     ; 427 EXTI_Trigger_TypeDef EXTI_GetPortSensitivity(EXTI_Port_TypeDef EXTI_Port)
1215                     ; 428 {
1216                     	switch	.text
1217  02a6               _EXTI_GetPortSensitivity:
1219  02a6 88            	push	a
1220  02a7 88            	push	a
1221       00000001      OFST:	set	1
1224                     ; 429   uint8_t portsensitivity = 0;
1226                     ; 432   assert_param(IS_EXTI_PORT(EXTI_Port));
1228                     ; 435   if ((EXTI_Port & 0xF0) == 0x00)
1230  02a8 a5f0          	bcp	a,#240
1231  02aa 2614          	jrne	L134
1232                     ; 438     portsensitivity = (uint8_t)((uint8_t)0x03 & (uint8_t)(EXTI->CR3 >> EXTI_Port));
1234  02ac 7b02          	ld	a,(OFST+1,sp)
1235  02ae 5f            	clrw	x
1236  02af 97            	ld	xl,a
1237  02b0 c650a2        	ld	a,20642
1238  02b3 5d            	tnzw	x
1239  02b4 2704          	jreq	L211
1240  02b6               L411:
1241  02b6 44            	srl	a
1242  02b7 5a            	decw	x
1243  02b8 26fc          	jrne	L411
1244  02ba               L211:
1245  02ba a403          	and	a,#3
1246  02bc 6b01          	ld	(OFST+0,sp),a
1249  02be 2014          	jra	L334
1250  02c0               L134:
1251                     ; 444     portsensitivity = (uint8_t)((uint8_t)0x03 & (uint8_t)(EXTI->CR4 >> (EXTI_Port & 0x0F)));
1253  02c0 7b02          	ld	a,(OFST+1,sp)
1254  02c2 a40f          	and	a,#15
1255  02c4 5f            	clrw	x
1256  02c5 97            	ld	xl,a
1257  02c6 c650aa        	ld	a,20650
1258  02c9 5d            	tnzw	x
1259  02ca 2704          	jreq	L611
1260  02cc               L021:
1261  02cc 44            	srl	a
1262  02cd 5a            	decw	x
1263  02ce 26fc          	jrne	L021
1264  02d0               L611:
1265  02d0 a403          	and	a,#3
1266  02d2 6b01          	ld	(OFST+0,sp),a
1268  02d4               L334:
1269                     ; 447   return((EXTI_Trigger_TypeDef)portsensitivity);
1271  02d4 7b01          	ld	a,(OFST+0,sp)
1274  02d6 85            	popw	x
1275  02d7 81            	ret
1445                     ; 487 ITStatus EXTI_GetITStatus(EXTI_IT_TypeDef EXTI_IT)
1445                     ; 488 {
1446                     	switch	.text
1447  02d8               _EXTI_GetITStatus:
1449  02d8 89            	pushw	x
1450  02d9 88            	push	a
1451       00000001      OFST:	set	1
1454                     ; 489   ITStatus status = RESET;
1456                     ; 491   assert_param(IS_EXTI_ITPENDINGBIT(EXTI_IT));
1458                     ; 493   if (((uint16_t)EXTI_IT & (uint16_t)0xFF00) == 0x0100)
1460  02da 01            	rrwa	x,a
1461  02db 9f            	ld	a,xl
1462  02dc a4ff          	and	a,#255
1463  02de 97            	ld	xl,a
1464  02df 4f            	clr	a
1465  02e0 02            	rlwa	x,a
1466  02e1 a30100        	cpw	x,#256
1467  02e4 260b          	jrne	L725
1468                     ; 495     status = (ITStatus)(EXTI->SR2 & (uint8_t)((uint16_t)EXTI_IT & (uint16_t)0x00FF));
1470  02e6 7b03          	ld	a,(OFST+2,sp)
1471  02e8 a4ff          	and	a,#255
1472  02ea c450a4        	and	a,20644
1473  02ed 6b01          	ld	(OFST+0,sp),a
1476  02ef 2009          	jra	L135
1477  02f1               L725:
1478                     ; 499     status = (ITStatus)(EXTI->SR1 & ((uint8_t)((uint16_t)EXTI_IT & (uint16_t)0x00FF)));
1480  02f1 7b03          	ld	a,(OFST+2,sp)
1481  02f3 a4ff          	and	a,#255
1482  02f5 c450a3        	and	a,20643
1483  02f8 6b01          	ld	(OFST+0,sp),a
1485  02fa               L135:
1486                     ; 501   return((ITStatus)status);
1488  02fa 7b01          	ld	a,(OFST+0,sp)
1491  02fc 5b03          	addw	sp,#3
1492  02fe 81            	ret
1535                     ; 524 void EXTI_ClearITPendingBit(EXTI_IT_TypeDef EXTI_IT)
1535                     ; 525 {
1536                     	switch	.text
1537  02ff               _EXTI_ClearITPendingBit:
1539  02ff 89            	pushw	x
1540  0300 89            	pushw	x
1541       00000002      OFST:	set	2
1544                     ; 526   uint16_t tempvalue = 0;
1546                     ; 529   assert_param(IS_EXTI_ITPENDINGBIT(EXTI_IT));
1548                     ; 531   tempvalue = ((uint16_t)EXTI_IT & (uint16_t)0xFF00);
1550  0301 01            	rrwa	x,a
1551  0302 9f            	ld	a,xl
1552  0303 a4ff          	and	a,#255
1553  0305 97            	ld	xl,a
1554  0306 4f            	clr	a
1555  0307 02            	rlwa	x,a
1556  0308 1f01          	ldw	(OFST-1,sp),x
1557  030a 01            	rrwa	x,a
1559                     ; 533   if ( tempvalue == 0x0100)
1561  030b 1e01          	ldw	x,(OFST-1,sp)
1562  030d a30100        	cpw	x,#256
1563  0310 2609          	jrne	L355
1564                     ; 535     EXTI->SR2 = (uint8_t)((uint16_t)EXTI_IT & (uint16_t)0x00FF);
1566  0312 7b04          	ld	a,(OFST+2,sp)
1567  0314 a4ff          	and	a,#255
1568  0316 c750a4        	ld	20644,a
1570  0319 2005          	jra	L555
1571  031b               L355:
1572                     ; 539     EXTI->SR1 = (uint8_t) (EXTI_IT);
1574  031b 7b04          	ld	a,(OFST+2,sp)
1575  031d c750a3        	ld	20643,a
1576  0320               L555:
1577                     ; 541 }
1580  0320 5b04          	addw	sp,#4
1581  0322 81            	ret
1594                     	xdef	_EXTI_ClearITPendingBit
1595                     	xdef	_EXTI_GetITStatus
1596                     	xdef	_EXTI_GetPortSensitivity
1597                     	xdef	_EXTI_GetPinSensitivity
1598                     	xdef	_EXTI_SetPortSensitivity
1599                     	xdef	_EXTI_SetHalfPortSelection
1600                     	xdef	_EXTI_SelectPort
1601                     	xdef	_EXTI_SetPinSensitivity
1602                     	xdef	_EXTI_DeInit
1621                     	end
