//
//  ADMOBCJBannerView.h
//  RNCjAd
//
//  Created by 陈俊 on 2018/12/14.
//  Copyright © 2018年 Facebook. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <React/RCTView.h>
@import GoogleMobileAds;

@interface ADMOBCJBannerView : RCTView <GADBannerViewDelegate>
@property(nonatomic, strong) GADBannerView *bannerView;
@property (nonatomic, copy) RCTBubblingEventBlock onSizeChange;
@end
