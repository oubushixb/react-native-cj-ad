//
//  TANVCJNativeViewManager.m
//  RNCjAd
//
//  Created by 陈俊 on 2018/12/14.
//  Copyright © 2018年 Facebook. All rights reserved.
//

#import "TANVCJNativeViewManager.h"

@implementation TANVCJNativeViewManager

RCT_EXPORT_VIEW_PROPERTY(config, NSDictionary);
RCT_EXPORT_VIEW_PROPERTY(type, NSInteger);
RCT_EXPORT_VIEW_PROPERTY(onADError, RCTBubblingEventBlock)

RCT_EXPORT_MODULE();

- (UIView *)view {
    return [[TANVCJNativeView alloc] init];
}

@end
