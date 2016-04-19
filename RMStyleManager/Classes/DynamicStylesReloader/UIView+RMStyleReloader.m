//
//  UIView+RMStyleReloader.m
//  StylisApp
//
//  Created by Maks Petrovsky on 16.04.16.
//  Copyright © 2016 Maks Petrovsky. All rights reserved.
//

#import "UIView+RMStyleReloader.h"
#import "RMStyleManager.h"

@implementation UIView (RMStyleReloader)

- (void)subscribeSelfForStyle
{
    [RMReloadStyleSubscriber subscribeForStyleReload:(id<RMStyleReloadProtocol>)self];
}

- (void)unsubscribeSelfForStyle
{
    [RMReloadStyleSubscriber unsubscribeForStyleReload:(id<RMStyleReloadProtocol>)self];
}

- (void)reloadStyle
{
    if ([self conformsToProtocol:@protocol(RMStylishComponent)])
    {
        id<RMStylishComponent> self_ = (id<RMStylishComponent>)self;
        if (self_.style)
        {
            [self_ applyStyle:[RMStyleManager styleForKey:self_.style]];
        }
    }
}


@end
