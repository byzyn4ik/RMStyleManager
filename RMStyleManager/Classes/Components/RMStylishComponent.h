//
//  RMStylishComponent.h
//  StylisApp
//
//  Created by Maks Petrovsky on 16.04.16.
//  Copyright © 2016 Maks Petrovsky. All rights reserved.
//

@class RMBaseStyle;

#import <Foundation/Foundation.h>
#import "UIView+ApplyBaseStyle.h"

@protocol RMStylishComponent <NSObject>

- (void)setStyle:(NSString *)style;
- (NSString *)style;
- (void)applyStyle:(RMBaseStyle *)style;
- (void)applyBaseStyle:(RMBaseStyle *)style;

@end
