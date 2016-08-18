//
//  ZCTextView.h
//
//  鲁志超 github:https://github.com/zcLu qq:1185907688
//
//  Created by LuzhiChao on 16/8/18.
//  Copyright © 2016年 LuzhiChao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZCTextView : UITextView

@property (nonatomic, copy) NSString *placeholder; //占位符文字
@property (nonatomic, strong) UIColor *placeholderColor; //占位符文字颜色
@property (nonatomic, assign) CGFloat placeholderFont; //占位符字体

@end
