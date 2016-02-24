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

- (IBAction)sliderValueChanged:(UISlider *)sender {
    double monthlyRate = sender.value / 12;
    
    NSLog(@"%f", monthlyRate);
    
    double repaymentAmt = self.principleAmtTxtField.text.doubleValue * (( monthlyRate * pow((1 + monthlyRate), self.yearsTxtField.text.doubleValue * 12)) / ( (pow((1 + monthlyRate), self.yearsTxtField.text.doubleValue * 12))-1));
    
    self.repaymentAmtLbl.text = [NSString stringWithFormat:@"Your monthly repayment is %f", repaymentAmt];
}
@end
