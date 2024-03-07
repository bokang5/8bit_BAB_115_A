   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.12.9 - 19 Apr 2023
   3                     ; Generator (Limited) V4.5.6 - 18 Jul 2023
  43                     ; 55 INTERRUPT_HANDLER(NonHandledInterrupt,0)
  43                     ; 56 {
  44                     	switch	.text
  45  0000               f_NonHandledInterrupt:
  49                     ; 60 }
  52  0000 80            	iret
  74                     ; 70 INTERRUPT_HANDLER_TRAP(TRAP_IRQHandler)
  74                     ; 71 {
  75                     	switch	.text
  76  0001               f_TRAP_IRQHandler:
  80                     ; 75 }
  83  0001 80            	iret
 105                     ; 81 INTERRUPT_HANDLER(FLASH_IRQHandler,1)
 105                     ; 82 {
 106                     	switch	.text
 107  0002               f_FLASH_IRQHandler:
 111                     ; 86 }
 114  0002 80            	iret
 137                     ; 92 INTERRUPT_HANDLER(DMA1_CHANNEL0_1_IRQHandler,2)
 137                     ; 93 {
 138                     	switch	.text
 139  0003               f_DMA1_CHANNEL0_1_IRQHandler:
 143                     ; 97 }
 146  0003 80            	iret
 169                     ; 103 INTERRUPT_HANDLER(DMA1_CHANNEL2_3_IRQHandler,3)
 169                     ; 104 {
 170                     	switch	.text
 171  0004               f_DMA1_CHANNEL2_3_IRQHandler:
 175                     ; 108 }
 178  0004 80            	iret
 201                     ; 114 INTERRUPT_HANDLER(RTC_CSSLSE_IRQHandler,4)
 201                     ; 115 {
 202                     	switch	.text
 203  0005               f_RTC_CSSLSE_IRQHandler:
 207                     ; 119 }
 210  0005 80            	iret
 233                     ; 125 INTERRUPT_HANDLER(EXTIE_F_PVD_IRQHandler,5)
 233                     ; 126 {
 234                     	switch	.text
 235  0006               f_EXTIE_F_PVD_IRQHandler:
 239                     ; 130 }
 242  0006 80            	iret
 264                     ; 137 INTERRUPT_HANDLER(EXTIB_G_IRQHandler,6)
 264                     ; 138 {
 265                     	switch	.text
 266  0007               f_EXTIB_G_IRQHandler:
 270                     ; 142 }
 273  0007 80            	iret
 295                     ; 149 INTERRUPT_HANDLER(EXTID_H_IRQHandler,7)
 295                     ; 150 {
 296                     	switch	.text
 297  0008               f_EXTID_H_IRQHandler:
 301                     ; 154 }
 304  0008 80            	iret
 326                     ; 161 INTERRUPT_HANDLER(EXTI0_IRQHandler,8)
 326                     ; 162 {
 327                     	switch	.text
 328  0009               f_EXTI0_IRQHandler:
 332                     ; 166 }
 335  0009 80            	iret
 357                     ; 173 INTERRUPT_HANDLER(EXTI1_IRQHandler,9)
 357                     ; 174 {
 358                     	switch	.text
 359  000a               f_EXTI1_IRQHandler:
 363                     ; 178 }
 366  000a 80            	iret
 388                     ; 185 INTERRUPT_HANDLER(EXTI2_IRQHandler,10)
 388                     ; 186 {
 389                     	switch	.text
 390  000b               f_EXTI2_IRQHandler:
 394                     ; 190 }
 397  000b 80            	iret
 419                     ; 197 INTERRUPT_HANDLER(EXTI3_IRQHandler,11)
 419                     ; 198 {
 420                     	switch	.text
 421  000c               f_EXTI3_IRQHandler:
 425                     ; 202 }
 428  000c 80            	iret
 450                     ; 209 INTERRUPT_HANDLER(EXTI4_IRQHandler,12)
 450                     ; 210 {
 451                     	switch	.text
 452  000d               f_EXTI4_IRQHandler:
 456                     ; 214 }
 459  000d 80            	iret
 481                     ; 221 INTERRUPT_HANDLER(EXTI5_IRQHandler,13)
 481                     ; 222 {
 482                     	switch	.text
 483  000e               f_EXTI5_IRQHandler:
 487                     ; 226 }
 490  000e 80            	iret
 512                     ; 233 INTERRUPT_HANDLER(EXTI6_IRQHandler,14)
 512                     ; 234 {
 513                     	switch	.text
 514  000f               f_EXTI6_IRQHandler:
 518                     ; 238 }
 521  000f 80            	iret
 543                     ; 245 INTERRUPT_HANDLER(EXTI7_IRQHandler,15)
 543                     ; 246 {
 544                     	switch	.text
 545  0010               f_EXTI7_IRQHandler:
 549                     ; 250 }
 552  0010 80            	iret
 574                     ; 256 INTERRUPT_HANDLER(LCD_AES_IRQHandler,16)
 574                     ; 257 {
 575                     	switch	.text
 576  0011               f_LCD_AES_IRQHandler:
 580                     ; 261 }
 583  0011 80            	iret
 606                     ; 267 INTERRUPT_HANDLER(SWITCH_CSS_BREAK_DAC_IRQHandler,17)
 606                     ; 268 {
 607                     	switch	.text
 608  0012               f_SWITCH_CSS_BREAK_DAC_IRQHandler:
 612                     ; 272 }
 615  0012 80            	iret
 638                     ; 279 INTERRUPT_HANDLER(ADC1_COMP_IRQHandler,18)
 638                     ; 280 {
 639                     	switch	.text
 640  0013               f_ADC1_COMP_IRQHandler:
 644                     ; 284 }
 647  0013 80            	iret
 671                     ; 291 INTERRUPT_HANDLER(TIM2_UPD_OVF_TRG_BRK_USART2_TX_IRQHandler,19)
 671                     ; 292 {
 672                     	switch	.text
 673  0014               f_TIM2_UPD_OVF_TRG_BRK_USART2_TX_IRQHandler:
 677                     ; 296 }
 680  0014 80            	iret
 704                     ; 303 @svlreg INTERRUPT_HANDLER(TIM2_CC_USART2_RX_IRQHandler,20)
 704                     ; 304 {
 705                     	switch	.text
 706  0015               f_TIM2_CC_USART2_RX_IRQHandler:
 708  0015 8a            	push	cc
 709  0016 84            	pop	a
 710  0017 a4bf          	and	a,#191
 711  0019 88            	push	a
 712  001a 86            	pop	cc
 713  001b 3b0002        	push	c_x+2
 714  001e be00          	ldw	x,c_x
 715  0020 89            	pushw	x
 716  0021 3b0002        	push	c_y+2
 717  0024 be00          	ldw	x,c_y
 718  0026 89            	pushw	x
 719  0027 be02          	ldw	x,c_lreg+2
 720  0029 89            	pushw	x
 721  002a be00          	ldw	x,c_lreg
 722  002c 89            	pushw	x
 725                     ; 308 	USART2_INTERRUPT_HANDLER();
 727  002d cd0000        	call	_USART2_INTERRUPT_HANDLER
 729                     ; 309 }
 732  0030 85            	popw	x
 733  0031 bf00          	ldw	c_lreg,x
 734  0033 85            	popw	x
 735  0034 bf02          	ldw	c_lreg+2,x
 736  0036 85            	popw	x
 737  0037 bf00          	ldw	c_y,x
 738  0039 320002        	pop	c_y+2
 739  003c 85            	popw	x
 740  003d bf00          	ldw	c_x,x
 741  003f 320002        	pop	c_x+2
 742  0042 80            	iret
 766                     ; 317 INTERRUPT_HANDLER(TIM3_UPD_OVF_TRG_BRK_USART3_TX_IRQHandler,21)
 766                     ; 318 {
 767                     	switch	.text
 768  0043               f_TIM3_UPD_OVF_TRG_BRK_USART3_TX_IRQHandler:
 772                     ; 322 }
 775  0043 80            	iret
 798                     ; 328 INTERRUPT_HANDLER(TIM3_CC_USART3_RX_IRQHandler,22)
 798                     ; 329 {
 799                     	switch	.text
 800  0044               f_TIM3_CC_USART3_RX_IRQHandler:
 804                     ; 333 }
 807  0044 80            	iret
 830                     ; 339 INTERRUPT_HANDLER(TIM1_UPD_OVF_TRG_COM_IRQHandler,23)
 830                     ; 340 {
 831                     	switch	.text
 832  0045               f_TIM1_UPD_OVF_TRG_COM_IRQHandler:
 836                     ; 344 }
 839  0045 80            	iret
 861                     ; 350 INTERRUPT_HANDLER(TIM1_CC_IRQHandler,24)
 861                     ; 351 {
 862                     	switch	.text
 863  0046               f_TIM1_CC_IRQHandler:
 867                     ; 355 }
 870  0046 80            	iret
 894                     ; 362 INTERRUPT_HANDLER(TIM4_UPD_OVF_TRG_IRQHandler,25)
 894                     ; 363 {
 895                     	switch	.text
 896  0047               f_TIM4_UPD_OVF_TRG_IRQHandler:
 898  0047 8a            	push	cc
 899  0048 84            	pop	a
 900  0049 a4bf          	and	a,#191
 901  004b 88            	push	a
 902  004c 86            	pop	cc
 903  004d 3b0002        	push	c_x+2
 904  0050 be00          	ldw	x,c_x
 905  0052 89            	pushw	x
 906  0053 3b0002        	push	c_y+2
 907  0056 be00          	ldw	x,c_y
 908  0058 89            	pushw	x
 911                     ; 364 	TIM4_INTERRUPT_HANDLER();
 913  0059 cd0000        	call	_TIM4_INTERRUPT_HANDLER
 915                     ; 365 }
 918  005c 85            	popw	x
 919  005d bf00          	ldw	c_y,x
 920  005f 320002        	pop	c_y+2
 921  0062 85            	popw	x
 922  0063 bf00          	ldw	c_x,x
 923  0065 320002        	pop	c_x+2
 924  0068 80            	iret
 946                     ; 372 INTERRUPT_HANDLER(SPI1_IRQHandler,26)
 946                     ; 373 {
 947                     	switch	.text
 948  0069               f_SPI1_IRQHandler:
 952                     ; 377 }
 955  0069 80            	iret
 979                     ; 384 INTERRUPT_HANDLER(USART1_TX_TIM5_UPD_OVF_TRG_BRK_IRQHandler,27)
 979                     ; 385 {
 980                     	switch	.text
 981  006a               f_USART1_TX_TIM5_UPD_OVF_TRG_BRK_IRQHandler:
 985                     ; 389 }
 988  006a 80            	iret
1012                     ; 396 INTERRUPT_HANDLER(USART1_RX_TIM5_CC_IRQHandler,28)
1012                     ; 397 {
1013                     	switch	.text
1014  006b               f_USART1_RX_TIM5_CC_IRQHandler:
1016  006b 8a            	push	cc
1017  006c 84            	pop	a
1018  006d a4bf          	and	a,#191
1019  006f 88            	push	a
1020  0070 86            	pop	cc
1021  0071 3b0002        	push	c_x+2
1022  0074 be00          	ldw	x,c_x
1023  0076 89            	pushw	x
1024  0077 3b0002        	push	c_y+2
1025  007a be00          	ldw	x,c_y
1026  007c 89            	pushw	x
1029                     ; 401 		USART1_INTERRUPT_HANDLER();
1031  007d cd0000        	call	_USART1_INTERRUPT_HANDLER
1033                     ; 402 }
1036  0080 85            	popw	x
1037  0081 bf00          	ldw	c_y,x
1038  0083 320002        	pop	c_y+2
1039  0086 85            	popw	x
1040  0087 bf00          	ldw	c_x,x
1041  0089 320002        	pop	c_x+2
1042  008c 80            	iret
1065                     ; 409 INTERRUPT_HANDLER(I2C1_SPI2_IRQHandler,29)
1065                     ; 410 {
1066                     	switch	.text
1067  008d               f_I2C1_SPI2_IRQHandler:
1071                     ; 414 }
1074  008d 80            	iret
1086                     	xref	_USART2_INTERRUPT_HANDLER
1087                     	xref	_USART1_INTERRUPT_HANDLER
1088                     	xref	_TIM4_INTERRUPT_HANDLER
1089                     	xdef	f_I2C1_SPI2_IRQHandler
1090                     	xdef	f_USART1_RX_TIM5_CC_IRQHandler
1091                     	xdef	f_USART1_TX_TIM5_UPD_OVF_TRG_BRK_IRQHandler
1092                     	xdef	f_SPI1_IRQHandler
1093                     	xdef	f_TIM4_UPD_OVF_TRG_IRQHandler
1094                     	xdef	f_TIM1_CC_IRQHandler
1095                     	xdef	f_TIM1_UPD_OVF_TRG_COM_IRQHandler
1096                     	xdef	f_TIM3_CC_USART3_RX_IRQHandler
1097                     	xdef	f_TIM3_UPD_OVF_TRG_BRK_USART3_TX_IRQHandler
1098                     	xdef	f_TIM2_CC_USART2_RX_IRQHandler
1099                     	xdef	f_TIM2_UPD_OVF_TRG_BRK_USART2_TX_IRQHandler
1100                     	xdef	f_ADC1_COMP_IRQHandler
1101                     	xdef	f_SWITCH_CSS_BREAK_DAC_IRQHandler
1102                     	xdef	f_LCD_AES_IRQHandler
1103                     	xdef	f_EXTI7_IRQHandler
1104                     	xdef	f_EXTI6_IRQHandler
1105                     	xdef	f_EXTI5_IRQHandler
1106                     	xdef	f_EXTI4_IRQHandler
1107                     	xdef	f_EXTI3_IRQHandler
1108                     	xdef	f_EXTI2_IRQHandler
1109                     	xdef	f_EXTI1_IRQHandler
1110                     	xdef	f_EXTI0_IRQHandler
1111                     	xdef	f_EXTID_H_IRQHandler
1112                     	xdef	f_EXTIB_G_IRQHandler
1113                     	xdef	f_EXTIE_F_PVD_IRQHandler
1114                     	xdef	f_RTC_CSSLSE_IRQHandler
1115                     	xdef	f_DMA1_CHANNEL2_3_IRQHandler
1116                     	xdef	f_DMA1_CHANNEL0_1_IRQHandler
1117                     	xdef	f_FLASH_IRQHandler
1118                     	xdef	f_TRAP_IRQHandler
1119                     	xdef	f_NonHandledInterrupt
1120                     	xref.b	c_lreg
1121                     	xref.b	c_x
1122                     	xref.b	c_y
1141                     	end
