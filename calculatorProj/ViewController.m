//
//  ViewController.m
//  calculatorProj
//
//  Created by Yoshi on 2014/12/31.
//  Copyright (c) 2014年 Yoshi. All rights reserved.
//

#import "ViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
    // Do any additional setup after loading the view, typically from a nib.
    [self initBtn];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.s
}

// ボタンの枠線を初期化
- (void)initBtn {
    NSArray *array
        = [NSArray arrayWithObjects:
           self.button0, self.button1, self.button2, self.button3
         , self.button4, self.button5, self.button6, self.button7
         , self.button8, self.button9, self.buttonDot, self.buttonEqual
         , self.buttonPlus, self.buttonMinus, self.buttonMulti,self.buttonDivide
         , nil];
    for (UIButton *button in array) {
        [[button layer] setBorderColor:[[UIColor blackColor] CGColor]];
        [[button layer] setBorderWidth:1.0];
    }
}

- (IBAction)click0:(id)sender {
}

- (IBAction)click1:(id)sender {
}

- (IBAction)click2:(id)sender {
}

- (IBAction)click3:(id)sender {
}

- (IBAction)click4:(id)sender {
}

- (IBAction)click5:(id)sender {
}

- (IBAction)click6:(id)sender {
}

- (IBAction)click7:(id)sender {
}

- (IBAction)click8:(id)sender {
}

- (IBAction)click9:(id)sender {
}

- (IBAction)clickDot:(id)sender {
}

- (IBAction)clickEqu:(id)sender {
}

- (IBAction)clickPlus:(id)sender {
}

- (IBAction)clickMinus:(id)sender {
}

- (IBAction)clickMulti:(id)sender {
}

- (IBAction)clickDivide:(id)sender {
}
@end
