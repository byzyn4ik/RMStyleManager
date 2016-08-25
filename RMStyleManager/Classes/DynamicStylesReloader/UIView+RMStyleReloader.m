//
//  UIView+RMStyleReloader.m
//  StylisApp
//
//  Created by Maks Petrovsky on 16.04.16.
//  Copyright © 2016 Maks Petrovsky. All rights reserved.
//

#import "RMStyleManager.h"
#import "UIView+RMStyleReloader.h"
#import "RMStylishComponent.h"

@implementation UIView (RMStyleReloader)

- (void)subscribeSelfForStyle {
   if ([self conformsToProtocol:@protocol(RMStylishComponent)]) {
      id<RMStylishComponent> self_ = (id<RMStylishComponent>)self;
      [RMReloadStyleSubscriber
       subscribeForStyleReload:(id<RMStyleReloadProtocol>)self
       style:self_.style];
   }
}

- (void)unsubscribeSelfForStyle {
   if ([self conformsToProtocol:@protocol(RMStylishComponent)]) {
      id<RMStylishComponent> self_ = (id<RMStylishComponent>)self;
      [RMReloadStyleSubscriber
       unsubscribeForStyleReload:(id<RMStyleReloadProtocol>)self
       style:self_.style];
   }
}

- (void)reloadStyle {
   if ([self conformsToProtocol:@protocol(RMStylishComponent)]) {
      id<RMStylishComponent> self_ = (id<RMStylishComponent>)self;
      if (self_.style) {
         [self_ applyStyle:[[RMStyleManager sharedStyleManager]
                            styleForKey:self_.style]];
      }
   }
}

#pragma mark - Styles Subscriptions

- (void)styleDidChanged:(NSNotification *)notification {
   if ([self conformsToProtocol:@protocol(RMStylishComponent)]) {
      id<RMStylishComponent> self_ = (id<RMStylishComponent>)self;
      if ([self_.style isEqualToString:notification.object]) {
         [self reloadStyle];
      }
   }
}

@end
