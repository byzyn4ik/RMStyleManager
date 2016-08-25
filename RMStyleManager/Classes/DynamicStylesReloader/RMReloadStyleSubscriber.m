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
                          style:(NSString *)style {
   [[NSNotificationCenter defaultCenter] addObserver:subscriber
                                            selector:@selector(reloadStyle)
                                                name:reloadAllStylesNotification
                                              object:nil];
   if (style) {
      [[NSNotificationCenter defaultCenter] addObserver:subscriber
                                               selector:@selector(reloadStyle)
                                                   name:reloadStyleNotification
                                                 object:style];
   }
}

+ (void)unsubscribeForStyleReload:(id<RMStyleReloadProtocol>)subscriber
                            style:(NSString *)style {
   [[NSNotificationCenter defaultCenter]
    removeObserver:subscriber
    name:reloadAllStylesNotification
    object:nil];
   if (style) {
      [[NSNotificationCenter defaultCenter] removeObserver:subscriber
                                                      name:reloadStyleNotification
                                                    object:style];
   }
}

@end
