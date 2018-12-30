//
//  TANVCJSplash.h
//  RNCjAd
//
//  Created by 陈俊 on 2018/12/13.
//  Copyright © 2018年 Facebook. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SplashSDK.h"

@interface TANVCJSplash : NSObject <SplashSDKDelegate>

@property (retain, nonatomic) SplashSDK *splash;

-(void)show:(UIWindow *)window withOptions:(NSDictionary *)adOptions;

@end
