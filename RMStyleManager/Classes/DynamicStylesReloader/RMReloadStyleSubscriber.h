//
//  RMReloadStyleSubscriber.h
//  StylisApp
//
//  Created by Maks Petrovsky on 16.04.16.
//  Copyright © 2016 Maks Petrovsky. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RMStyleReloadProtocol.h"

@interface RMReloadStyleSubscriber : NSObject

+ (void)subscribeForStyleReload:(id<RMStyleReloadProtocol>)subscriber;
+ (void)unsubscribeForStyleReload:(id<RMStyleReloadProtocol>)subscriber;

@end
