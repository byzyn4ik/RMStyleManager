//
//  UIView+RMStyleReloader.h
//  StylisApp
//
//  Created by Maks Petrovsky on 16.04.16.
//  Copyright © 2016 Maks Petrovsky. All rights reserved.
//

#import "RMReloadStyleSubscriber.h"
#import "RMStylishComponent.h"
#import <UIKit/UIKit.h>

@interface UIView (RMStyleReloader)

- (void)reloadStyle;
- (void)subscribeSelfForStyle;
- (void)unsubscribeSelfForStyle;

@end
