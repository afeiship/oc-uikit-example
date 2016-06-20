//
//  ViewController.m
//  UIKitExample
//
//  Created by 郑飞 on 6/18/16.
//  Copyright © 2016 feizheng. All rights reserved.
//

#import "ViewController.h"
#import "BtnView.h"
#import "AlertView.h"
#import "TextFieldView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"viewDidLoad!");
    [self buttonExample];
    [self showAlert];
    [self showTextField];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) buttonExample{
    UIButton *btn = [BtnView round];
    [btn addTarget:self action:@selector(buttonTestClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

-(void) buttonTestClick{
//    NSLog(@"Test Click!");
    [self showAlert];
}

-(void) showAlert{
    AlertView *alertCtrl = [[AlertView alloc] init];
    UIAlertView *alert= [alertCtrl create];
    alert.message =@"Are you sure?!!!";
    [alert show];
}

-(void) showTextField{
    UITextField *textFieldView= [[TextFieldView alloc] create];
    [self.view addSubview:textFieldView];
}



@end
