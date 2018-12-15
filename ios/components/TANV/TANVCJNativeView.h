//
//  TANVCJNativeView.h
//  RNCjAd
//
//  Created by 陈俊 on 2018/12/14.
//  Copyright © 2018年 Facebook. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InfoFlowSDK.h"
#import "InfoFlowView.h"
#import <React/RCTView.h>
#import <React/UIView+React.h>

@interface TANVCJNativeView : RCTView <InfoFlowSDKDelegate> {
    int _type;
}
@property (nonatomic, strong) NSDictionary *adConfig;
@property (nonatomic, retain) InfoFlowView *flowView;
@property (nonatomic, retain) InfoFlowSDK *infoFlowSDK;

@property (nonatomic, copy) RCTBubblingEventBlock onADError;
@end
