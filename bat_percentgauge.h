#include "stm8l15x.h"
//----------------------------------------------------//

#define P_100 13728

#define P_99  13272
#define P_98	13270
#define P_97	13268
#define P_96	13266
#define P_95	13264
#define P_94	13262
#define P_93	13260
#define P_92	13258
#define P_91	13256
#define P_90	13255

#define P_89	13254
#define P_88  13253
#define P_87  13252
#define P_86  13251
#define P_85  13250
#define P_84  13249
#define P_83  13248
#define P_82  13246
#define P_81  13245
#define P_80  13244

#define P_79  13242
#define P_78  13241
#define P_77  13240
#define P_76  13238
#define P_75  13237
#define P_74  13236
#define P_73  13235
#define P_72  13234
#define P_71  13233
#define P_70  13232

#define P_69  13228
#define P_68  13220
#define P_67  13212
#define P_66  13200
#define P_65  13180
#define P_64  13152
#define P_63  13128
#define P_62  13116
#define P_61  13112
#define P_60  13104

#define P_59  13100
#define P_58  13096
#define P_57  13092
#define P_56  13090
#define P_55  13088
#define P_54  13086
#define P_53  13084
#define P_52  13082
#define P_51  13080
#define P_50  13079

#define P_49  13078
#define P_48  13077
#define P_47  13076
#define P_46  13075
#define P_45  13074
#define P_44  13073
#define P_43  13072
#define P_42  13071
#define P_41  13070
#define P_40  13069

#define P_39  13068
#define P_38  13067
#define P_37  13065
#define P_36  13064
#define P_35  13062
#define P_34  13060
#define P_33  13052
#define P_32  13040
#define P_31  13024
#define P_30  13012

#define P_29  13000
#define P_28  12988
#define P_27  12972
#define P_26  12960
#define P_25  12948
#define P_24  12936
#define P_23  12924
#define P_22  12912
#define P_21  12900
#define P_20  12884

#define P_19  12868
#define P_18  12844
#define P_17  12828
#define P_16  12812
#define P_15  12792
#define P_14  12768
#define P_13  12740
#define P_12  12720
#define P_11  12716
#define P_10  12712

#define P_9   12704
#define P_8   12696
#define P_7   12684
#define P_6   12656
#define P_5   12580
#define P_4   12440
#define P_3   12272
#define P_2   12702
#define P_1   11796
//----------------------------------------------------//

uint8_t BAT_Percentgauge_Check(uint32_t BAT_P_Volt);