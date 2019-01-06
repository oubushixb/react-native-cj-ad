//
//  VUNGLECJVideo.m
//  RNCjAd
//
//  Created by xuege on 2019/1/3.
//  Copyright © 2019年 Facebook. All rights reserved.
//

#import "VUNGLECJVideo.h"

@implementation VUNGLECJVideo

RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(init:(NSDictionary *)config) {
    NSError* error;
    NSString* appID = config[@"appId"];
    if(config[@"activePlacementId"]) {
        self.activePlacementId = config[@"activePlacementId"];
    }
    VungleSDK* sdk = [VungleSDK sharedSDK];
    [sdk startWithAppId:appID error:&error];
    
    [[VungleSDK sharedSDK] setDelegate:self];
}

RCT_REMAP_METHOD(show,
                 resolver2:(RCTPromiseResolveBlock)resolve
                 rejecter2:(RCTPromiseRejectBlock)reject){
    VungleSDK* sdk = [VungleSDK sharedSDK];
    NSError *error;
    UIViewController *controller = [[UIApplication sharedApplication].keyWindow rootViewController];
    [sdk playAd:controller options:nil placementID:self.activePlacementId error:&error];
    if (error) {
        NSLog(@"Error encountered playing ad: %@", error);
    }
}

RCT_REMAP_METHOD(isReady,
                 resolver:(RCTPromiseResolveBlock)resolve
                 rejecter:(RCTPromiseRejectBlock)reject)
{
    NSString *isReady = nil;
    
    if(!self.isAdPlayable) {
        isReady = @"false";
    } else {
        isReady = self.isAdPlayable;
    }
    
    NSDictionary *dict = @{
                           @"isReady": isReady
                           };
    resolve(dict);
}

- (void)vungleAdPlayabilityUpdate:(BOOL)isAdPlayable placementID:(NSString *)placementID error:(nullable NSError *)error {
    self.isAdPlayable = isAdPlayable ? @"true" : @"false";
}

@end
