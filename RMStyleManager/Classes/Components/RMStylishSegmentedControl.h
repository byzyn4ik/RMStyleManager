//
//  RMStylishSegmentedControl.h
//  Pods
//
//  Created by Maxim Petrovsky on 07.10.16.
//
//

#import <UIKit/UIKit.h>


IB_DESIGNABLE
@interface RMStylishSegmentedControl : UISegmentedControl
- (instancetype)initWithFrame:(CGRect)frame andStyle:(NSString *)styleName;

@property(nonatomic, strong) IBInspectable NSString *style;

@end
