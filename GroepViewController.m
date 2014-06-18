//
//  GroepViewController.m
//  Edufit
//
//  Created by richard kerkvliet on 17/06/14.
//  Copyright (c) 2014 richard kerkvliet. All rights reserved.
//

#import "GroepViewController.h"
#import "TopicViewController.h"

@interface GroepViewController ()
@property (weak, nonatomic) IBOutlet UISlider *minimunSlider;
@property (weak, nonatomic) IBOutlet UISlider *maximumSlider;
@property (weak, nonatomic) IBOutlet UILabel *minimumLabel;
@property (weak, nonatomic) IBOutlet UILabel *maximumLabel;

@end

@implementation GroepViewController

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

- (IBAction)minimumSliderValeuDidChange:(id)sender{
    _minimumLabel.text = [[NSString stringWithFormat:@"%i", (int) _minimunSlider.value]stringByAppendingString:@" mensen"];
    if (_minimunSlider.value > _maximumSlider.value){
        _maximumSlider.value = _minimunSlider.value;
        _maximumLabel.text = _minimumLabel.text;
    }
}

- (IBAction)maximumSliderValueDidChange:(id)sender{
    if (_maximumSlider.value < 105){
        _maximumLabel.text = [[NSString stringWithFormat:@"%i", (int)_maximumSlider.value] stringByAppendingString:@" mensen"];
    }else{
        _maximumLabel.text = @"oneindig groot";
    }
    if (_maximumSlider.value < _minimunSlider.value){
        _minimunSlider.value = _maximumSlider.value;
        _minimumLabel.text = _maximumLabel.text;
    }
}

-(IBAction)nextButton:(id)sender{
    _werkvorm.WV_GGMN = _minimunSlider.value;
    _werkvorm.WV_GGMX = _maximumSlider.value;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    TopicViewController *topicViewController = [segue destinationViewController];
    topicViewController.werkvorm = _werkvorm;
    NSLog(@"%i", _werkvorm.WV_GGMN);
    NSLog(@"%i", _werkvorm.WV_GGMX);
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
