//
//  Werkvorm.m
//  Edufit
//
//  Created by richard kerkvliet on 16/06/14.
//  Copyright (c) 2014 richard kerkvliet. All rights reserved.
//

#import "Werkvorm.h"



@implementation Werkvorm

@synthesize WV_TC, WV_NR, WV_LT, WV_X1, WV_E, WV_R, WV_C, WV_T, WV_TCR, WV_TPR, WV_M, WV_GROEP, WV_BRON, WV_STER, WV_NAAM, WV_WWV, WV_X2, WV_GGMN, WV_GGMX, WV_V, WV_VMN, WV_VMX, WV_TY, WV_TMN, WV_TMX, WV_N, WV_NMN, WV_NMX, WV_LDC, WV_LDAANT, WV_DOEL01, WV_DOEL02, WV_DOEL03, WV_DOEL04, WV_DOEL05, WV_DOEL06, WV_DOEL07, WV_DOEL08, WV_DOEL09, WV_DOEL10, WV_DOEL11, WV_DOEL12, WV_DOEL13, WV_DOEL14, WV_DOEL15, WV_DOEL16, WV_DOEL17, WV_DOEL18, WV_DOEL19, WV_DOEL20, WV_DOEL21, WV_DOEL22, WV_DOEL23, WV_DOEL24, WV_DOEL25, WV_DOEL26, WV_DOEL27, WV_DOEL28, WV_DOEL29, WV_DOEL30, WV_DOEL31, WV_DOEL32, WV_NODIG, WV_UILG, WV_VTN, WV_VEN, WV_MITAL, WV_MI1VL, WV_MI2LM, WV_MI3VR, WV_MI4LK, WV_MI5MR, WV_MI6NA, WV_MI7IE, WV_MI8IA, WV_MEMO;

/*
- (NSString *)changeNilIntoEmptyString: (NSString *)string{
    if (string == nil)
        return @"";
    else
        return string;
}
 */

- (Werkvorm *)newWerkvormWithEmptyStrings{
    self.WV_TC= @"";
    self.WV_NR= @"";
    self.WV_LT= @"";
    self.WV_X1= @"";
    self.WV_E= @"";
    self.WV_R= @"";
    self.WV_C= @"";
    self.WV_T= @"";
    self.WV_TCR= @"";
    self.WV_TPR= @"";
    self.WV_M= @"";
    self.WV_GROEP= @"";
    self.WV_BRON= @"";
    self.WV_STER= 0;
    self.WV_NAAM= @"";
    self.WV_WWV= @"";
    self.WV_X2= @"";
    self.WV_GGMN= 0;
    self.WV_GGMX= 0;
    self.WV_V= @"";
    self.WV_VMN= 0;
    self.WV_VMX= 0;
    self.WV_TY= @"";
    self.WV_TMN= 0;
    self.WV_TMX= 0;
    self.WV_N= @"";
    self.WV_NMN= 0;
    self.WV_NMX= 0;
    self.WV_LDC= 0;
    self.WV_LDAANT= 0;
    self.WV_DOEL01= @"";
    self.WV_DOEL02= @"";
    self.WV_DOEL03= @"";
    self.WV_DOEL04= @"";
    self.WV_DOEL05= @"";
    self.WV_DOEL06= @"";
    self.WV_DOEL07= @"";
    self.WV_DOEL08= @"";
    self.WV_DOEL09= @"";
    self.WV_DOEL10= @"";
    self.WV_DOEL11= @"";
    self.WV_DOEL12= @"";
    self.WV_DOEL13= @"";
    self.WV_DOEL14= @"";
    self.WV_DOEL15= @"";
    self.WV_DOEL16= @"";
    self.WV_DOEL17= @"";
    self.WV_DOEL18= @"";
    self.WV_DOEL19= @"";
    self.WV_DOEL20= @"";
    self.WV_DOEL21= @"";
    self.WV_DOEL22= @"";
    self.WV_DOEL23= @"";
    self.WV_DOEL24= @"";
    self.WV_DOEL25= @"";
    self.WV_DOEL26= @"";
    self.WV_DOEL27= @"";
    self.WV_DOEL28= @"";
    self.WV_DOEL29= @"";
    self.WV_DOEL30= @"";
    self.WV_DOEL31= @"";
    self.WV_DOEL32= @"";
    self.WV_NODIG= @"";
    self.WV_UILG= @"";
    self.WV_VTN= @"";
    self.WV_VEN= @"";
    self.WV_MITAL= 0;
    self.WV_MI1VL= @"";
    self.WV_MI2LM= @"";
    self.WV_MI3VR= @"";
    self.WV_MI4LK= @"";
    self.WV_MI5MR= @"";
    self.WV_MI6NA= @"";
    self.WV_MI7IE= @"";
    self.WV_MI8IA= @"";
    self.WV_MEMO= @"";
    
    return self;
}

- (NSDictionary *)convertToDictionary{
    NSDictionary *dictionary = [[NSDictionary alloc]initWithObjectsAndKeys:	@{	@"TC" : self.WV_TC,
                                                                            	@"NR" : self.WV_NR,
                                                                            	@"WV_LT" : self.WV_LT,
                                                                            	@"WV_X1" : self.WV_X1,
                                                                            	@"WV_E" : self.WV_E,
                                                                            	@"WV_R" : self.WV_R,
                                                                            	@"WV_T" : self.WV_C,
                                                                            	@"WV_T" : self.WV_T,
                                                                            	@"WV_TCR" : self.WV_TCR,
                                                                            	@"WV_TPR" : self.WV_TPR,
                                                                            	@"WV_M" : self.WV_M,
                                                                            	@"WV_GROEP" : self.WV_GROEP,
                                                                            	@"WV_BRON" : self.WV_BRON,
                                                                            	@"WV_STER" : [NSString stringWithFormat:@"%i", self.WV_STER],
                                                                            	@"WV_NAAM" : self.WV_NAAM, 
                                                                            	@"WV_WWV" : self.WV_WWV,
                                                                                @"WV_X2" : self.WV_X2,
                                                                                @"WV_GGMN" : [NSString stringWithFormat:@"%i", self.WV_GGMN],
                                                                                @"WV_GGMX" : [NSString stringWithFormat:@"%i",self.WV_GGMX],
                                                                                @"WV_V" : self.WV_V,
                                                                                @"WV_VMN" : [NSString stringWithFormat:@"%i",self.WV_VMN],
                                                                                @"WV_VMX" : [NSString stringWithFormat:@"%i",self.WV_VMX],
                                                                                @"WV_TY" : self.WV_TY,
                                                                                @"WV_TMN" : [NSString stringWithFormat:@"%i",self.WV_TMN],
                                                                                @"WV_TMX" : [NSString stringWithFormat:@"%i",self.WV_TMX],
                                                                                @"WV_N" : self.WV_N,
                                                                                @"WV_NMN" : [NSString stringWithFormat:@"%i",self.WV_NMN],
                                                                                @"WV_NMX" : [NSString stringWithFormat:@"%i",self.WV_NMX],
                                                                                @"WV_LDC" : self.WV_LDC,
                                                                                @"WV_LDAANT" : [NSString stringWithFormat:@"%i",self.WV_LDAANT],
                                                                                @"WV_DOEL01" : self.WV_DOEL01,
                                                                                @"WV_DOEL02" : self.WV_DOEL02,
                                                                                @"WV_DOEL03" : self.WV_DOEL03,
                                                                                @"WV_DOEL04" : self.WV_DOEL04,
                                                                                @"WV_DOEL05" : self.WV_DOEL05,
                                                                                @"WV_DOEL06" : self.WV_DOEL06,
                                                                                @"WV_DOEL07" : self.WV_DOEL07,
                                                                                @"WV_DOEL08" : self.WV_DOEL08,
                                                                                @"WV_DOEL09" : self.WV_DOEL09,
                                                                                @"WV_DOEL10" : self.WV_DOEL10, 
                                                                                @"WV_DOEL11" : self.WV_DOEL11,
                                                                                @"WV_DOEL12" : self.WV_DOEL12,
                                                                                @"WV_DOEL13" : self.WV_DOEL13,
                                                                                @"WV_DOEL14" : self.WV_DOEL14,
                                                                                @"WV_DOEL15" : self.WV_DOEL15,
                                                                                @"WV_DOEL16" : self.WV_DOEL16,
                                                                                @"WV_DOEL17" : self.WV_DOEL17,
                                                                                @"WV_DOEL18" : self.WV_DOEL18,
                                                                                @"WV_DOEL19" : self.WV_DOEL19,
                                                                                @"WV_DOEL20" : self.WV_DOEL20,
                                                                                @"WV_DOEL21" : self.WV_DOEL21,
                                                                                @"WV_DOEL22" : self.WV_DOEL22,
                                                                                @"WV_DOEL23" : self.WV_DOEL23,
                                                                                @"WV_DOEL24" : self.WV_DOEL24,
                                                                                @"WV_DOEL25" : self.WV_DOEL25,
                                                                                @"WV_DOEL26" : self.WV_DOEL26,
                                                                                @"WV_DOEL27" : self.WV_DOEL27,
                                                                                @"WV_DOEL28" : self.WV_DOEL28,
                                                                                @"WV_DOEL29" : self.WV_DOEL29,
                                                                                @"WV_DOEL30" : self.WV_DOEL30,
                                                                                @"WV_DOEL31" : self.WV_DOEL31,
                                                                                @"WV_DOEL32" : self.WV_DOEL32,
                                                                                @"WV_NODIG" : self.WV_NODIG,
                                                                                @"WV_UILG" : self.WV_UILG,
                                                                                @"WV_VTN" : self.WV_VTN,
                                                                                @"WV_VEN" : self.WV_VEN,
                                                                                @"WV_MITAL" : [NSString stringWithFormat:@"%i",self.WV_MITAL],
                                                                                @"WV_MI1VL" : self.WV_MI1VL,
                                                                                @"WV_MI2LM" : self.WV_MI2LM,
                                                                                @"WV_MI3VR" : self.WV_MI3VR,
                                                                                @"WV_MI4LK" : self.WV_MI4LK,
                                                                                @"WV_MI5MR" : self.WV_MI5MR,
                                                                                @"WV_MI6NA" : self.WV_MI6NA,
                                                                                @"WV_MI7IE" : self.WV_MI7IE,
                                                                                @"WV_MI8IA" : self.WV_MI8IA,
                                                                                @"WV_MEMO" : self.WV_MEMO}, nil];
    return dictionary;
}

- (NSString *)convertDictionaryToJsonString:(NSDictionary *)dictionary{
    NSError *error;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dictionary
                                                       options:0
                                                         error:&error];
    NSString *JSONString = [[NSString alloc] initWithBytes:[jsonData bytes] length:[jsonData length] encoding:NSUTF8StringEncoding];
    
    NSLog(@"JSON OUTPUT: %@", JSONString);
    
    return JSONString;
}
@end
