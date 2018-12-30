//
//  ADMOBCJBannerView.m
//  RNCjAd
//
//  Created by 陈俊 on 2018/12/14.
//  Copyright © 2018年 Facebook. All rights reserved.
//

#import "ADMOBCJBannerView.h"

@implementation ADMOBCJBannerView

- (void)setConfig:(NSDictionary *)config {
    self.bannerView = [[GADBannerView alloc]
                                 initWithAdSize:kGADAdSizeSmartBannerPortrait];
    
    self.bannerView.adUnitID = config[@"adUnitID"];
    self.bannerView.rootViewController = [[[[UIApplication sharedApplication] delegate] window] rootViewController];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self.bannerView loadRequest:[GADRequest request]];
        [self addSubview:self.bannerView];
    });
}

@end
