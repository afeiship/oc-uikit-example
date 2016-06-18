//
//  ViewController.m
//  UIKitExample
//
//  Created by 郑飞 on 6/18/16.
//  Copyright © 2016 feizheng. All rights reserved.
//

#import "ViewController.h"
#import "BtnViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self buttonExample];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) buttonExample{
    UIButton *btn = [BtnViewController round];
    [btn addTarget:self action:@selector(buttonTestClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

-(void) buttonTestClick{
    NSLog(@"Test Click!");
}

@end
