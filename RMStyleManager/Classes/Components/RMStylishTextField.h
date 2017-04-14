//
//  RMCorneredIconedTextField.h
//  PocketGuard
//
//  Created by Maks Petrovsky on 20.03.15.
//  Copyright (c) 2015 realme. All rights reserved.
//

#import <UIKit/UIKit.h>


IB_DESIGNABLE
@interface RMStylishTextField : UITextField

@property(nonatomic, strong)
    IB_DESIGNABLE IBInspectable UIColor *myPlaceholderColor;
@property(nonatomic, strong)
IB_DESIGNABLE IBInspectable UIFont *placeholderFont;
@property(nonatomic, strong) IBInspectable NSString *style;
@property(nonatomic, strong) IBInspectable NSString *leftImageName;

- (instancetype)initWithFrame:(CGRect)frame andStyle:(NSString *)styleName;
- (void)setLeftImage:(UIImage *)image;
- (void)commonInit;

@end
