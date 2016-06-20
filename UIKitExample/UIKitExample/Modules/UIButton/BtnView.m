//
//  BtnView.m
//  UIKitExample
//
//  Created by 郑飞 on 6/18/16.
//  Copyright © 2016 feizheng. All rights reserved.
//

#import "BtnView.h"

@implementation BtnView
+ (UIButton *) round{
    UIButton *btn =[[UIButton alloc ] init];
    btn.backgroundColor=[UIColor grayColor];
    btn.frame = CGRectMake(50, 100, 120, 40);
    [btn setTitle:@"我是按钮" forState:UIControlStateNormal];
    return btn;
}
@end
