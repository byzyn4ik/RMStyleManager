//
//  RMStyleReloadProtocol.h
//  StylisApp
//
//  Created by Maks Petrovsky on 16.04.16.
//  Copyright © 2016 Maks Petrovsky. All rights reserved.
//

#import <Foundation/Foundation.h>

static NSString *reloadAllStylesNotification = @"ReloadAllStylesNotification";
static NSString *reloadStyleNotification = @"ReloadStyleNotification";

@protocol RMStyleReloadProtocol <NSObject>

- (void)reloadStyle;

@end