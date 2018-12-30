//
//  GDTCJNativeView.m
//  RNCjAd
//
//  Created by 陈俊 on 2018/12/13.
//  Copyright © 2018年 Facebook. All rights reserved.
//

#import "GDTCJNativeView.h"

@implementation GDTCJNativeView

- (void)setConfig:(NSDictionary *)config {
    self.adConfig = config;
}

- (void)reactSetFrame:(CGRect)frame
{
    [super reactSetFrame:frame];
    
    self.nativeExpressAd = [[GDTNativeExpressAd alloc] initWithAppId:self.adConfig[@"appId"] placementId:self.adConfig[@"placementId"] adSize:CGSizeMake(frame.size.width, frame.size.height)];
    
    self.nativeExpressAd.delegate = self;
    [self.nativeExpressAd loadAd:1];
}

- (void)nativeExpressAdRenderFail:(GDTNativeExpressAdView *)nativeExpressAdView
{
    
}

- (void)nativeExpressAdSuccessToLoad:(GDTNativeExpressAd *)nativeExpressAd views:(NSArray<__kindof GDTNativeExpressAdView *> *)views
{
    GDTNativeExpressAdView *expressView = [views objectAtIndex:0];
    [self addSubview:expressView];
    UIViewController *rootViewController = [[[UIApplication sharedApplication] keyWindow] rootViewController];
    expressView.controller = rootViewController;
    [expressView render];
}

- (void)nativeExpressAdFailToLoad:(GDTNativeExpressAd *)nativeExpressAd error:(NSError *)error
{
    NSLog(@"Express Ad Load Fail : %@",error);
}

@end
