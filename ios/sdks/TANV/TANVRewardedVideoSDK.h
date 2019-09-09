#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class TANVRewardedVideoSDK;

@protocol TANVRewardedVideoSDKDelegate <NSObject>

@optional

/**
 rewardedVideoAd 激励视频广告-物料-加载成功
 @param rewardedVideoAd 当前激励视频素材
 */
- (void)TANVRewardedVideoAdDidLoad:(TANVRewardedVideoSDK *)rewardedVideoAd;

/**
 rewardedVideoAd 激励视频广告-视频-加载成功
 @param rewardedVideoAd 当前激励视频素材
 */
- (void)TANVRewardedVideoAdVideoDidLoad:(TANVRewardedVideoSDK *)rewardedVideoAd;

/**
 rewardedVideoAd 广告位已经展示
 
 @param rewardedVideoAd 当前激励视频对象
 */
- (void)TANVRewardedVideoAdDidVisible:(TANVRewardedVideoSDK *)rewardedVideoAd;

/**
 rewardedVideoAd 激励视频广告关闭
 
 @param rewardedVideoAd 当前激励视频对象
 */
- (void)TANVRewardedVideoAdDidClose:(TANVRewardedVideoSDK *)rewardedVideoAd;

/**
 rewardedVideoAd 激励视频广告点击
 
 @param rewardedVideoAd 当前激励视频对象
 */
- (void)TANVRewardedVideoAdDidClick:(TANVRewardedVideoSDK *)rewardedVideoAd;

/**
 rewardedVideoAd 激励视频广告素材加载失败
 
 @param rewardedVideoAd 当前激励视频对象
 @param error 错误对象
 */
- (void)TANVRewardedVideoAdFailure:(TANVRewardedVideoSDK *)rewardedVideoAd didFailureWithError:(NSError *)error;

/**
 rewardedVideoAd 激励视频广告播放完成或发生错误
 
 @param rewardedVideoAd 当前激励视频对象
 */
- (void)TANVRewardedVideoAdDidPlayFinish:(TANVRewardedVideoSDK *)rewardedVideoAd;

@end

@interface TANVRewardedVideoSDK : NSObject

@property (nonatomic, weak) id<TANVRewardedVideoSDKDelegate> delegate;



/**
 初始激励视频广告对象
 
 @param userId 用户userId 后台获取
 @param appId 应用ID 后台获取
 @param appKey appKey 后台获取
 @return    激励视频SDK对象
 */
- (instancetype)initWithUserId:(NSString *)userId appId:(NSString *)appId appKey:(NSString *)appKey;


/**
 加载激励视频广告物料
 */
- (void)loadAdData;

/**
 显示激励视频广告
 */
- (void)showAdInViewController:(UIViewController *)vcObjc;

@end




