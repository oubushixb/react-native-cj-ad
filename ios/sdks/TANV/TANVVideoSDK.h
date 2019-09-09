//
//  TANVVideoSDK.h
//  TanvSDK
//
//  Created by Alson Zhou on 2018/7/12.
//  Copyright © 2018年 Kevin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class TANVVideoSDK;
@class TANVVideoInfoFlowView;

@protocol TANVVideoSDKDelegate <NSObject>
- (void)clickInfoVideoFlow:(TANVVideoSDK *)infoFlowSDK;
- (void)didSuccessFetchVideo:(TANVVideoSDK *)videoObjc videoViewArray:(NSArray *)views;
- (void)didFailureFetchVideo:(TANVVideoSDK *)videoObjc error:(NSError *)error;
@end

@interface TANVVideoSDK : NSObject
@property (nonatomic, weak) id<TANVVideoSDKDelegate>    delegate;
@property (nonatomic, strong) UIFont                *titleFont;     // title字体样式
@property (nonatomic, strong) UIColor               *titleColor;    // title字体颜色
@property (nonatomic, assign) BOOL                  isPreloadCache; // 是否开启预缓存


/**
 初始化SDK

 @param userId userID
 @param appId AppId
 @param appKey appKey
 @return 视频SDK对象
 */
- (instancetype)initWithUserId:(NSString *)userId appId:(NSString *)appId appKey:(NSString *)appKey;

- (void)fetchVideoViewWithShowType:(NSUInteger)showType currentViewController:(UIViewController *)currentVC;

- (void) closeVideoSDK;

@end
