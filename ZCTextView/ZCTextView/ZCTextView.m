//
//  ZCTextView.m
//
//  鲁志超 github:https://github.com/zcLu qq:1185907688
//
//  Created by LuzhiChao on 16/8/18.
//  Copyright © 2016年 LuzhiChao. All rights reserved.
//

#import "ZCTextView.h"

@implementation ZCTextView

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        
        [self setup];
    }
    return self;
}

- (void)setup
{
    // 设置默认字体
    self.font = [UIFont systemFontOfSize:17];
    // 设置占位符默认颜色
    self.placeholderColor = [UIColor colorWithWhite:0.702f alpha:1.0f];
    // 设置占位符默认字体
    self.placeholderFont = 17;
    
    // 使用通知监听文字改变
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(textDidChange:) name:UITextViewTextDidChangeNotification object:self];
    
}

- (void)textDidChange:(NSNotification *)note
{
    // 重新调用drawRect方法
    [self setNeedsDisplay];
}

- (void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

- (void)drawRect:(CGRect)rect
{
    // 如果有文字，return
    if (self.hasText) {
        return;
    }
    
    NSDictionary *attrs = @{NSFontAttributeName:[UIFont systemFontOfSize:self.placeholderFont], NSForegroundColorAttributeName:self.placeholderColor};
    
    [self.placeholder drawInRect:CGRectMake(5.0f, self.placeholderFont?8.0f:20.0f, self.frame.size.width - 10.0f, self.frame.size.height - 20.0f) withAttributes:attrs];
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    [self setNeedsDisplay];
}

#pragma mark - setter
- (void)setPlaceholder:(NSString *)placeholder
{
    _placeholder = placeholder;
    
    [self setNeedsDisplay];
}

- (void)setPlaceholderColor:(UIColor *)placeholderColor
{
    _placeholderColor = placeholderColor;
    
    [self setNeedsDisplay];
}

- (void)setPlaceholderFont:(CGFloat)placeholderFont
{
    _placeholderFont = placeholderFont;
    [self setNeedsDisplay];

}

- (void)setText:(NSString *)text
{
    [super setText:text];
    
    [self setNeedsDisplay];
}

@end
