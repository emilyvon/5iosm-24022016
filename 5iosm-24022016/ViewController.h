//
//  ViewController.h
//  5iosm-24022016
//
//  Created by Mengying FENG on 24/02/2016.
//  Copyright (c) 2016 Mengying FENG. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (retain, nonatomic) IBOutlet UISlider *slider;
@property (retain, nonatomic) IBOutlet UIImageView *img;
- (IBAction)sliderValueChanged:(id)sender;
@property (weak, nonatomic) IBOutlet UISlider *widthSlider;
@property (weak, nonatomic) IBOutlet UISlider *heightSlider;
- (IBAction)widthSliderValueChanged:(UISlider *)sender;

- (IBAction)heightSliderValueChanged:(UISlider *)sender;

@property (nonatomic) float myWidth;
@property (nonatomic) float myHeight;


@end

