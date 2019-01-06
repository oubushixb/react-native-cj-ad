//
//  VUNGLECJVideo.h
//  RNCjAd
//
//  Created by xuege on 2019/1/3.
//  Copyright © 2019年 Facebook. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <React/RCTBridgeModule.h>
#import <VungleSDK/VungleSDK.h>

NS_ASSUME_NONNULL_BEGIN

@interface VUNGLECJVideo : NSObject <VungleSDKDelegate, RCTBridgeModule>
@property (strong) NSString* activePlacementId;
@property (strong) NSString  *isAdPlayable;
@end

NS_ASSUME_NONNULL_END
