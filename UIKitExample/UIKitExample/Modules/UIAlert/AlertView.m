//
//  AlertView.m
//  UIKitExample
//
//  Created by 郑飞 on 6/19/16.
//  Copyright © 2016 feizheng. All rights reserved.
//

#import "AlertView.h"

//Example URL: http://blog.csdn.net/enuola/article/details/7900346
//Example URL2: https://segmentfault.com/a/1190000004553716

@implementation AlertView
-(UIAlertView *) create{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"AlertViewTest"
                                                    message:@"message"
                                                   delegate:self
                                          cancelButtonTitle:@"Cancel"
                                          otherButtonTitles:@"OtherBtn",nil];
    return alert;
}

#pragma marks -- UIAlertViewDelegate --
//根据被点击按钮的索引处理点击事件
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    NSLog(@"clickButtonAtIndex:%ld",(long)buttonIndex);
}


//AlertView已经消失时执行的事件
-(void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex
{
    NSLog(@"didDismissWithButtonIndex");
}

@end
