
//
//  RMStylishImageView.h
//  Pods
//
//  Created by Maks Petrovsky on 05.05.16.
//
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE
@interface RMStylishImageView : UIImageView

- (instancetype)initWithFrame:(CGRect)frame
                        style:(NSString *)style;

- (instancetype)initWithImage:(UIImage *)image
                        style:(NSString *)style;

- (instancetype)initWithImage:(UIImage *)image
             highlightedImage:(UIImage *)highlightedImage
                        style:(NSString *)style;

@property(nonatomic, strong) IBInspectable NSString *style;

@end
