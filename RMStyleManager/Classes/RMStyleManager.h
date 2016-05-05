//
//  RMStyleManager.h
//  PocketGuard
//
//  Created by Maks Petrovsky on 24.04.15.
//  Copyright (c) 2015 realme. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "RMBaseStyle.h"
#import "RMButtonStyle.h"
#import "RMLabelStyle.h"
#import "RMNavigationBarStyle.h"
#import "RMSwitchStyle.h"
#import "RMTextFieldStyle.h"
#import "RMImageViewStyle.h"

@interface RMStyleManager : NSObject

+ (RMBaseStyle *)styleForKey:(NSString *)key;
+ (void)reloadAllStyles;

@end
