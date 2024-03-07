
/*--------------------------------------------------
  @. PROJECT: BAB-110
  @. PROGRAMER: jang joon-tae 
  @. DATE: 2017.06.26
---------------------------------------------------*/
#include <string.h>
#include "main.h"

//bokang  office3
#define DISCHG_TIME_CALC

//2019.11.13
#define SJB_DCHG_TEST

#define CHECK_PCM_STATE

#ifdef CHECK_PCM_STATE
uint8_t powerOnSetupComplete = 0;
uint8_t pcmStateEntered = 0;
uint8_t old_pcmStateEntered = 0;
uint8_t pcmStableTimeCnt = 2;	// 1증가시 5초(I2c Read를 5초에 한번씩 함)
#endif
uint8_t _fgReset = 0;
uint8_t _fgPercentRead = 0;

#define PERCENT_DEBUG
#ifdef PERCENT_DEBUG
	uint8_t _5secCnt = 0;
#endif

extern void TIM4_INTERRUPT_HANDLER(void)
{
	if(Time_Speak_State==1)
		{
			TIM_8ms++;
				
			if(TIM_8ms>=124)
				{
					TIM_1S++;
					TIM_1S2++;
					
					if(DIS_Lock_10s==1)
					{
						DIS_3s++;
						if(DIS_3s>=3)
							{
								DIS_Lock=1;
								DIS_Unlock=0;
								DIS_3s=3;
							}
					}
					else DIS_3s=0;
					
					if(DIS_Unlock_10s==1)
					{
						DIS_Un3s++;
						if(DIS_Un3s>=3)
							{
								DIS_Lock=0;
								DIS_Unlock=1;
								DIS_Un3s=3;
							}
					}
					else DIS_Un3s=0;
					
					if(Percent_P==1||Percent_N==1)
					{
						TIM_1S4++;
						
						if(Percent_P==1)
						{
							if(Percentgauge>=90){P_Time=60;}
							else if(Percentgauge>=80){P_Time=50;}
							else if(Percentgauge>=70){P_Time=40;}
							else if(Percentgauge>=60){P_Time=30;}
							else if(Percentgauge>=50){P_Time=20;}
						}
						else if(Percent_N==1)
						{
							if(Percentgauge<=10){P_Time=60;}
							else if(Percentgauge<=20){P_Time=50;}
							else if(Percentgauge<=30){P_Time=40;}
							else if(Percentgauge<=40){P_Time=30;}
							else if(Percentgauge<=50){P_Time=20;}
						}
						
						if(TIM_1S4>=P_Time)
							{
								if(Percent_P==1)
								{
									if(Percentgauge>=100) Percentgauge=100;
									else Percentgauge++;
								}
								else if(Percent_N==1)
								{
									if(Percentgauge==0) Percentgauge=0;
									else Percentgauge--;
								}
								TIM_1S4=0;
							}
					}	
				
					if(Percent_1s==0)
					{Percent_1s=1;}
					
					if(BLE_LED==1)
					{
						if(BLE_Con==0)
							{TIM_1S5++;}
						else TIM_1S5=0;
							
						if(TIM_1S5>=5)
							{	
								BLE_Con=1;	
								TIM_1S5=0;
							}
					}
					else TIM_1S5,BLE_Con=0;
					
					if(APP_DATA_Start==1)
					{
						TIM_1S3++;
						if(TIM_1S3>=5)
						{	
							DATA_TX_5s=1;	
							TIM_1S3=0;
						}
					}
					else DATA_TX_5s=0,TIM_1S3=0;
					
					if(APP_Connect==1||GPIO_ReadInputDataBit(BLE_C_PORT,BLE_C_PIN)!=0)
					{
						TIM_1S7++;
						if(TIM_1S7>=2)
						{
							if(APP_Connect_end==0)
							{
								BLE_LED=1;
								BLE_Con=1;
								BABAPP_TX(99);
							}
							else APP_Connect=0,TIM_1S7=0;
							
							TIM_1S7=0;
						}
					}
					
					if(TIM_1S2>=5)
					{I2C_ON=1; TIM_1S2=0;}
					
					if(CHG_State==1)
						{
							if(STATE_CHG!=0) //Full_CHG
								{TIM_CHG_1S3++;}
						}
					else TIM_CHG_1S3=0;
					
					if(ACC_Volt>=120) //Run_CHG
					  {TIM_CHG_1S1++;}
					else if(ACC_Volt<=115) //Low_CHG
						{TIM_CHG_1S2++;}
						
					waiting_Time++;
					if(waiting_Time>=2)
						{waiting_Time=0;}
						
					B_bounce_1S++;
					if(B_bounce_1S>=2)
						{B_bounce_1S=0;}
						
					if(Short_time==1)
						{
							Short_1S++;
							if(Short_1S>=30)
								{Short_1S=30;}
						}
					else
						{Short_1S=0;}
						
					TIM_8ms=0;
				}
				
			if(BLE_Con==1)
				{
					TIM_8ms2++;
					if(TIM_8ms2>=20)
						{
							Tim_500ms++;
							if(Tim_500ms>=4)
								{Tim_500ms=0,BLE_Con=0;}
							TIM_8ms2=0;
						}
				}
			else TIM_8ms2=0;
			
			if(PRC_COM==1)
				{
					if(BAB_DAT2[4]!='3')
					{
						TIM_8ms3++;
						if(TIM_8ms3>=124)
							{
								TIM_1S6++;
								if(TIM_1S6>=10)
									{	PRC_COM=0,TIM_1S6=0;	}
								TIM_8ms3=0;
							}
					}
				}
			else TIM_8ms3=0,TIM_1S6=0;
			
			TIM4_ClearITPendingBit(TIM4_IT_Update);
		}
	else//---------------------------------------------Speak//
		{
			SpeakTime1_pp++;
			if(SpeakTime1_pp > SpeakAppTone)
				{
					if(SpeakOnOff == 1)
						{
							Speak_PORT->ODR |= Speak_PIN;//Speak_On
							SpeakOnOff = 0;
						}
					else
						{
							Speak_PORT->ODR &= ~Speak_PIN;//Speak_Off
							SpeakOnOff = 1;
						}
					SpeakTime1_pp = 0;
				}
			SpeakDelayTime_pp++;
			if(SpeakDelayTime_pp > 625)
				{
					SpeakTime2_pp++;
					SpeakDelayTime_pp = 0;
				}
			if(SpeakTime2_pp == SpeakAppTime)
				{
					SpeakDelayTime_pp = 0;
					SpeakTime1_pp =0;
					SpeakTime2_pp = 0;
					SpeakAppTime = 0;
					SpeakAppTone = 0;
					SpeakOnOff = 0;
					Speak_PORT->ODR &= ~Speak_PIN;//Speak_Off
					TIM4_ClearITPendingBit(TIM4_IT_Update);
				}
		}//----------------------------------------------------------------------//
}

//------------------------------------------------------------------DATA_TX_RX//
int DATA_Check_Sum(void)
{	
	int z,j;
	uint8_t k=0;
	char Sum=0;
	char cs1=0;
	char cs2=0;
	
	for(j=0;j<=64;j++)
	{
		if(B_Rx_Command[j]!='\n'){ k++; }
		else break;
	}
	
	for(z=0;z<(k-2);z++){Sum+=B_Rx_Command[z];}
	
	cs1=(Sum>>4)&0x0f;
	cs1=(cs1<10)?(cs1+'0'):((cs1-10)+'a');
	cs2= Sum & 0x0f;
	cs2=(cs2<10)?(cs2+'0'):((cs2-10)+'a');
	
	if(cs1==B_Rx_Command[k-2]||0x20==B_Rx_Command[k-2])
	{
		if(cs2==B_Rx_Command[k-1]||0x20==B_Rx_Command[k-1])
			{return 1;}
		else return 0;
	}
	else return 0;
}

int APP_DATA_Check_Sum(void)
{	
	int z,j;
	uint8_t k=0;
	char Sum=0;
	char cs1=0;
	char cs2=0;
	
	for(j=0;j<=64;j++)
	{
		if(A_Rx_Command[j]!='\n'){ k++; }
		else break;
	}
	
	for(z=0;z<(k-4);z++){Sum+=A_Rx_Command[z];}
	
	cs1=(Sum>>4)&0x0f;
	cs1=(cs1<10)?(cs1+'0'):((cs1-10)+'a');
	cs2= Sum & 0x0f;
	cs2=(cs2<10)?(cs2+'0'):((cs2-10)+'a');
	
	if(cs1==A_Rx_Command[k-4]||0x20==A_Rx_Command[k-4])
	{
		if(cs2==A_Rx_Command[k-3]||0x20==A_Rx_Command[k-3])
			{return 1;}
		else return 0;
	}
	else return 0;
}

//--------------------------------------------------------------------Uart1---//
extern void USART1_INTERRUPT_HANDLER(void)  // BAB110 <-> APP
{
	int i;
	uint8_t c;
	int Checksum=0;
	
	for(i=0;i<64;i++)
	{
		c=0;
		while(USART_GetFlagStatus(USART1,USART_FLAG_RXNE)==RESET)
			{	c++;	if(c==100){break;}	}
		A_Rx_Command[i] = USART_ReceiveData8(USART1);
		if(USART_ReceiveData8(USART1)=='\n'){break;}
	}
	
	if(A_Rx_Command[0]=='+')
	{
		if(A_Rx_Command[15]==':')
			{
				MAD1=A_Rx_Command[16];
				MAD2=A_Rx_Command[17];
				MAD3=A_Rx_Command[19];
				MAD4=A_Rx_Command[20];
			}
		else if(A_Rx_Command[1]=='C')
			{	
				APP_Connect=1;
			}
		else if(A_Rx_Command[1]=='D')
			{ APP_DATA_Start=0,APP_Connect=0,BLE_LED=0;APP_Connect_end=0; }
	}
	else 
	{
		Checksum=APP_DATA_Check_Sum();
	
		if(Checksum==1)
		{
			APP_Connect_end=1;
			App_DATA_Check_string();
		}
		else BABAPP_TX(0);
	}
	USART_ClearFlag(USART1,USART_FLAG_RXNE);

	#ifdef POWERON_SEND_BT_INFO
	//sprintf(_dBuf, "%c,%c,%c",(char)A_Rx_Command[0],(char)A_Rx_Command[1],(char)A_Rx_Command[2]); ___debug(_dBuf);
	//___debug("[U]");
	#endif

}

void App_DATA_Check_string(void)
{
	if(A_Rx_Command[0]=='S')
		{
			if(A_Rx_Command[4]=='T')
				{	BABAPP_TX(1); }
			else if(A_Rx_Command[4]=='D')
				{
					if(A_Rx_Command[7]=='A')
						{	APP_DATA_Start=1,DATA_TX_5s=1;	}
					else if(A_Rx_Command[7]=='1')
						{ BABAPP_TX(3); }
					else if(A_Rx_Command[7]=='2')
						{ BABAPP_TX(4); }
					else if(A_Rx_Command[7]=='3')
						{ BABAPP_TX(5); }
					else BABAPP_TX(0);
				}
			else if(A_Rx_Command[4]=='R')
				{ BABAPP_TX(2); }
			else if(A_Rx_Command[4]=='P')
				{ BABAPP_TX(6); }
			else BABAPP_TX(0);
		}
	else BABAPP_TX(0);
}

void DATA_APP_TX(char data)
{
	USART_SendData8(USART1,data);
	while (USART_GetFlagStatus(USART1, USART_FLAG_TXE) == RESET);
}

void BABAPP_TX(uint8_t number)
{
	uint8_t Sum =0;
	char cs1 =0;
	char cs2 =0;

	if(number==99)//----------------------------------Connect.
	{
		int i,z;
		char Tx_DATA[] = "S00,CONT,00E\r\n";
		uint8_t DS = sizeof(Tx_DATA)-1;
		//-------------------DATA---------------------//
		//--------------------------------------------//
		for(i=0;i<(DS-5);i++){Sum += Tx_DATA[i];}
		cs1=(Sum>>4)&0x0f;
		Tx_DATA[DS-5]=(cs1<10)?(cs1+'0'):((cs1-10)+'a');
		cs2= Sum & 0x0f;
		Tx_DATA[DS-4]=(cs2<10)?(cs2+'0'):((cs2-10)+'a');
		//-----------------Check Sum------------------//
		for(z=0;z<DS;z++)
		{DATA_APP_TX(Tx_DATA[z]);}//-----------TX_DATA.
	}

	else if(number==1)//-----------------------------TEST_OK.
	{
		int i,z;
		char Tx_DATA[] = "S02,TEST,OK,00E\r\n";
		uint8_t DS = sizeof(Tx_DATA)-1;
		//-------------------DATA---------------------//
		//--------------------------------------------//
		for(i=0;i<(DS-5);i++){Sum += Tx_DATA[i];}
		cs1=(Sum>>4)&0x0f;
		Tx_DATA[DS-5]=(cs1<10)?(cs1+'0'):((cs1-10)+'a');
		cs2= Sum & 0x0f;
		Tx_DATA[DS-4]=(cs2<10)?(cs2+'0'):((cs2-10)+'a');
		//-----------------Check Sum------------------//
		for(z=0;z<DS;z++)
		{DATA_APP_TX(Tx_DATA[z]);}//-----------TX_DATA.
	}
	else if(number==2)//-----------------------------REV_DATA.
	{
		int i,j,z;
		char Tx_DATA[] = "S11,REV1,0.00,000000,00E\r\n";
		uint8_t DS = sizeof(Tx_DATA)-1;
		//-------------------DATA---------------------//
		for(j=0;j<(sizeof(REV_Setting)-1);j++)
		{Tx_DATA[j+9]=REV_Setting[j];}
		//--------------------------------------------//
		for(i=0;i<(DS-5);i++){Sum += Tx_DATA[i];}
		cs1=(Sum>>4)&0x0f;
		Tx_DATA[DS-5]=(cs1<10)?(cs1+'0'):((cs1-10)+'a');
		cs2= Sum & 0x0f;
		Tx_DATA[DS-4]=(cs2<10)?(cs2+'0'):((cs2-10)+'a');
		//-----------------Check Sum------------------//
		for(z=0;z<DS;z++)
		{DATA_APP_TX(Tx_DATA[z]);}//-------DATA.
	}
	else if(number==3)//----------------------------DAT1_DATA.
	{
		int i,j,z;
		char Tx_DATA[] = "S11,DAT1,000,000,000,00E\r\n";
		uint8_t DS = sizeof(Tx_DATA)-1;
		//-------------------DATA---------------------//
		for(j=0;j<(sizeof(BAB_DAT1)-1);j++)
		{Tx_DATA[j+9]=BAB_DAT1[j];}
		//--------------------------------------------//
		for(i=0;i<(DS-5);i++){Sum += Tx_DATA[i];}
		cs1=(Sum>>4)&0x0f;
		Tx_DATA[DS-5]=(cs1<10)?(cs1+'0'):((cs1-10)+'a');
		cs2= Sum & 0x0f;
		Tx_DATA[DS-4]=(cs2<10)?(cs2+'0'):((cs2-10)+'a');
		//-----------------Check Sum------------------//
		for(z=0;z<DS;z++)
		{DATA_APP_TX(Tx_DATA[z]);}//-------DATA.
	}
	else if(number==4)//----------------------------DAT2_DATA.
	{
		int i,j,z;
		char Tx_DATA[] = "S12,DAT2,000,0,0,0000,00E\r\n";
		uint8_t DS = sizeof(Tx_DATA)-1;
		//-------------------DATA---------------------//
		for(j=0;j<(sizeof(BAB_DAT2)-1);j++)
		{Tx_DATA[j+9]=BAB_DAT2[j];}
		//--------------------------------------------//
		for(i=0;i<(DS-5);i++){Sum += Tx_DATA[i];}
		cs1=(Sum>>4)&0x0f;
		Tx_DATA[DS-5]=(cs1<10)?(cs1+'0'):((cs1-10)+'a');
		cs2= Sum & 0x0f;
		Tx_DATA[DS-4]=(cs2<10)?(cs2+'0'):((cs2-10)+'a');
		//-----------------Check Sum------------------//
		for(z=0;z<DS;z++)
		{DATA_APP_TX(Tx_DATA[z]);}//-------DATA.
	}
	else if(number==5)//----------------------------DAT3_DATA.
	{
		int i,j,z;
		char Tx_DATA[] = "S13,DAT3,0000,0000,000,00E\r\n";
		uint8_t DS = sizeof(Tx_DATA)-1;
		//-------------------DATA---------------------//
		for(j=0;j<(sizeof(BAB_DAT3)-1);j++)
		{Tx_DATA[j+9]=BAB_DAT3[j];}
		//--------------------------------------------//
		for(i=0;i<(DS-5);i++){Sum += Tx_DATA[i];}
		cs1=(Sum>>4)&0x0f;
		Tx_DATA[DS-5]=(cs1<10)?(cs1+'0'):((cs1-10)+'a');
		cs2= Sum & 0x0f;
		Tx_DATA[DS-4]=(cs2<10)?(cs2+'0'):((cs2-10)+'a');
		//-----------------Check Sum------------------//
		for(z=0;z<DS;z++)
		{DATA_APP_TX(Tx_DATA[z]);}//-------DATA.
	}
	else if(number==6)//-----------------------------PRC_DATA.
	{
		int i,j,z;
		char Tx_DATA[] = "S14,PRC1,0000,0000,0000,00E\r\n";
		uint8_t DS = sizeof(Tx_DATA)-1;
		//-------------------DATA---------------------//
		for(j=0;j<(sizeof(PRC_Data)-1);j++)
		{Tx_DATA[j+9]=PRC_Data[j];}
		//--------------------------------------------//
		for(i=0;i<(DS-5);i++){Sum += Tx_DATA[i];}
		cs1=(Sum>>4)&0x0f;
		Tx_DATA[DS-5]=(cs1<10)?(cs1+'0'):((cs1-10)+'a');
		cs2= Sum & 0x0f;
		Tx_DATA[DS-4]=(cs2<10)?(cs2+'0'):((cs2-10)+'a');
		//-----------------Check Sum------------------//
		for(z=0;z<DS;z++)
		{DATA_APP_TX(Tx_DATA[z]);}//-------DATA.
	}
	else if(number==0)//-------------------------------CS_ERR.
	{
		int i,z;
		char Tx_DATA[] = "S03,0000,ERR,00E\r\n";
		uint8_t DS = sizeof(Tx_DATA)-1;
		//-------------------DATA---------------------//
		Tx_DATA[4]=A_Rx_Command[4];
		Tx_DATA[5]=A_Rx_Command[5];
		Tx_DATA[6]=A_Rx_Command[6];
		Tx_DATA[7]=A_Rx_Command[7];
		//--------------------------------------------//
		for(i=0;i<(DS-5);i++){Sum += Tx_DATA[i];}
		cs1=(Sum>>4)&0x0f;
		Tx_DATA[DS-5]=(cs1<10)?(cs1+'0'):((cs1-10)+'a');
		cs2= Sum & 0x0f;
		Tx_DATA[DS-4]=(cs2<10)?(cs2+'0'):((cs2-10)+'a');
		//-----------------Check Sum------------------//
		for(z=0;z<DS;z++)
		{DATA_APP_TX(Tx_DATA[z]);}//-----------TX_DATA.
	}
}

void App_Data_TX_5s(void)
{
	if(DATA_TX_5s==1)
	{	
		BABAPP_TX(3);
		Delay(30);
		BABAPP_TX(4);
		Delay(30);
		BABAPP_TX(5);
		Delay(30);
		BABAPP_TX(6);
		DATA_TX_5s=0;
	}
}

//--------------------------------------------------------------------Uart1---//

//--------------------------------------------------------------------Uart2---//
extern void USART2_INTERRUPT_HANDLER(void)//  BAB110 <-> BB
{
	int i;
	uint8_t c;
	int Checksum=0;
	
	PRC_COM=1;
	TIM_8ms3=0;
	TIM_1S6=0;
	
	for(i=0;i<64;i++)
	{
		c=0;
		while(USART_GetFlagStatus(USART2,USART_FLAG_RXNE)==RESET)
			{	c++;	if(c==100){break;}	}
		B_Rx_Command[i] = USART_ReceiveData8(USART2);
		if(B_Rx_Command[i]=='\n'){break;}
	}
	
	Checksum=DATA_Check_Sum();
	
	if(Checksum==1)
		{
			DATA_Check_string();
		}
	else BlackBox_TX(9);

	USART_ClearFlag(USART2,USART_FLAG_RXNE);
}

void DATA_Check_string(void)
{
	if(B_Rx_Command[7]=='D')
		{
			if(B_Rx_Command[10]=='P')
				{
					PRC_Check();
					BlackBox_TX(6);//-------------DAT_PRC.
				}
			else if(B_Rx_Command[10]=='A'){BlackBox_TX(3);}//------------DAT.
			else BlackBox_TX(9);//--------------ERR.
		}
	else if(B_Rx_Command[7]=='P')
		{
			PRC_Check();
			BlackBox_TX(5);//----------------PRC.
		}
	else if(B_Rx_Command[7]=='R')
		{
			BlackBox_TX(2);//---------------REV.
		}
	else if(B_Rx_Command[7]=='B')
		{
			Bit_Rate_Set();
			if(BR_ERR==1){BlackBox_TX(0);BR_ERR=0;}
			else BlackBox_TX(4);//---------------BR.
		}
	else if(B_Rx_Command[7]=='T')
		{
			BlackBox_TX(1);//---------------TEST.
		}
	else BlackBox_TX(9);//--------------ERR.
}

void PRC_Check(void)
{
	int i;
	
	if(PRC_COM==1)
	{
		for(i=0;i<14;i++)
			{ PRC_Data[i]=B_Rx_Command[i+12]; }
	}
}

void Bit_Rate_Set(void)
{
	int i,j;
	uint32_t BB_Bitrate_TEST=0;
	BB_Bitrate=0;
	
	for(i=0;i<6;i++)
		{
			BB_Bitrate_TEST+=(uint8_t)(B_Rx_Command[10+i]-'0')*Square_10(5-i);//----Bit Rate.
		}
	
	if(BB_Bitrate_TEST==9600){	BB_Bitrate=BB_Bitrate_TEST;	}
	else if(BB_Bitrate_TEST==19200)
	{	
		BB_Bitrate=BB_Bitrate_TEST;
		for(j=0;j<6;j++)
		{
			FLASH_ProgramByte(0x1001+j,(BB_Bitrate % Square_10(6-j))/Square_10(5-j));
			while(FLASH_GetFlagStatus(FLASH_FLAG_EOP) == RESET){}
		}
	}
	else if(BB_Bitrate_TEST==38400)
	{	
		BB_Bitrate=BB_Bitrate_TEST;
		for(j=0;j<6;j++)
		{
			FLASH_ProgramByte(0x1001+j,(BB_Bitrate % Square_10(6-j))/Square_10(5-j));
			while(FLASH_GetFlagStatus(FLASH_FLAG_EOP) == RESET){}
		}
	}
	else if(BB_Bitrate_TEST==57600)
	{	
		BB_Bitrate=BB_Bitrate_TEST;
		for(j=0;j<6;j++)
		{
			FLASH_ProgramByte(0x1001+j,(BB_Bitrate % Square_10(6-j))/Square_10(5-j));
			while(FLASH_GetFlagStatus(FLASH_FLAG_EOP) == RESET){}
		}
	}
	else if(BB_Bitrate_TEST==115200)
	{	
		BB_Bitrate=BB_Bitrate_TEST;
		for(j=0;j<6;j++)
		{
			FLASH_ProgramByte(0x1001+j,(BB_Bitrate % Square_10(6-j))/Square_10(5-j));
			while(FLASH_GetFlagStatus(FLASH_FLAG_EOP) == RESET){}
		}
	}
	else	BR_ERR=1;
		
	sim();
	UART_Init();//---------------------------------Reset Uart_Init.
	rim();
}

void DATA_Send_TX(char data)
{
	USART_SendData8(USART2,data);
	while (USART_GetFlagStatus(USART2, USART_FLAG_TXE) == RESET);
}

void BlackBox_TX(uint8_t number)
{
	uint8_t Sum =0;
	char cs1 =0;
	char cs2 =0;

	if(number==1)//-----------------------------------TEST_OK.
	{
		int i,z;
		char Tx_DATA[] = "$BAB110,TEST,OK,00\n";
		uint8_t DS = sizeof(Tx_DATA)-1;
		//-------------------DATA---------------------//
		//--------------------------------------------//
		for(i=0;i<(DS-3);i++){Sum += Tx_DATA[i];}
		cs1=(Sum>>4)&0x0f;
		Tx_DATA[DS-3]=(cs1<10)?(cs1+'0'):((cs1-10)+'a');
		cs2= Sum & 0x0f;
		Tx_DATA[DS-2]=(cs2<10)?(cs2+'0'):((cs2-10)+'a');
		//-----------------Check Sum------------------//
		for(z=0;z<DS;z++)
		{DATA_Send_TX(Tx_DATA[z]);}//-----------TX_DATA.
	}
	else if(number==2)//-----------------------------REV_DATA.
	{
		int i,j,z;
		char Tx_DATA[] = "$BAB110,REV1,0.00,000000,00\n";
		uint8_t DS = sizeof(Tx_DATA)-1;
		//-------------------DATA---------------------//
		for(j=0;j<(sizeof(REV_Setting)-1);j++)
		{Tx_DATA[j+13]=REV_Setting[j];}
		//--------------------------------------------//
		for(i=0;i<(DS-3);i++){Sum += Tx_DATA[i];}
		cs1=(Sum>>4)&0x0f;
		Tx_DATA[DS-3]=(cs1<10)?(cs1+'0'):((cs1-10)+'a');
		cs2= Sum & 0x0f;
		Tx_DATA[DS-2]=(cs2<10)?(cs2+'0'):((cs2-10)+'a');
		//-----------------Check Sum------------------//
		for(z=0;z<DS;z++)
		{DATA_Send_TX(Tx_DATA[z]);}//-------DATA.
	}
	else if(number==3)//-----------------------------DAT_DATA.
	{
		int i,j,z;
		char Tx_DATA[] = "$BAB110,DATA,000,000,0,0,000,00\n";
		uint8_t DS = sizeof(Tx_DATA)-1;
		//-------------------DATA---------------------//
		for(j=0;j<(sizeof(BAB_DATA)-1);j++)
		{Tx_DATA[j+13]=BAB_DATA[j];}
		//--------------------------------------------//
		for(i=0;i<(DS-3);i++){Sum += Tx_DATA[i];}
		cs1=(Sum>>4)&0x0f;
		Tx_DATA[DS-3]=(cs1<10)?(cs1+'0'):((cs1-10)+'a');
		cs2= Sum & 0x0f;
		Tx_DATA[DS-2]=(cs2<10)?(cs2+'0'):((cs2-10)+'a');
		//-----------------Check Sum------------------//
		for(z=0;z<DS;z++)
		{DATA_Send_TX(Tx_DATA[z]);}//-------DATA.
	}
	else if(number==4)//--------------------------------BR_OK.
	{
		int i,z;
		char Tx_DATA[] = "$BAB110,BITR,OK,00\n";
		uint8_t DS = sizeof(Tx_DATA)-1;
		//-------------------DATA---------------------//
		//--------------------------------------------//
		for(i=0;i<(DS-3);i++){Sum += Tx_DATA[i];}
		cs1=(Sum>>4)&0x0f;
		Tx_DATA[DS-3]=(cs1<10)?(cs1+'0'):((cs1-10)+'a');
		cs2= Sum & 0x0f;
		Tx_DATA[DS-2]=(cs2<10)?(cs2+'0'):((cs2-10)+'a');
		//-----------------Check Sum------------------//
		for(z=0;z<DS;z++)
		{DATA_Send_TX(Tx_DATA[z]);}//-----------TX_DATA.
	}
	else if(number==5)//-------------------------------PRC_OK.
	{
		int i,z;
		char Tx_DATA[] = "$BAB110,PRC1,OK,00\n";
		uint8_t DS = sizeof(Tx_DATA)-1;
		//-------------------DATA---------------------//
		//--------------------------------------------//
		for(i=0;i<(DS-3);i++){Sum += Tx_DATA[i];}
		cs1=(Sum>>4)&0x0f;
		Tx_DATA[DS-3]=(cs1<10)?(cs1+'0'):((cs1-10)+'a');
		cs2= Sum & 0x0f;
		Tx_DATA[DS-2]=(cs2<10)?(cs2+'0'):((cs2-10)+'a');
		//-----------------Check Sum------------------//
		for(z=0;z<DS;z++)
		{DATA_Send_TX(Tx_DATA[z]);}//-----------TX_DATA.
	}
	else if(number==6)//-----------------------------DAT_DATA.
	{
		int i,j,z;
		char Tx_DATA[] = "$BAB110,DATP,000,000,0,0,000,00\n";
		uint8_t DS = sizeof(Tx_DATA)-1;
		//-------------------DATA---------------------//
		for(j=0;j<(sizeof(BAB_DATA)-1);j++)
		{Tx_DATA[j+13]=BAB_DATA[j];}
		//--------------------------------------------//
		for(i=0;i<(DS-3);i++){Sum += Tx_DATA[i];}
		cs1=(Sum>>4)&0x0f;
		Tx_DATA[DS-3]=(cs1<10)?(cs1+'0'):((cs1-10)+'a');
		cs2= Sum & 0x0f;
		Tx_DATA[DS-2]=(cs2<10)?(cs2+'0'):((cs2-10)+'a');
		//-----------------Check Sum------------------//
		for(z=0;z<DS;z++)
		{DATA_Send_TX(Tx_DATA[z]);}//-------DATA.
	}
	else if(number==9)//-----------------------Command ID ERR.
	{
		int i,z;
		char Tx_DATA[] = "$BAB110,0000,ERR,00\n";
		uint8_t DS = sizeof(Tx_DATA)-1;
		//-------------------DATA---------------------//
		Tx_DATA[8]=B_Rx_Command[7];
		Tx_DATA[9]=B_Rx_Command[8];
		Tx_DATA[10]=B_Rx_Command[9];
		Tx_DATA[11]=B_Rx_Command[10];
		//--------------------------------------------//
		for(i=0;i<(DS-3);i++){Sum += Tx_DATA[i];}
		cs1=(Sum>>4)&0x0f;
		Tx_DATA[DS-3]=(cs1<10)?(cs1+'0'):((cs1-10)+'a');
		cs2= Sum & 0x0f;
		Tx_DATA[DS-2]=(cs2<10)?(cs2+'0'):((cs2-10)+'a');
		//-----------------Check Sum------------------//
		for(z=0;z<DS;z++)
		{DATA_Send_TX(Tx_DATA[z]);}//-----------TX_DATA.
	}
	else if(number==0)//----------------------------------ERR.
	{
		int i,z;
		char Tx_DATA[] = "$BAB110,ERR,00\n";
		uint8_t DS = sizeof(Tx_DATA)-1;
		//-------------------DATA---------------------//
		//--------------------------------------------//
		for(i=0;i<(DS-3);i++){Sum += Tx_DATA[i];}
		cs1=(Sum>>4)&0x0f;
		Tx_DATA[DS-3]=(cs1<10)?(cs1+'0'):((cs1-10)+'a');
		cs2= Sum & 0x0f;
		Tx_DATA[DS-2]=(cs2<10)?(cs2+'0'):((cs2-10)+'a');
		//-----------------Check Sum------------------//
		for(z=0;z<DS;z++)
		{DATA_Send_TX(Tx_DATA[z]);}//-----------TX_DATA.
	}
}
//--------------------------------------------------------------------Uart2---//

/*-------------------------  BAB-100 UART SET-UP -----------------------------*/
void UART_Init(void)
{
	USART_DeInit(USART1);
	USART_DeInit(USART2);
	
	GPIO_ExternalPullUpConfig(BLE_PORT, BLE_TX_PIN, ENABLE);
	GPIO_ExternalPullUpConfig(BLE_PORT, BLE_RX_PIN, ENABLE);
	
	GPIO_ExternalPullUpConfig(COM_PORT, COM_TX_PIN, ENABLE);
	GPIO_ExternalPullUpConfig(COM_PORT, COM_RX_PIN, ENABLE);
	
	USART_Init(USART1,BA_Bitrate, USART_WordLength_8b, USART_StopBits_1, USART_Parity_No,(USART_Mode_TypeDef)(USART_Mode_Tx | USART_Mode_Rx));
	
	USART_Init(USART2,BB_Bitrate, USART_WordLength_8b, USART_StopBits_1, USART_Parity_No,(USART_Mode_TypeDef)(USART_Mode_Tx | USART_Mode_Rx));
	
	USART_ITConfig(USART1, USART_IT_RXNE, ENABLE);
	USART_ITConfig(USART2, USART_IT_RXNE, ENABLE);
	
	USART_Cmd(USART1,ENABLE);
	USART_Cmd(USART2,ENABLE);
}

void CELLB_Calculation(void)
{	
	int i;
	//---------------------------------------BAT_Volt
	BAB_DATA[0]='0'+(BAT_Volt/100);
	BAB_DATA[1]='0'+((BAT_Volt%100)/10);
	BAB_DATA[2]='0'+(BAT_Volt%10);
	BAB_DAT1[0]='0'+(VIN_Volt/100);
	BAB_DAT1[1]='0'+((VIN_Volt%100)/10);
	BAB_DAT1[2]='0'+(VIN_Volt%10);
	if(DIS_Lock==1)
	{	BAB_DAT1[4]='0',BAB_DAT1[5]='0',BAB_DAT1[6]='0';}
	else
	{
		BAT_Volt1=BAT_Volt-2;
		BAB_DAT1[4]='0'+(BAT_Volt1/100);
		BAB_DAT1[5]='0'+((BAT_Volt1%100)/10);
		BAB_DAT1[6]='0'+(BAT_Volt1%10);
	}
	//----------------------------------------Percent
	if(STATE_CHG !=0 && CHG_State == 1) {	// 완충상태
		Percent_P=1;
		Percent_N=0; 
		RepCap=Percentgauge*cap_percent;
	} else if(BAT_Volt <= 115) {	// 출력중단
		Percent_N=1;
		Percent_P=0; 
		RepCap=Percentgauge*cap_percent;
	} else if(CHG_ST == '1') {	//충전중
		Percent_P=0;
		Percent_N=0;
		if (BAT_Volt >= 114) {
			if (Percent_1s == 1) {
				RepCap = (RepCap + 2.611);
				Percent_1s = 0;
			}
		}
		Percentgauge = RepCap/cap_percent;
		if (Percentgauge > 100) Percentgauge = 100;
	} else if (CHG_ST == '3') {	// 방전중
		Percent_P=0;
		Percent_N=0;
		if(Percent_1s==1)
		{
			if(RepCap>=DIS_CURR) {
				RepCap = (RepCap-DIS_CURR);
			}
			Percent_1s = 0;
		}
		Percentgauge = RepCap/cap_percent;
		if (Percentgauge < 1) {
			Percentgauge = 1;
		} else if (Percentgauge >= 100) {
			Percentgauge = 100;
		}
	}
	
	BAB_DATA[4]='0'+(Percentgauge/100);
	BAB_DATA[5]='0'+((Percentgauge%100)/10);
	BAB_DATA[6]='0'+((Percentgauge%10)/1);
	BAB_DAT1[8]='0'+(Percentgauge/100);
	BAB_DAT1[9]='0'+((Percentgauge%100)/10);
	BAB_DAT1[10]='0'+((Percentgauge%10)/1);
	//-------------------------------------Acc_on_off
	ACC_ST='0'+((ACC_Volt>=ACC_LOW)?(1):(0));
	if(BAB_DAT2[6]!=ACC_ST)
	{
		BAB_DATA[10]=ACC_ST;
		BAB_DAT2[6]=ACC_ST;
		TIM_1S3=5;
	}
	//-----------------------------------Charge state
	if(NTC_ON==1) {
		BAB_DATA[8]='4';
		CHG_ST='5';			// 고온 경고
	} else if (LCHG_State == 1) {
		BAB_DATA[8]='3';
		CHG_ST='4';			// 출력 중단
	} else {
		BAB_DATA[8]='0'+ (CHG_State+FULL_STATE);
		
		if ((VIN_Volt<=50)&&(D_Current<=50)) {	
			CHG_ST='0';		// 입력전원 없음, 출력전류 없음 = Idle
		} else if(BAB_DATA[8]=='1') {	
			CHG_ST='1';		// 충전 중
		} else if(BAB_DATA[8]=='2') {	
			CHG_ST='2';		// 완충 상태
		} else {
			CHG_ST='3';		// 있을 수 없음 = 에러
		}
	}
	
	if(BAB_DAT2[4]!=CHG_ST)
	{
		BAB_DAT2[4]=CHG_ST;
		TIM_1S3=5;
	}
	//------------------------------------temperature
	NTC_Temp=I2C_Data[9];
	if(NTC_Temp>=0xDD){NTC_Temp1=((0x100-NTC_Temp)-1);}
	else{NTC_Temp1=NTC_Temp+100;}
	
	BAB_DATA[12]='0'+((NTC_Temp1%1000)/100);
	BAB_DATA[13]='0'+((NTC_Temp1%100)/10);
	BAB_DATA[14]='0'+(NTC_Temp1%10);
	
	BAB_DAT2[0]='0'+((NTC_Temp1%1000)/100);
	BAB_DAT2[1]='0'+((NTC_Temp1%100)/10);
	BAB_DAT2[2]='0'+(NTC_Temp1%10);
	//---------------------------------Discharge-curr.
	if(BAB_DAT2[4]=='1'||BAB_DAT2[4]=='2')
	{
		//if(ADC_OUT<ADC_BBT){DISCHG_AVG=300;}
		//else DISCHG_AVG=0;
		D_Current=0,DIS_AVG=0,DISCHG_AVG=0;
		
		if(PRC_COM==1)
		{
			BAB_DAT3[0]='0';
			BAB_DAT3[1]='3';
			BAB_DAT3[2]='0';
			BAB_DAT3[3]='0';
		}
		else
		{
			BAB_DAT3[0]='F';
			BAB_DAT3[1]='F';
			BAB_DAT3[2]='F';
			BAB_DAT3[3]='F';
		}
	}
	else if(DIS_Lock==1)
	{
		D_Current=0,DIS_AVG=0,DISCHG_AVG=0;	
		
		BAB_DAT3[0]='0'+(D_Current%10000)/1000;
		BAB_DAT3[1]='0'+(D_Current%1000)/100;
		BAB_DAT3[2]='0'+(D_Current%100)/10;
		BAB_DAT3[3]='0';
	}
	else
		{
			//-----------------------------------------------//
			Curr1=I2C_Data[13];
			Curr2=I2C_Data[12];
			D_Current=((0x10000-((Curr1<<8)+Curr2))/3.65);	// <-- 4.06 --> 3.49 --> 3.78 --> 3.65
			//-----------------------------------------------//
			#ifdef KBW_LOW_LOAD
				if(D_Current>=5000||D_Current<50){D_Current=0,DIS_AVG=0,DISCHG_AVG=0;}
				else if(D_Current<100){D_Current=100;}
			#else
				// KBW : 2019.09.26
				if(D_Current>=5000
				#ifndef SJB_DCHG_TEST
					|| D_Current < 20
				#endif
					) 
				{
					D_Current=0,DIS_AVG=0,DISCHG_AVG=0;
				}
			#endif

			#if 0	//
			if(Dis_j>60)
			{
				int z;
				DIS_AVG=0;
				
				for(z=0;z<60;z++)
				{DIS_AVG+=DischgAVG[z];}
				DISCHG_AVG=((DIS_AVG/60)/10)*10;

				#if 0
				if(DISCHG_Current!=DISCHG_AVG&&DISCHG_AVG>=50)
				{
					DISCHG_Current=DISCHG_AVG;
					
					#ifdef KBW_LOW_LOAD
					FLASH_ProgramByte(0x100B,DISCHG_Current);
					while(FLASH_GetFlagStatus(FLASH_FLAG_EOP) == RESET){}
					#endif
				}
				#endif
				DISCHG_Current=DISCHG_AVG;
				if(DISCHG_Current < 20) 
				{
					DISCHG_Current = 0;
				}
				
				Dis_j=0;
			}
			else if(Dis_j>=1){DischgAVG[Dis_j-1]=D_Current;}
			#else			
				DIS_AVG += D_Current;
				
				if (Dis_j < 3)
				{
					//-------------------------------------------------------
					DISCHG_AVG = (uint16_t)(DIS_AVG / Dis_j);
				}
				else
				{
					//-------------------------------------------------------
					DISCHG_AVG = (uint16_t)(DIS_AVG / 3);
					DIS_AVG -= DISCHG_AVG;
				}

				DISCHG_Current=DISCHG_AVG;
			#endif

			#ifdef DISCHG_TIME_CALC
				if(Dis_j>8)
				{
					DIS_CURR=(float)DISCHG_Current/3600;
					Dis_j=4;
				}
			#else
				DIS_CURR=(float)DISCHG_Current/3600;
			#endif
			
			BAB_DAT3[0]='0'+(D_Current%10000)/1000;
			BAB_DAT3[1]='0'+(D_Current%1000)/100;
			BAB_DAT3[2]='0'+(D_Current%100)/10;
			if (D_Current >= 30) BAB_DAT3[3]='0';	// 30 mA보다 큰경우 끝자리는 0으로 표시
			else BAB_DAT3[3]='0'+(uint8_t)(D_Current%10);	// 30보다 작으면 끝자리 표시
		}
	//---------------------------------Charge-curr.
	if(BAB_DAT2[4]=='1')
	{	
		CalcCurrent = C_Current=MAX_CHG_CURRENT;		//2019.11.06
	}
	else if(BAB_DAT2[4]=='2')
		{	C_Current=100;	}
	else C_Current=0;
	
	BAB_DAT2[8]='0'+(C_Current%10000)/1000;
	BAB_DAT2[9]='0'+(C_Current%1000)/100;
	//---------------------------------Discharge_Time.
	if(BAB_DAT2[4]=='3')
	{
		//방전중
		if(Percentgauge==0){DISCHG_TIME=0;}
		else
		{
			DISCHG_TIME=RepCap/(DIS_CURR*60);
			if(DISCHG_TIME==0){DISCHG_TIME=1;}
			else if (D_Current < 30) {
				DISCHG_TIME = 0;
			}
		}
	}
	else DISCHG_TIME=0;	
	
	if(DISCHG_TIME>=5940){DISCHG_TIME=5940;}
	
	BAB_DAT3[5]='0'+(DISCHG_TIME%10000)/1000;
	BAB_DAT3[6]='0'+(DISCHG_TIME%1000)/100;
	BAB_DAT3[7]='0'+(DISCHG_TIME%100)/10;
	BAB_DAT3[8]='0'+(DISCHG_TIME%10)/1;
	//---------------------------------Charge_Time.
	if(BAB_DAT2[4]=='1')
	{
		//완충
		if(FullCap>=RepCap){
			ChgCap = FullCap - RepCap;
		} else {
			ChgCap = 0;
		}
		
		if (Percentgauge == 100) {
			CHG_TIME = 0;
		} else {
			#if 1
				#ifdef NEW_HW_CHG
				//BAB-115
					CHG_TIME=(float)(ChgCap/141.66);	//2019.11.06	: 141.66 = 9720 / (( 9720 / 8500 ) * 60)	//8500은 용량이 아니고 충전전류
				#else
				//BAB-110
					CHG_TIME=(float)(ChgCap/156.66);	//KBW			: 156.66 = 9720 / (( 9720 / 9400 ) * 60)	//9400은 용량이 아니고 충전전류
				#endif
			#endif
			#if 0
			CHG_TIME=(float)(ChgCap/(FullCap / ((FullCap / CalcCurrent) * 60)));
			#endif
			
			if (CHG_TIME == 0) {
				CHG_TIME = 1;
			}
		}
	} else {
		CHG_TIME = 0;
	}
	
	BAB_DAT3[10]='0'+(CHG_TIME%1000)/100;
	BAB_DAT3[11]='0'+(CHG_TIME%100)/10;
	BAB_DAT3[12]='0'+(CHG_TIME%10)/1;
	//---------------------------------PRC_No_Data.
	if (PRC_COM == 0) {
		for(i=0;i<14;i++) { 
			PRC_Data[i] = PRC_NoCOM[i]; 
		}
	}
}

void BLE_SET_NAME(void)
{
	int i;
	i=GPIO_ReadInputDataBit(BLE_C_PORT,BLE_C_PIN);
	if(0==i) //BLE_Connect_Check
	{
		/*
		BA_Bitrate=115200;
		printf("AT+UART=9600\r\n");
		BA_Bitrate=9600;
		sim();
		UART_Init();//--------Reset Uart_Init.
		rim();
		Delay_ms(10);*/
		
		printf("AT+INFO?\r\n");
		Delay_ms(5);
		printf("AT+MANUF=IVT-%c%c%c%c\r\n",MAD1,MAD2,MAD3,MAD4);
		Delay_ms(5);
		printf("AT+TXPWR=7\r\n");
		Delay_ms(5);
		printf("AT+ADVINTERVAL=520\r\n");
		Delay_ms(5);

		#ifdef POWERON_SEND_BT_INFO
		//___debug("[BLE_SET_NAME]");
		#endif
	}
}
//---------------------------------------------------------------------------BAB110-UART//

//------------------------------------------------------------------------------------I2C.
void I2C1_Init(void)
{
	GPIO_Init(I2C_PORT,SDA_PIN,GPIO_Mode_Out_PP_High_Fast);  // SDA_PIN
	GPIO_Init(I2C_PORT,SCL_PIN,GPIO_Mode_Out_PP_Low_Fast);  // SCL_PIN
}

void I2C_Datawrite_Reset(void)
{
	if(GPIO_ReadInputDataBit(I2C_PORT, SDA_PIN)!=0)
	{
		I2C_START();
		I2C_TxData(SLAVE_ADDRESS);
		I2C_TxData(Config2);
		I2C_TxData(Reset_L);
		I2C_TxData(Reset_M);
		I2C_STOP();
		_fgReset = 1;
	}
	else I2C_STOP();
}

void I2C_Dataread(void)
{
	if(I2C_ON==1)
	{	
		#ifdef PERCENT_DEBUG
			if (_5secCnt == 0)
			{
				sprintf(_dBuf, "%d , %d, %d, %d, %f, %d\r\n", BAT_Volt &0xFF, Percentgauge &0xFF, I2C_Data[5] &0xFF,D_Current,DIS_CURR,DISCHG_TIME); 
				___debug(_dBuf);
			}
			_5secCnt = (_5secCnt+1)%3;
		#endif

		#ifdef CHECK_PCM_STATE
			if (pcmStateEntered)
			{
				old_pcmStateEntered = pcmStateEntered;
				return;
			}

			if (old_pcmStateEntered) 
			{
				old_pcmStateEntered = 0;
				pcmStableTimeCnt = 2;
				I2C_Datawrite_Reset();
				return;
			}
			else if (pcmStableTimeCnt > 0)
			{
				pcmStableTimeCnt--;	//안정화 될 때까지 기다림.
				return;
			}
		#endif

		sim();
		if(GPIO_ReadInputDataBit(I2C_PORT, SDA_PIN)!=0)
		{
			int i;
			
			I2C_START();
			I2C_TxData(SLAVE_ADDRESS);
			I2C_TxData(SOC);
			I2C_START();
			I2C_TxData(SLAVE_ADDRESS|0x01);
			for(i=0;i<32;i++)
			{I2C_Data[i]=I2C_RxData();}
			I2C_STOP();
		}
		else I2C_STOP();
		rim();

		if (_fgPercentRead == 0)
		{
			// 사용안함 --> ADC 전압으로 계산
			// Percentgauge=I2C_Data[5];
			// RepCap=Percentgauge*cap_percent;
			_fgPercentRead = 1;
		}

		Dis_j++;
		I2C_ON=0;
	}
}

void I2C_START(void)
{
	GPIO_SetBits(I2C_PORT, SDA_PIN);
	//Delay(3);
	GPIO_SetBits(I2C_PORT, SCL_PIN);
	//Delay(3);
	GPIO_ResetBits(I2C_PORT, SDA_PIN);
	while(GPIO_ReadInputDataBit(I2C_PORT, SDA_PIN) != 0);	// Wait for clock stretching
	//Delay(3);
	GPIO_ResetBits(I2C_PORT, SCL_PIN);
}

void I2C_STOP(void)
{
	//Delay(3);
	GPIO_ResetBits(I2C_PORT, SDA_PIN);
	//Delay(3);
	GPIO_SetBits(I2C_PORT, SCL_PIN);
	//Delay(3);
	GPIO_SetBits(I2C_PORT, SDA_PIN);
	//while(GPIO_ReadInputDataBit(I2C_PORT, SDA_PIN) == 0);	// Wait for clock stretching
	GPIO_ResetBits(I2C_PORT, SCL_PIN);
}

void I2C_TxData(uint8_t data)
{
	uint8_t bits;
	uint8_t temp = data;
	uint8_t ack;

	for(bits=8;bits!=0;bits--)
	{
		//Delay(3);
		if ( temp & (1<<7))
		{GPIO_SetBits(I2C_PORT, SDA_PIN);}
		else
		{GPIO_ResetBits(I2C_PORT, SDA_PIN);}
		//Delay(3);
		GPIO_SetBits(I2C_PORT, SCL_PIN);
		while(GPIO_ReadInputDataBit(I2C_PORT, SCL_PIN) == 0);	// Wait for clock stretching
		//Delay(3);
		GPIO_ResetBits(I2C_PORT, SCL_PIN);
		temp = temp << 1;
	}
	//Delay(3);
	GPIO_SetBits(I2C_PORT, SDA_PIN);
	//Delay(3);
	GPIO_SetBits(I2C_PORT, SCL_PIN);
	while(GPIO_ReadInputDataBit(I2C_PORT, SCL_PIN) == 0);	// Wait for clock stretching
	//while(GPIO_ReadInputDataBit(I2C_PORT, SDA_PIN)==0);// ----- ack
	//Delay(3);
	GPIO_ResetBits(I2C_PORT, SCL_PIN);
	//Delay(3);
	GPIO_ResetBits(I2C_PORT, SDA_PIN);
	//Delay_ms(1);
}

uint8_t I2C_RxData(void)
{
	uint8_t data=0;
	uint8_t bits;

	GPIO_SetBits(I2C_PORT, SDA_PIN); // SDA Pin Open.

	for(bits=8;bits!=0;bits--)
	{
		GPIO_SetBits(I2C_PORT , SCL_PIN);
		while(GPIO_ReadInputDataBit(I2C_PORT, SCL_PIN) == 0);	// Wait for clock stretching
		//Delay(3);
		data = (data << 1);
		if( GPIO_ReadInputDataBit(I2C_PORT, SDA_PIN))
			{data += 0x01;}
		GPIO_ResetBits(I2C_PORT, SCL_PIN);
		//Delay(3);
	}
	GPIO_ResetBits(I2C_PORT, SDA_PIN);
	//Delay(3);
	GPIO_SetBits(I2C_PORT, SCL_PIN);
	while(GPIO_ReadInputDataBit(I2C_PORT, SCL_PIN) == 0);	// Wait for clock stretching
	//Delay(3);
	GPIO_ResetBits(I2C_PORT, SCL_PIN);
	GPIO_SetBits(I2C_PORT, SDA_PIN); // SDA Pin Open.

	return data;
}
//------------------------------------------------------------------------------------I2C.

static void Timer4Init(void)
{
 //Timer4 8bit basic Timer Init.
 //16MHz/128=125KHz -> 8us
 TIM4_DeInit();
 TIM4_TimeBaseInit(TIM4_Prescaler_128,124);
 TIM4_ClearFlag(TIM4_FLAG_Update);
 TIM4_ITConfig(TIM4_IT_Update,ENABLE);
 TIM4_Cmd(ENABLE);
}

void Port_init(void)
{
  GPIO_Init(VIN_PORT,VIN_PIN,GPIO_Mode_In_FL_No_IT); // VIN_ADC
	GPIO_Init(BAT_PORT,BAT_PIN,GPIO_Mode_In_FL_No_IT); // BAT_ADC
	GPIO_Init(NTC_PORT,NTC_PIN,GPIO_Mode_In_FL_No_IT); // NTC_ADC
	GPIO_Init(ACC_PORT,ACC_PIN,GPIO_Mode_In_FL_No_IT); // ACC_ADC
	
	GPIO_Init(STATE_PORT,STATE_PIN,GPIO_Mode_In_FL_No_IT); // STATE1
	
	GPIO_Init(BLE_C_PORT,BLE_C_PIN,GPIO_Mode_In_FL_No_IT); // BLE_Connect
	
	GPIO_Init(ALRT_PORT,ALRT_PIN,GPIO_Mode_In_FL_No_IT); // ALRT
	
	GPIO_Init(Dischg_PORT,Dischg_PIN,GPIO_Mode_Out_PP_High_Fast);  //Dischg_on_off
	GPIO_SetBits(Dischg_PORT,Dischg_PIN);

	GPIO_Init(CHG_RUN_PORT,CHG_RUN_PIN,GPIO_Mode_Out_PP_High_Fast);  //CHG_RUN_ON_OFF
	
	GPIO_Init(BLE_U_PORT,BLE_U_PIN,GPIO_Mode_Out_PP_High_Fast); //uart sw
	
	GPIO_Init(CHG_LED_PORT,CHG_LED_PIN,GPIO_Mode_Out_PP_High_Fast);  //CHG_LED
	GPIO_Init(FULL_LED_PORT,FULL_LED_PIN,GPIO_Mode_Out_PP_High_Fast);  //FULL_LED
	
	GPIO_Init(Speak_PORT,Speak_PIN,GPIO_Mode_Out_PP_High_Slow);  //Speak
}

void LED_CTR(LEDTypeDef Selection)
{
	switch(Selection)
	{
		case RUN_LED: 		GPIO_ResetBits(CHG_LED_PORT,CHG_LED_PIN);
											GPIO_ResetBits(FULL_LED_PORT,FULL_LED_PIN);
											break;
		
		case STOP_LED: 		GPIO_SetBits(CHG_LED_PORT,CHG_LED_PIN);
											if(BLE_Con==0){GPIO_SetBits(FULL_LED_PORT,FULL_LED_PIN);}
											break;
		
		case CHG_LED:			GPIO_ResetBits(CHG_LED_PORT,CHG_LED_PIN);
											if(BLE_Con==0){GPIO_SetBits(FULL_LED_PORT,FULL_LED_PIN);}
											break;
		
		case FULL_LED:		GPIO_SetBits(CHG_LED_PORT,CHG_LED_PIN);
											if(BLE_Con==0){GPIO_ResetBits(FULL_LED_PORT,FULL_LED_PIN);}
											break;
		
		case waiting_LED:	if(waiting_Time==0)
											{
												GPIO_SetBits(CHG_LED_PORT,CHG_LED_PIN);
												if(BLE_Con==0){GPIO_SetBits(FULL_LED_PORT,FULL_LED_PIN);}
											}
											else if(waiting_Time==1)
											{
												GPIO_ResetBits(CHG_LED_PORT,CHG_LED_PIN);
												if(BLE_Con==0){GPIO_SetBits(FULL_LED_PORT,FULL_LED_PIN);}
											}
											break;
											
		case LOW_LED:			if(waiting_Time==0)
											{
												GPIO_SetBits(CHG_LED_PORT,CHG_LED_PIN);
												GPIO_SetBits(FULL_LED_PORT,FULL_LED_PIN);
											}
											else if(waiting_Time==1)
											{
												GPIO_ResetBits(CHG_LED_PORT,CHG_LED_PIN);
												GPIO_ResetBits(FULL_LED_PORT,FULL_LED_PIN);
											}
											break;
											
		case Short_LED:		GPIO_ResetBits(CHG_LED_PORT,CHG_LED_PIN);
											GPIO_ResetBits(FULL_LED_PORT,FULL_LED_PIN);
											break;
		
		case Warning_LED:	if(Warning_Time%5000==0)
											{
												GPIO_SetBits(CHG_LED_PORT,CHG_LED_PIN);
												GPIO_ResetBits(FULL_LED_PORT,FULL_LED_PIN);
											}
											else if(Warning_Time%2500==0)
											{
												GPIO_ResetBits(CHG_LED_PORT,CHG_LED_PIN);
												GPIO_SetBits(FULL_LED_PORT,FULL_LED_PIN);
											}
											break;
											
		case BLE_C_LED:		if(Tim_500ms==0||Tim_500ms==2)
											{
												if(BAB_DATA[10]!=2)
												{GPIO_SetBits(FULL_LED_PORT,FULL_LED_PIN);}
												else GPIO_ResetBits(FULL_LED_PORT,FULL_LED_PIN);
											}
											else if(Tim_500ms==1||Tim_500ms==3)
											{
												if(BAB_DATA[10]!=2)
												{GPIO_ResetBits(FULL_LED_PORT,FULL_LED_PIN);}
												else GPIO_SetBits(FULL_LED_PORT,FULL_LED_PIN);
											}
											break;
	}
}

void BLE_Connect_Check(void)
{
	if(BLE_LED==1)
	{	
		if(BLE_Con==1)
		{	LED_CTR(BLE_C_LED);	}	
	}
}

uint16_t Channel_7_ReadADC(void)//VIN_ADC
{
  uint16_t result;
  volatile uint8_t j;
	
	ADC_DeInit(ADC1);
	ADC_Init(ADC1, ADC_ConversionMode_Continuous, ADC_Resolution_12Bit, ADC_Prescaler_2);
	ADC_SamplingTimeConfig(ADC1, ADC_Group_SlowChannels, ADC_SamplingTime_384Cycles);
	ADC_Cmd(ADC1, ENABLE);
	ADC_ChannelCmd(ADC1, ADC_Channel_7, ENABLE);/*--------Channel_7----*/
	ADC_SoftwareStartConv(ADC1);
	for(j=5 ; j>0 ; j--);  //delay for stabilization
	while(!(ADC1->SR & 0x01)); //wait for end of conversion
	result = ADC_GetConversionValue(ADC1);
  return result;
}

uint16_t Channel_3_ReadADC(void)//BAT_ADC
{
  uint16_t result;
  volatile uint8_t j;
	
	ADC_DeInit(ADC1);
	ADC_Init(ADC1, ADC_ConversionMode_Continuous, ADC_Resolution_12Bit, ADC_Prescaler_2);
	ADC_SamplingTimeConfig(ADC1, ADC_Group_SlowChannels, ADC_SamplingTime_384Cycles);
	ADC_Cmd(ADC1, ENABLE);
	ADC_ChannelCmd(ADC1, ADC_Channel_3, ENABLE);/*--------Channel_3----*/
	ADC_SoftwareStartConv(ADC1);
	for(j=5 ; j>0 ; j--);  //delay for stabilization
	while(!(ADC1->SR & 0x01)); //wait for end of conversion
	result = ADC_GetConversionValue(ADC1);
  return result;
}

uint16_t Channel_4_ReadADC(void)//ACC_ADC
{
  uint16_t result;
  volatile uint8_t j;
	
	ADC_DeInit(ADC1);
	ADC_Init(ADC1, ADC_ConversionMode_Continuous, ADC_Resolution_12Bit, ADC_Prescaler_2);
	ADC_SamplingTimeConfig(ADC1, ADC_Group_SlowChannels, ADC_SamplingTime_384Cycles);
	ADC_Cmd(ADC1, ENABLE);
	ADC_ChannelCmd(ADC1, ADC_Channel_4, ENABLE);/*--------Channel_4----*/
	ADC_SoftwareStartConv(ADC1);
	for(j=5 ; j>0 ; j--);  //delay for stabilization
	while(!(ADC1->SR & 0x01)); //wait for end of conversion
	result = ADC_GetConversionValue(ADC1);
  return result;
}

uint16_t Channel_1_ReadADC(void)//OUT_ADC
{
  uint16_t result;
  volatile uint8_t j;
	
	ADC_DeInit(ADC1);
	ADC_Init(ADC1, ADC_ConversionMode_Continuous, ADC_Resolution_12Bit, ADC_Prescaler_2);
	ADC_SamplingTimeConfig(ADC1, ADC_Group_SlowChannels, ADC_SamplingTime_384Cycles);
	ADC_Cmd(ADC1, ENABLE);
	ADC_ChannelCmd(ADC1, ADC_Channel_1, ENABLE);/*--------Channel_1----*/
	ADC_SoftwareStartConv(ADC1);
	for(j=5 ; j>0 ; j--);  //delay for stabilization
	while(!(ADC1->SR & 0x01)); //wait for end of conversion
	result = ADC_GetConversionValue(ADC1);
  return result;
}

uint16_t Channel_7_AvgADC(void)//VIN
{
  uint16_t avg, a1, a2, a3, a4;

  a1 = Channel_7_ReadADC();
  a2 = Channel_7_ReadADC();
  a3 = Channel_7_ReadADC();
  a4 = Channel_7_ReadADC();
  avg = (a1+a2+a3+a4)/4;
  return avg;
}

uint16_t Channel_3_AvgADC(void)//BAT
{
  uint16_t avg, a1, a2, a3, a4;

  a1 = Channel_3_ReadADC();
  a2 = Channel_3_ReadADC();
  a3 = Channel_3_ReadADC();
  a4 = Channel_3_ReadADC();
  avg = (a1+a2+a3+a4)/4;
  return avg;
}

uint16_t Channel_4_AvgADC(void)//ACC
{
  uint16_t avg, a1, a2, a3, a4;

  a1 = Channel_4_ReadADC();
  a2 = Channel_4_ReadADC();
  a3 = Channel_4_ReadADC();
  a4 = Channel_4_ReadADC();
  avg = (a1+a2+a3+a4)/4;
  return avg;
}

uint16_t Channel_1_AvgADC(void)//OUT
{
  uint16_t avg, a1, a2, a3, a4;

  a1 = Channel_1_ReadADC();
  a2 = Channel_1_ReadADC();
  a3 = Channel_1_ReadADC();
  a4 = Channel_1_ReadADC();
  avg = (a1+a2+a3+a4)/4;
  return avg;
}

void ADC_CHK(void)
{
	if(TIM_1S>=1)
	{
		ADC_VIN = Channel_7_AvgADC();
		VIN_Volt = (uint16_t)((uint16_t)ADC_VIN*0.1557279236); //----------VIN_CHK
		
		ADC_BAT = Channel_3_AvgADC();
		BAT_Volt = (uint16_t)((uint16_t)ADC_BAT*0.0559273422); //----------BAT_CHK

		#ifdef CHECK_PCM_STATE
			if (powerOnSetupComplete)
			{
				if (BAT_Volt < 100) pcmStateEntered = 1;
				else if (BAT_Volt > 120) pcmStateEntered = 0;
			}
			else
			{
				if (BAT_Volt < 120) pcmStateEntered = 1;
			}
		#endif
		
		ADC_ACC = Channel_4_AvgADC();
		ACC_Volt = (uint16_t)((uint16_t)ADC_ACC*0.1564935064); //----------ACC_CHK
		
		ADC_OUT = Channel_1_AvgADC();
		ADC_BBT = ADC_BAT-1655;
		
		TIM_1S=0;
	}
}

void DISCHG_CHK(void)
{
	if(CHG_State==1)
	{
		if (BAT_Volt>=120)
		{
			//Unlock
			GPIO_ResetBits(Dischg_PORT,Dischg_PIN);
			DIS_Lock=0;
			DIS_Unlock=1;
			DIS_Lock_10s=0;
			DIS_Unlock_10s=0;
		}
		else if (BAT_Volt <= 112) GPIO_SetBits(Dischg_PORT,Dischg_PIN);	//Lock
	}
	else if(DIS_Lock==1)
	{
		//11.5볼트 보다 작으면 Lock걸림
		if (BAT_Volt <= 112) GPIO_SetBits(Dischg_PORT,Dischg_PIN);			//Lock
		//방전중에 Lock이 걸리면 충전을 하기 전까지는 Lock을 유지한다.
		//else if (BAT_Volt >= 120) GPIO_ResetBits(Dischg_PORT,Dischg_PIN);	//UnLock
		DIS_Lock_10s=0;
		DIS_Unlock_10s=0;
	}
	else if (BAT_Volt <= 120 && Percentgauge == 0)
	{
		DIS_Lock_10s=1;
		DIS_Unlock_10s=0;
	}
	else if(DIS_Unlock==1)
	{
		if (BAT_Volt <= 112) GPIO_SetBits(Dischg_PORT,Dischg_PIN);			//Lock
		//방전중에 특정전압 밑으로 가면 Lock을 건다.
		//이후는 충전을 해야 해제가 된다.
		//else if (BAT_Volt >= 120) GPIO_ResetBits(Dischg_PORT,Dischg_PIN);	//UnLock
		
		DIS_Lock_10s=0;
		DIS_Unlock_10s=0;
	}
	else 
	{
		DIS_Lock_10s=0;
		DIS_Unlock_10s=1;
		GPIO_ResetBits(Dischg_PORT,Dischg_PIN);	//UnLock
	}
}

void CHG_CHK(void)
{
	if(NTC_Stop==0)
		{
			if(VIN_Volt>=100)//-------------------------Vin_10V
				{
						STATE_CHG = GPIO_ReadInputDataBit(STATE_PORT,STATE_PIN); //STATE_1
				
						if(ACC_Volt>=ACC_CHG)
							{
								if(TIM_CHG_1S1>=10)//------10s
									{
										CHG_State=1;
										LCHG_State=0;
										TIM_CHG_1S1=10;
										TIM_CHG_1S2=0;

										disChgNeedDelay = 1;
									}
								else LED_CTR(waiting_LED);
							}
						else if(ACC_Volt<=ACC_LOW)
							{
								LED_CTR(STOP_LED);
								CHG_State=0;
								LCHG_State=0;
								TIM_CHG_1S1=0;
								TIM_CHG_1S2=0;
							}
						else if(ACC_Volt<=ACC_DIS)
							{
								if(TIM_CHG_1S2>5)//--------5s
									{
										CHG_State=0;
										LCHG_State=1;
										TIM_CHG_1S1=0;
										TIM_CHG_1S2=5;
									}
							}
				}
			else CHG_State=0,LCHG_State=0,LED_CTR(STOP_LED),TIM_CHG_1S1=0,TIM_CHG_1S2=0;
		}
	else CHG_State=0,LCHG_State=0,LED_CTR(Warning_LED),TIM_CHG_1S1=0,TIM_CHG_1S2=0;
}

void CHG_STATE(void)
{
	if(CHG_State==1)
	{
		if(BAT_Volt<=80)
		{
			
			//////////////////// KBW //////////////////
			if (disChgNeedDelay)
			{
				GPIO_SetBits(Dischg_PORT,Dischg_PIN);
				Delay_ms(1000);
				disChgNeedDelay = 0;
			}
			GPIO_ResetBits(CHG_RUN_PORT,CHG_RUN_PIN);
			/************************
			Short_time=1;
			if(Short_1S>=30)
			{
				GPIO_SetBits(CHG_RUN_PORT,CHG_RUN_PIN); //Chg Stop
				LED_CTR(Short_LED);
			}
			else if(B_bounce_1S==1)
				{GPIO_ResetBits(CHG_RUN_PORT,CHG_RUN_PIN);} //Chg run
			else GPIO_SetBits(CHG_RUN_PORT,CHG_RUN_PIN); //Chg Stop
			***********************/
		}
		/***********************
		else if(Short_1S>=30)
		{
			TIM_CHG_1S1=0;
			CHG_State=0;
		}
		***********************/
		else 
		{
			GPIO_ResetBits(CHG_RUN_PORT,CHG_RUN_PIN); //Chg run
			
			if(STATE_CHG!=0&&Percentgauge==100)//-------chg display state
			{
				if(TIM_CHG_1S3>=3)
				{	
					LED_CTR(FULL_LED);
					FULL_STATE=1;
					TIM_CHG_1S3=3;
				}
			}
			else if(FULL_STATE==1)
			{
				LED_CTR(FULL_LED);
				TIM_CHG_1S3=3;
			}
			else LED_CTR(CHG_LED),TIM_CHG_1S3=0;
		}
	}
	else if(LCHG_State==1)
		{
			if(ACC_Volt<120)
				{LED_CTR(LOW_LED);}
			GPIO_SetBits(CHG_RUN_PORT,CHG_RUN_PIN);//--------------------chg stop
			TIM_CHG_1S3=0;
			FULL_STATE=0;
			Short_time=0;
		}
	else
		{
			GPIO_SetBits(CHG_RUN_PORT,CHG_RUN_PIN);//--------------------chg stop
			TIM_CHG_1S3=0;
			FULL_STATE=0;
			Short_time=0;
		}
}

void NTC_CHK(void)
{
	if(BAT_Volt>110)
	{
		if(NTC_Temp>=0xDD)//------------------------NTC CUT ON
		{
			//Do Nothing
		}
		else if(NTC_Temp>=NTC_CUT_ON)//------------------------NTC CUT ON
			{
				Warning_Time++;
				NTC_Stop=1;
				WarningSpeak();
				NTC_ON=1;
			}
		else if(NTC_Temp<=NTC_CUT_OFF)//------------------NTC CUT OFF
			{
				if(NTC_Stop==1)
				{LED_CTR(STOP_LED);}
				NTC_Stop=0;
				Warning_Time=0;
				NTC_ON=0;
			}
		else if(NTC_ON==1)
			{
				Warning_Time++;
				NTC_Stop=1;
				WarningSpeak();
			}
	}
}

void Speak_Value(uint8_t tone, uint8_t time)
{
  SpeakDelayTime_pp=0;
  SpeakTime1_pp=0;
  SpeakTime2_pp=0;
  SpeakOnOff=0;
  SpeakAppTime=time;
  SpeakAppTone=tone;
  
  while(SpeakTime2_pp != SpeakAppTime)
  {}
}

void StartSpeak(void)
{
  Speak_Value(9,6);
  Speak_Value(7,6);
  Speak_Value(5,6);
  Speak_Value(4,6);
}

void WarningSpeak(void)
{
	if(Warning_Time<1000)
		{
			Time_Speak_State=1;
		}
	else if(Warning_Time==1000)
		{
			Time_Speak_State=0;
			Speak_Value(3,10);
		}
  else if(Warning_Time>10000)
		{	
			Warning_Time=0;
		}
	else Time_Speak_State=1;
}

void Delay_ms(u16 n_ms)
{ 
/* Init TIMER 2 */
	CLK_PeripheralClockConfig(CLK_Peripheral_TIM2, ENABLE);
/* Init TIMER 2 prescaler: / (2^6) = /64 */
  TIM2->PSCR = 6;
/* HSI div by 1 --> Auto-Reload value: 16M / 64 = 1/4M, 1/4M / 1k = 250*/
  TIM2->ARRH = 0; 
  TIM2->ARRL = 100; 
/* Counter value: 2, to compensate the initialization of TIMER*/
  TIM2->CNTRH = 0;
  TIM2->CNTRL = 2;
/* clear update flag */
  TIM2->SR1 &= (u8)(~0x01);
/* Enable Counter */
  TIM2->CR1 |= 0x01;
  while(n_ms--)
  {
    while((TIM2->SR1 & 0x01) == 0);
    TIM2->SR1 &= (u8)(~0x01);
  }
/* Disable Counter */
  TIM2->CR1 &= (u8)(~0x01);
  CLK_PeripheralClockConfig(CLK_Peripheral_TIM2, DISABLE);
}

void Delay(uint8_t n)
{
	uint8_t i = n * 100; 
	for(i;i!=0;i--);
}

void Flash_Init(void)
{
	FLASH_SetProgrammingTime(FLASH_ProgramMode_Fast);
	FLASH_Unlock(FLASH_MemType_Data); 
	// Wait until Data EEPROM area unlocked flag is set
	while(FLASH_GetFlagStatus(FLASH_FLAG_DUL) == RESET){}
}

void Setup_Flash_Data(void)
{
	int i;
	uint8_t EEP_data=0;
	
	for(i=0;i<6;i++)
	{EEP_data += FLASH_ReadByte(0x1001+i);}
	
	if(EEP_data==0)
	{
		int i;
		for(i=0;i<6;i++)
		{
			FLASH_ProgramByte(0x1001+i,(BB_Bitrate % Square_10(6-i))/Square_10(5-i));
			while(FLASH_GetFlagStatus(FLASH_FLAG_EOP) == RESET){}
		}
	}
	else
	{
		int i;
		BB_Bitrate=0;
		
		for(i=0;i<6;i++)
			{BB_Bitrate += Square_10(5-i)*FLASH_ReadByte(0x1001+i);}
		
		sim();
		UART_Init();//---------------------------------Reset Uart_Init.
		rim();
	}
}

uint32_t Square_10(uint8_t number)
{
	uint32_t a=1;
	int i;
	
	if(number==0)
	{
		return a;
	}
	else
	{
		for(i=0;i<number;i++)
			{	a*=10;}
		return a;
	}
}

#ifdef POWERON_SEND_BT_INFO
#define BT_COMM_HEADER	0x43
#define PC_COMM_HEADER	0x44

#define BT_COMM_ACK 	0x06
#define PC_COMM_ACK 	0x06
//--------------------------------
#define C_ID_BTINFO 	0x40 	// BT Info Report : form PC (BT Serial number printer TOOL)
#define C_ID_BTCONNECT	0x71
#define C_ID_BATDAT		0x51
#define C_ID_FIRMWARE	0x52
#define C_ID_TEST		0x4F
#define C_ID_CTRL		0x60

void ___debug(char *msg)
{
	#ifdef PERCENT_DEBUG
	// 블랙박스 통신용 포트이기에 디버깅 끝나면 주석처리 해야 합니다.
	int i;
	int sLen = strlen(msg);

	for(i=0; i<sLen; i++) DATA_Send_TX(msg[i]);

	DATA_Send_TX(13);
	#endif
}

void LCD_TX(uint8_t number)
{
	switch(number)
	{
		case C_ID_BTINFO:{	
			int i,z;//-----------------------------
			uint8_t Data_size=B_Rx_Command[2];
			uint8_t Tx_DATA[14];
			uint8_t DS=14;
			//-------------------Header-------------------//
			Tx_DATA[0]=PC_COMM_HEADER;//-----Header ID.
			Tx_DATA[1]=PC_COMM_ACK;						//-----ACK.
			Tx_DATA[2]=8;//-----Data size.
			Tx_DATA[3]=C_ID_BTINFO;//-----Command ID.
			//-------------------DATA---------------------//
			Tx_DATA[4] = 'I';
			Tx_DATA[5] = 'V';
			Tx_DATA[6] = 'T';
			Tx_DATA[7] = '-';
			Tx_DATA[8] = MAD1;
			Tx_DATA[9] = MAD2;
			Tx_DATA[10] = MAD3;
			Tx_DATA[11] = MAD4;
			//-----------------Check Sum------------------//
			Tx_DATA[12]=0x00;
			//---------------------CR---------------------//
			Tx_DATA[13]=0x0d;
			//--------------------------------------------//
			for(z=0;z<DS;z++) DATA_Send_TX(Tx_DATA[z]);
			break;
		}
							
		case C_ID_BATDAT:{	
			int i,z;//-----------------------------DATA-1.
			uint8_t Data_size=18;
			uint8_t Tx_DATA[30];
			uint8_t DS=24;
			//-------------------Header-------------------//
			Tx_DATA[0]=PC_COMM_HEADER;//-----Header ID.
			Tx_DATA[1]=PC_COMM_ACK;						//-----ACK.
			Tx_DATA[2]=Data_size;//-----Data size.
			Tx_DATA[3]=C_ID_BATDAT;//-----Command ID.
			//-------------------DATA---------------------//
			Tx_DATA[4+5] = NTC_Temp1;
			Tx_DATA[4+6] = BAT_Volt;
			//for(i=0;i<Data_size;i++) Tx_DATA[4+i]=BAT_DATA[i]; //BAT_Data.
			//-----------------Check Sum------------------//
			Tx_DATA[4+Data_size]=0x00;
			//---------------------CR---------------------//
			Tx_DATA[5+Data_size]=0x0d;
			//--------------------------------------------//
			for(z=0;z<DS;z++) DATA_Send_TX(Tx_DATA[z]);
			break;
		}
	}
}

void send_btInfoToPC()
{
	LCD_TX(C_ID_BTINFO);	//USART 2À¸·Î Ãâ·Â
	Delay_ms(20);
	LCD_TX(C_ID_BATDAT);	//USART 2À¸·Î Ãâ·Â
	Delay_ms(20);
}
#endif
/*------------------------------------------------------------------------------------------*/
extern uint8_t BAT_Percentgauge_Check(uint32_t BAT_P_Volt);
void main(void)
{ 
	uint16_t _startBAT_volt;
	uint16_t _start_recap = 0;
	uint8_t _startBAT_pecent = 0;
	int i;

	#ifdef FLASH_MEM_VER
	uint8_t ver;
	#endif
  sim();
	CLK_DeInit();
	CLK_PeripheralClockConfig(CLK_Peripheral_TIM4, ENABLE);
	CLK_PeripheralClockConfig(CLK_Peripheral_USART1, ENABLE);
	CLK_PeripheralClockConfig(CLK_Peripheral_USART2, ENABLE);
	CLK_PeripheralClockConfig(CLK_Peripheral_ADC1, ENABLE);
  Port_init();
  Timer4Init();
	UART_Init();
	I2C1_Init();
	//I2C_Datawrite_Shutdown();
  rim();//---------------------------------initialization.

  	Delay_ms(500);
	LED_CTR(RUN_LED);
	StartSpeak();  //-----------------Cellink B6 Start Beep.
	GPIO_SetBits(CHG_RUN_PORT,CHG_RUN_PIN); //Chg Stop
	Delay_ms(100);
	Flash_Init();
	Setup_Flash_Data();
	Delay_ms(100);
	BLE_SET_NAME();
	Delay_ms(100);
	I2C_Datawrite_Reset();
	if (_fgReset == 0) I2C_Datawrite_Reset();

	#ifdef KBW_LOW_LOAD
	if(FLASH_ReadByte(0x100B)!=0)
	{DISCHG_Current=FLASH_ReadByte(0x100B);}
	#endif

  #ifdef FLASH_MEM_VER
	ver = FLASH_ReadByte(VERSION_ADDR);
	if (ver != Version) FLASH_ProgramByte(VERSION_ADDR,Version);
  #endif
	Time_Speak_State=1;
	LED_CTR(STOP_LED);
	
	#ifdef POWERON_SEND_BT_INFO
		while(MAD1 == 0)
		{
			//___debug("[Wait]"); 
			//GPIO_SetBits(FULL_LED_PORT,FULL_LED_PIN);
			//GPIO_SetBits(FULL_LED_PORT,FULL_LED_PIN);
			Delay_ms(100);
			//GPIO_SetBits(FULL_LED_PORT,FULL_LED_PIN);
			//GPIO_SetBits(FULL_LED_PORT,FULL_LED_PIN);
		}
		ADC_CHK();
		NTC_CHK();
		CELLB_Calculation();
		send_btInfoToPC();
	#endif


	// ++ KBW
	cap_percent = (float)((uint16_t)FullCap/100);
	for (i = 0; i<POWER_ON_BAT_CHECK_CNT; i++)
	{
		ADC_BAT = Channel_3_AvgADC(); Delay_ms(10);
	}

	BAT_P_Volt = (uint32_t)((uint32_t)ADC_BAT*5.59273422);
	_startBAT_pecent = Percentgauge = BAT_Percentgauge_Check(BAT_P_Volt);
	_start_recap = RepCap = Percentgauge*cap_percent;
	#ifdef PERCENT_DEBUG
		sprintf(_dBuf, "\r\n\n%ld ,%d ,%f\r\n\n",BAT_P_Volt,Percentgauge &0xFF ,RepCap); 
		___debug(_dBuf);
	#endif
	//Delay_ms(50);



	powerOnSetupComplete = 1;
	
	while(1)
   	{
		 I2C_Dataread();
		 CELLB_Calculation();
		 ADC_CHK();
		 NTC_CHK();
		 CHG_CHK();
		 CHG_STATE();
		 DISCHG_CHK();
		 App_Data_TX_5s();
		 BLE_Connect_Check();
	 }
}	 			 
/*------------------------------------------------------------------------------------------*/

static void WWDG_Config(void) 
{
  WWDG_Init(COUNTER_INIT, WINDOW_VALUE);
}

PUTCHAR_PROTOTYPE
{
  /* Write a character to the USART */
  USART_SendData8(USART1, c);
  /* Loop until the end of transmission */
  while (USART_GetFlagStatus(USART1, USART_FLAG_TXE) == RESET);

  return (c);
}

GETCHAR_PROTOTYPE
{
#ifdef _COSMIC_
  char c = 0;
#else
  int c = 0;
#endif
  /* Loop until the Read data register flag is SET */
  while (USART_GetFlagStatus(USART1,USART_FLAG_RXNE) == RESET);
    c = USART_ReceiveData8(USART1);
  return (c);
}

#ifdef  USE_FULL_ASSERT

/**
  * @brief  Reports the name of the source file and the source line number
  *   where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t* file, uint32_t line)
{ 
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */

  /* Infinite loop */
  while (1)
  {}
}
#endif

/**
  * @}
  */

/************************ (C) EGENS.INC *****END OF FILE****/
