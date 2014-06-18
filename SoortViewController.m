//
//  SoortViewController.m
//  Edufit
//
//  Created by richard kerkvliet on 17/06/14.
//  Copyright (c) 2014 richard kerkvliet. All rights reserved.
//

#import "SoortViewController.h"
#import "UitvoeringstijdViewController.h"

@interface SoortViewController ()
@property (weak, nonatomic) IBOutlet UISwitch *IjsbrekerSwitch;
@property (weak, nonatomic) IBOutlet UISwitch *SpelvormSwitch;
@property (weak, nonatomic) IBOutlet UISwitch *DocentSwitch;
@property (weak, nonatomic) IBOutlet UISwitch *discussieSwitch;
@property (weak, nonatomic) IBOutlet UISwitch *WerkopdrachtSwitch;
@property (weak, nonatomic) IBOutlet UISwitch *digitaalSwitch;

@end

@implementation SoortViewController

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
    
    if ([btn.currentTitle isEqualToString:@"ijs"]) {
        buttonSwitch = self.IjsbrekerSwitch;
        message = @"Soort: Ijsbreker";
    } else if ([btn.currentTitle isEqualToString:@"spel"]) {
        buttonSwitch = self.SpelvormSwitch;
        message = @"Soort: Spel";
    }else if ([btn.currentTitle isEqualToString:@"docent"]){
        buttonSwitch = self.DocentSwitch;
        message = @"Soort: Docent";
    }else if ([btn.currentTitle isEqualToString:@"discussie"]){
        buttonSwitch = self.discussieSwitch;
        message = @"Soort: Discussie";
    }else if ([btn.currentTitle isEqualToString:@"werk"]){
        buttonSwitch = self.WerkopdrachtSwitch;
        message = @"Soort: Werkopdracht";
    }else if ([btn.currentTitle isEqualToString:@"digitaal"]){
        buttonSwitch = self.digitaalSwitch;
        message = @"Soort: Digitaal";
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

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)nextButton:(id)sender{
    NSString *soort = @"";
    if (_IjsbrekerSwitch.isOn){
        soort = [soort stringByAppendingString:@"ijsbreker"];
        if(!_SpelvormSwitch.isOn && !_DocentSwitch.isOn && !_discussieSwitch.isOn && !_WerkopdrachtSwitch.isOn && !_digitaalSwitch.isOn){
            _werkvorm.WV_GROEP = soort;
        }else{
            soort = [soort stringByAppendingString:@"|"];
        }
    }
    if (_SpelvormSwitch.isOn){
        soort = [soort stringByAppendingString:@"spelvorm"];
        if (!_DocentSwitch.isOn && !_discussieSwitch.isOn && !_WerkopdrachtSwitch.isOn && !_digitaalSwitch.isOn){
            _werkvorm.WV_GROEP = soort;
        }else{
            soort = [soort stringByAppendingString:@"|"];
        }
    }
    if (_DocentSwitch.isOn){
        soort = [soort stringByAppendingString:@"docent Centraal"];
        if (!_discussieSwitch.isOn && !_WerkopdrachtSwitch.isOn && !_digitaalSwitch.isOn){
            _werkvorm.WV_GROEP = soort;
        }else{
            soort = [soort stringByAppendingString:@"|"];
        }
    }
    if (_discussieSwitch.isOn){
        soort = [soort stringByAppendingString:@"discussievorm"];
        if (!_WerkopdrachtSwitch.isOn && !_digitaalSwitch.isOn){
            _werkvorm.WV_GROEP = soort;
        }else{
            soort = [soort stringByAppendingString:@"|"];
        }
    }
    if (_WerkopdrachtSwitch.isOn){
        soort = [soort stringByAppendingString:@"werkopdracht"];
        if (!_digitaalSwitch.isOn){
            _werkvorm.WV_GROEP = soort;
        }else{
            soort = [soort stringByAppendingString:@"|"];
        }
    }
    if (_digitaalSwitch.isOn){
        soort = [soort stringByAppendingString:@"digitaal"];
        _werkvorm.WV_GROEP = soort;
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    UitvoeringstijdViewController *uitvoertijdViewController = [segue destinationViewController];
    uitvoertijdViewController.werkvorm = _werkvorm;
    NSLog(@"%@", _werkvorm.WV_GROEP);
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
