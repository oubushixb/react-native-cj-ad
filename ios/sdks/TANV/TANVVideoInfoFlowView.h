//
//  TANVVideoInfoFlowView.h
//  TanvSDK
//
//  Created by Alson Zhou on 2018/5/30.
//  Copyright © 2018年 Jusha. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface TANVVideoInfoFlowView : UIView


@property(nonatomic, strong)void(^infoVideoFlowClickBlock)(void);

@property (nonatomic, strong, readonly) UIFont          *titleFont;             // title字体样式
@property (nonatomic, strong, readonly) UIColor         *titleColor;            // title字体颜色


/**
 * 显示视频视图
 */
- (void)show;


/**
 * 播放接口
 */
- (void)play;

/**
 * 暂停接口
 */
- (void)pause;


@end
