/* Includes ------------------------------------------------------------------*/
#include "stm8l15x.h"
#include <limits.h>
#include "stdio.h"

#ifdef _RAISONANCE_
#define PUTCHAR_PROTOTYPE int putchar (char c)
#define GETCHAR_PROTOTYPE int getchar (void)
#elif defined (_COSMIC_)
#define PUTCHAR_PROTOTYPE char putchar (char c)
#define GETCHAR_PROTOTYPE char getchar (void)
#else /* _IAR_ */
#define PUTCHAR_PROTOTYPE int putchar (int c)
#define GETCHAR_PROTOTYPE int getchar (void)
#endif /* _RAISONANCE_ */


#define POWERON_SEND_BT_INFO
#ifdef POWERON_SEND_BT_INFO
uint8_t _dBuf[64];
void ___debug(char *msg);
void LCD_TX(uint8_t number);
void send_btInfoToPC(void);
#endif

#define BLE_PORT       (GPIOC)
#define BLE_TX_PIN     GPIO_Pin_3 //DATA
#define BLE_RX_PIN     GPIO_Pin_2 //DATA

#define BLE_U_PORT     (GPIOD)
#define BLE_U_PIN      GPIO_Pin_4

#define BLE_C_PORT     (GPIOA)
#define BLE_C_PIN      GPIO_Pin_2

#define COM_PORT       (GPIOE)
#define COM_TX_PIN     GPIO_Pin_4 //DATA
#define COM_RX_PIN     GPIO_Pin_3 //DATA

#define CHG_RUN_PORT   (GPIOB)
#define CHG_RUN_PIN    GPIO_Pin_4 //Charging Start or Stop

#define Speak_PORT     (GPIOB)
#define Speak_PIN      GPIO_Pin_1 //Beep

#define NTC_PORT       (GPIOA)  
#define NTC_PIN        GPIO_Pin_4
#define BAT_PORT       (GPIOC)
#define BAT_PIN        GPIO_Pin_7
#define VIN_PORT       (GPIOD)
#define VIN_PIN        GPIO_Pin_7
#define ACC_PORT       (GPIOC)
#define ACC_PIN        GPIO_Pin_4 //ADC

#define CHG_LED_PORT   (GPIOE)
#define CHG_LED_PIN    GPIO_Pin_0
#define FULL_LED_PORT  (GPIOE)   
#define FULL_LED_PIN   GPIO_Pin_1 //LED

#define STATE_PORT     (GPIOC)
#define STATE_PIN      GPIO_Pin_6 //Full Chg State

#define Dischg_PORT    (GPIOB)
#define Dischg_PIN     GPIO_Pin_2 //Dischg Open or Close

#define ALRT_PORT    	 (GPIOB)
#define ALRT_PIN    	 GPIO_Pin_7 //ALRT

#define I2C_PORT       	(GPIOC)
#define SCL_PIN     		GPIO_Pin_1
#define SDA_PIN     		GPIO_Pin_0

//---------------------------------------------I2C---//
#define SLAVE_ADDRESS   0x6C
#define SOC						  0x04	
#define Config2				  0xBB	
#define Reset_M				  0x00
#define Reset_L				 	0x01
//----------------------------------------------------//
/*
[APP<=>BAB110]
DATA_Check_String()=> Output data list.
TEST_OK = 1.          DAT2_DATA = 4.  ERR = 0. 
REV_DATA = 2.         DAT3_DATA = 5. 
DAT1_DATA = 3.         PRC_DATA = 6. 				

[BB<=>BAB110]
DATA_Check_String()=> Output data list.
TEST_OK = 1.          BR_OK= 4.
REV_DATA = 2.         PRC_OK = 5.
DAT_DATA = 3.         ERR = 0.					
*/
//----------------------------------------------------//
#define NTC_CUT_ON      80//588   //80��
#define NTC_CUT_OFF     60//938  //60��
//----------------------------------------------------//
#define NEW_HW_CHG	//def : Charging Current 8500 = BAB-115 , undef 9400 = BAB-110

#define CHG_CURRENT_A 8500
#define CHG_CURRENT_B 9400

#define FLASH_MEM_VER

#define POWER_ON_BAT_CHECK_CNT		3

#ifdef FLASH_MEM_VER
  #define VERSION_ADDR  0x100D
#endif

#ifdef NEW_HW_CHG
#define MAX_CHG_CURRENT CHG_CURRENT_A
uint8_t Version= 113;
char REV_Setting[]={"1.13,240208"};
#else
#define MAX_CHG_CURRENT CHG_CURRENT_B
uint8_t Version= 111;
char REV_Setting[]={"1.11,210114"};
#endif

char BAB_DATA[]={"000,000,0,0,000"};
char BAB_DAT1[]={"000,000,000"};
char BAB_DAT2[]={"000,0,0,0000"};
char BAB_DAT3[]={"0000,0000,000"};
char PRC_Data[]={"0000,0000,0000"};
char PRC_NoCOM[]={"FFFF,FFFF,FFFF"};
uint8_t I2C_Data[34];
uint8_t A_Rx_Command[64];
uint8_t B_Rx_Command[64];
uint8_t Manuf_Data[10];
uint16_t DischgAVG[80];
//----------------------------------------------------//
uint32_t BA_Bitrate	= 9600;
uint32_t BB_Bitrate	= 9600;
//----------------------------------------------------//

volatile uint16_t ADC_VIN=0;
volatile uint16_t ADC_BAT=0;
volatile uint16_t ADC_ACC=0;
volatile uint16_t ADC_OUT=0;
volatile uint16_t ADC_BBT=0;

uint8_t VIN_Volt=0;
uint8_t BAT_Volt=118;
uint32_t BAT_P_Volt=0;
uint8_t BAT_Volt1=0;
uint8_t ACC_Volt=0;
uint8_t NTC_Temp=0;
uint8_t NTC_Temp1=0;

volatile uint16_t Curr1=0;
volatile uint16_t Curr2=0;
volatile uint16_t D_Current=0;
volatile uint16_t C_Current=0;
uint16_t CalcCurrent = 0;

volatile float ChgCap=0;
volatile float RepCap=0;

volatile float FullCap=9720;
float cap_percent;


uint8_t ACC_CHG=120;
uint8_t ACC_DIS=115;
uint8_t ACC_LOW=100;

uint8_t TIM_8ms=0;
uint8_t TIM_8ms2=0;
uint8_t TIM_8ms3=0;
uint8_t Tim_500ms=0;
uint8_t TIM_1S=1;
uint8_t TIM_1S2=0;
uint8_t TIM_1S3=0;
uint8_t TIM_1S4=0;
uint8_t TIM_1S5=0;
uint8_t TIM_1S6=0;
uint8_t TIM_1S7=2;
uint8_t TIM_CHG_1S1=0;
uint8_t TIM_CHG_1S2=0;
uint8_t TIM_CHG_1S3=0;
uint8_t waiting_Time=0;
uint8_t B_bounce_1S=0;
uint8_t DIS_Lock_10s=0;
uint8_t DIS_3s=0;
uint8_t DIS_Unlock_10s=0;
uint8_t DIS_Un3s=0;
volatile uint16_t Warning_Time=0;

uint8_t	Percent_1s=0;
uint8_t	Percent_P=0;
uint8_t	Percent_N=0;

uint8_t NTC_Stop=0;
uint8_t FULL_STATE=0;
uint8_t CHG_State=0;
uint8_t LCHG_State=0;
uint8_t LED_State=1;
uint8_t NTC_ON=0;
uint8_t STATE_CHG=0;
uint8_t DIS_Lock=0;
uint8_t DIS_Unlock=0;
uint8_t Short_time=0;
uint8_t Short_1S=0;
uint8_t I2C_ON=1;
uint8_t APP_DATA_Start=0;
uint8_t DATA_TX_5s=0;
uint8_t APP_Connect=0;
uint8_t APP_Connect_end=0;
uint8_t Percentgauge=0;
uint8_t BLE_LED=0;
uint8_t BLE_Con=0;
uint8_t PRC_COM=0;
uint8_t BR_ERR=0;
uint8_t P_Time=0;

char ACC_ST=0;
char CHG_ST=0;

uint16_t Dis_j=0;
uint32_t DIS_AVG=0;
uint16_t DISCHG_AVG=0;
uint16_t DISCHG_Current=10;	//++ KBW 2019.07.16 	170;
volatile float DIS_CURR=0;

uint16_t DISCHG_TIME=0;
uint16_t CHG_TIME=0;

uint8_t disChgNeedDelay = 0;
//---------------------------BAB-100 UART TEST//
uint8_t Sum =0;
char cs1 =0;
char cs2 =0;
//---------------------------BAB-100 MAD//
char MAD1 =0;
char MAD2 =0;
char MAD3 =0;
char MAD4 =0;
//----------------------------------Speak//
uint16_t SpeakDelayTime_pp;
uint8_t SpeakTime1_pp; 
uint8_t SpeakTime2_pp;
uint8_t SpeakAppTime;
uint8_t SpeakAppTone;
uint8_t SpeakOnOff;
uint8_t Time_Speak_State=0;
//---------------------------------------//

typedef enum {
	RUN_LED,
  STOP_LED,
  CHG_LED,
	FULL_LED,
	waiting_LED,
	LOW_LED,
	Short_LED,
	Warning_LED,
	BLE_C_LED
}LEDTypeDef;

/* Private define ------------------------------------------------------------*/
#define WINDOW_VALUE        97
#define COUNTER_INIT       104

void Port_init(void);
static void Timer4Init(void);
void ADC_CHK(void);
void CHG_CHK(void);
void NTC_CHK(void);
void Speak_Value(uint8_t tone, uint8_t time);
void StartSpeak(void);
void WarningSpeak(void);
void LED_CTR(LEDTypeDef Selection);
void DISCHG_CHK(void);
void CHG_STATE(void);
void Delay_ms(u16 n_ms);
void UART_Init(void);
void CELLB_Calculation(void);
void BlackBox_TX(uint8_t number);
void I2C1_Init(void);
void I2C_Setting(void);
void I2C_Datawrite_Reset(void);
void I2C_Dataread(void);
void I2C_START(void);
void I2C_STOP(void);
void I2C_TxData(uint8_t data);
uint8_t I2C_RxData(void);
void Delay(uint8_t n);
extern void USART1_INTERRUPT_HANDLER(void);
extern void USART2_INTERRUPT_HANDLER(void);
void DATA_Send_TX(char data);
void BLE_SET_NAME(void);
int DATA_Check_Sum(void);
void DATA_Check_string(void);
void App_DATA_Check_string(void);
void PRC_Check(void);
void Bit_Rate_Set(void);
void Flash_Init(void);
void Setup_Flash_Data(void);
uint32_t Square_10(uint8_t number);
int APP_DATA_Check_Sum(void);
void App_Data_TX_5s(void);
void DATA_APP_TX(char data);
void BABAPP_TX(uint8_t number);
void BLE_Connect_Check(void);