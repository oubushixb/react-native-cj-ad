//
//  TANVInfoFlowSDK.h
//  AdSDKBuild
//
//  Created by Alson Zhou on 16/9/18.
//  Copyright © 2016年 周广生. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class TANVInfoFlowSDK;

@protocol TANVInfoFlowSDKDelegate <NSObject>

@optional
/// 要按照返回infoFlowView的size去展示，origin(x、y轴)自定义。

/*
 * 信息流点击广告回调
 */
-(void)clickInfoFlow:(TANVInfoFlowSDK *)infoFlowSDK;
/*
 * 信息流获取数据成功回调
 */
-(void)successToFetchInfoFlow:(TANVInfoFlowSDK *)infoFlowSDK views:(NSMutableArray *)flowViewArray;
/*
 * 信息流获取数据失败回调
 */
-(void)failToFetchInfoFlow:(TANVInfoFlowSDK *)infoFlowSDK error:(NSError *)error;

@end

@interface TANVInfoFlowSDK : NSObject

@property(nonatomic, weak)id <TANVInfoFlowSDKDelegate> delegate;
/*
 * 初始化对象
 */
-(instancetype)initWithUserId:(NSString *)userId appId:(NSString *)appId appKey:(NSString *)appKey;

/*
 * 获取信息流数据
 */
-(void)fetchInfoFlow:(UIViewController *)viewController type:(long)type;
/*
 * 设置标题字体大小
 */
@property(nonatomic,strong)UIFont *titleFont;
/*
 * 设置标题颜色
 */
@property(nonatomic,strong)UIColor *titleColor;
/*
 * 信息流获取个数
 */
@property(nonatomic)NSInteger infoFlowCount;
/*
 * 自定义缩放比例
 */
@property(nonatomic)CGFloat scaleValue;

@property (nonatomic, assign) BOOL isPreloadCache; // 是否开启预缓存

-(void)closeFlowSDK;
 
@end
