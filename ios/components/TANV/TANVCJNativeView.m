//
//  TANVCJNativeView.m
//  RNCjAd
//
//  Created by 陈俊 on 2018/12/14.
//  Copyright © 2018年 Facebook. All rights reserved.
//

#import "TANVCJNativeView.h"

@implementation TANVCJNativeView

- (void)setConfig:(NSDictionary *)config {
    self.adConfig = config;
}

- (void)setType:(int)type {
    _type = type;
}

- (void)reactSetFrame:(CGRect)frame
{
    [super reactSetFrame:frame];
    
    self.infoFlowSDK = [[InfoFlowSDK alloc]initWithUserId:self.adConfig[@"userId"] appId:self.adConfig[@"appId"] appKey:self.adConfig[@"appKey"]];
    self.infoFlowSDK.titleFont = [UIFont systemFontOfSize:14];
    self.infoFlowSDK.titleColor = [UIColor blackColor];
    self.infoFlowSDK.delegate = self;
    
    /*dispatch_async(dispatch_get_main_queue(), ^{
        UIViewController *vc = [[[UIApplication sharedApplication] keyWindow] rootViewController];
        [self.infoFlowSDK fetchInfoFlow:vc type:_type];
    });*/
    
    /*self.nativeExpressAd = [[GDTNativeExpressAd alloc] initWithAppId:self.adConfig[@"appId"] placementId:self.adConfig[@"placementId"] adSize:CGSizeMake(frame.size.width, frame.size.height)];
    
    self.nativeExpressAd.delegate = self;
    [self.nativeExpressAd loadAd:1];*/
}

-(void)successToFetchInfoFlow:(InfoFlowSDK *)infoFlowSDK views:(NSMutableArray *)flowViewArray{
    InfoFlowView *infoFlowView = (InfoFlowView *)[flowViewArray objectAtIndex:0];
    infoFlowView.frame = CGRectMake(0, 0, self.frame.size.width, self.frame.size.height);
    [self addSubview:infoFlowView];
    [infoFlowView showFlowView];
}

-(void)failToFetchInfoFlow:(InfoFlowSDK *)infoFlowSDK error:(NSError *)error {
    if (!self.onADError) {
        return;
    }
    
    self.onADError(@{@"error": error.localizedDescription});
}

@end
