//
//  ShowNotWindow.m
//  全局键盘隐藏Demo
//
//  Created by 孙云 on 15/12/24.
//  Copyright © 2015年 haidai. All rights reserved.
//

#import "ShowNotWindow.h"

@implementation ShowNotWindow
/**
 *   单例构造
 *
 *  @return <#return value description#>
 */
+(ShowNotWindow *)sharedInstance
{
    static id sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
    
        sharedInstance = [[self alloc]initWithFrame:[[UIScreen mainScreen]bounds]];
    });
    return sharedInstance;
}
/**
 *  加载控件
 *
 *  @param frame <#frame description#>
 *
 *  @return <#return value description#>
 */
-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        /**
         在显示页自己需要加载的控件
         */
        //控件
        UIWebView *webView = [[UIWebView alloc]initWithFrame:self.bounds];
        webView.backgroundColor = [UIColor yellowColor];
        NSURL *urlStr = [NSURL URLWithString:@""];
        NSURLRequest *request = [NSURLRequest requestWithURL:urlStr];
        [webView loadRequest:request];
        [self addSubview:webView];
        //退出按钮
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        btn.frame = CGRectMake(20, 20, 30, 30);
        btn.backgroundColor = [UIColor redColor];
        [btn setTitle:@"退出" forState:UIControlStateNormal];
        [btn addTarget:self action:@selector(hiddenWindow) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:btn];
    }
    return self;
}
/**
 *  显示窗口
 */
-(void)showMessage
{
    [self makeKeyWindow];
    self.hidden = NO;
}
/**
 *  按钮事件
 */
-(void)hiddenWindow
{
    [self resignKeyWindow];
    self.hidden = YES;
}
@end
