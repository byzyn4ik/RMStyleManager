//
//  UIColor+RMStyleManager.m
//  Pods
//
//  Created by Maks Petrovsky on 14.07.16.
//
//

#import "UIColor+ColorLoader.h"

@implementation UIColor (ColorLoader)

+ (UIColor *)colorFromBaseColor:(UIColor *)baseColor
                       andAlpha:(NSNumber *)alpha {
  return [baseColor colorWithAlphaComponent:alpha.floatValue];
}

+ (UIColor *)colorFromHexString:(NSString *)hexString
                       andAlpha:(NSNumber *)alpha {
  return [[UIColor colorFromRGBcode:hexString]
      colorWithAlphaComponent:alpha.floatValue];
}

+ (UIColor *)colorFromRGBcode:(NSString *)colorCode {
  UIColor *color;
  unsigned int colorRGBhexaCode = 0;
  NSScanner *scanner = [[NSScanner alloc] initWithString:colorCode];
  [scanner scanHexInt:&colorRGBhexaCode];
  unsigned int redColor = (colorRGBhexaCode >> 16);
  unsigned int greenColor = (colorRGBhexaCode >> 8) & 0x00FF;
  unsigned int blueColor = colorRGBhexaCode & 0x0000FF;
  color = [self colorWithRed:redColor / 255.0
                       green:greenColor / 255.0
                        blue:blueColor / 255.0
                       alpha:1.0];
  return color;
}

@end
