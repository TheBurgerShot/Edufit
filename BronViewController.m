//
//  BronViewController.m
//  Edufit
//
//  Created by richard kerkvliet on 16/06/14.
//  Copyright (c) 2014 richard kerkvliet. All rights reserved.
//

#import "BronViewController.h"
#import "ResultaatViewController.h"

@interface BronViewController ()
@property (weak, nonatomic) IBOutlet UISwitch *Bron1Switch;
@property (weak, nonatomic) IBOutlet UISwitch *Bron2Switch;
@property (weak, nonatomic) IBOutlet UISwitch *Bron3Switch;
@property (weak, nonatomic) IBOutlet UISwitch *Bron4Switch;
@property (weak, nonatomic) IBOutlet UISwitch *Bron5Switch;

@end

@implementation BronViewController

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

- (IBAction)pressGoal:(id)sender {
    
    UISwitch *buttonSwitch;
    UIButton *btn = (UIButton *)sender;
    NSString *message;
    
    if ([btn.currentTitle isEqualToString:@"bron1"]) {
        buttonSwitch = self.Bron1Switch;
        message = @"Activerend Opleiden";
    } else if ([btn.currentTitle isEqualToString:@"bron2"]) {
        buttonSwitch = self.Bron2Switch;
        message = @"Haal het beste uit jezelf";
    }else if ([btn.currentTitle isEqualToString:@"bron3"]){
        buttonSwitch = self.Bron3Switch;
        message = @"Haal het beste uit jezelf 2";
    }else if ([btn.currentTitle isEqualToString:@"bron4"]){
        buttonSwitch = self.Bron4Switch;
        message = @"Het gaat steeds beter";
    }else if ([btn.currentTitle isEqualToString:@"bron5"]){
        buttonSwitch = self.Bron5Switch;
        message = @"Water naar de zee dragen";
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
    NSString *bronnen = @"";
    if (_Bron4Switch.isOn) {
        bronnen = [bronnen stringByAppendingString: @"1"];
    }
    if (_Bron5Switch.isOn) {
        bronnen = [bronnen stringByAppendingString: @"2"];
    }
    if (_Bron2Switch.isOn) {
        bronnen = [bronnen stringByAppendingString: @"3"];
    }
    if (_Bron1Switch.isOn) {
        bronnen = [bronnen stringByAppendingString: @"4"];
    }
    if (_Bron3Switch.isOn) {
        bronnen = [bronnen stringByAppendingString: @"5"];
    }
    _werkvorm.WV_BRON = bronnen;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    ResultaatViewController *resultaatViewController = [segue destinationViewController];
    resultaatViewController.werkvorm = _werkvorm;
    NSLog(@"%@", _werkvorm.WV_BRON);
    
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
