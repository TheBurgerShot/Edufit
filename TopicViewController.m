//
//  TopicViewController.m
//  Edufit
//
//  Created by richard kerkvliet on 17/06/14.
//  Copyright (c) 2014 richard kerkvliet. All rights reserved.
//

#import "TopicViewController.h"
#import "MoeilijkheidViewController.h"

@interface TopicViewController ()
@property (weak, nonatomic) IBOutlet UIButton *communicatiefButton;
@property (weak, nonatomic) IBOutlet UIButton *presentatieButton;
@property (weak, nonatomic) IBOutlet UIButton *schrijfButton;
@property (weak, nonatomic) IBOutlet UIButton *samenButton;
@property (weak, nonatomic) IBOutlet UIButton *vrij1Button;
@property (weak, nonatomic) IBOutlet UIButton *vrij2Button;
@property (weak, nonatomic) IBOutlet UIButton *persoonButton;
@property (weak, nonatomic) IBOutlet UIButton *creatiefButton;
@property (weak, nonatomic) IBOutlet UIButton *vrij3Button;

@end

@implementation TopicViewController

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

- (IBAction)onClick:(id)sender{
    UIButton *btn = (UIButton *)sender;
    if (!btn.selected){
        [btn setImage:[UIImage imageNamed:@"Checked.png"] forState:UIControlStateNormal];
        btn.selected = YES;
    }else{
        [btn setImage:[UIImage imageNamed:@"Unchecked.png"] forState:UIControlStateNormal];
        btn.selected = NO;
    }
}

- (IBAction)nextButton:(id)sender{
    if (_communicatiefButton.selected){
        _werkvorm.WV_DOEL03 = @"ja";
    }
    if (_presentatieButton.selected){
        _werkvorm.WV_DOEL21 = @"ja";
    }
    if (_schrijfButton.selected){
        _werkvorm.WV_DOEL24 = @"ja";
    }
    if (_samenButton.selected){
        _werkvorm.WV_DOEL05 = @"ja";
    }
    if (_vrij1Button.selected){
        _werkvorm.WV_DOEL30 = @"ja";
    }
    if (_vrij2Button.selected){
        _werkvorm.WV_DOEL31 = @"ja";
    }
    if (_persoonButton.selected){
        _werkvorm.WV_DOEL20 = @"ja";
    }
    if (_creatiefButton.selected){
        _werkvorm.WV_DOEL06 = @"ja";
    }
    if (_vrij3Button.selected){
        _werkvorm.WV_DOEL32 = @"ja";
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    MoeilijkheidViewController *moeilijkViewController = [segue destinationViewController];
    moeilijkViewController.werkvorm = _werkvorm;
    NSLog(@"%@", _werkvorm.WV_DOEL05);
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
