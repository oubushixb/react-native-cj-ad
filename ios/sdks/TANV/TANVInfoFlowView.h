//
//  TANVInfoFlowView.h
//  AdSDKBuild
//
//  Created by Alson Zhou on 2017/11/14.
//  Copyright © 2017年 Kevin. All rights reserved.
//

#import <UIKit/UIKit.h>
@class DataControl;
@class ALInfoFlowSDKModel;
@class StatModel;

@interface TANVInfoFlowView : UIView

@property(nonatomic, strong)void(^infoFlowClickBlock)(void);

@property(nonatomic, strong)UIFont              *titleFont;
@property(nonatomic, strong)UIColor             *titleColor;
@property(nonatomic, assign)CGFloat             scaleValue;


-(void)show;

@end
