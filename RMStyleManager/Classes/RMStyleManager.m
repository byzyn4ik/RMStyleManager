//
//  RMStyleManager.m
//  PocketGuard
//
//  Created by Maks Petrovsky on 24.04.15.
//  Copyright (c) 2015 realme. All rights reserved.
//

#import "RMStyleManager.h"
#import <objc/runtime.h>

#import "RMLabelStyle.h"
#import "RMButtonStyle.h"
#import "RMSwitchStyle.h"
#import "RMTextFieldStyle.h"
#import "RMStyleReloadProtocol.h"

@implementation RMStyleManager


+ (RMBaseStyle*)styleForKey:(NSString*)key
{
    SEL selector = NSSelectorFromString(key);
    if ([self respondsToSelector:selector])
    {
        IMP imp = [self methodForSelector:selector];
        id (*func)(id, SEL, NSString*) = (void *)imp;
        RMBaseStyle* style = func(self,selector,key);
        return style;
    }
    return nil;
}

+ (void)reloadAllStyles
{
    [[NSNotificationCenter defaultCenter] postNotificationName:reloadStylesNotification object:nil userInfo:nil];
}

@end
