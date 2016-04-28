//
//  ViewController.m
//  弹出动画_demo2
//
//  Created by liman on 11/26/15.
//  Copyright © 2015 apple. All rights reserved.
//

#import "ViewController.h"
#import "MyView.h"
#import "UIViewExt.h"

@interface ViewController () <MyViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIButton *btn = [UIButton buttonWithType:0];
    btn.frame = CGRectMake(0, 20, 100, 40);
    btn.backgroundColor = [UIColor redColor];
    [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

#pragma mark - MyViewDelegate
// 点击了自己
- (void)myView:(MyView *)myView didSelectedSelf:(id)sender
{
    [myView hide];
}

// 点击了阴影
- (void)myView:(MyView *)myView didSelectedShadow:(id)sender
{
    [myView hide];
}

#pragma mark - target action
- (void)btnClick
{
    NSLog(@"________________________________________________");
    
//    MyView *myView = [[MyView alloc] initWithFrame:CGRectMake(100, 100, 200, 200)];
    MyView *myView = [[MyView alloc] initWithFrame:CGRectMake(0, 0, self.view.width, 200)];
    myView.delegate = self;
    [myView showIn:self.view];
    
    
//    myView.center = self.view.center;
//    myView.centerX = self.view.centerX;
//    myView.centerY = self.view.centerY;
}

@end
