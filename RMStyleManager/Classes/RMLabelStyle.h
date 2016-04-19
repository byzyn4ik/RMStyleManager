//
//  RMLabelStyle.h
//  PocketGuard
//
//  Created by Maks Petrovsky on 24.04.15.
//  Copyright (c) 2015 realme. All rights reserved.
//

#import "RMBaseStyle.h"

@interface RMLabelStyle : RMBaseStyle

@property (nonatomic,retain) UIColor *textColor;
@property (nonatomic,retain) UIFont *font;
@property (nonatomic,retain) UIColor *shadowColor;
@property (nonatomic,retain) UIColor *backgroundColor;
@property (nonatomic,assign) CGFloat borderWidth;
@property (nonatomic,retain) UIColor *borderColor;
@property (nonatomic,assign) CGFloat cornerRadius;
@property (nonatomic,retain) UIColor *fontColor;
@property (nonatomic,assign) CGFloat fontSize;
@property (nonatomic,assign) NSTextAlignment textAlignment;
@property (nonatomic,assign) CGFloat numberOfLines;
@property (nonatomic) CGFloat kerning;

@end
