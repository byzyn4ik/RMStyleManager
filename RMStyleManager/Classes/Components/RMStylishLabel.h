//
//  RMStylishLabel.h
//  PocketGuard
//
//  Created by Maks Petrovsky on 24.04.15.
//  Copyright (c) 2015 realme. All rights reserved.
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE
@interface RMStylishLabel : UILabel

- (instancetype)initWithFrame:(CGRect)frame andStyle:(NSString *)styleName;
- (void)commonInit;

@property(nonatomic, strong) IBInspectable NSString *style;

@end
