//
//  MyTabBarController.m
//  UIKitExample
//
//  Created by 郑飞 on 6/22/16.
//  Copyright © 2016 feizheng. All rights reserved.
//

#import "MyTabBarController.h"

@interface MyTabBarController ()

@end

@implementation MyTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"Tabbar controller init!");
    
    [self setNavItemTitle:@"首页" Icon:@"tab_home_icon"];
    [self setNavItemTitle:@"技术" Icon:@"js"];
    [self setNavItemTitle:@"博文" Icon:@"qw"];
    [self setNavItemTitle:@"我的江湖" Icon:@"user"];
    
}

-(void) setNavItemTitle:(NSString *)title Icon:(NSString *) icon{
    UINavigationController *nav= [[UINavigationController alloc] init];
    // 设置tabBar的标题
    nav.title = title;
    // 设置tabBar的图标
    nav.tabBarItem.image = [UIImage imageNamed:icon];
    // 1.3 把UINavigationController交给UITabBarController管理
    [self addChildViewController:nav];
}

@end
