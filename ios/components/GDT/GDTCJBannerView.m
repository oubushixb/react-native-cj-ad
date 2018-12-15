//
//  GDTCJBannerView.m
//  RNCjAd
//
//  Created by 陈俊 on 2018/12/13.
//  Copyright © 2018年 Facebook. All rights reserved.
//

#import "GDTCJBannerView.h"

@implementation GDTCJBannerView

- (void)setConfig:(NSDictionary *)config {
    /*if (self.bannerView) {
        self.bannerView.delegate = nil;
        self.bannerView.currentViewController = nil;
        [self.bannerView removeFromSuperview];
    }*/
    self.bannerView = [[GDTMobBannerView alloc] initWithFrame:self.bounds
                                                       appId:config[@"appId"]
                                                  placementId:config[@"placementId"]];
    self.bannerView.delegate = self;
    self.bannerView.currentViewController = [[[[UIApplication sharedApplication] delegate] window] rootViewController];
    [self addSubview:self.bannerView];
    self.bannerView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self.bannerView loadAdAndShow];
    });
}

- (void)bannerViewFailToReceived:(NSError *)error {
    if (!self.onADError) {
        return;
    }
    
    self.onADError(@{@"error": error.localizedDescription});
}

@end
