//
//  GDTCJSplash.m
//  RNCjAd
//
//  Created by 陈俊 on 2018/12/13.
//  Copyright © 2018年 Facebook. All rights reserved.
//

#import "GDTCJSplash.h"

@implementation GDTCJSplash

-(void)show:(UIWindow *)window withOptions:(NSDictionary *)adOptions {
    GDTSplashAd *splashAd = [[GDTSplashAd alloc] initWithAppkey:[adOptions objectForKey:@"appID"] placementId:[adOptions objectForKey:@"adID"]];
    
    //设置开屏拉取时长限制，若超时则不再展示广告
    splashAd.fetchDelay = 5;
    //［可选］拉取并展示全屏开屏广告
    //[splashAd loadAdAndShowInWindow:self.window];
    //设置开屏底部自定义LogoView，展示半屏开屏广告
    
    [splashAd loadAdAndShowInWindow:[UIApplication sharedApplication].keyWindow withBottomView:nil];
    self.splash = splashAd;
}

@end
