//
//  CYXTabBarController.m
//  UIKitExample
//
//  Created by 郑飞 on 6/21/16.
//  Copyright © 2016 feizheng. All rights reserved.
//

#import "CYXTabBarController.h"
#import "CYXOneViewController.h"
#import "CYXTwoViewController.h"
#import "CYXThreeViewController.h"
#import "CYXFourViewController.h"

@implementation CYXTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setUpAllChildViewController];
}/**
  *  添加所有子控制器方法
  */- (void)setUpAllChildViewController{    // 1.添加第一个控制器
      CYXOneViewController *oneVC = [[CYXOneViewController alloc] init];
      [self setUpOneChildViewController:oneVC image:[UIImage imageNamed:@"tab_home_icon"] title:@"首页"];    // 2.添加第2个控制器
      CYXTwoViewController *twoVC = [[CYXTwoViewController alloc] init];
      [self setUpOneChildViewController:twoVC image:[UIImage imageNamed:@"js"] title:@"技术"];    // 3.添加第3个控制器
      CYXThreeViewController *threeVC = [[CYXThreeViewController alloc] init];
      [self setUpOneChildViewController:threeVC image:[UIImage imageNamed:@"qw"] title:@"博文"];    // 4.添加第4个控制器
      CYXFourViewController *fourVC = [[CYXFourViewController alloc] init];
      [self setUpOneChildViewController:fourVC image:[UIImage imageNamed:@"user"] title:@"我的江湖"];
  }/**
    *  添加一个子控制器的方法
    */- (void)setUpOneChildViewController:(UIViewController *)viewController image:(UIImage *)image title:(NSString *)title{    UINavigationController *navC = [[UINavigationController alloc]initWithRootViewController:viewController];
        navC.title = title;
        navC.tabBarItem.image = image;
        [navC.navigationBar setBackgroundImage:[UIImage imageNamed:@"commentary_num_bg"] forBarMetrics:UIBarMetricsDefault];
        
        viewController.navigationItem.title = title;
        
        [self addChildViewController:navC];
    }
@end
