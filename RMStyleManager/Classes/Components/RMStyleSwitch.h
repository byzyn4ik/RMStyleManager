//
//  RMStyleSwitch.h
//  PocketGuard
//
//  Created by Maks Petrovsky on 03.02.16.
//  Copyright © 2016 realme. All rights reserved.
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE
@interface RMStyleSwitch : UISwitch

- (instancetype)initWithFrame:(CGRect)frame andStyle:(NSString *)styleName;

@property(nonatomic, strong) IBInspectable NSString *style;

@end
