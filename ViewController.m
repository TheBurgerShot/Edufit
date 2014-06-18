//
//  ViewController.m
//  Edufit
//
//  Created by richard kerkvliet on 16/05/14.
//  Copyright (c) 2014 richard kerkvliet. All rights reserved.
//

#import "ViewController.h"
#import "DoelenViewController.h"
#import "IntelligentieViewController.h"
#import "SoortViewController.h"
#import "UitvoeringstijdViewController.h"
#import "GroepViewController.h"
#import "TopicViewController.h"
#import "MoeilijkheidViewController.h"
#import "BronViewController.h"
#import "ResultaatViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UISwitch *goalSwitch;
@property (weak, nonatomic) IBOutlet UISwitch *InteligenceSwitch;
@property (weak, nonatomic) IBOutlet UISwitch *typeSwitch;
@property (weak, nonatomic) IBOutlet UISwitch *executionTimeSwitch;
@property (weak, nonatomic) IBOutlet UISwitch *groupSwitch;
@property (weak, nonatomic) IBOutlet UISwitch *topicSwitch;
@property (weak, nonatomic) IBOutlet UISwitch *dificultSwitch;
@property (weak, nonatomic) IBOutlet UISwitch *sourceSwitch;
@property (strong, nonatomic) IBOutletCollection(UISwitch) NSArray *switchCollection;
@property (weak, nonatomic) IBOutlet UIButton *doelButton;
@end

@implementation ViewController
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

}

- (IBAction)pressGoal:(id)sender {

    UISwitch *buttonSwitch;
    UIButton *btn = (UIButton *)sender;
    NSString *message;
    
    if ([btn.currentTitle isEqualToString:@"doel"]) {
            buttonSwitch = self.goalSwitch;
        message = @"Doel";
    } else if ([btn.currentTitle isEqualToString:@"inteligentie"]) {
        buttonSwitch = self.InteligenceSwitch;
        message = @"Intelligentie";
    }else if ([btn.currentTitle isEqualToString:@"soort"]){
        buttonSwitch = self.typeSwitch;
        message = @"Soort";
    }else if ([btn.currentTitle isEqualToString:@"tijdsduur"]){
        buttonSwitch = self.executionTimeSwitch;
        message = @"Tijdsduur";
    }else if ([btn.currentTitle isEqualToString:@"groepsgrootte"]){
        buttonSwitch = self.groupSwitch;
        message = @"Groepsgrootte";
    }else if ([btn.currentTitle isEqualToString:@"onderwerp"]){
        buttonSwitch = self.topicSwitch;
        message = @"Onderwerp";
    }else if ([btn.currentTitle isEqualToString:@"moeilijkheidsgraad"]){
        buttonSwitch = self.dificultSwitch;
        message = @"Moeilijkheidsgraad";
    }else if ([btn.currentTitle isEqualToString:@"bron"]){
        buttonSwitch = self.sourceSwitch;
        message = @"Bron";
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
        
        int duration = 0.85; // duration in seconds
        
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, duration * NSEC_PER_SEC), dispatch_get_main_queue(), ^{
            [toast dismissWithClickedButtonIndex:0 animated:YES];
        });
        
    }
}
NSMutableArray *werkvormen;

- (IBAction)start:(id)sender {
    NSMutableArray *werkvormen = [[NSMutableArray alloc]initWithObjects:nil];
    UISwitch*mySwitch = (UISwitch*)sender;
    for (mySwitch in self.switchCollection) {
        if (mySwitch.isOn) {
            [werkvormen addObject:mySwitch.restorationIdentifier];
        }
    }
    NSString *werkvorm;
    for (werkvorm in werkvormen){
        if ([werkvorm isEqualToString: @"Goal"]){
            NSLog(@"%@", werkvorm);
            DoelenViewController *viewcontroller = [[DoelenViewController alloc]init];
           // [self.navigationController popToViewController:viewcontroller animated:YES];
        }else if ([werkvorm isEqualToString:@"intelegence"]){
            NSLog(@"%@", werkvorm);
            IntelligentieViewController *viewcontroller = [[IntelligentieViewController alloc]init];
            //[self.navigationController popToViewController:viewcontroller animated:YES];
        }else if ([werkvorm isEqualToString:@"type"]){
            NSLog(@"%@", werkvorm);
            SoortViewController *viewcontroller = [[SoortViewController alloc]init];
           // [self.navigationController pushViewController:viewcontroller animated:YES];
        }else if ([werkvorm isEqualToString
                   :@"executionTime"]){
            NSLog(@"%@", werkvorm);
            UitvoeringstijdViewController *viewcontroller = [[UitvoeringstijdViewController alloc]init];
           // [self.navigationController pushViewController:viewcontroller animated:YES];
        }else if ([werkvorm isEqualToString:@"Group"]){
            NSLog(@"%@", werkvorm);
            GroepViewController *viewcontroller = [[GroepViewController alloc]init];
           // [self.navigationController pushViewController:viewcontroller animated:YES];
        }else if ([werkvorm isEqualToString:@"Topic"]){
            NSLog(@"%@", werkvorm);
            TopicViewController *viewcontroller = [[TopicViewController alloc]init];
            [self.navigationController pushViewController:viewcontroller animated:YES];
        }else if ([werkvorm isEqualToString:@"dificulty"]){
            NSLog(@"%@", werkvorm);
            MoeilijkheidViewController *viewcontroller = [[MoeilijkheidViewController alloc]init];
           // [self.navigationController pushViewController:viewcontroller animated:YES];
        }else if ([werkvorm isEqualToString:@"source"]){
            NSLog(@"%@", werkvorm);
            BronViewController *viewcontroller = [[BronViewController alloc]init];
            //[self.navigationController pushViewController:viewcontroller animated:YES];
        }else{
            ResultaatViewController *viewcontroller = [[ResultaatViewController alloc]init];
           // [self.navigationController pushViewController:viewcontroller animated:YES];
        }
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    Werkvorm *werkvorm = [[Werkvorm alloc] init];
    DoelenViewController *doelenViewController = [segue destinationViewController];
    doelenViewController.werkvorm = werkvorm;
}

- (void)performSegueWithIdentifier:(NSString *)identifier sender:(id)sender{
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
