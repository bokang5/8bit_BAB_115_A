   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.12.6 - 16 Dec 2021
   3                     ; Generator (Limited) V4.5.4 - 16 Dec 2021
  42                     ; 35 void I2C_Init_Poll(void) {
  44                     	switch	.text
  45  0000               _I2C_Init_Poll:
  49                     ; 36   GPIOC->ODR |= 3;                //define SDA, SCL outputs, HiZ, Open drain, Fast
  51  0000 c6500a        	ld	a,20490
  52  0003 aa03          	or	a,#3
  53  0005 c7500a        	ld	20490,a
  54                     ; 37   GPIOC->DDR |= 3;
  56  0008 c6500c        	ld	a,20492
  57  000b aa03          	or	a,#3
  58  000d c7500c        	ld	20492,a
  59                     ; 38   GPIOC->CR2 |= 3;
  61  0010 c6500e        	ld	a,20494
  62  0013 aa03          	or	a,#3
  63  0015 c7500e        	ld	20494,a
  64                     ; 40   CLK->PCKENR1 |= 8;            // I2C clock enable
  66  0018 721650c3      	bset	20675,#3
  67                     ; 48   I2C1->FREQR = 8;                // input clock to I2C - 8MHz
  69  001c 35085212      	mov	21010,#8
  70                     ; 49   I2C1->CCRL = 40;                // CCR= 40 - (SCLhi must be at least 4000+1000=5000ns!)
  72  0020 3528521b      	mov	21019,#40
  73                     ; 50   I2C1->CCRH = 0;                 // standard mode, duty 1/1 bus speed 100kHz
  75  0024 725f521c      	clr	21020
  76                     ; 51   I2C1->TRISER = 9;               // 1000ns/(125ns) + 1  (maximum 1000ns)
  78  0028 3509521d      	mov	21021,#9
  79                     ; 53   I2C1->OARL = 0xA0;              // own address A0;
  81  002c 35a05213      	mov	21011,#160
  82                     ; 54   I2C1->OARH |= 0x40;
  84  0030 721c5214      	bset	21012,#6
  85                     ; 55   I2C1->ITR = 1;                  // enable error interrupts
  87  0034 3501521a      	mov	21018,#1
  88                     ; 56   I2C1->CR2 |= 0x04;              // ACK=1, Ack enable
  90  0038 72145211      	bset	21009,#2
  91                     ; 57   I2C1->CR1 |= 0x01;              // PE=1
  93  003c 72105210      	bset	21008,#0
  94                     ; 58 }
  97  0040 81            	ret
 149                     ; 67 void I2C_RandomRead_Poll(u8 u8_NumByteToRead, u8 *u8_DataBuffer) 
 149                     ; 68 {
 150                     	switch	.text
 151  0041               _I2C_RandomRead_Poll:
 153  0041 88            	push	a
 154       00000000      OFST:	set	0
 157  0042 2010          	jra	L34
 158  0044               L14:
 159                     ; 72 		I2C1->CR2 |= I2C_CR2_STOP;                   				// STOP=1, generate stop
 161  0044 72125211      	bset	21009,#1
 163  0048               L15:
 164                     ; 73     while(I2C1->CR2 & I2C_CR2_STOP  &&  tout()); 				// wait until stop is performed
 166  0048 c65211        	ld	a,21009
 167  004b a502          	bcp	a,#2
 168  004d 2705          	jreq	L34
 170  004f ce0001        	ldw	x,_TIM4_tout
 171  0052 26f4          	jrne	L15
 172  0054               L34:
 173                     ; 70 	while(I2C1->SR3 & I2C_SR3_BUSY  &&  tout())	  				// Wait while the bus is busy
 175  0054 c65219        	ld	a,21017
 176  0057 a502          	bcp	a,#2
 177  0059 2705          	jreq	L75
 179  005b ce0001        	ldw	x,_TIM4_tout
 180  005e 26e4          	jrne	L14
 181  0060               L75:
 182                     ; 75   I2C1->CR2 |= I2C_CR2_ACK;                      				// ACK=1, Ack enable
 184  0060 72145211      	bset	21009,#2
 185                     ; 77   I2C1->CR2 |= I2C_CR2_START;                    				// START=1, generate start
 187  0064 72105211      	bset	21009,#0
 189  0068               L36:
 190                     ; 78   while((I2C1->SR1 & I2C_SR1_SB)==0  &&  tout());				// wait for start bit detection (SB)
 192  0068 c65217        	ld	a,21015
 193  006b a501          	bcp	a,#1
 194  006d 2605          	jrne	L76
 196  006f ce0001        	ldw	x,_TIM4_tout
 197  0072 26f4          	jrne	L36
 198  0074               L76:
 199                     ; 89     I2C1->DR = (u8)(SLAVE_ADDRESS << 1) | 1;       			// Send 7-bit device address & Write (R/W = 1)
 201  0074 356d5216      	mov	21014,#109
 203  0078               L57:
 204                     ; 91   while(!(I2C1->SR1 & I2C_SR1_ADDR)  &&  tout());				// Wait for address ack (ADDR)
 206  0078 c65217        	ld	a,21015
 207  007b a502          	bcp	a,#2
 208  007d 2605          	jrne	L101
 210  007f ce0001        	ldw	x,_TIM4_tout
 211  0082 26f4          	jrne	L57
 212  0084               L101:
 213                     ; 93   if (u8_NumByteToRead > 2)                 						// *** more than 2 bytes are received? ***
 215  0084 7b01          	ld	a,(OFST+1,sp)
 216  0086 a103          	cp	a,#3
 217  0088 257a          	jrult	L301
 218                     ; 95     I2C1->SR3;                                     			// ADDR clearing sequence    
 220  008a c65219        	ld	a,21017
 222  008d 201c          	jra	L701
 223  008f               L511:
 224                     ; 98       while(!(I2C1->SR1 & I2C_SR1_BTF)  &&  tout()); 				// Wait for BTF
 226  008f c65217        	ld	a,21015
 227  0092 a504          	bcp	a,#4
 228  0094 2605          	jrne	L121
 230  0096 ce0001        	ldw	x,_TIM4_tout
 231  0099 26f4          	jrne	L511
 232  009b               L121:
 233                     ; 99 			*u8_DataBuffer++ = I2C1->DR;                   				// Reading next data byte
 235  009b 1e04          	ldw	x,(OFST+4,sp)
 236  009d 1c0001        	addw	x,#1
 237  00a0 1f04          	ldw	(OFST+4,sp),x
 238  00a2 1d0001        	subw	x,#1
 239  00a5 c65216        	ld	a,21014
 240  00a8 f7            	ld	(x),a
 241                     ; 100       --u8_NumByteToRead;																		// Decrease Numbyte to reade by 1
 243  00a9 0a01          	dec	(OFST+1,sp)
 244  00ab               L701:
 245                     ; 96     while(u8_NumByteToRead > 3  &&  tout())       			// not last three bytes?
 247  00ab 7b01          	ld	a,(OFST+1,sp)
 248  00ad a104          	cp	a,#4
 249  00af 2505          	jrult	L721
 251  00b1 ce0001        	ldw	x,_TIM4_tout
 252  00b4 26d9          	jrne	L511
 253  00b6               L721:
 254                     ; 103     while(!(I2C1->SR1 & I2C_SR1_BTF)  &&  tout()); 			// Wait for BTF
 256  00b6 c65217        	ld	a,21015
 257  00b9 a504          	bcp	a,#4
 258  00bb 2605          	jrne	L331
 260  00bd ce0001        	ldw	x,_TIM4_tout
 261  00c0 26f4          	jrne	L721
 262  00c2               L331:
 263                     ; 104     I2C1->CR2 &=~I2C_CR2_ACK;                      			// Clear ACK
 265  00c2 72155211      	bres	21009,#2
 266                     ; 105     disableInterrupts();                          			// Errata workaround (Disable interrupt)
 269  00c6 9b            sim
 271                     ; 106     *u8_DataBuffer++ = I2C1->DR;                     		// Read 1st byte
 274  00c7 1e04          	ldw	x,(OFST+4,sp)
 275  00c9 1c0001        	addw	x,#1
 276  00cc 1f04          	ldw	(OFST+4,sp),x
 277  00ce 1d0001        	subw	x,#1
 278  00d1 c65216        	ld	a,21014
 279  00d4 f7            	ld	(x),a
 280                     ; 107     I2C1->CR2 |= I2C_CR2_STOP;                       		// Generate stop here (STOP=1)
 282  00d5 72125211      	bset	21009,#1
 283                     ; 108     *u8_DataBuffer++ = I2C1->DR;                     		// Read 2nd byte
 285  00d9 1e04          	ldw	x,(OFST+4,sp)
 286  00db 1c0001        	addw	x,#1
 287  00de 1f04          	ldw	(OFST+4,sp),x
 288  00e0 1d0001        	subw	x,#1
 289  00e3 c65216        	ld	a,21014
 290  00e6 f7            	ld	(x),a
 291                     ; 109     enableInterrupts();																	// Errata workaround (Enable interrupt)
 294  00e7 9a            rim
 298  00e8               L731:
 299                     ; 110     while(!(I2C1->SR1 & I2C_SR1_RXNE)  &&  tout());			// Wait for RXNE
 301  00e8 c65217        	ld	a,21015
 302  00eb a540          	bcp	a,#64
 303  00ed 2605          	jrne	L341
 305  00ef ce0001        	ldw	x,_TIM4_tout
 306  00f2 26f4          	jrne	L731
 307  00f4               L341:
 308                     ; 111     *u8_DataBuffer++ = I2C1->DR;                   			// Read 3rd Data byte
 310  00f4 1e04          	ldw	x,(OFST+4,sp)
 311  00f6 1c0001        	addw	x,#1
 312  00f9 1f04          	ldw	(OFST+4,sp),x
 313  00fb 1d0001        	subw	x,#1
 314  00fe c65216        	ld	a,21014
 315  0101 f7            	ld	(x),a
 317  0102 205a          	jra	L571
 318  0104               L301:
 319                     ; 115     if(u8_NumByteToRead == 2)                						// *** just two bytes are received? ***
 321  0104 7b01          	ld	a,(OFST+1,sp)
 322  0106 a102          	cp	a,#2
 323  0108 2635          	jrne	L741
 324                     ; 117       I2C1->CR2 |= I2C_CR2_POS;                      		// Set POS bit (NACK at next received byte)
 326  010a 72165211      	bset	21009,#3
 327                     ; 118       disableInterrupts();                          		// Errata workaround (Disable interrupt)
 330  010e 9b            sim
 332                     ; 119       I2C1->SR3;                                       	// Clear ADDR Flag
 335  010f c65219        	ld	a,21017
 336                     ; 120       I2C1->CR2 &=~I2C_CR2_ACK;                        	// Clear ACK 
 338  0112 72155211      	bres	21009,#2
 339                     ; 121       enableInterrupts();																// Errata workaround (Enable interrupt)
 342  0116 9a            rim
 346  0117               L351:
 347                     ; 122       while(!(I2C1->SR1 & I2C_SR1_BTF)  &&  tout()); 		// Wait for BTF
 349  0117 c65217        	ld	a,21015
 350  011a a504          	bcp	a,#4
 351  011c 2605          	jrne	L751
 353  011e ce0001        	ldw	x,_TIM4_tout
 354  0121 26f4          	jrne	L351
 355  0123               L751:
 356                     ; 123       disableInterrupts();                          		// Errata workaround (Disable interrupt)
 359  0123 9b            sim
 361                     ; 124       I2C1->CR2 |= I2C_CR2_STOP;                       	// Generate stop here (STOP=1)
 364  0124 72125211      	bset	21009,#1
 365                     ; 125       *u8_DataBuffer++ = I2C1->DR;                     	// Read 1st Data byte
 367  0128 1e04          	ldw	x,(OFST+4,sp)
 368  012a 1c0001        	addw	x,#1
 369  012d 1f04          	ldw	(OFST+4,sp),x
 370  012f 1d0001        	subw	x,#1
 371  0132 c65216        	ld	a,21014
 372  0135 f7            	ld	(x),a
 373                     ; 126       enableInterrupts();																// Errata workaround (Enable interrupt)
 376  0136 9a            rim
 378                     ; 127 			*u8_DataBuffer = I2C1->DR;													// Read 2nd Data byte
 381  0137 1e04          	ldw	x,(OFST+4,sp)
 382  0139 c65216        	ld	a,21014
 383  013c f7            	ld	(x),a
 385  013d 201f          	jra	L571
 386  013f               L741:
 387                     ; 131       I2C1->CR2 &=~I2C_CR2_ACK;;                     		// Clear ACK 
 389  013f 72155211      	bres	21009,#2
 390                     ; 132       disableInterrupts();                          		// Errata workaround (Disable interrupt)
 394  0143 9b            sim
 396                     ; 133       I2C1->SR3;                                       	// Clear ADDR Flag   
 399  0144 c65219        	ld	a,21017
 400                     ; 134       I2C1->CR2 |= I2C_CR2_STOP;                       	// generate stop here (STOP=1)
 402  0147 72125211      	bset	21009,#1
 403                     ; 135       enableInterrupts();																// Errata workaround (Enable interrupt)
 406  014b 9a            rim
 410  014c               L561:
 411                     ; 136       while(!(I2C1->SR1 & I2C_SR1_RXNE)  &&  tout()); 		// test EV7, wait for RxNE
 413  014c c65217        	ld	a,21015
 414  014f a540          	bcp	a,#64
 415  0151 2605          	jrne	L171
 417  0153 ce0001        	ldw	x,_TIM4_tout
 418  0156 26f4          	jrne	L561
 419  0158               L171:
 420                     ; 137       *u8_DataBuffer = I2C1->DR;                     		// Read Data byte
 422  0158 1e04          	ldw	x,(OFST+4,sp)
 423  015a c65216        	ld	a,21014
 424  015d f7            	ld	(x),a
 425  015e               L571:
 426                     ; 141   while((I2C1->CR2 & I2C_CR2_STOP)  &&  tout());     		// Wait until stop is performed (STOPF = 1)
 428  015e c65211        	ld	a,21009
 429  0161 a502          	bcp	a,#2
 430  0163 2705          	jreq	L102
 432  0165 ce0001        	ldw	x,_TIM4_tout
 433  0168 26f4          	jrne	L571
 434  016a               L102:
 435                     ; 142   I2C1->CR2 &=~I2C_CR2_POS;                          		// return POS to default state (POS=0)
 437  016a 72175211      	bres	21009,#3
 438                     ; 143 }
 441  016e 84            	pop	a
 442  016f 81            	ret
 501                     ; 151 void I2C_ReadRegister_Poll(u8 u8_regAddr, u8 u8_NumByteToRead, u8 *u8_DataBuffer)
 501                     ; 152 {
 502                     	switch	.text
 503  0170               _I2C_ReadRegister_Poll:
 505  0170 89            	pushw	x
 506       00000000      OFST:	set	0
 509  0171 2010          	jra	L722
 510  0173               L522:
 511                     ; 156 		I2C1->CR2 |= I2C_CR2_STOP;                   				// Generate stop here (STOP=1)
 513  0173 72125211      	bset	21009,#1
 515  0177               L532:
 516                     ; 157     while(I2C1->CR2 & I2C_CR2_STOP  &&  tout()); 				// Wait until stop is performed
 518  0177 c65211        	ld	a,21009
 519  017a a502          	bcp	a,#2
 520  017c 2705          	jreq	L722
 522  017e ce0001        	ldw	x,_TIM4_tout
 523  0181 26f4          	jrne	L532
 524  0183               L722:
 525                     ; 154 	while(I2C1->SR3 & I2C_SR3_BUSY  &&  tout())	  				// Wait while the bus is busy
 527  0183 c65219        	ld	a,21017
 528  0186 a502          	bcp	a,#2
 529  0188 2705          	jreq	L342
 531  018a ce0001        	ldw	x,_TIM4_tout
 532  018d 26e4          	jrne	L522
 533  018f               L342:
 534                     ; 159   I2C1->CR2 |= I2C_CR2_ACK;                      				// ACK=1, Ack enable
 536  018f 72145211      	bset	21009,#2
 537                     ; 161   I2C1->CR2 |= I2C_CR2_START;                    				// START=1, generate start
 539  0193 72105211      	bset	21009,#0
 541  0197               L742:
 542                     ; 162   while((I2C1->SR1 & I2C_SR1_SB)==0  &&  tout());				// Wait for start bit detection (SB)
 544  0197 c65217        	ld	a,21015
 545  019a a501          	bcp	a,#1
 546  019c 2605          	jrne	L352
 548  019e ce0001        	ldw	x,_TIM4_tout
 549  01a1 26f4          	jrne	L742
 550  01a3               L352:
 551                     ; 164   if(tout())
 553  01a3 ce0001        	ldw	x,_TIM4_tout
 554  01a6 2704          	jreq	L162
 555                     ; 174       I2C1->DR = (u8)(SLAVE_ADDRESS << 1);   						// Send 7-bit device address & Write (R/W = 0)
 557  01a8 356c5216      	mov	21014,#108
 558  01ac               L162:
 559                     ; 177   while(!(I2C1->SR1 & I2C_SR1_ADDR) &&  tout()); 				// test EV6 - wait for address ack (ADDR)
 561  01ac c65217        	ld	a,21015
 562  01af a502          	bcp	a,#2
 563  01b1 2605          	jrne	L562
 565  01b3 ce0001        	ldw	x,_TIM4_tout
 566  01b6 26f4          	jrne	L162
 567  01b8               L562:
 568                     ; 179   I2C1->SR3;
 571  01b8 c65219        	ld	a,21017
 573  01bb               L172:
 574                     ; 181   while(!(I2C1->SR1 & I2C_SR1_TXE) &&  tout());  				// Wait for TxE
 576  01bb c65217        	ld	a,21015
 577  01be a580          	bcp	a,#128
 578  01c0 2605          	jrne	L572
 580  01c2 ce0001        	ldw	x,_TIM4_tout
 581  01c5 26f4          	jrne	L172
 582  01c7               L572:
 583                     ; 182   if(tout())
 585  01c7 ce0001        	ldw	x,_TIM4_tout
 586  01ca 2705          	jreq	L303
 587                     ; 184     I2C1->DR = u8_regAddr;                         			// Send register address
 589  01cc 7b01          	ld	a,(OFST+1,sp)
 590  01ce c75216        	ld	21014,a
 591  01d1               L303:
 592                     ; 186   while((I2C1->SR1 & (I2C_SR1_TXE | I2C_SR1_BTF)) != (I2C_SR1_TXE | I2C_SR1_BTF)  &&  tout()); 
 594  01d1 c65217        	ld	a,21015
 595  01d4 a484          	and	a,#132
 596  01d6 a184          	cp	a,#132
 597  01d8 2705          	jreq	L703
 599  01da ce0001        	ldw	x,_TIM4_tout
 600  01dd 26f2          	jrne	L303
 601  01df               L703:
 602                     ; 196   I2C1->CR2 |= I2C_CR2_START;                     				// START=1, generate re-start
 605  01df 72105211      	bset	21009,#0
 607  01e3               L313:
 608                     ; 197   while((I2C1->SR1 & I2C_SR1_SB)==0  &&  tout()); 				// Wait for start bit detection (SB)
 610  01e3 c65217        	ld	a,21015
 611  01e6 a501          	bcp	a,#1
 612  01e8 2605          	jrne	L713
 614  01ea ce0001        	ldw	x,_TIM4_tout
 615  01ed 26f4          	jrne	L313
 616  01ef               L713:
 617                     ; 199   if(tout())
 619  01ef ce0001        	ldw	x,_TIM4_tout
 620  01f2 2704          	jreq	L523
 621                     ; 211       I2C1->DR = (u8)(SLAVE_ADDRESS << 1) | 1;         	// Send 7-bit device address & Write (R/W = 1)
 623  01f4 356d5216      	mov	21014,#109
 624  01f8               L523:
 625                     ; 214   while(!(I2C1->SR1 & I2C_SR1_ADDR)  &&  tout());  			// Wait for address ack (ADDR)
 627  01f8 c65217        	ld	a,21015
 628  01fb a502          	bcp	a,#2
 629  01fd 2605          	jrne	L133
 631  01ff ce0001        	ldw	x,_TIM4_tout
 632  0202 26f4          	jrne	L523
 633  0204               L133:
 634                     ; 216   if (u8_NumByteToRead > 2)                 						// *** more than 2 bytes are received? ***
 636  0204 7b02          	ld	a,(OFST+2,sp)
 637  0206 a103          	cp	a,#3
 638  0208 257a          	jrult	L333
 639                     ; 218     I2C1->SR3;                                     			// ADDR clearing sequence    
 641  020a c65219        	ld	a,21017
 643  020d 201c          	jra	L733
 644  020f               L543:
 645                     ; 221       while(!(I2C1->SR1 & I2C_SR1_BTF)  &&  tout()); 				// Wait for BTF
 647  020f c65217        	ld	a,21015
 648  0212 a504          	bcp	a,#4
 649  0214 2605          	jrne	L153
 651  0216 ce0001        	ldw	x,_TIM4_tout
 652  0219 26f4          	jrne	L543
 653  021b               L153:
 654                     ; 222 			*u8_DataBuffer++ = I2C1->DR;                   				// Reading next data byte
 656  021b 1e05          	ldw	x,(OFST+5,sp)
 657  021d 1c0001        	addw	x,#1
 658  0220 1f05          	ldw	(OFST+5,sp),x
 659  0222 1d0001        	subw	x,#1
 660  0225 c65216        	ld	a,21014
 661  0228 f7            	ld	(x),a
 662                     ; 223       --u8_NumByteToRead;																		// Decrease Numbyte to reade by 1
 664  0229 0a02          	dec	(OFST+2,sp)
 665  022b               L733:
 666                     ; 219     while(u8_NumByteToRead > 3  &&  tout())       			// not last three bytes?
 668  022b 7b02          	ld	a,(OFST+2,sp)
 669  022d a104          	cp	a,#4
 670  022f 2505          	jrult	L753
 672  0231 ce0001        	ldw	x,_TIM4_tout
 673  0234 26d9          	jrne	L543
 674  0236               L753:
 675                     ; 226     while(!(I2C1->SR1 & I2C_SR1_BTF)  &&  tout()); 			// Wait for BTF
 677  0236 c65217        	ld	a,21015
 678  0239 a504          	bcp	a,#4
 679  023b 2605          	jrne	L363
 681  023d ce0001        	ldw	x,_TIM4_tout
 682  0240 26f4          	jrne	L753
 683  0242               L363:
 684                     ; 227     I2C1->CR2 &=~I2C_CR2_ACK;                      			// Clear ACK
 686  0242 72155211      	bres	21009,#2
 687                     ; 228     disableInterrupts();                          			// Errata workaround (Disable interrupt)
 690  0246 9b            sim
 692                     ; 229     *u8_DataBuffer++ = I2C1->DR;                     		// Read 1st byte
 695  0247 1e05          	ldw	x,(OFST+5,sp)
 696  0249 1c0001        	addw	x,#1
 697  024c 1f05          	ldw	(OFST+5,sp),x
 698  024e 1d0001        	subw	x,#1
 699  0251 c65216        	ld	a,21014
 700  0254 f7            	ld	(x),a
 701                     ; 230     I2C1->CR2 |= I2C_CR2_STOP;                       		// Generate stop here (STOP=1)
 703  0255 72125211      	bset	21009,#1
 704                     ; 231     *u8_DataBuffer++ = I2C1->DR;                     		// Read 2nd byte
 706  0259 1e05          	ldw	x,(OFST+5,sp)
 707  025b 1c0001        	addw	x,#1
 708  025e 1f05          	ldw	(OFST+5,sp),x
 709  0260 1d0001        	subw	x,#1
 710  0263 c65216        	ld	a,21014
 711  0266 f7            	ld	(x),a
 712                     ; 232     enableInterrupts();																	// Errata workaround (Enable interrupt)
 715  0267 9a            rim
 719  0268               L763:
 720                     ; 233     while(!(I2C1->SR1 & I2C_SR1_RXNE)  &&  tout());			// Wait for RXNE
 722  0268 c65217        	ld	a,21015
 723  026b a540          	bcp	a,#64
 724  026d 2605          	jrne	L373
 726  026f ce0001        	ldw	x,_TIM4_tout
 727  0272 26f4          	jrne	L763
 728  0274               L373:
 729                     ; 234     *u8_DataBuffer++ = I2C1->DR;                   			// Read 3rd Data byte
 731  0274 1e05          	ldw	x,(OFST+5,sp)
 732  0276 1c0001        	addw	x,#1
 733  0279 1f05          	ldw	(OFST+5,sp),x
 734  027b 1d0001        	subw	x,#1
 735  027e c65216        	ld	a,21014
 736  0281 f7            	ld	(x),a
 738  0282 205a          	jra	L524
 739  0284               L333:
 740                     ; 238    if(u8_NumByteToRead == 2)                						// *** just two bytes are received? ***
 742  0284 7b02          	ld	a,(OFST+2,sp)
 743  0286 a102          	cp	a,#2
 744  0288 2635          	jrne	L773
 745                     ; 240       I2C1->CR2 |= I2C_CR2_POS;                      		// Set POS bit (NACK at next received byte)
 747  028a 72165211      	bset	21009,#3
 748                     ; 241       disableInterrupts();                          		// Errata workaround (Disable interrupt)
 751  028e 9b            sim
 753                     ; 242       I2C1->SR3;                                       	// Clear ADDR Flag
 756  028f c65219        	ld	a,21017
 757                     ; 243       I2C1->CR2 &=~I2C_CR2_ACK;                        	// Clear ACK 
 759  0292 72155211      	bres	21009,#2
 760                     ; 244       enableInterrupts();																// Errata workaround (Enable interrupt)
 763  0296 9a            rim
 767  0297               L304:
 768                     ; 245       while(!(I2C1->SR1 & I2C_SR1_BTF)  &&  tout()); 		// Wait for BTF
 770  0297 c65217        	ld	a,21015
 771  029a a504          	bcp	a,#4
 772  029c 2605          	jrne	L704
 774  029e ce0001        	ldw	x,_TIM4_tout
 775  02a1 26f4          	jrne	L304
 776  02a3               L704:
 777                     ; 246       disableInterrupts();                          		// Errata workaround (Disable interrupt)
 780  02a3 9b            sim
 782                     ; 247       I2C1->CR2 |= I2C_CR2_STOP;                       	// Generate stop here (STOP=1)
 785  02a4 72125211      	bset	21009,#1
 786                     ; 248       *u8_DataBuffer++ = I2C1->DR;                     	// Read 1st Data byte
 788  02a8 1e05          	ldw	x,(OFST+5,sp)
 789  02aa 1c0001        	addw	x,#1
 790  02ad 1f05          	ldw	(OFST+5,sp),x
 791  02af 1d0001        	subw	x,#1
 792  02b2 c65216        	ld	a,21014
 793  02b5 f7            	ld	(x),a
 794                     ; 249       enableInterrupts();																// Errata workaround (Enable interrupt)
 797  02b6 9a            rim
 799                     ; 250 			*u8_DataBuffer = I2C1->DR;													// Read 2nd Data byte
 802  02b7 1e05          	ldw	x,(OFST+5,sp)
 803  02b9 c65216        	ld	a,21014
 804  02bc f7            	ld	(x),a
 806  02bd 201f          	jra	L524
 807  02bf               L773:
 808                     ; 254       I2C1->CR2 &=~I2C_CR2_ACK;;                     		// Clear ACK 
 810  02bf 72155211      	bres	21009,#2
 811                     ; 255       disableInterrupts();                          		// Errata workaround (Disable interrupt)
 815  02c3 9b            sim
 817                     ; 256       I2C1->SR3;                                       	// Clear ADDR Flag   
 820  02c4 c65219        	ld	a,21017
 821                     ; 257       I2C1->CR2 |= I2C_CR2_STOP;                       	// generate stop here (STOP=1)
 823  02c7 72125211      	bset	21009,#1
 824                     ; 258       enableInterrupts();																// Errata workaround (Enable interrupt)
 827  02cb 9a            rim
 831  02cc               L514:
 832                     ; 259       while(!(I2C1->SR1 & I2C_SR1_RXNE)  &&  tout()); 		// test EV7, wait for RxNE
 834  02cc c65217        	ld	a,21015
 835  02cf a540          	bcp	a,#64
 836  02d1 2605          	jrne	L124
 838  02d3 ce0001        	ldw	x,_TIM4_tout
 839  02d6 26f4          	jrne	L514
 840  02d8               L124:
 841                     ; 260       *u8_DataBuffer = I2C1->DR;                     		// Read Data byte
 843  02d8 1e05          	ldw	x,(OFST+5,sp)
 844  02da c65216        	ld	a,21014
 845  02dd f7            	ld	(x),a
 846  02de               L524:
 847                     ; 264   while((I2C1->CR2 & I2C_CR2_STOP)  &&  tout());     		// Wait until stop is performed (STOPF = 1)
 849  02de c65211        	ld	a,21009
 850  02e1 a502          	bcp	a,#2
 851  02e3 2705          	jreq	L134
 853  02e5 ce0001        	ldw	x,_TIM4_tout
 854  02e8 26f4          	jrne	L524
 855  02ea               L134:
 856                     ; 265   I2C1->CR2 &=~I2C_CR2_POS;                          		// return POS to default state (POS=0)
 858  02ea 72175211      	bres	21009,#3
 859                     ; 266 }
 862  02ee 85            	popw	x
 863  02ef 81            	ret
 914                     ; 275 void I2C_WriteRegister_Poll(u8 u8_regAddr, u8 u8_NumByteToWrite, u8 *u8_DataBuffer)
 914                     ; 276 {
 915                     	switch	.text
 916  02f0               _I2C_WriteRegister_Poll:
 918  02f0 89            	pushw	x
 919       00000000      OFST:	set	0
 922  02f1 2010          	jra	L754
 923  02f3               L554:
 924                     ; 279     I2C1->CR2 |= 2;                        								// STOP=1, generate stop
 926  02f3 72125211      	bset	21009,#1
 928  02f7               L564:
 929                     ; 280     while((I2C1->CR2 & 2) && tout());      								// wait until stop is performed
 931  02f7 c65211        	ld	a,21009
 932  02fa a502          	bcp	a,#2
 933  02fc 2705          	jreq	L754
 935  02fe ce0001        	ldw	x,_TIM4_tout
 936  0301 26f4          	jrne	L564
 937  0303               L754:
 938                     ; 277   while((I2C1->SR3 & 2) && tout())       									// Wait while the bus is busy
 940  0303 c65219        	ld	a,21017
 941  0306 a502          	bcp	a,#2
 942  0308 2705          	jreq	L374
 944  030a ce0001        	ldw	x,_TIM4_tout
 945  030d 26e4          	jrne	L554
 946  030f               L374:
 947                     ; 283   I2C1->CR2 |= 1;                        									// START=1, generate start
 949  030f 72105211      	bset	21009,#0
 951  0313               L774:
 952                     ; 284   while(((I2C1->SR1 & 1)==0) && tout()); 									// Wait for start bit detection (SB)
 954  0313 c65217        	ld	a,21015
 955  0316 a501          	bcp	a,#1
 956  0318 2605          	jrne	L305
 958  031a ce0001        	ldw	x,_TIM4_tout
 959  031d 26f4          	jrne	L774
 960  031f               L305:
 961                     ; 286   if(tout())
 964  031f ce0001        	ldw	x,_TIM4_tout
 965  0322 2704          	jreq	L115
 966                     ; 296       I2C1->DR = (u8)(SLAVE_ADDRESS << 1);   							// Send 7-bit device address & Write (R/W = 0)
 968  0324 356c5216      	mov	21014,#108
 969  0328               L115:
 970                     ; 299   while(!(I2C1->SR1 & 2) && tout());     									// Wait for address ack (ADDR)
 972  0328 c65217        	ld	a,21015
 973  032b a502          	bcp	a,#2
 974  032d 2605          	jrne	L515
 976  032f ce0001        	ldw	x,_TIM4_tout
 977  0332 26f4          	jrne	L115
 978  0334               L515:
 979                     ; 301   I2C1->SR3;
 982  0334 c65219        	ld	a,21017
 984  0337               L125:
 985                     ; 302   while(!(I2C1->SR1 & 0x80) && tout());  									// Wait for TxE
 987  0337 c65217        	ld	a,21015
 988  033a a580          	bcp	a,#128
 989  033c 2605          	jrne	L525
 991  033e ce0001        	ldw	x,_TIM4_tout
 992  0341 26f4          	jrne	L125
 993  0343               L525:
 994                     ; 303   if(tout())
 996  0343 ce0001        	ldw	x,_TIM4_tout
 997  0346 2705          	jreq	L725
 998                     ; 305     I2C1->DR = u8_regAddr;                 								// send Offset command
1000  0348 7b01          	ld	a,(OFST+1,sp)
1001  034a c75216        	ld	21014,a
1002  034d               L725:
1003                     ; 307   if(u8_NumByteToWrite)
1005  034d 0d02          	tnz	(OFST+2,sp)
1006  034f 2723          	jreq	L355
1008  0351 201a          	jra	L535
1009  0353               L345:
1010                     ; 311       while(!(I2C1->SR1 & 0x80) && tout());  								// test EV8 - wait for TxE
1012  0353 c65217        	ld	a,21015
1013  0356 a580          	bcp	a,#128
1014  0358 2605          	jrne	L745
1016  035a ce0001        	ldw	x,_TIM4_tout
1017  035d 26f4          	jrne	L345
1018  035f               L745:
1019                     ; 312       I2C1->DR = *u8_DataBuffer++;           								// send next data byte
1021  035f 1e05          	ldw	x,(OFST+5,sp)
1022  0361 1c0001        	addw	x,#1
1023  0364 1f05          	ldw	(OFST+5,sp),x
1024  0366 1d0001        	subw	x,#1
1025  0369 f6            	ld	a,(x)
1026  036a c75216        	ld	21014,a
1027  036d               L535:
1028                     ; 309     while(u8_NumByteToWrite--)          									
1030  036d 7b02          	ld	a,(OFST+2,sp)
1031  036f 0a02          	dec	(OFST+2,sp)
1032  0371 4d            	tnz	a
1033  0372 26df          	jrne	L345
1034  0374               L355:
1035                     ; 315   while(((I2C1->SR1 & 0x84) != 0x84) && tout()); 					// Wait for TxE & BTF
1037  0374 c65217        	ld	a,21015
1038  0377 a484          	and	a,#132
1039  0379 a184          	cp	a,#132
1040  037b 2705          	jreq	L755
1042  037d ce0001        	ldw	x,_TIM4_tout
1043  0380 26f2          	jrne	L355
1044  0382               L755:
1045                     ; 318   I2C1->CR2 |= 2;                        									// generate stop here (STOP=1)
1048  0382 72125211      	bset	21009,#1
1050  0386               L365:
1051                     ; 319   while((I2C1->CR2 & 2) && tout());      									// wait until stop is performed  
1053  0386 c65211        	ld	a,21009
1054  0389 a502          	bcp	a,#2
1055  038b 2705          	jreq	L765
1057  038d ce0001        	ldw	x,_TIM4_tout
1058  0390 26f4          	jrne	L365
1059  0392               L765:
1060                     ; 320 }
1063  0392 85            	popw	x
1064  0393 81            	ret
1088                     ; 329 void ErrProc(void)
1088                     ; 330 {
1089                     	switch	.text
1090  0394               _ErrProc:
1094                     ; 332     I2C1->SR2= 0;
1096  0394 725f5218      	clr	21016
1097                     ; 334 	  I2C1->CR2 |= 2;  
1099  0398 72125211      	bset	21009,#1
1100                     ; 336     TIM4_tout= 0;
1102  039c 5f            	clrw	x
1103  039d cf0001        	ldw	_TIM4_tout,x
1104                     ; 338     switch_on(LED3);
1106  03a0 721d5000      	bres	20480,#6
1107                     ; 339 }
1111  03a4 81            	ret
1136                     ; 350 @far @interrupt void I2C_error_Interrupt_Handler (void) {
1138                     	switch	.text
1139  03a5               f_I2C_error_Interrupt_Handler:
1141  03a5 8a            	push	cc
1142  03a6 84            	pop	a
1143  03a7 a4bf          	and	a,#191
1144  03a9 88            	push	a
1145  03aa 86            	pop	cc
1146  03ab 3b0002        	push	c_x+2
1147  03ae be00          	ldw	x,c_x
1148  03b0 89            	pushw	x
1149  03b1 3b0002        	push	c_y+2
1150  03b4 be00          	ldw	x,c_y
1151  03b6 89            	pushw	x
1154                     ; 354 ErrProc();
1156  03b7 addb          	call	_ErrProc
1158                     ; 355 }
1161  03b9 85            	popw	x
1162  03ba bf00          	ldw	c_y,x
1163  03bc 320002        	pop	c_y+2
1164  03bf 85            	popw	x
1165  03c0 bf00          	ldw	c_x,x
1166  03c2 320002        	pop	c_x+2
1167  03c5 80            	iret
1189                     ; 364 void TIM4_Init (void) {
1191                     	switch	.text
1192  03c6               _TIM4_Init:
1196                     ; 365   CLK->PCKENR1 |= 0x4;               // TIM4 clock enable
1198  03c6 721450c3      	bset	20675,#2
1199                     ; 366   TIM4->ARR = 0x80;                // init timer 4 1ms inetrrupts
1201  03ca 358052e9      	mov	21225,#128
1202                     ; 367   TIM4->PSCR= 7;
1204  03ce 350752e8      	mov	21224,#7
1205                     ; 368   TIM4->IER = 1;
1207  03d2 350152e4      	mov	21220,#1
1208                     ; 369   TIM4->CR1 |= 1;
1210  03d6 721052e0      	bset	21216,#0
1211                     ; 370 }
1214  03da 81            	ret
1249                     ; 380 @far @interrupt void TIM4InterruptHandle (void) {
1251                     	switch	.text
1252  03db               f_TIM4InterruptHandle:
1254       00000001      OFST:	set	1
1255  03db 88            	push	a
1258                     ; 384   u8 dly= 10;
1260  03dc a60a          	ld	a,#10
1261  03de 6b01          	ld	(OFST+0,sp),a
1263                     ; 386   TIM4->SR1= 0;
1265  03e0 725f52e5      	clr	21221
1266                     ; 388   if(TIM4_tout)
1268  03e4 ce0001        	ldw	x,_TIM4_tout
1269  03e7 270c          	jreq	L346
1270                     ; 389     if(--TIM4_tout == 0)
1272  03e9 ce0001        	ldw	x,_TIM4_tout
1273  03ec 1d0001        	subw	x,#1
1274  03ef cf0001        	ldw	_TIM4_tout,x
1275  03f2 2601          	jrne	L346
1276                     ; 391       _asm("nop");
1279  03f4 9d            nop
1281  03f5               L346:
1282                     ; 395   while(dly--);
1284  03f5 7b01          	ld	a,(OFST+0,sp)
1285  03f7 0a01          	dec	(OFST+0,sp)
1287  03f9 4d            	tnz	a
1288  03fa 26f9          	jrne	L346
1289                     ; 396 }
1292  03fc 84            	pop	a
1293  03fd 80            	iret
1325                     	switch	.bss
1326  0000               _err_save:
1327  0000 00            	ds.b	1
1328                     	xdef	_err_save
1329  0001               _TIM4_tout:
1330  0001 0000          	ds.b	2
1331                     	xdef	_TIM4_tout
1332                     	xdef	f_TIM4InterruptHandle
1333                     	xdef	f_I2C_error_Interrupt_Handler
1334                     	xdef	_ErrProc
1335                     	xdef	_I2C_WriteRegister_Poll
1336                     	xdef	_I2C_ReadRegister_Poll
1337                     	xdef	_I2C_RandomRead_Poll
1338                     	xdef	_TIM4_Init
1339                     	xdef	_I2C_Init_Poll
1340                     	xref.b	c_x
1341                     	xref.b	c_y
1361                     	end
