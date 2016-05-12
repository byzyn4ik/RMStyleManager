//
//  RMImageViewStyle.h
//  Pods
//
//  Created by Maks Petrovsky on 05.05.16.
//
//

#import "RMBaseStyle.h"

@interface RMImageViewStyle : RMBaseStyle

@property(nonatomic) UIImageRenderingMode renderingMode;
@property(nonatomic) CGFloat cornerRadius;
@property(nonatomic) CGFloat borderWidth;
@property(nonatomic)  BOOL applyContentMode;
@property(nonatomic)  UIViewContentMode contentMode;
@property(nonatomic, strong) UIColor *borderColor;
@property(nonatomic, strong) UIColor *tintColor;
@property(nonatomic, strong) UIColor *backgroundColor;
@property(nonatomic, strong) NSString *imageName;


@end
