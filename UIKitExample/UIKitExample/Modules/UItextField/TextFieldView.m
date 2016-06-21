//
// Created by 郑飞 on 6/20/16.
// Copyright (c) 2016 feizheng. All rights reserved.
//

#import "TextFieldView.h"

// http://blog.csdn.net/lbuskeep/article/details/28543183

@implementation TextFieldView
- (UITextField *)create {
    UITextField *textField = [[UITextField alloc] initWithFrame:CGRectMake(100,30,200,30)];
    textField.borderStyle=UITextBorderStyleRoundedRect;
    textField.placeholder=@"My text textfiled";
    textField.secureTextEntry = YES;
    return textField;
}
@end