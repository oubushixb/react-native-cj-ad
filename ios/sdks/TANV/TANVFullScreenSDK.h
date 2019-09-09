//
//  TANVFullScreenSDK.h
//  TanvSDK
//
//  Created by Alson Zhou on 2019/4/15.
//  Copyright © 2019 Kevin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class TANVFullScreenSDK;

@protocol TANVFullScreenSDKDelegate <NSObject>

@optional
/**
 视频广告物料加载成功
 */
- (void)TANVFullscreenVideoMaterialMetaAdDidLoad:(TANVFullScreenSDK *)fullscreenVideoAd;

/**
 视频广告视频素材缓存成功
 */
- (void)TANVFullscreenVideoAdVideoDataDidLoad:(TANVFullScreenSDK *)fullscreenVideoAd;

/**
 广告位即将展示
 */
- (void)TANVFullscreenVideoAdDidVisible:(TANVFullScreenSDK *)fullscreenVideoAd;

/**
 视频广告关闭
 */
- (void)TANVFullscreenVideoAdDidClose:(TANVFullScreenSDK *)fullscreenVideoAd;

/**
 视频广告点击下载
 */
- (void)TANVFullscreenVideoAdDidClickDownload:(TANVFullScreenSDK *)fullscreenVideoAd;

/**
 视频广告素材加载失败
 
 @param fullscreenVideoAd 当前视频对象
 @param error 错误对象
 */
- (void)TANVFullscreenVideoAd:(TANVFullScreenSDK *)fullscreenVideoAd didFailWithError:(NSError *)error;

/**
 视频广告播放完成或发生错误
 
 @param fullscreenVideoAd 当前视频对象
 */
- (void)TANVFullscreenVideoAdDidPlayFinish:(TANVFullScreenSDK *)fullscreenVideoAd;

/**
 视频广告播放点击跳过
 
 @param fullscreenVideoAd 当前视频对象
 */
- (void)TANVFullscreenVideoAdDidClickSkip:(TANVFullScreenSDK *)fullscreenVideoAd;

@end

@interface TANVFullScreenSDK : NSObject

@property(nonatomic, weak)id <TANVFullScreenSDKDelegate> delegate;
/*
 * 初始化对象
 */
-(instancetype)initWithUserId:(NSString *)userId appId:(NSString *)appId appKey:(NSString *)appKey;
/*
 * 加载开屏数据
 */
-(void)loadFullScreen:(long)showType;
/*
 * 显示全屏view
 * 显示在ViewController层上
 */
-(void)showFullScreenWithController:(UIViewController *)vcObjc;

@end


