//
//  Werkvorm.m
//  Edufit
//
//  Created by richard kerkvliet on 16/06/14.
//  Copyright (c) 2014 richard kerkvliet. All rights reserved.
//

#import "Werkvorm.h"



@implementation Werkvorm

@synthesize WV_TC,
            WV_NR,
            WV_LT,
            WV_X1,
            WV_E,
            WV_R,
            WV_C,
            WV_T,
			WV_TCR,
			WV_TPR,
			WV_M,
			WV_GROEP,
			WV_BRON,
			WV_STER,
			WV_NAAM,
			WV_WWV,
			WV_X2,
			WV_GGMN,
			WV_GGMX,
			WV_V,
			WV_VMN,
			WV_VMX,
			WV_TY,
			WV_TMN,
			WV_TMX,
			WV_N,
			WV_NMN,
			WV_NMX,
			WV_LDC,
			WV_LDAANT,
			WV_DOEL01,
			WV_DOEL02,
			WV_DOEL03,
			WV_DOEL04,
			WV_DOEL05,
			WV_DOEL06,
			WV_DOEL07,
			WV_DOEL08,
			WV_DOEL09,
			WV_DOEL10,
			WV_DOEL11,
			WV_DOEL12,
			WV_DOEL13,
			WV_DOEL14,
			WV_DOEL15,
			WV_DOEL16,
			WV_DOEL17,
			WV_DOEL18,
			WV_DOEL19,
			WV_DOEL20,
			WV_DOEL21,
			WV_DOEL22,
			WV_DOEL23,
			WV_DOEL24,
			WV_DOEL25,
			WV_DOEL26,
			WV_DOEL27,
			WV_DOEL28,
			WV_DOEL29,
			WV_DOEL30,
			WV_DOEL31,
			WV_DOEL32,
			WV_NODIG,
			WV_UILG,
			WV_VTN,
			WV_VEN,
			WV_MITAL,
			WV_MI1VL,
			WV_MI2LM,
			WV_MI3VR,
			WV_MI4LK,
			WV_MI5MR,
			WV_MI6NA,
			WV_MI7IE,
			WV_MI8IA,
			WV_MEMO;

/*
- (NSString *)changeNilIntoEmptyString: (NSString *)string{
    if (string == nil)
        return @"";
    else
        return string;
}
 */

- (void)setEmptyStrings{
    self.WV_TC      = @"";
    self.WV_NR      = @"";
    self.WV_LT      = @"";
    self.WV_X1      = @"";
    self.WV_E       = @"";
    self.WV_R       = @"";
    self.WV_C       = @"";
    self.WV_T       = @"";
    self.WV_TCR     = @"";
    self.WV_TPR     = @"";
    self.WV_M       = @"";
    self.WV_GROEP   = @"";
    self.WV_BRON    = @"";
    self.WV_STER    = [NSNull null];
    self.WV_NAAM    = @"";
    self.WV_WWV     = @"";
    self.WV_X2      = @"";
    self.WV_GGMN    = [NSNull null];
    self.WV_GGMX    = [NSNull null];
    self.WV_V       = @"";
    self.WV_VMN     = [NSNull null];
    self.WV_VMX     = [NSNull null];
    self.WV_TY      = @"";
    self.WV_TMN     = [NSNull null];
    self.WV_TMX     = [NSNull null];
    self.WV_N       = @"";
    self.WV_NMN     = [NSNull null];
    self.WV_NMX     = [NSNull null];
    self.WV_LDC     = @"";
    self.WV_LDAANT  = [NSNull null];
    self.WV_DOEL01  = @"";
    self.WV_DOEL02  = @"";
    self.WV_DOEL03  = @"";
    self.WV_DOEL04  = @"";
    self.WV_DOEL05  = @"";
    self.WV_DOEL06  = @"";
    self.WV_DOEL07  = @"";
    self.WV_DOEL08  = @"";
    self.WV_DOEL09  = @"";
    self.WV_DOEL10  = @"";
    self.WV_DOEL11  = @"";
    self.WV_DOEL12  = @"";
    self.WV_DOEL13  = @"";
    self.WV_DOEL14  = @"";
    self.WV_DOEL15  = @"";
    self.WV_DOEL16  = @"";
    self.WV_DOEL17  = @"";
    self.WV_DOEL18  = @"";
    self.WV_DOEL19  = @"";
    self.WV_DOEL20  = @"";
    self.WV_DOEL21  = @"";
    self.WV_DOEL22  = @"";
    self.WV_DOEL23  = @"";
    self.WV_DOEL24  = @"";
    self.WV_DOEL25  = @"";
    self.WV_DOEL26  = @"";
    self.WV_DOEL27  = @"";
    self.WV_DOEL28  = @"";
    self.WV_DOEL29  = @"";
    self.WV_DOEL30  = @"";
    self.WV_DOEL31  = @"";
    self.WV_DOEL32  = @"";
    self.WV_NODIG   = @"";
    self.WV_UILG    = @"";
    self.WV_VTN     = @"";
    self.WV_VEN     = @"";
    self.WV_MITAL   = [NSNull null];
    self.WV_MI1VL   = @"";
    self.WV_MI2LM   = @"";
    self.WV_MI3VR   = @"";
    self.WV_MI4LK   = @"";
    self.WV_MI5MR   = @"";
    self.WV_MI6NA   = @"";
    self.WV_MI7IE   = @"";
    self.WV_MI8IA   = @"";
    self.WV_MEMO    = @"";
}

- (NSDictionary *)convertToDictionary{
    NSDictionary *dictionary = [[NSDictionary alloc]initWithObjectsAndKeys:   @{self.WV_TC : @"WV_TC",
                                                                            	self.WV_NR : @"WV_NR",
                                                                            	self.WV_LT : @"WV_LT",
                                                                            	self.WV_X1 : @"WV_X1",
                                                                            	self.WV_E : @"WV_E",
                                                                            	self.WV_R : @"WV_R",
                                                                            	self.WV_C : @"WV_C",
                                                                            	self.WV_T : @"WV_T",
                                                                            	self.WV_TCR : @"WV_TCR",
                                                                            	self.WV_TPR : @"WV_TPR",
                                                                            	self.WV_M : @"WV_M",
                                                                            	self.WV_GROEP : @"WV_GROEP",
                                                                            	self.WV_BRON : @"WV_BRON",
                                                                            	[NSNumber numberWithInteger:self.WV_STER] : @"WV_STER",
                                                                            	self.WV_NAAM : @"WV_NAAM",
                                                                            	self.WV_WWV : @"WV_WWV",
                                                                                self.WV_X2 : @"WV_X2",
                                                                                [NSNumber numberWithInteger: self.WV_GGMN] : @"WV_GGMN",
                                                                                [NSNumber numberWithInteger: self.WV_GGMX] : @"WV_GGMX",
                                                                                self.WV_V : @"WV_V",
                                                                                [NSNumber numberWithInteger: self.WV_VMN] : @"WV_VMN",
                                                                                [NSNumber numberWithInteger: self.WV_VMX] : @"WV_VMX",
                                                                                self.WV_TY : @"WV_TY",
                                                                                [NSNumber numberWithInteger: self.WV_TMN] : @"WV_TMN",
                                                                                [NSNumber numberWithInteger: self.WV_TMX] : @"WV_TMX",
                                                                                self.WV_N : @"WV_N",
                                                                                [NSNumber numberWithInteger: self.WV_NMN] : @"WV_NMN",
                                                                                [NSNumber numberWithInteger: self.WV_NMX] : @"WV_NMX",
                                                                                self.WV_LDC : @"WV_LDC",
                                                                                [NSNumber numberWithInteger: self.WV_LDAANT] : @"WV_LDAANT",
                                                                                self.WV_DOEL01 : @"WV_DOEL01",
                                                                                self.WV_DOEL02 : @"WV_DOEL02",
                                                                                self.WV_DOEL03 : @"WV_DOEL03",
                                                                                self.WV_DOEL04 : @"WV_DOEL04",
                                                                                self.WV_DOEL05 : @"WV_DOEL05",
                                                                                self.WV_DOEL06 : @"WV_DOEL06",
                                                                                self.WV_DOEL07 : @"WV_DOEL07",
                                                                                self.WV_DOEL08 : @"WV_DOEL08",
                                                                                self.WV_DOEL09 : @"WV_DOEL09",
                                                                                self.WV_DOEL10 : @"WV_DOEL10",
                                                                                self.WV_DOEL11 : @"WV_DOEL11",
                                                                                self.WV_DOEL12 : @"WV_DOEL12",
                                                                                self.WV_DOEL13 : @"WV_DOEL13",
                                                                                self.WV_DOEL14 : @"WV_DOEL14",
                                                                                self.WV_DOEL15 : @"WV_DOEL15",
                                                                                self.WV_DOEL16 : @"WV_DOEL16",
                                                                                self.WV_DOEL17 : @"WV_DOEL17",
                                                                                self.WV_DOEL18 : @"WV_DOEL18",
                                                                                self.WV_DOEL19 : @"WV_DOEL19",
                                                                                self.WV_DOEL20 : @"WV_DOEL20",
                                                                                self.WV_DOEL21 : @"WV_DOEL21",
                                                                                self.WV_DOEL22 : @"WV_DOEL22",
                                                                                self.WV_DOEL23 : @"WV_DOEL23",
                                                                                self.WV_DOEL24 : @"WV_DOEL24",
                                                                                self.WV_DOEL25 : @"WV_DOEL25",
                                                                                self.WV_DOEL26 : @"WV_DOEL26",
                                                                                self.WV_DOEL27 : @"WV_DOEL27",
                                                                                self.WV_DOEL28 : @"WV_DOEL28",
                                                                                self.WV_DOEL29 : @"WV_DOEL29",
                                                                                self.WV_DOEL30 : @"WV_DOEL30",
                                                                                self.WV_DOEL31 : @"WV_DOEL31",
                                                                                self.WV_DOEL32 : @"WV_DOEL32",
                                                                                self.WV_NODIG : @"WV_NODIG",
                                                                                self.WV_UILG : @"WV_UILG",
                                                                                self.WV_VTN : @"WV_VTN",
                                                                                self.WV_VEN : @"WV_VEN",
                                                                                [NSNumber numberWithInteger: self.WV_MITAL] : @"WV_MITAL",
                                                                                self.WV_MI1VL : @"WV_MI1VL",
                                                                                self.WV_MI2LM : @"WV_MI2LM",
                                                                                self.WV_MI3VR : @"WV_MI3VR",
                                                                                self.WV_MI4LK : @"WV_MI4LK",
                                                                                self.WV_MI5MR : @"WV_MI5MR",
                                                                                self.WV_MI6NA : @"WV_MI6NA",
                                                                                self.WV_MI7IE : @"WV_MI7IE",
                                                                                self.WV_MI8IA : @"WV_MI8IA",
                                                                                self.WV_MEMO : @"WV_MEMO"}, nil];
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
