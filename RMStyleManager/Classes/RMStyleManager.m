//
//  RMStyleManager.m
//  PocketGuard
//
//  Created by Maks Petrovsky on 24.04.15.
//  Copyright (c) 2015 realme. All rights reserved.
//

#import "RMStyleManager.h"
#import <objc/runtime.h>

#import "RMStyleReloadProtocol.h"

@interface RMStyleManager ()

@property(nonatomic, strong) NSMutableDictionary *stylesDict;

@end

@implementation RMStyleManager

+ (instancetype)sharedStyleManager {
   static RMStyleManager *_sharedStyleManager = nil;
   static dispatch_once_t onceToken;
   dispatch_once(&onceToken, ^{
      _sharedStyleManager = [RMStyleManager new];
   });
   return _sharedStyleManager;
}

+ (RMBaseStyle *)styleForKey:(NSString *)key {
   return [[self sharedStyleManager] styleForKey:key];
}

- (void)reloadStyleForKey:(NSString*)key {
   _stylesDict[key] = nil;
   [[NSNotificationCenter defaultCenter]
    postNotificationName:reloadStyleNotification
    object:key
    userInfo:nil];
}

- (void)reloadAllStyles {
   _stylesDict = nil;
   [[NSNotificationCenter defaultCenter]
    postNotificationName:reloadAllStylesNotification
    object:nil
    userInfo:nil];
}

- (void)setStyle:(RMBaseStyle *)style forKey:(NSString *)key {
   BOOL hadStyle =self.stylesDict[key] ? YES : NO;
   self.stylesDict[key] = style;
   if (hadStyle) {
      [self reloadStyleForKey:key];
   }
}

- (RMBaseStyle *)styleForKey:(NSString *)key {
   if (!self.stylesDict[key]) {
      SEL selector = NSSelectorFromString(key);
      if ([[self class] respondsToSelector:selector]) {
         IMP imp = [[self class] methodForSelector:selector];
         id (*func)(id, SEL, NSString *) = (void *)imp;
         RMBaseStyle *style = func([self class], selector, key);
         [self setStyle:style forKey:key];
      }
   }
   return self.stylesDict[key];
}

- (NSMutableDictionary *)stylesDict {
   if (!_stylesDict) {
      _stylesDict = [NSMutableDictionary new];
   }
   return _stylesDict;
}

@end
