//
//  Created by Alberto Pasca on 27/02/14.
//  Copyright (c) 2014 albertopasca.it. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseRoundedButton : UIButton

@property (nonatomic, assign) double cornerRadius;
@property (nonatomic, assign) double imagePadding;
@property (nonatomic, strong) NSString *leftImageName;
@property (nonatomic, strong) NSString *rightImageName;
@property (retain ,nonatomic) UIColor *borderColor;
@property (assign ,nonatomic) CGFloat borderWidth;
@property (nonatomic, strong) UIImage *rightAccessoryImage;
@property (nonatomic, strong) UIImage *rightHighlightedAccessoryImage;
@property (nonatomic, strong) UIImage *leftAccessoryImage ;
@property (nonatomic, strong) UIImage *leftHighlightedAccessoryImage;

- (void)setRightAccessoryImage:(UIImage *)rightAccessoryImage forState:(UIControlState)state;
- (void)setLeftAccessoryImage:(UIImage *)leftAccessoryImage forState:(UIControlState)state;
- (void)applyStyle;

@end
