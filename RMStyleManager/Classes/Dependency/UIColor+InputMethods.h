//
//  UIColor+InputMethods.h
//  Picks
//
//  Created by Joe on 5/22/13.
//  Copyright (c) 2013 mergesort. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface UIColor (InputMethods)

+ (UIColor *)colorWithHex:(NSString *)hexString;
+ (NSString *)hexFromColor:(UIColor *)color;

+ (NSString *)stripHashtagFromHex:(NSString *)hexString;

- (UIColor *)darkenedColorByPercent:(float)percentage;
- (UIColor *)lightenedColorByPercent:(float)percentage;

- (UIColor *)tenPercentLighterColor;
- (UIColor *)twentyPercentLighterColor;
- (UIColor *)tenPercentDarkerColor;
- (UIColor *)twentyPercentDarkerColor;

@end
