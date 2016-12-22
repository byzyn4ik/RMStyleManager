/// Users/petrovsky/RMStyleManager/RMStyleManager/Classes
//  RMStyleManager.h
//  PocketGuard
//
//  Created by Maks Petrovsky on 24.04.15.
//  Copyright (c) 2015 realme. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "RMBaseStyle.h"
#import "RMButtonStyle.h"
#import "RMImageViewStyle.h"
#import "RMLabelStyle.h"
#import "RMNavigationBarStyle.h"
#import "RMPageControlStyle.h"
#import "RMSwitchStyle.h"
#import "RMTextFieldStyle.h"
#import "RMViewStyle.h"
#import "RMSegmentedControlStyle.h"
#import "RMProgressViewStyle.h"

@interface RMStyleManager : NSObject

+ (instancetype)sharedStyleManager;
- (void)setStyle:(RMBaseStyle *)style forKey:(NSString *)key;
- (RMBaseStyle *)styleForKey:(NSString *)key;
- (void)reloadStyleForKey:(NSString*)key;
- (void)reloadAllStyles;

@end
