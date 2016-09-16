//
//  ViewController.h
//  TipCalculatorSept16
//
//  Created by naomi schettini on 2016-09-16.
//  Copyright © 2016 naomi schettini. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *displayPercentAmt;

@property (strong, nonatomic) IBOutlet UISlider *tipPercentageSlider;

@property (strong, nonatomic) IBOutlet UIButton *calculateTipButton;

@property (strong, nonatomic) IBOutlet UITextField *inputBillAmt;

@property float amtShouldBeTip;

@property int desiredTipPercent;
@property float billAmt;

@property NSString * desiredTipPercentStr;

- (IBAction)decideTipPercent:(UISlider *)sender;

- (IBAction)calculateTip:(UIButton *)sender;
- (float) calculateTipAmt;



@end

