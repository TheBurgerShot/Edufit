//
//  Werkvorm.h
//  Edufit
//
//  Created by richard kerkvliet on 16/06/14.
//  Copyright (c) 2014 richard kerkvliet. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Werkvorm : NSObject

@property (nonatomic, strong) NSString *WV_TC;
@property (nonatomic, strong) NSString *WV_NR;
@property (nonatomic, strong) NSString *WV_LT;
@property (nonatomic, strong) NSString *WV_X1;
@property (nonatomic, strong) NSString *WV_E;
@property (nonatomic, strong) NSString *WV_R;
@property (nonatomic, strong) NSString *WV_C;
@property (nonatomic, strong) NSString *WV_T;
@property (nonatomic, strong) NSString *WV_TCR;
@property (nonatomic, strong) NSString *WV_TPR;
@property (nonatomic, strong) NSString *WV_M;
@property (nonatomic, strong) NSString *WV_GROEP;
@property (nonatomic, strong) NSString *WV_BRON;
@property NSInteger WV_STER;
@property (nonatomic, strong) NSString *WV_NAAM;
@property (nonatomic, strong) NSString *WV_WWV;
@property (nonatomic, strong) NSString *WV_X2;
@property NSInteger WV_GGMN;
@property NSInteger WV_GGMX;
@property (nonatomic, strong) NSString *WV_V;
@property NSInteger WV_VMN;
@property NSInteger WV_VMX;
@property (nonatomic, strong) NSString *WV_TY;
@property NSInteger WV_TMN;
@property NSInteger WV_TMX;
@property (nonatomic, strong) NSString *WV_N;
@property NSInteger WV_NMN;
@property NSInteger WV_NMX;
@property (nonatomic, strong) NSString *WV_LDC;
@property NSInteger WV_LDAANT;
@property (nonatomic, strong) NSString *WV_DOEL01;
@property (nonatomic, strong) NSString *WV_DOEL02;
@property (nonatomic, strong) NSString *WV_DOEL03;
@property (nonatomic, strong) NSString *WV_DOEL04;
@property (nonatomic, strong) NSString *WV_DOEL05;
@property (nonatomic, strong) NSString *WV_DOEL06;
@property (nonatomic, strong) NSString *WV_DOEL07;
@property (nonatomic, strong) NSString *WV_DOEL08;
@property (nonatomic, strong) NSString *WV_DOEL09;
@property (nonatomic, strong) NSString *WV_DOEL10;
@property (nonatomic, strong) NSString *WV_DOEL11;
@property (nonatomic, strong) NSString *WV_DOEL12;
@property (nonatomic, strong) NSString *WV_DOEL13;
@property (nonatomic, strong) NSString *WV_DOEL14;
@property (nonatomic, strong) NSString *WV_DOEL15;
@property (nonatomic, strong) NSString *WV_DOEL16;
@property (nonatomic, strong) NSString *WV_DOEL17;
@property (nonatomic, strong) NSString *WV_DOEL18;
@property (nonatomic, strong) NSString *WV_DOEL19;
@property (nonatomic, strong) NSString *WV_DOEL20;
@property (nonatomic, strong) NSString *WV_DOEL21;
@property (nonatomic, strong) NSString *WV_DOEL22;
@property (nonatomic, strong) NSString *WV_DOEL23;
@property (nonatomic, strong) NSString *WV_DOEL24;
@property (nonatomic, strong) NSString *WV_DOEL25;
@property (nonatomic, strong) NSString *WV_DOEL26;
@property (nonatomic, strong) NSString *WV_DOEL27;
@property (nonatomic, strong) NSString *WV_DOEL28;
@property (nonatomic, strong) NSString *WV_DOEL29;
@property (nonatomic, strong) NSString *WV_DOEL30;
@property (nonatomic, strong) NSString *WV_DOEL31;
@property (nonatomic, strong) NSString *WV_DOEL32;
@property (nonatomic, strong) NSString *WV_NODIG;
@property (nonatomic, strong) NSString *WV_UILG;
@property (nonatomic, strong) NSString *WV_VTN;
@property (nonatomic, strong) NSString *WV_VEN;
@property NSInteger WV_MITAL;
@property (nonatomic, strong) NSString *WV_MI1VL;
@property (nonatomic, strong) NSString *WV_MI2LM;
@property (nonatomic, strong) NSString *WV_MI3VR;
@property (nonatomic, strong) NSString *WV_MI4LK;
@property (nonatomic, strong) NSString *WV_MI5MR;
@property (nonatomic, strong) NSString *WV_MI6NA;
@property (nonatomic, strong) NSString *WV_MI7IE;
@property (nonatomic, strong) NSString *WV_MI8IA;
@property (nonatomic, strong) NSString *WV_MEMO;

- (void)setEmptyStrings;
- (NSString *)convertDictionaryToJsonString:(NSDictionary *)dictionary;
- (NSDictionary *)convertToDictionary;
@end