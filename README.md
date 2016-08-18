# ZCTextView
UITextView的placeholder，自定义UITextView，可自定义占位符的字体、颜色。

![License MIT](https://go-shields.herokuapp.com/license-MIT-blue.png)
![Platform info](http://img.shields.io/cocoapods/p/YTKKeyValueStore.svg?style=flat)

## 示例
![演示效果](http://7xt7mf.com1.z0.glb.clouddn.com/Simulator%20Screen%20Shot%202016%E5%B9%B48%E6%9C%8818%E6%97%A5%2018.48.23.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/200)
## 优点
可移植性好、拓展性好
## 用法

1.pod 'ZCTextView', '~> 0.0.1'

2.把ZCTextView.h和ZCTextView.m拖入工程

```
    ZCTextView *textView = [[ZCTextView alloc]initWithFrame:CGRectMake(0, 100, [UIScreen mainScreen].bounds.size.width, 200)];
    textView.placeholder = @"请输入占位文字";
    
    //textView.placeholderColor = [UIColor greenColor];
    //textView.placeholderFont = 20;
    
    [self.view addSubview:textView];

``` 
## 说明
觉得有点用的请给个star,觉得需要改进的欢迎提出宝贵意见。