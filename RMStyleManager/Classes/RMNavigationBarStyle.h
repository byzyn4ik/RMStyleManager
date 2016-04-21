//
//  RMNavigationBarStyle.h
//  Pods
//
//  Created by Maxim Petrovsky on 21.04.16.
//
//

#import "RMBaseStyle.h"

@interface RMNavigationBarStyle : RMBaseStyle

@property (nonatomic) BOOL translucent;
@property (nonatomic) UIImage* shadowImage;
@property (nonatomic) UIColor* shadowColor;
@property (nonatomic,strong) UIColor *tintColor;
@property (nonatomic,strong) UIColor *barTintColor;

@end
