//
//  RMStyleManager.m
//  PocketGuard
//
//  Created by Maks Petrovsky on 24.04.15.
//  Copyright (c) 2015 realme. All rights reserved.
//

#import "RMStyleManager.h"
#import "RMColorsManager.h"
#import <objc/runtime.h>
#import "RMStyleReloadProtocol.h"
@interface UIColor (Colors)

+ (UIColor*)mainBackgroundColor;

@end


@implementation UIColor (Colors)

@end
@interface RMStyleManager ()

@end

@implementation RMStyleManager


+ (void)load {
   [self sharedManager];
}

+ (instancetype)sharedManager {
    static RMStyleManager *_sharedManager= nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedManager = [self new];
    });
   return _sharedManager;
}

- (instancetype)init {
   self = [super init];
   if (self) {
      [RMColorsManager reloadColors];
      UIColor *color =[UIColor mainBackgroundColor];
      NSLog(@"%@",color);
   }
   return self;
}

+ (NSString*)colorWithName:(NSString*)colorName {
   return [RMColorsManager colorWithName:colorName];
}


+ (RMBaseStyle *)styleForKey:(NSString *)key {
  SEL selector = NSSelectorFromString(key);
  if ([self respondsToSelector:selector]) {
    IMP imp = [self methodForSelector:selector];
    id (*func)(id, SEL, NSString *) = (void *)imp;
    RMBaseStyle *style = func(self, selector, key);
    return style;
  }
  return nil;
}

+ (void)reloadAllStyles {
  [[NSNotificationCenter defaultCenter]
      postNotificationName:reloadStylesNotification
                    object:nil
                  userInfo:nil];
}

@end
