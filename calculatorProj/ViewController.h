//
//  ViewController.h
//  calculatorProj
//
//  Created by Yoshi on 2014/12/31.
//  Copyright (c) 2014年 Yoshi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *calcResult;

@property (weak, nonatomic) IBOutlet UIButton *button0;
@property (weak, nonatomic) IBOutlet UIButton *button1;
@property (weak, nonatomic) IBOutlet UIButton *button2;
@property (weak, nonatomic) IBOutlet UIButton *button3;
@property (weak, nonatomic) IBOutlet UIButton *button4;
@property (weak, nonatomic) IBOutlet UIButton *button5;
@property (weak, nonatomic) IBOutlet UIButton *button6;
@property (weak, nonatomic) IBOutlet UIButton *button7;
@property (weak, nonatomic) IBOutlet UIButton *button8;
@property (weak, nonatomic) IBOutlet UIButton *button9;

@property (weak, nonatomic) IBOutlet UIButton *buttonDot;
@property (weak, nonatomic) IBOutlet UIButton *buttonEqual;
@property (weak, nonatomic) IBOutlet UIButton *buttonPlus;
@property (weak, nonatomic) IBOutlet UIButton *buttonMinus;
@property (weak, nonatomic) IBOutlet UIButton *buttonMulti;
@property (weak, nonatomic) IBOutlet UIButton *buttonDivide;

- (IBAction)click0:(id)sender;
- (IBAction)click1:(id)sender;
- (IBAction)click2:(id)sender;
- (IBAction)click3:(id)sender;
- (IBAction)click4:(id)sender;
- (IBAction)click5:(id)sender;
- (IBAction)click6:(id)sender;
- (IBAction)click7:(id)sender;
- (IBAction)click8:(id)sender;
- (IBAction)click9:(id)sender;
- (IBAction)clickDot:(id)sender;
- (IBAction)clickEqu:(id)sender;
- (IBAction)clickPlus:(id)sender;
- (IBAction)clickMinus:(id)sender;
- (IBAction)clickMulti:(id)sender;
- (IBAction)clickDivide:(id)sender;


@end

