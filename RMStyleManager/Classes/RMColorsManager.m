//
//  RMColorsManager.m
//  Pods
//
//  Created by Maks Petrovsky on 14.07.16.
//
//

#import "RMColorsManager.h"
#import "UIColor+ColorLoader.h"
#import "UIColor+RMStyleManager.h"
#import <objc/runtime.h>

static NSString *baseColorKey = @"baseColor";
static NSString *colorNameKey = @"name";
static NSString *hexCodeKey = @"hexCode";
static NSString *alphaKey = @"alpha";


static NSDictionary<NSString *, UIColor *> *colors;



@implementation RMColorsManager


+ (NSString*)pathForColors {
   return   [[NSBundle mainBundle] pathForResource:@"RMStyleManager_Colors"
                                            ofType:@"plist"];
}

+ (void)reloadColors {

  NSArray *colorsArray = [NSArray arrayWithContentsOfFile:[[self class] pathForColors]];
  NSMutableDictionary<NSString *, UIColor *> *colors_ =
      [NSMutableDictionary new];
  for (NSDictionary *colorsDict in colorsArray) {
     NSString *colorName = colorsDict[colorNameKey];
     NSString *baseColorName = colorsDict[baseColorKey];
    if (baseColorName) {
      colors_[colorName] =
          [UIColor colorFromBaseColor:colors[baseColorName]
                             andAlpha:colorsDict[alphaKey]];
    } else {
      colors_[colorName] =
          [UIColor colorFromHexString:colorsDict[hexCodeKey]
                             andAlpha:colorsDict[alphaKey]];
    }
  }
  colors = [colors_ copy];
  [self injectColors];
}

+ (NSString*)colorWithName:(NSString*)colorName {
   return colors[colorName];
}

+ (void)injectColors {
   Class cls = objc_getMetaClass("UIColor");
   for (NSString *colorName in colors.allKeys) {
      BOOL success = class_addMethod(cls, NSSelectorFromString(colorName), (IMP)fColorWithName, "");
   }
   
}

UIColor *fColorWithName(id self, SEL _cmd) {
   NSString *colorName = NSStringFromSelector(_cmd);
   UIColor *color = colors[colorName];
   return color;
}



@end
