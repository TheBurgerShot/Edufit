//
//  DoelenViewController.m
//  Edufit
//
//  Created by richard kerkvliet on 02/06/14.
//  Copyright (c) 2014 richard kerkvliet. All rights reserved.
//

#import "DoelenViewController.h"
#import "IntelligentieViewController.h"
#import "ViewController.h"


@interface DoelenViewController (){

}
@property (weak, nonatomic) IBOutlet UISwitch *SpeelDoelSwitch;
@property (weak, nonatomic) IBOutlet UISwitch *DiscussieDoelSwitch;
@property (weak, nonatomic) IBOutlet UISwitch *BeeldDoelSwitch;
@property (weak, nonatomic) IBOutlet UISwitch *DocentDoelSwitch;
@property (weak, nonatomic) IBOutlet UISwitch *IjsbrekerDoelSwitch;
@property (weak, nonatomic) IBOutlet UISwitch *WerkDoelSwitch;
@property (weak, nonatomic) IBOutlet UISwitch *KringDoelSwitch;
@property (weak, nonatomic) IBOutlet UISwitch *ZelfDoelSwitch;
@property (weak, nonatomic) IBOutlet UISwitch *SchildDoelSwitch;
@property (weak, nonatomic) IBOutlet UISwitch *GroepDoelSwitch;
@property (weak, nonatomic) IBOutlet UISwitch *WerkopdrachtSwitch;

@end

@implementation DoelenViewController

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
    
    
    if ([btn.currentTitle isEqualToString:@"spelDoel"]) {
        buttonSwitch = self.SpeelDoelSwitch;
        message = @"Doel: Speel";
    } else if ([btn.currentTitle isEqualToString:@"discussieDoel"]) {
        buttonSwitch = self.DiscussieDoelSwitch;
        message = @"Doel: Discussie";
    }else if ([btn.currentTitle isEqualToString:@"beeldDoel"]){
        buttonSwitch = self.BeeldDoelSwitch;
        message = @"Doel: Beeld";
    }else if ([btn.currentTitle isEqualToString:@"docentDoel"]){
        buttonSwitch = self.DocentDoelSwitch;
        message = @"Doel: Docent";
    }else if ([btn.currentTitle isEqualToString:@"ijsbreekDoel"]){
        buttonSwitch = self.IjsbrekerDoelSwitch;
        message = @"Doel: Ijsbreker";
    }else if ([btn.currentTitle isEqualToString:@"werkDoel"]){
        buttonSwitch = self.WerkDoelSwitch;
        message = @"Doel: Werk";
    }else if ([btn.currentTitle isEqualToString:@"kringDoel"]){
        buttonSwitch = self.KringDoelSwitch;
        message = @"Doel: Kring";
    }else if ([btn.currentTitle isEqualToString:@"zelfDoel"]){
        buttonSwitch = self.ZelfDoelSwitch;
        message = @"Doel: Zelf";
    }else if ([btn.currentTitle isEqualToString:@"schildDoel"]){
        buttonSwitch = self.SchildDoelSwitch;
        message = @"Doel: Schild";
    }else if ([btn.currentTitle isEqualToString:@"groepDoel"]){
        buttonSwitch = self.GroepDoelSwitch;
        message = @"Doel: Groep";
    }else if ([btn.currentTitle isEqualToString:@"werkopdrachtDoel"]){
        buttonSwitch = self.WerkopdrachtSwitch;
        message = @"Doel: Werkopdracht";
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

-(IBAction)NextButton:(id)sender{
    if (_DiscussieDoelSwitch.isOn) {
        _werkvorm.WV_M = @"ja";
    }else{
        _werkvorm.WV_M = NULL;
    }
    if (_IjsbrekerDoelSwitch.isOn) {
        _werkvorm.WV_DOEL01 = @"ja";
    }else{
        _werkvorm.WV_DOEL01 = NULL;
    }
    if (_KringDoelSwitch.isOn) {
        _werkvorm.WV_DOEL15 = @"ja";
    }else{
        _werkvorm.WV_DOEL15 = NULL;
    }
    if (_WerkDoelSwitch.isOn) {
        _werkvorm.WV_E = @"ja";
    }else{
        _werkvorm.WV_E = NULL;
    }
    if (_ZelfDoelSwitch.isOn) {
        _werkvorm.WV_R = @"ja";
    }else{
        _werkvorm.WV_R = NULL;
    }
    if (_DocentDoelSwitch.isOn) {
        _werkvorm.WV_C = @"ja";
    }else{
        _werkvorm.WV_C = NULL;
    }
    if (_SpeelDoelSwitch.isOn) {
        _werkvorm.WV_T = @"ja";
    }else{
        _werkvorm.WV_T = NULL;
    }
    if (_BeeldDoelSwitch.isOn) {
        _werkvorm.WV_TCR = @"ja";
    }else{
        _werkvorm.WV_TCR = NULL;
    }
    if (_WerkopdrachtSwitch.isOn) {
        _werkvorm.WV_TPR = @"ja";
    }else{
        _werkvorm.WV_TPR = NULL;
    }
    if (_SchildDoelSwitch.isOn) {
        _werkvorm.WV_DOEL04 = @"ja";
    }else{
        _werkvorm.WV_DOEL04 = NULL;
    }
    if (_GroepDoelSwitch.isOn) {
        _werkvorm.WV_DOEL11 = @"ja";
    }else{
        _werkvorm.WV_DOEL11 = NULL;
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    IntelligentieViewController *intelligentieViewController = [segue destinationViewController];
    intelligentieViewController.werkvorm = _werkvorm;
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
