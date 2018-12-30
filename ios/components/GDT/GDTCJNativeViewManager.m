//
//  GDTCJNativeViewManager.m
//  RNCjAd
//
//  Created by 陈俊 on 2018/12/13.
//  Copyright © 2018年 Facebook. All rights reserved.
//

#import "GDTCJNativeViewManager.h"

@implementation GDTCJNativeViewManager

RCT_EXPORT_VIEW_PROPERTY(config, NSDictionary);
RCT_EXPORT_VIEW_PROPERTY(onADError, RCTBubblingEventBlock)

RCT_EXPORT_MODULE();

- (UIView *)view {
    return [[GDTCJNativeView alloc] init];
}

@end
