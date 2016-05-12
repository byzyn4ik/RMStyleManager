//
//  RMButtonStyle.h
//  PocketGuard
//
//  Created by Maks Petrovsky on 27.04.15.
//  Copyright (c) 2015 realme. All rights reserved.
//

#import "RMBaseStyle.h"

@interface RMButtonStyle : RMBaseStyle

@property(nonatomic, strong) UIFont *font;
@property(nonatomic, strong) UIColor *textColor;
@property(nonatomic) UIColor *highlightedBgColor;
@property(nonatomic) UIColor *highlightedTextColor;
@property(nonatomic, strong) UIColor *disabledBgColor;
@property(nonatomic, strong) UIColor *disabledTextColor;

@end
