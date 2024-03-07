#include "bat_percentgauge.h"

uint8_t BAT_Percentgauge_Check(uint32_t BAT_P_Volt)
{	
	if(BAT_P_Volt>=P_50)
		{
			if(BAT_P_Volt>=P_75)
				{
					if(BAT_P_Volt>=P_88)//88~100
						{
							if(BAT_P_Volt>=P_100){return 100;}
							else if(BAT_P_Volt>=P_99){return 99;}
							else if(BAT_P_Volt>=P_98){return 98;}
							else if(BAT_P_Volt>=P_97){return 97;}
							else if(BAT_P_Volt>=P_96){return 96;}
							else if(BAT_P_Volt>=P_95){return 95;}
							else if(BAT_P_Volt>=P_94){return 94;}
							else if(BAT_P_Volt>=P_93){return 93;}
							else if(BAT_P_Volt>=P_92){return 92;}
							else if(BAT_P_Volt>=P_91){return 91;}
							else if(BAT_P_Volt>=P_90){return 90;}	
							else if(BAT_P_Volt>=P_89){return 89;}
							else if(BAT_P_Volt>=P_88){return 88;}
						}
					else//75~87
						{
							if(BAT_P_Volt>=P_87){return 87;}
							else if(BAT_P_Volt>=P_86){return 86;}
							else if(BAT_P_Volt>=P_85){return 85;}
							else if(BAT_P_Volt>=P_84){return 84;}
							else if(BAT_P_Volt>=P_83){return 83;}
							else if(BAT_P_Volt>=P_82){return 82;}
							else if(BAT_P_Volt>=P_81){return 81;}
							else if(BAT_P_Volt>=P_80){return 80;}
							else if(BAT_P_Volt>=P_79){return 79;}
							else if(BAT_P_Volt>=P_78){return 78;}
							else if(BAT_P_Volt>=P_77){return 77;}
							else if(BAT_P_Volt>=P_76){return 76;}
							else if(BAT_P_Volt>=P_75){return 75;}
						}
				}
			else
				{
					if(BAT_P_Volt>=P_63)//63~74
						{
							if(BAT_P_Volt>=P_74){return 74;}
							else if(BAT_P_Volt>=P_73){return 73;}
							else if(BAT_P_Volt>=P_72){return 72;}
							else if(BAT_P_Volt>=P_71){return 71;}
							else if(BAT_P_Volt>=P_70){return 70;}
							else if(BAT_P_Volt>=P_69){return 69;}
							else if(BAT_P_Volt>=P_68){return 68;}
							else if(BAT_P_Volt>=P_67){return 67;}
							else if(BAT_P_Volt>=P_66){return 66;}
							else if(BAT_P_Volt>=P_65){return 65;}
							else if(BAT_P_Volt>=P_64){return 64;}
							else if(BAT_P_Volt>=P_63){return 63;}
						}
					else//50~62
						{
							if(BAT_P_Volt>=P_62){return 62;}
							else if(BAT_P_Volt>=P_61){return 61;}
							else if(BAT_P_Volt>=P_60){return 60;}
							else if(BAT_P_Volt>=P_59){return 59;}
							else if(BAT_P_Volt>=P_58){return 58;}
							else if(BAT_P_Volt>=P_57){return 57;}
							else if(BAT_P_Volt>=P_56){return 56;}
							else if(BAT_P_Volt>=P_55){return 55;}
							else if(BAT_P_Volt>=P_54){return 54;}
							else if(BAT_P_Volt>=P_53){return 53;}
							else if(BAT_P_Volt>=P_52){return 52;}
							else if(BAT_P_Volt>=P_51){return 51;}
							else if(BAT_P_Volt>=P_50){return 50;}
						}
				}
		}
	else	
		{
			if(BAT_P_Volt>=P_25)
				{
					if(BAT_P_Volt>=P_37)//37~49
						{
							if(BAT_P_Volt>=P_49){return 49;}
							else if(BAT_P_Volt>=P_48){return 48;}
							else if(BAT_P_Volt>=P_47){return 47;}
							else if(BAT_P_Volt>=P_46){return 46;}
							else if(BAT_P_Volt>=P_45){return 45;}
							else if(BAT_P_Volt>=P_44){return 44;}
							else if(BAT_P_Volt>=P_43){return 43;}
							else if(BAT_P_Volt>=P_42){return 42;}
							else if(BAT_P_Volt>=P_41){return 41;}
							else if(BAT_P_Volt>=P_40){return 40;}
							else if(BAT_P_Volt>=P_39){return 39;}
							else if(BAT_P_Volt>=P_38){return 38;}
							else if(BAT_P_Volt>=P_37){return 37;}
						}
					else//25~36
						{
							if(BAT_P_Volt>=P_36){return 36;}
							else if(BAT_P_Volt>=P_35){return 35;}
							else if(BAT_P_Volt>=P_34){return 34;}
							else if(BAT_P_Volt>=P_33){return 33;}
							else if(BAT_P_Volt>=P_32){return 32;}
							else if(BAT_P_Volt>=P_31){return 31;}
							else if(BAT_P_Volt>=P_30){return 30;}
							else if(BAT_P_Volt>=P_29){return 29;}
							else if(BAT_P_Volt>=P_28){return 28;}
							else if(BAT_P_Volt>=P_27){return 27;}
							else if(BAT_P_Volt>=P_26){return 26;}
							else if(BAT_P_Volt>=P_25){return 25;}
						}
				}
			else
				{
					if(BAT_P_Volt>=P_12)//12~24
						{
							if(BAT_P_Volt>=P_24){return 24;}
							else if(BAT_P_Volt>=P_23){return 23;}
							else if(BAT_P_Volt>=P_22){return 22;}
							else if(BAT_P_Volt>=P_21){return 21;}
							else if(BAT_P_Volt>=P_20){return 20;}
							else if(BAT_P_Volt>=P_19){return 19;}
							else if(BAT_P_Volt>=P_18){return 18;}
							else if(BAT_P_Volt>=P_17){return 17;}
							else if(BAT_P_Volt>=P_16){return 16;}
							else if(BAT_P_Volt>=P_15){return 15;}
							else if(BAT_P_Volt>=P_14){return 14;}
							else if(BAT_P_Volt>=P_13){return 13;}
							else if(BAT_P_Volt>=P_12){return 12;}
						}
					else//0~11
						{
							if(BAT_P_Volt>=P_11){return 11;}
							else if(BAT_P_Volt>=P_10){return 10;}
							else if(BAT_P_Volt>=P_9){return 9;}
							else if(BAT_P_Volt>=P_8){return 8;}
							else if(BAT_P_Volt>=P_7){return 7;}
							else if(BAT_P_Volt>=P_6){return 6;}
							else if(BAT_P_Volt>=P_5){return 5;}
							else if(BAT_P_Volt>=P_4){return 4;}
							else if(BAT_P_Volt>=P_3){return 3;}
							else if(BAT_P_Volt>=P_2){return 2;}
							else if(BAT_P_Volt>=P_1){return 1;}
							else{return 0;}
						}
				}
		}
}