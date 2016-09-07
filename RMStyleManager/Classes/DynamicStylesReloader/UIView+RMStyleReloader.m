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

- (NSString*)styleNameForComponent:(id<RMStylishComponent>)component {
   if ([component respondsToSelector:@selector(styleName)]) {
      return  [component styleName];
   }
   if ([component respondsToSelector:@selector(style)]) {
      return  [component style];
   }

   return nil;
}

- (void)subscribeSelfForStyle {
   if ([self conformsToProtocol:@protocol(RMStylishComponent)]) {
      [RMReloadStyleSubscriber
       subscribeForStyleReload:(id<RMStyleReloadProtocol>)self
       style:[self styleNameForComponent:(id<RMStylishComponent>)self]];
   }
}

- (void)unsubscribeSelfForStyle {
   if ([self conformsToProtocol:@protocol(RMStylishComponent)]) {
      [RMReloadStyleSubscriber
       unsubscribeForStyleReload:(id<RMStyleReloadProtocol>)self
       style:[self styleNameForComponent:(id<RMStylishComponent>)self]];
   }
}

- (void)reloadStyle {
   if ([self conformsToProtocol:@protocol(RMStylishComponent)]) {
      NSString *styleName = [self styleNameForComponent:(id<RMStylishComponent>)self];
      if (styleName) {
         [(id<RMStylishComponent>)self applyStyle:[[RMStyleManager sharedStyleManager]
                            styleForKey:styleName]];
      }
   }
}

#pragma mark - Styles Subscriptions

- (void)styleDidChanged:(NSNotification *)notification {
   if ([self conformsToProtocol:@protocol(RMStylishComponent)]) {
      if ([[self styleNameForComponent:(id<RMStylishComponent>)self] isEqualToString:notification.object]) {
         [self reloadStyle];
      }
   }
}

@end
