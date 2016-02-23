//
//  ViewController.m
//  5iosm-24022016
//
//  Created by Mengying FENG on 24/02/2016.
//  Copyright (c) 2016 Mengying FENG. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()




@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    self.myWidth = 0;
//    self.myHeight = 0;
//    
//    float imgWidth = self.img.frame.size.width;
//    float imgHeight = self.img.frame.size.height;
//    NSLog(@"%f", imgWidth);
//    NSLog(@"%f", imgHeight);
}

- (IBAction)sliderValueChanged:(UISlider *)sender {
    
//    float width, height;

    NSLog(@"slider value: %f", sender.value);
    
    float sliderValue = sender.value;
    self.img.frame = CGRectMake(138, 67, sliderValue, sliderValue);

}


- (IBAction)widthSliderValueChanged:(UISlider *)sender {
    self.myWidth = sender.value;
    self.img.frame = CGRectMake(138, 67, self.myWidth, self.img.frame.size.height);
}

- (IBAction)heightSliderValueChanged:(UISlider *)sender {
    self.myHeight = sender.value;
    self.img.frame = CGRectMake(138, 67, self.myWidth, self.myHeight);
}
@end
