//
//  ShowNotWindow.h
//  全局键盘隐藏Demo
//
//  Created by 孙云 on 15/12/24.
//  Copyright © 2015年 haidai. All rights reserved.
//
/**
 *  作用：在控制器的显示时，跳出一个界面，通常用于通知显示页，活动页。
 *
 *  @param ShowNotWindow <#ShowNotWindow description#>
 *
 *  @return <#return value description#>
 */

#import <UIKit/UIKit.h>

@interface ShowNotWindow : UIWindow
+(ShowNotWindow *)sharedInstance;
-(void)showMessage;
@end
