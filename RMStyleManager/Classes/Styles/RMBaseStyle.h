//
//  RMBaseStyle.h
//  StylisApp
//
//  Created by Maks Petrovsky on 16.04.16.
//  Copyright © 2016 Maks Petrovsky. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RMBaseStyle : NSObject

@property(nonatomic) BOOL dontMaskToBounds;
@property(nonatomic) BOOL halfSizeCornereRadius;
@property(nonatomic, strong) UIColor *backgroundColor;
@property(nonatomic, assign) CGFloat borderWidth;
@property(nonatomic, assign) CGFloat cornerRadius;
@property(nonatomic, strong) UIColor *borderColor;
@property(nonatomic, strong) UIColor *tintColor;

@end
