//
//  RMStylishProgressView.h
//  Pods
//
//  Created by Max on 22.12.16.
//
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE
@interface RMStylishProgressView : UIProgressView


- (instancetype)initWithFrame:(CGRect)frame andStyle:(NSString *)styleName;
@property(nonatomic, strong) IBInspectable NSString *style;

@end
