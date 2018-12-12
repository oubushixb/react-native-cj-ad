
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class SpotSDK;

@protocol SpotSDKDelegate <NSObject>

@optional
/*
 * 插屏关闭广告回调
 */
-(void)closeSpot:(SpotSDK *)spotSDK;
/*
 * 插屏点击广告回调
 */
-(void)clickSpot:(SpotSDK *)spotSDK;
/*
 * 插屏广告获取数据成功回调
 */
-(void)successToFetchSpot:(SpotSDK *)spotSDK;
/*
 * 插屏广告获取数据失败回调
 */
-(void)failToFetchSpot:(SpotSDK *)spotSDK error:(NSError *)error;

@end

/* 必须实例化为全局变量 */
@interface SpotSDK : NSObject

@property(nonatomic, weak)id <SpotSDKDelegate> delegate;
/*
 * 初始化对象
 */
-(instancetype)initWithUserId:(NSString *)userId appId:(NSString *)appId appKey:(NSString *)appKey;
/*
 * 加载插屏数据
 */
-(void)loadSpot;
/*
 * 显示开屏view
 * 显示在window层上
 */
-(void)showSpotWithWindow:(UIWindow *)window;
/*
 * 显示开屏view
 * 显示在ViewController层上
 */
-(void)showSpotWithViewController:(UIViewController *)vcObjc;
@end







