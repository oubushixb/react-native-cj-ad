//
//  GDTCJBanner.h
//  RNCjAd
//
//  Created by 陈俊 on 2018/12/13.
//  Copyright © 2018年 Facebook. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <React/RCTViewManager.h>
#import "GDTMobBannerView.h"

@interface GDTCJBannerManager : RCTViewManager <GDTMobBannerViewDelegate>

@property (nonatomic, retain) GDTMobBannerView *bannerView;

@end
