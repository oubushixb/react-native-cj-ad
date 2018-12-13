//
//  GDTCJSplash.h
//  RNCjAd
//
//  Created by 陈俊 on 2018/12/13.
//  Copyright © 2018年 Facebook. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "GDTSplashAd.h"

@interface GDTCJSplash : NSObject

@property (retain, nonatomic) GDTSplashAd *splash;

-(void)show:(UIWindow *)window withOptions:(NSDictionary *)adOptions;

@end
