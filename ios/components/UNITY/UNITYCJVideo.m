//
//  UNITYCJVideo.m
//  RNCjAd
//
//  Created by 陈俊 on 2018/12/15.
//  Copyright © 2018年 Facebook. All rights reserved.
//

#import "UNITYCJVideo.h"

@implementation UNITYCJVideo

RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(init:(NSDictionary *)config) {
    if(config[@"activePlacementId"]) {
        self.activePlacementId = config[@"activePlacementId"];
    } else {
        self.activePlacementId = @"video";
    }
    [UnityAds initialize:config[@"gameId"] delegate:self];
}

RCT_REMAP_METHOD(show,
                  showWithResolver:(RCTPromiseResolveBlock) resolve
                  rejecter:(RCTPromiseRejectBlock) reject) {
    _resolveBlock = resolve;
    _rejectBlock = reject;
    if(![UnityAds isReady:self.activePlacementId]) {
        reject(@"0", @"unityads还没有准备好", nil);
        return;
    }
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        UIViewController *controller = [[UIApplication sharedApplication].keyWindow rootViewController];
        [UnityAds show:controller placementId:self.activePlacementId];
    });
}

RCT_REMAP_METHOD(isReady,
                 resolver:(RCTPromiseResolveBlock)resolve
                 rejecter:(RCTPromiseRejectBlock)reject)
{
    NSString *boolStr = @"";
    
    if([UnityAds isReady:self.activePlacementId]) {
        boolStr = @"true";
    } else {
        boolStr = @"false";
    }
    
    NSDictionary *dict = @{
                           @"isReady": boolStr
                           };
    resolve(dict);
}

- (void)unityAdsReady:(NSString *)placementId{
}

- (void)unityAdsDidError:(UnityAdsError)error withMessage:(NSString *)message{
}

- (void)unityAdsDidStart:(NSString *)placementId{
}

- (void)unityAdsDidFinish:(NSString *)placementId withFinishState:(UnityAdsFinishState)state{
    _resolveBlock(@"true");
}

@end
