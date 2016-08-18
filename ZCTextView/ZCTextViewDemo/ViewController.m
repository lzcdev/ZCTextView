//
//  ViewController.m
//  ZCTextView
//
//  Created by LuzhiChao on 16/8/18.
//  Copyright © 2016年 LuzhiChao. All rights reserved.
//

#import "ViewController.h"
#import "ZCTextView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor groupTableViewBackgroundColor];
    
    ZCTextView *textView = [[ZCTextView alloc]initWithFrame:CGRectMake(0, 100, [UIScreen mainScreen].bounds.size.width, 200)];
    textView.placeholder = @"请输入占位文字";
    
    //textView.placeholderColor = [UIColor greenColor];
    //textView.placeholderFont = 20;
    
    [self.view addSubview:textView];
}

@end
