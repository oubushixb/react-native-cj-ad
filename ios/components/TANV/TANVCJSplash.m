//
//  TANVCJSplash.m
//  RNCjAd
//
//  Created by 陈俊 on 2018/12/13.
//  Copyright © 2018年 Facebook. All rights reserved.
//

#import "TANVCJSplash.h"

@implementation TANVCJSplash

-(void)show:(UIWindow *)window withOptions:(NSDictionary *)adOptions {
    
    /*
     [[JushaSplashSDK alloc] initWithUserId:[adOptions objectForKey:@"userID"] appId:[adOptions objectForKey:@"appID"] appKey:[adOptions objectForKey:@"appKEY"]];*/
    
    if(!self.splash) {
        _splash = [[SplashSDK alloc]initWithUserId:[adOptions objectForKey:@"userID"] appId:[adOptions objectForKey:@"appID"] appKey:[adOptions objectForKey:@"appKEY"]];
        _splash.delegate = self;
    }
    
    [_splash loadSplash];
    
}

-(void)successToFetchSplash:(SplashSDK *)splashSDK{
    //加载成功，显示开屏
    [splashSDK showSplashWithWindow:[UIApplication sharedApplication].keyWindow];
}

@end
