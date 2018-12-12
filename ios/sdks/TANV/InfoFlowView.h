//
//  InfoFlowView.h
//  AdSDKBuild
//
//  Created by Alson Zhou on 2017/11/14.
//  Copyright © 2017年 Kevin. All rights reserved.
//

#import <UIKit/UIKit.h>
@class DataControl;
@class ALInfoFlowSDKModel;
@class StatModel;

@interface InfoFlowView : UIView

@property(nonatomic, strong)void(^infoFlowClickBlock)(void);

@property(nonatomic, strong)UILabel             *titleLabel;
@property(nonatomic, strong)UIFont              *titleFont;
@property(nonatomic, strong)UIColor             *titleColor;
@property(nonatomic, strong)UIImageView         *titleBgView;
@property(nonatomic, strong)UIImageView         *adImageView;
@property(nonatomic, strong)UIImageView         *adBImageView;
@property(nonatomic, strong)UIImageView         *adCImageView;
@property(nonatomic, strong)UIImageView         *adLogoView;
@property(nonatomic, strong)UIImageView         *bgBottomView;
@property(nonatomic, strong)UILabel             *nameLabel;
@property(nonatomic, strong)UIImageView         *icoAdImg;
@property(nonatomic, strong)UIButton            *downLoadBtn;
@property(nonatomic, strong)UIImageView         *iconAdImgR;
@property(nonatomic, assign)NSInteger           showType;

@property(nonatomic, strong)NSString            *userId;
@property(nonatomic, strong)NSString            *appId;
@property(nonatomic, strong)ALInfoFlowSDKModel  *infoFlowData;
@property(nonatomic, strong)NSString            *controlUrl;
@property(nonatomic, assign)NSInteger           hitNumber;
@property(nonatomic, strong)DataControl         *dataControl;
@property(nonatomic, strong)UIViewController    *viewController;
@property(nonatomic, strong)StatModel           *statModel;

@property(nonatomic, assign)CGFloat             scaleValue;
@property(nonatomic, assign)NSInteger           ifTime;
@property(nonatomic, assign)BOOL                rightAdLogoSwitch;

-(void)loadFlowView:(void(^)(BOOL result))resultBlock;

-(void)showFlowView;

-(void)closeInfoFlow;
@end
