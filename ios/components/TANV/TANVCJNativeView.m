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
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        UIViewController *controller = [[UIApplication sharedApplication].keyWindow rootViewController];
        [self.infoFlowSDK fetchInfoFlow:controller type:_type];
    });
}

-(void)successToFetchInfoFlow:(InfoFlowSDK *)infoFlowSDK views:(NSMutableArray *)flowViewArray{
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        InfoFlowView *infoFlowView = (InfoFlowView *)[flowViewArray objectAtIndex:0];
        CGFloat width = infoFlowView.frame.size.width;
        CGFloat height = infoFlowView.frame.size.height;
        /*infoFlowView.frame = CGRectMake(0, 0, self.frame.size.width, self.frame.size.height);*/
        
        [self addSubview:infoFlowView];
        [infoFlowView showFlowView];
    });
}

-(void)failToFetchInfoFlow:(InfoFlowSDK *)infoFlowSDK error:(NSError *)error {
    if (!self.onADError) {
        return;
    }
    
    self.onADError(@{@"error": error.localizedDescription});
}

@end
