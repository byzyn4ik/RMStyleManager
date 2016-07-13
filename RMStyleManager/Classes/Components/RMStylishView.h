//
//  RMStylishView.h
//  Pods
//
//  Created by Maks Petrovsky on 12.05.16.
//
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE
@interface RMStylishView : UIView

- (instancetype)initWithFrame:(CGRect)frame andStyle:(NSString *)styleName;
@property(nonatomic, strong) IBInspectable NSString *style;

@end
