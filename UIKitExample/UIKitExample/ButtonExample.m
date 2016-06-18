//
//  ButtonExample.m
//  UIKitExample
//
//  Created by 郑飞 on 6/18/16.
//  Copyright © 2016 feizheng. All rights reserved.
//

#import "ButtonExample.h"

@implementation ButtonExample

//Round button:
+(UIButton *) btnRound{
    UIButton *btnRound = [UIButton buttonWithType:UIButtonTypeRoundedRect];
//    btnRound.frame=CGRectMake(20, 20, 280, 40);
    btnRound.backgroundColor=[UIColor grayColor];
    [btnRound setTitle:@"Test button" forState:UIControlStateNormal];
    return btnRound;
}
@end
