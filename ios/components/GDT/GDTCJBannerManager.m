//
//  GDTCJBanner.m
//  RNCjAd
//
//  Created by 陈俊 on 2018/12/13.
//  Copyright © 2018年 Facebook. All rights reserved.
//

#import "GDTCJBannerManager.h"

@implementation GDTCJBannerManager

RCT_EXPORT_MODULE();

RCT_EXPORT_VIEW_PROPERTY(config, NSDictionary);
RCT_EXPORT_VIEW_PROPERTY(onADError, RCTBubblingEventBlock)

/*- (UIView *)view
{
    _bannerView = [[GDTMobBannerView alloc] initWithFrame:CGRectMake(0, 0, GDTMOB_AD_SUGGEST_SIZE_468x60.width, GDTMOB_AD_SUGGEST_SIZE_468x60.height) appId:@"1105344611" placementId:@"4090812164690039"];
    _bannerView.currentViewController = [[[UIApplication sharedApplication] keyWindow] rootViewController];
    _bannerView.interval = 10;
    _bannerView.isAnimationOn = YES;
    _bannerView.showCloseBtn = NO;
    _bannerView.isGpsOn = NO;
    _bannerView.delegate = self;
    
    [_bannerView loadAdAndShow];
    
    return _bannerView;
}*/

- (UIView *)view {
    return [[GDTCJBannerView alloc] init];
}

@end
