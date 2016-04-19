//
//  RMButtonStyle.h
//  PocketGuard
//
//  Created by Maks Petrovsky on 27.04.15.
//  Copyright (c) 2015 realme. All rights reserved.
//

#import "RMBaseStyle.h"

@interface RMButtonStyle : RMBaseStyle

@property (nonatomic) CGFloat cornerRadius;
@property (nonatomic,retain) UIColor *borderColor;
@property (nonatomic,retain) UIFont *font;
@property (nonatomic) CGFloat borderWidth;
@property (retain,nonatomic) UIColor *backgroundColor;
@property (retain,nonatomic) UIColor *textColor;
@property (nonatomic) UIColor * highlightedBgColor;
@property (nonatomic) UIColor * highlightedTextColor;
@property (retain,nonatomic) UIColor * disabledBgColor;
@property (retain,nonatomic) UIColor * disabledTextColor;


@end
