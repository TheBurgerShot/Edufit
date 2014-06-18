//
//  IntelligentieViewController.m
//  Edufit
//
//  Created by richard kerkvliet on 28/05/14.
//  Copyright (c) 2014 richard kerkvliet. All rights reserved.
//

#import "IntelligentieViewController.h"
#import "DoelenViewController.h"
#import "SoortViewController.h"

@interface IntelligentieViewController ()
@property (weak, nonatomic) IBOutlet UISwitch *beeldSwitch;
@property (weak, nonatomic) IBOutlet UISwitch *sportSwitch;
@property (weak, nonatomic) IBOutlet UISwitch *muziekSwitch;
@property (weak, nonatomic) IBOutlet UISwitch *natuurSwitch;
@property (weak, nonatomic) IBOutlet UISwitch *rekenSwitch;
@property (weak, nonatomic) IBOutlet UISwitch *samenSwitch;
@property (weak, nonatomic) IBOutlet UISwitch *taalSwitch;
@property (weak, nonatomic) IBOutlet UISwitch *zelfSwitch;
@property (strong, nonatomic) IBOutletCollection(UISwitch) NSArray *IntelligentieSwitchCollection;

@end

@implementation IntelligentieViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)pressGoal:(id)sender {
    
    UISwitch *buttonSwitch;
    UIButton *btn = (UIButton *)sender;
    NSString *message;
    
    if ([btn.currentTitle isEqualToString:@"beeld"]) {
        buttonSwitch = self.beeldSwitch;
        message = @"Intelligentie: Beeld";
    } else if ([btn.currentTitle isEqualToString:@"sport"]) {
        buttonSwitch = self.sportSwitch;
        message = @"Intelligentie: Sport";
    }else if ([btn.currentTitle isEqualToString:@"muziek"]){
        buttonSwitch = self.muziekSwitch;
        message = @"Intelligentie: Muziek";
    }else if ([btn.currentTitle isEqualToString:@"natuur"]){
        buttonSwitch = self.natuurSwitch;
        message = @"Intelligentie: Natuur";
    }else if ([btn.currentTitle isEqualToString:@"reken"]){
        buttonSwitch = self.rekenSwitch;
        message = @"Intelligentie: Reken";
    }else if ([btn.currentTitle isEqualToString:@"samen"]){
        buttonSwitch = self.samenSwitch;
        message = @"Intelligentie: Samen";
    }else if ([btn.currentTitle isEqualToString:@"taal"]){
        buttonSwitch = self.taalSwitch;
        message = @"Intelligentie: Taal";
    }else if ([btn.currentTitle isEqualToString:@"zelf"]){
        buttonSwitch = self.zelfSwitch;
        message = @"Intelligentie: Zelf";
    }
    
    
    
    if (buttonSwitch.isOn){
        [buttonSwitch setOn:NO animated:YES];
    }else{
        [buttonSwitch setOn:YES animated:YES];
        
        UIAlertView *toast = [[UIAlertView alloc] initWithTitle:nil
                                                        message:message
                                                       delegate:nil
                                              cancelButtonTitle:nil
                                              otherButtonTitles:nil, nil];
        [toast show];
        
        int duration = 1; // duration in seconds
        
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, duration * NSEC_PER_SEC), dispatch_get_main_queue(), ^{
            [toast dismissWithClickedButtonIndex:0 animated:YES];
        });
    }
}

- (IBAction)NextButton:(id)sender{
    if (_beeldSwitch.isOn){
        _werkvorm.WV_MI3VR = @"ja";
    }else{
        _werkvorm.WV_MI3VR = NULL;
    }
    if (_sportSwitch.isOn) {
        _werkvorm.WV_MI4LK = @"ja";
    }else{
        _werkvorm.WV_MI4LK = NULL;
    }
    if (_muziekSwitch.isOn) {
        _werkvorm.WV_MI5MR = @"ja";
    }else{
        _werkvorm.WV_MI5MR = NULL;
    }
    if (_natuurSwitch.isOn) {
        _werkvorm.WV_MI6NA = @"ja";
    }else{
        _werkvorm.WV_MI6NA = NULL;
    }
    if (_rekenSwitch.isOn) {
        _werkvorm.WV_MI2LM= @"ja";
    }else{
        _werkvorm.WV_MI2LM = NULL;
    }
    if (_samenSwitch.isOn) {
        _werkvorm.WV_MI7IE = @"ja";
    }else{
        _werkvorm.WV_MI7IE = NULL;
    }
    if (_taalSwitch.isOn) {
        _werkvorm.WV_MI1VL = @"ja";
    }else{
        _werkvorm.WV_MI1VL = NULL;
    }
    if (_zelfSwitch.isOn) {
        _werkvorm.WV_MI8IA = @"ja";
    }else{
        _werkvorm.WV_MI8IA = NULL;
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    SoortViewController *soortViewController = [segue destinationViewController];
    soortViewController.werkvorm = _werkvorm;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
