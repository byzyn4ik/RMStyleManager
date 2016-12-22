//
//  RMProgressViewStyle.h
//  Pods
//
//  Created by Max on 22.12.16.
//
//

#import "RMViewStyle.h"

@interface RMProgressViewStyle : RMViewStyle

@property(nonatomic)  UIProgressViewStyle progressViewStyle;
@property(nonatomic, strong, nullable) UIColor* progressTintColor;
@property(nonatomic, strong, nullable) UIColor* trackTintColor;
@property(nonatomic, strong, nullable) UIImage* progressImage;
@property(nonatomic, strong, nullable) UIImage* trackImage;

@end
