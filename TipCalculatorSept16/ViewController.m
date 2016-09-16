//
//  ViewController.m
//  TipCalculatorSept16
//
//  Created by naomi schettini on 2016-09-16.
//  Copyright © 2016 naomi schettini. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


- (IBAction)decideTipPercent:(UISlider *)sender {
    self.desiredTipPercent = self.tipPercentageSlider.value;
    self.desiredTipPercentStr = [NSString stringWithFormat:@"%d Percent Tip", self.desiredTipPercent];
    [self.displayPercentAmt setText:self.desiredTipPercentStr];
}

- (IBAction)calculateTip:(UIButton *)sender {
    [self calculateTipAmt];
    NSString* payThisMuch = [NSString stringWithFormat:@"%f", self.amtShouldBeTip];
    [self.displayPercentAmt setText:payThisMuch];
}

- (float) calculateTipAmt {

    if ([self.inputBillAmt hasText]) {
        self.billAmt = [self.inputBillAmt.text floatValue];
        self.amtShouldBeTip = (self.desiredTipPercent * 0.01) * self.billAmt;
    }
        return self.amtShouldBeTip;

}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
