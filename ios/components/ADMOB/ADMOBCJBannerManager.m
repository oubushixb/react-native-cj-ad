//
//  ADMOBCJBannerManager.m
//  RNCjAd
//
//  Created by 陈俊 on 2018/12/14.
//  Copyright © 2018年 Facebook. All rights reserved.
//

#import "ADMOBCJBannerManager.h"

@implementation ADMOBCJBannerManager

RCT_EXPORT_MODULE();

RCT_EXPORT_VIEW_PROPERTY(config, NSDictionary);
RCT_EXPORT_VIEW_PROPERTY(onADError, RCTBubblingEventBlock)

- (UIView *)view {
    return [[ADMOBCJBannerView alloc] init];
}


@end
