
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class SplashSDK;

@protocol SplashSDKDelegate <NSObject>

@optional
/*
 * 开屏关闭广告回调
 */
-(void)closeSplash:(SplashSDK *)splashSDK;
/*
 * 开屏点击广告回调
 */
-(void)clickSplash:(SplashSDK *)splashSDK;
/*
 * 开屏广告获取数据成功回调
 */
-(void)successToFetchSplash:(SplashSDK *)splashSDK drawFrame:(CGRect)dFrame;
/*
 * 开屏广告获取数据失败回调
 */
-(void)failToFetchSplash:(SplashSDK *)splashSDK error:(NSError *)error;

@end

@interface SplashSDK : NSObject

@property(nonatomic, weak)id <SplashSDKDelegate> delegate;
/*
 * 初始化对象
 */
-(instancetype)initWithUserId:(NSString *)userId appId:(NSString *)appId appKey:(NSString *)appKey;
/*
 * 加载开屏数据
 */
-(void)loadSplash;
/*
 * 显示开屏view
 * 显示在window层上
 */
-(void)showSplashWithWindow:(UIWindow *)window;
/*
 * 显示开屏view
 * 显示在ViewController层上
 */
-(void)showSplashWithController:(UIViewController *)vcObjc;

@end











