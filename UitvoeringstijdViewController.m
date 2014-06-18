//
//  UitvoeringstijdViewController.m
//  Edufit
//
//  Created by richard kerkvliet on 26/05/14.
//  Copyright (c) 2014 richard kerkvliet. All rights reserved.
//

#import "UitvoeringstijdViewController.h"
#import "GroepViewController.h"

@interface UitvoeringstijdViewController ()
@property (weak, nonatomic) IBOutlet UILabel *duurWerkvormLabel;
@property (weak, nonatomic) IBOutlet UISlider *duurWerkvormSlider;
@property (weak, nonatomic) IBOutlet UISlider *nabewerkingSlider;
@property (weak, nonatomic) IBOutlet UILabel *nabewerkingLabel;
@property (weak, nonatomic) IBOutlet UILabel *voorbereidingLabel;
@property (weak, nonatomic) IBOutlet UISlider *voorbereidingSlider;

@end

@implementation UitvoeringstijdViewController

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
- (IBAction)duurWerkvormSliderValueDidChange:(id)sender {
    _duurWerkvormLabel.text = [NSString stringWithFormat:@"%i", (int)_duurWerkvormSlider.value];
}
- (IBAction)nabewerkingSliderValueDidChange:(id)sender {
    _nabewerkingLabel.text = [NSString stringWithFormat:@"%i", (int)_nabewerkingSlider.value];
}
- (IBAction)voorbereidingSliderValueDidChange:(id)sender {
    _voorbereidingLabel.text = [NSString stringWithFormat:@"%i", (int) _voorbereidingSlider.value];
}

- (IBAction)NextButton:(id)sender{
    _werkvorm.WV_TMX = _duurWerkvormSlider.value;

    _werkvorm.WV_NMX = _nabewerkingSlider.value;

    _werkvorm.WV_VMX = _voorbereidingSlider.value;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    GroepViewController *groepViewController = [segue destinationViewController];
    groepViewController.werkvorm = _werkvorm;
    NSLog(@"%i", _werkvorm.WV_VMX);
    NSLog(@"%i", _werkvorm.WV_TMX);
    NSLog(@"%i", _werkvorm.WV_NMX);
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
