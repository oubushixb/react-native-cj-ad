//
//  ADMOBCJ.m
//  RNCjAd
//
//  Created by 陈俊 on 2018/12/15.
//  Copyright © 2018年 Facebook. All rights reserved.
//

#import "ADMOBCJ.h"

@implementation ADMOBCJ

RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(configureWithApplicationID:(NSString *)appID) {
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [GADMobileAds configureWithApplicationID:appID];
    });
}

@end
