//
//  RMReloadStyleSubscriber.m
//  StylisApp
//
//  Created by Maks Petrovsky on 16.04.16.
//  Copyright © 2016 Maks Petrovsky. All rights reserved.
//

#import "RMReloadStyleSubscriber.h"

@implementation RMReloadStyleSubscriber


+ (void)subscribeForStyleReload:(id<RMStyleReloadProtocol>)subscriber
{
    [[NSNotificationCenter defaultCenter] addObserver:subscriber selector:@selector(reloadStyle) name:reloadStylesNotification object:nil];
}

+ (void)unsubscribeForStyleReload:(id<RMStyleReloadProtocol>)subscriber
{
    [[NSNotificationCenter defaultCenter] removeObserver:subscriber name:reloadStylesNotification object:nil];
}

@end
