//
//  AlertView.h
//  UIKitExample
//
//  Created by 郑飞 on 6/19/16.
//  Copyright © 2016 feizheng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AlertView : NSObject

-(UIAlertView *) create;
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex;
@end
