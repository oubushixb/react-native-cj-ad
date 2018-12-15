//
//  ADMOBCJInterstitial.h
//  RNCjAd
//
//  Created by 陈俊 on 2018/12/14.
//  Copyright © 2018年 Facebook. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <React/RCTBridgeModule.h>
@import GoogleMobileAds;

@interface ADMOBCJInterstitial : NSObject <RCTBridgeModule, GADInterstitialDelegate> {
    RCTPromiseResolveBlock _resolveBlock;
    RCTPromiseRejectBlock _rejectBlock;
}

@property(nonatomic, strong) GADInterstitial *interstitial;
@property (nonatomic, strong) NSDictionary *adConfig;

@end
