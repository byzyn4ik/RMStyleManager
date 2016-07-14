//
//  UIColor+RMStyleManager.h
//  Pods
//
//  Created by Maks Petrovsky on 14.07.16.
//
//

#import <UIKit/UIKit.h>

@interface UIColor (ColorLoader)

+ (UIColor *)colorFromBaseColor:(UIColor *)baseColor andAlpha:(NSNumber *)alpha;
+ (UIColor *)colorFromHexString:(NSString *)hexString andAlpha:(NSNumber *)alpha;
+ (UIColor *)colorFromRGBcode:(NSString *)colorCode;

@end
