//
//  RMStylishRoundedButton.h
//  PocketGuard
//
//  Created by Maks Petrovsky on 27.04.15.
//  Copyright (c) 2015 realme. All rights reserved.
//

#import "APRoundedButton.h"

@interface RMStylishRoundedButton : APRoundedButton

- (instancetype)initWithFrame:(CGRect)frame andStyle:(NSString*)styleName;

@property (retain,nonatomic) IBInspectable NSString *style;

@end
