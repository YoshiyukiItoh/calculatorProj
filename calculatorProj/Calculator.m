//
//  Calculator.m
//  calculatorProj
//
//  Created by Yoshi on 2016/01/03.
//  Copyright © 2016年 Yoshi. All rights reserved.
//

#import <Foundation/Foundation.h>

static const NSInteger INITIALIZE_STATE = 0;
static const NSInteger INPUT_VALUE_STATE = 1;
static const NSInteger CREATE_FOMULA_STATE = 2;
static const NSInteger RESULT_VALUE_STATE = 3;

@interface Calcurator : NSObject
{
    @private
    NSInteger oldNum;
    NSInteger displayNum;
    NSInteger oldMode;
    NSInteger mode;
}
- (id) init;
- (id) initWithVal:(NSInteger)displayNum modeInt:(NSInteger)mode;
- (NSString *)touchBtn:(NSString *)inputStr
                     checkStr:(NSString *)checkStr
                       target:(NSString *) targetStr
                   displayStr:(NSString *) displayStr;
- (void) modeDetect:(NSString *)inputStr;
- (NSString *)touchNum:(NSString *)checkStr
                target:(NSString *) targetStr
            displayStr:(NSString *) displayStr;
- (NSString *)touchSynbol;
- (NSString *)touchResult;
- (void)setMode:(NSInteger) mode;
- (NSInteger) getMode;

@end

@implementation Calcurator

- (id) init {
    return [self initWithVal:0 modeInt:INITIALIZE_STATE];
}

- (id) initWithVal:(NSInteger)initNum modeInt:(NSInteger)modeNum {
    if(self = [super init]) {
        displayNum = initNum;
        mode = modeNum;
    }
    return self;
}

- (NSString *)touchBtn:(NSString *)inputStr
              checkStr:(NSString *)checkStr
                target:(NSString *) targetStr
            displayStr:(NSString *) displayStr {
    // モード判定
    [self modeDetect:inputStr];

    switch (mode){
        // 初期モード
        case INITIALIZE_STATE:
            return [NSString stringWithFormat:@"%zd", displayNum];
        // 数値入力モード
        case INPUT_VALUE_STATE:
            return [self touchNum:checkStr target:targetStr displayStr:displayStr];
        // 計算式作成モード
        case CREATE_FOMULA_STATE:
            return [self touchSynbol];
        // 結果表示モード
        case RESULT_VALUE_STATE:
            return [self touchResult];
        default:
            return @"Fatal Error.";
    }
}

- (void) modeDetect:(NSString *)inputStr {
    oldMode = mode;
    if ([inputStr isEqualToString:@"1"]
     || [inputStr isEqualToString:@"2"]
     || [inputStr isEqualToString:@"3"]
     || [inputStr isEqualToString:@"4"]
     || [inputStr isEqualToString:@"5"]
     || [inputStr isEqualToString:@"6"]
     || [inputStr isEqualToString:@"7"]
     || [inputStr isEqualToString:@"8"]
     || [inputStr isEqualToString:@"9"]
     || [inputStr isEqualToString:@"0"]
     || [inputStr isEqualToString:@"C"]) {
        mode = INPUT_VALUE_STATE;
    } else if([inputStr isEqualToString:@"+"]
           || [inputStr isEqualToString:@"-"]
           || [inputStr isEqualToString:@"*"]
           || [inputStr isEqualToString:@"/"]) {
        mode = CREATE_FOMULA_STATE;
    } else if([inputStr isEqualToString:@"="]){
        mode = RESULT_VALUE_STATE;
    }
}

- (NSString *)touchNum:(NSString *)checkStr
                target:(NSString *) targetStr
            displayStr:(NSString *) displayStr {
    if ([checkStr isEqualToString:@""]) {
        return [displayStr stringByAppendingString:targetStr];
    }
    
    if ([displayStr length] == 0 || [displayStr hasPrefix:checkStr]) {
        return targetStr;
    }else{
        return [displayStr stringByAppendingString:targetStr];
    }
}

- (NSString *)touchSynbol{
    return nil;
}
- (NSString *)touchResult{
    return nil;
}

- (void)setMode:(NSInteger) modeNum{
    mode = modeNum;
}

- (NSInteger) getMode{
    return mode;
}

@end
