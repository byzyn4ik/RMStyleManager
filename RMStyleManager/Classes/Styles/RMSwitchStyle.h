//
//  RMSwitchStyle.h
//  PocketGuard
//
//  Created by Maks Petrovsky on 03.02.16.
//  Copyright © 2016 realme. All rights reserved.
//

#import "RMBaseStyle.h"
#import <UIKit/UIKit.h>

@interface RMSwitchStyle : RMBaseStyle

@property(nonatomic, strong) UIColor *onTintColor;
@property(nonatomic, strong) UIColor *thumbTint;
@property(nonatomic, strong) UIColor *tintColor;
@property(nonatomic) BOOL cornerHalfSize;

@end
