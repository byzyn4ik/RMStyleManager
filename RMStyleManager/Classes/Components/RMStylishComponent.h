//
//  RMStylishComponent.h
//  StylisApp
//
//  Created by Maks Petrovsky on 16.04.16.
//  Copyright © 2016 Maks Petrovsky. All rights reserved.
//

#import "RMBaseStyle.h"
#import <Foundation/Foundation.h>

@protocol RMStylishComponent <NSObject>

- (void)setStyle:(NSString *)style;
- (NSString *)style;
- (void)applyStyle:(RMBaseStyle *)style;

@end
