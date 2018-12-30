//
//  GDTCJBannerView.h
//  RNCjAd
//
//  Created by 陈俊 on 2018/12/13.
//  Copyright © 2018年 Facebook. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <React/RCTViewManager.h>
#import "GDTMobBannerView.h"
#import <React/RCTView.h>

@interface GDTCJBannerView : RCTView <GDTMobBannerViewDelegate>

@property (nonatomic, retain) GDTMobBannerView *bannerView;
@property (nonatomic, strong) NSDictionary * config;

@property (nonatomic, copy) RCTBubblingEventBlock onADError;

@end
