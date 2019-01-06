//
//  TANVCJSplash.m
//  RNCjAd
//
//  Created by 陈俊 on 2018/12/13.
//  Copyright © 2018年 Facebook. All rights reserved.
//

//
//  CjTanvSplash.m
//  gameVideo
//
//  Created by 陈俊 on 2017/11/27.
//  Copyright © 2017年 Facebook. All rights reserved.
//

#import "TANVCJSplash.h"

@implementation TANVCJSplash

RCT_EXPORT_MODULE();

RCT_REMAP_METHOD(show,
                 config:(NSDictionary *)config
                 showWithResolver:(RCTPromiseResolveBlock) resolve
                 rejecter:(RCTPromiseRejectBlock) reject) {
    _resolveBlock = resolve;
    _rejectBlock = reject;
    dispatch_async(dispatch_get_main_queue(), ^{
        
        SplashSDK *splash = [[SplashSDK alloc]initWithUserId:[config objectForKey:@"userId"] appId:[config objectForKey:@"appId"] appKey:[config objectForKey:@"appKey"]];
        splash.delegate = self;
        [splash loadSplash];
    });
}

-(void)successToFetchSplash:(SplashSDK *)splashSDK drawFrame:(CGRect)dFrame{
    [splashSDK showSplashWithWindow:[UIApplication sharedApplication].keyWindow];
}

-(void)failToFetchSplash:(SplashSDK *)splashSDK error:(NSError *)error{
    _rejectBlock(@"0", @"巨鲨开屏失败.", error);
}

-(void)closeSplash:(SplashSDK *)splashSDK {
    _resolveBlock(@"true");
}

@end

