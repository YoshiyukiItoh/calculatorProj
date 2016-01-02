//
//  ViewController.m
//  calculatorProj
//
//  Created by Yoshi on 2014/12/31.
//  Copyright (c) 2014年 Yoshi. All rights reserved.
//

#import "ViewController.h"
#import <QuartzCore/QuartzCore.h>

static const NSInteger INITIALIZE_STATE = 0;
static const NSInteger INPUT_VALUE_STATE = 1;
static const NSInteger CREATE_FOMULA_STATE = 2;
static const NSInteger RESULT_VALUE_STATE = 3;

@interface ViewController ()

@end

@implementation ViewController

NSInteger baseInt;

- (void)viewDidLoad {
    [super viewDidLoad];
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
    // Do any additional setup after loading the view, typically from a nib.
    [self initBtn];
    self.calcResult.text = @"0";
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
         , self.buttonC, nil];
    for (UIButton *button in array) {
        [[button layer] setBorderColor:[[UIColor blackColor] CGColor]];
        [[button layer] setBorderWidth:0.5];
    }
}

- (void)isValidInputBtn:(NSString *)checkStr target:(NSString *) targetStr{
    if ([checkStr isEqualToString:@""]) {
        self.calcResult.text = [self.calcResult.text stringByAppendingString:targetStr];
        return;
    }
    
    if ([self.calcResult.text length] == 0 || [self.calcResult.text hasPrefix:checkStr]) {
        self.calcResult.text = targetStr;
    }else{
        self.calcResult.text = [self.calcResult.text stringByAppendingString:targetStr];
    }
}

- (IBAction)buttonC:(id)sender {
}

- (IBAction)click0:(id)sender {
    [self isValidInputBtn:@"0" target:@"0"];
}

- (IBAction)click1:(id)sender {
    [self isValidInputBtn:@"0" target:@"1"];
}

- (IBAction)click2:(id)sender {
    [self isValidInputBtn:@"0" target:@"2"];
}

- (IBAction)click3:(id)sender {
    [self isValidInputBtn:@"0" target:@"3"];
}

- (IBAction)click4:(id)sender {
    [self isValidInputBtn:@"0" target:@"4"];
}

- (IBAction)click5:(id)sender {
    [self isValidInputBtn:@"0" target:@"5"];
}

- (IBAction)click6:(id)sender {
    [self isValidInputBtn:@"0" target:@"6"];
}

- (IBAction)click7:(id)sender {
    [self isValidInputBtn:@"0" target:@"7"];
}

- (IBAction)click8:(id)sender {
    [self isValidInputBtn:@"0" target:@"8"];
}

- (IBAction)click9:(id)sender {
    [self isValidInputBtn:@"0" target:@"9"];
}

- (IBAction)clickDot:(id)sender {
    [self isValidInputBtn:@"" target:@"."];
}

- (IBAction)clickEqu:(id)sender {
}

- (IBAction)clickPlus:(id)sender {
    baseInt = [self.calcResult.text intValue];
    
}

- (IBAction)clickMinus:(id)sender {
}

- (IBAction)clickMulti:(id)sender {
}

- (IBAction)clickDivide:(id)sender {
}

- (IBAction)clickAc:(id)sender {
    self.calcResult.text = @"0";
}

- (IBAction)clickC:(id)sender {
}

@end
