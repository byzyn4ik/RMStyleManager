//
//  RMSwitchStyle.h
//  PocketGuard
//
//  Created by Maks Petrovsky on 03.02.16.
//  Copyright © 2016 realme. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RMBaseStyle.h"

@interface RMSwitchStyle : RMBaseStyle

@property (retain,nonatomic) UIColor *onTintColor;
@property (retain,nonatomic) UIColor *thumbTint;
@property (retain,nonatomic) UIColor *tintColor;

@property (retain,nonatomic) UIColor *backgroundColor;
@property (nonatomic) BOOL cornerHalfSize;
@property (nonatomic) CGFloat cornerRadius;

@end
