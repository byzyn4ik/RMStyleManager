//
//  RMStylishPageControl.h
//  Pods
//
//  Created by Maks Petrovsky on 08.07.16.
//
//

#import <UIKit/UIKit.h>

@interface RMStylishPageControl : UIPageControl

- (instancetype)initWithFrame:(CGRect)frame andStyle:(NSString *)styleName;

@property(nonatomic, strong) IBInspectable NSString *style;

@end
