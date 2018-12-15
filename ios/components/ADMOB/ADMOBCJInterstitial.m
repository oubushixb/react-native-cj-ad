//
//  ADMOBCJInterstitial.m
//  RNCjAd
//
//  Created by 陈俊 on 2018/12/14.
//  Copyright © 2018年 Facebook. All rights reserved.
//

#import "ADMOBCJInterstitial.h"

@implementation ADMOBCJInterstitial

RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(init:(NSDictionary *)config) {
    self.adConfig = config;
    self.interstitial = [self createAndLoadInterstitial];
}

RCT_REMAP_METHOD(isReady,
                   isReadyWithResolver:(RCTPromiseResolveBlock) resolve
                   rejecter:(RCTPromiseRejectBlock)reject) {
    //resolve(@{@"isReady": self.interstitial.isReady ? 1 : 0});
    //resolve(self.interstitial.isReady ? 1 : 0);
    resolve([NSNumber numberWithBool: self.interstitial.isReady]);
}

RCT_REMAP_METHOD(show,
                  showWithResolver:(RCTPromiseResolveBlock) resolve
                  rejecter:(RCTPromiseRejectBlock) reject) {
    if(!self.interstitial.isReady) {
        reject(@"0", @"admob没有准备好", nil);
    }
    
    _resolveBlock = resolve;
    [self.interstitial presentFromRootViewController:[[[[UIApplication sharedApplication] delegate] window] rootViewController]];
}

RCT_EXPORT_METHOD(addEvent:(NSString *)name location:(NSString *)location)
{
    
}

- (GADInterstitial *)createAndLoadInterstitial {
    GADInterstitial *interstitial =
    [[GADInterstitial alloc] initWithAdUnitID:self.adConfig[@"adUnitID"]];
    interstitial.delegate = self;
    [interstitial loadRequest:[GADRequest request]];
    return interstitial;
}

- (void)interstitialDidReceiveAd:(GADInterstitial *)ad {
    NSLog(@"interstitialDidReceiveAd");
}

/// Tells the delegate an ad request failed.
- (void)interstitial:(GADInterstitial *)ad
didFailToReceiveAdWithError:(GADRequestError *)error {
    NSLog(@"interstitial:didFailToReceiveAdWithError: %@", [error localizedDescription]);
}

- (void)interstitialDidDismissScreen:(GADInterstitial *)interstitial {
    self.interstitial = [self createAndLoadInterstitial];
    _resolveBlock(@"true");
}

@end
