//
//  TANVCJSplash.h
//  RNCjAd
//
//  Created by 陈俊 on 2018/12/13.
//  Copyright © 2018年 Facebook. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SplashSDK.h"
#import <React/RCTBridgeModule.h>

@interface TANVCJSplash : NSObject <SplashSDKDelegate, RCTBridgeModule>{
    RCTPromiseResolveBlock _resolveBlock;
    RCTPromiseRejectBlock _rejectBlock;
}
@end
