//
//  GDTCJNativeView.h
//  RNCjAd
//
//  Created by 陈俊 on 2018/12/13.
//  Copyright © 2018年 Facebook. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <React/RCTView.h>
#import "GDTNativeExpressAd.h"
#import "GDTNativeExpressAdView.h"
#import <React/UIView+React.h>

@interface GDTCJNativeView : RCTView <GDTNativeExpressAdDelegete>

@property (nonatomic, retain) NSDictionary *adConfig;
@property (nonatomic, retain) GDTNativeExpressAd *nativeExpressAd;
@property (nonatomic, retain) NSArray *expressAdViews;

@end
