//
//  RMStylishTableView.h
//  Pods
//
//  Created by pm on 07.09.16.
//
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE @interface RMStylishTableView : UITableView

- (instancetype)initWithFrame:(CGRect)frame styleName:(NSString *)styleName;
@property(nonatomic, strong) IBInspectable NSString *styleName;

@end
