//
//  RMSegmentedControlStyle.h
//  Pods
//
//  Created by Maxim Petrovsky on 07.10.16.
//
//

#import "RMViewStyle.h"

@interface RMSegmentedControlStyle : RMViewStyle

@property (nonatomic,strong) NSDictionary *textAttributes;
@property (nonatomic,strong) NSDictionary *selectedTextAttributes;
@property (nonatomic,strong) NSDictionary *disabledTextAttributes;

@end
