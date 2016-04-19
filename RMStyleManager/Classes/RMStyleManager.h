//
//  RMStyleManager.h
//  PocketGuard
//
//  Created by Maks Petrovsky on 24.04.15.
//  Copyright (c) 2015 realme. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "RMLabelStyle.h"
#import "RMButtonStyle.h"
#import "RMSwitchStyle.h"
#import "RMTextFieldStyle.h"

@interface RMStyleManager : NSObject

+ (id)styleForKey:(NSString*)key;
+ (RMLabelStyle *)labelStyleForKey:(NSString *)key;
+ (RMButtonStyle *)buttonStyleForKey:(NSString *)key;
+ (RMSwitchStyle *)switchStyleForKey:(NSString *)key;
+ (RMTextFieldStyle *)textFieldStyleForKey:(NSString *)key;
+ (void)reloadAllStyles;

@end
