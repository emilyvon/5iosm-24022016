//
//  SecondViewController.h
//  5iosm-24022016
//
//  Created by Mengying FENG on 24/02/2016.
//  Copyright (c) 2016 Mengying FENG. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *principleAmtTxtField;
@property (weak, nonatomic) IBOutlet UITextField *yearsTxtField;
@property (weak, nonatomic) IBOutlet UISlider *rateSlider;
@property (weak, nonatomic) IBOutlet UILabel *repaymentAmtLbl;
- (IBAction)sliderValueChanged:(UISlider *)sender;

@end
