//
//  SecondViewController.m
//  5iosm-24022016
//
//  Created by Mengying FENG on 24/02/2016.
//  Copyright (c) 2016 Mengying FENG. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)sliderValueChanged:(UISlider *)sender {
    double monthlyRate = sender.value / 12;
    
    NSLog(@"%f", monthlyRate);
    
    double repaymentAmt = self.principleAmtTxtField.text.doubleValue * (( monthlyRate * pow((1 + monthlyRate), self.yearsTxtField.text.doubleValue * 12)) / ( (pow((1 + monthlyRate), self.yearsTxtField.text.doubleValue * 12))-1));
    
    self.repaymentAmtLbl.text = [NSString stringWithFormat:@"%f", repaymentAmt];
}
@end
