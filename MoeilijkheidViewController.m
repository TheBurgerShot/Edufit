//
//  MoeilijkheidViewController.m
//  Edufit
//
//  Created by richard kerkvliet on 02/06/14.
//  Copyright (c) 2014 richard kerkvliet. All rights reserved.
//

#import "MoeilijkheidViewController.h"
#import "Werkvorm.h"
#import "BronViewController.h"



@interface MoeilijkheidViewController ()
@property (weak, nonatomic) IBOutlet UIButton *SingleStarButton;
@property (weak, nonatomic) IBOutlet UIButton *DoubleStarButton;
@property (weak, nonatomic) IBOutlet UIButton *TripleStarButton;
@property (weak, nonatomic) IBOutlet UILabel *MoeilijkLabel;
@end

@implementation MoeilijkheidViewController


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

- (IBAction)pressStar:(id)sender
{
    UIButton *btn = (UIButton *)sender;

    if([btn.restorationIdentifier isEqualToString:@"one"]){
        self.SingleStarButton.alpha = 1;
        self.DoubleStarButton.alpha = 0.3;
        self.TripleStarButton.alpha = 0.3;
        self.MoeilijkLabel.text = @"Startende docent/trainer. Ik wil graag dat de werkvorm altijd lukt";
        _moeilijkheidsgraad = 1;
    }else if([btn.restorationIdentifier isEqualToString:@"two"]){
        self.SingleStarButton.alpha = 1;
        self.DoubleStarButton.alpha = 1;
        self.TripleStarButton.alpha = 0.3;
        self.MoeilijkLabel.text = @"Taakgerichte docent/trainer. Ik vind de inhoud belangrijk en ben doelgericht op resultaat";
        _moeilijkheidsgraad = 2;
    }else if([btn.restorationIdentifier isEqualToString:@"three"]){
        self.SingleStarButton.alpha = 1;
        self.DoubleStarButton.alpha = 1;
        self.TripleStarButton.alpha = 1;
        self.MoeilijkLabel.text = @"Groepsgerichte docent/trainer. Ik kan improviseren en vindt groepsprocessen belangrijk";
        _moeilijkheidsgraad = 3;
    }

}

- (IBAction)NextButton:(id)sender{
    if (_moeilijkheidsgraad == 1){
        _werkvorm.WV_STER = 1;
    }else if (_moeilijkheidsgraad == 2){
        _werkvorm.WV_STER = 2;
    }else if (_moeilijkheidsgraad == 3){
        _werkvorm.WV_STER = 3;
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    BronViewController *bronViewController = [segue destinationViewController];
    bronViewController.werkvorm = _werkvorm;
    NSLog(@"%i", _werkvorm.WV_STER);
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
