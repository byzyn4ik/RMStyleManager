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


+ (id)styleForKey:(NSString*)key
{
    SEL selector = NSSelectorFromString(key);
    if ([self respondsToSelector:selector])
    {
        IMP imp = [self methodForSelector:selector];
        id (*func)(id, SEL, NSString*) = (void *)imp;
        id style = func(self,selector,key);
        return style;
    }
    return nil;
}

+ (RMLabelStyle*)labelStyleForKey:(NSString*)key
{
    id style = [self styleForKey:key];
    if ([style isKindOfClass:[RMLabelStyle class]])
    {
        return (RMLabelStyle*)style;
    }
    return nil;
}

+ (RMButtonStyle*)buttonStyleForKey:(NSString*)key
{
    id style = [self styleForKey:key];
    if ([style isKindOfClass:[RMButtonStyle class]])
    {
        return (RMButtonStyle*)style;
    }
    return nil;
}

+ (RMSwitchStyle*)switchStyleForKey:(NSString *)key
{
    id style = [self styleForKey:key];
    if ([style isKindOfClass:[RMSwitchStyle class]])
    {
        return (RMSwitchStyle*)style;
    }
    return nil;
}

+ (RMTextFieldStyle *)textFieldStyleForKey:(NSString *)key
{
    id style = [self styleForKey:key];
    if ([style isKindOfClass:[RMTextFieldStyle class]])
    {
        return (RMTextFieldStyle*)style;
    }
    return nil;
}


+ (void)reloadAllStyles
{
    [[NSNotificationCenter defaultCenter] postNotificationName:reloadStylesNotification object:nil userInfo:nil];
}

@end
