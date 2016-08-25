//
//  RMStylishRoundedButton.h
//  PocketGuard
//
//  Created by Maks Petrovsky on 27.04.15.
//  Copyright (c) 2015 realme. All rights reserved.
//

#import "BaseRoundedButton.h"

IB_DESIGNABLE
@interface  RMStylishRoundedButton : BaseRoundedButton

- (instancetype)initWithFrame:(CGRect)frame andStyle:(NSString *)styleName;
- (void)commonInit;

@property(nonatomic, strong) IBInspectable NSString *style;

@end
