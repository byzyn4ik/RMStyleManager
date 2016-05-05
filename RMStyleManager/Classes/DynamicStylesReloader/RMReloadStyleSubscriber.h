//
//  RMReloadStyleSubscriber.h
//  StylisApp
//
//  Created by Maks Petrovsky on 16.04.16.
//  Copyright © 2016 Maks Petrovsky. All rights reserved.
//

#import "RMStyleReloadProtocol.h"
#import <Foundation/Foundation.h>

@interface RMReloadStyleSubscriber : NSObject

+ (void)subscribeForStyleReload:(id<RMStyleReloadProtocol>)subscriber;
+ (void)unsubscribeForStyleReload:(id<RMStyleReloadProtocol>)subscriber;

@end
