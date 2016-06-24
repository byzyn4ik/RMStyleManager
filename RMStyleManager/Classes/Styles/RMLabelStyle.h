//
//  RMLabelStyle.h
//  PocketGuard
//
//  Created by Maks Petrovsky on 24.04.15.
//  Copyright (c) 2015 realme. All rights reserved.
//

#import "RMBaseStyle.h"

@interface RMLabelStyle : RMBaseStyle

@property(nonatomic, strong) UIColor *textColor;
@property(nonatomic, strong) UIFont *font;
@property(nonatomic, strong) UIColor *shadowColor;
@property(nonatomic, strong) UIColor *fontColor;
@property(nonatomic, assign) CGFloat fontSize;
@property(nonatomic, strong) NSDictionary<NSString *, id> * textAttributes;
@property(nonatomic, assign) NSTextAlignment textAlignment;
@property(nonatomic, assign) CGFloat numberOfLines;
@property(nonatomic) CGFloat kerning;


@end
