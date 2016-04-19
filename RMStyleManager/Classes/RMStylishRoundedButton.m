
    //
//  RMStylishRoundedButton.m
//  PocketGuard
//
//  Created by Maks Petrovsky on 27.04.15.
//  Copyright (c) 2015 realme. All rights reserved.
//

#import "RMStylishRoundedButton.h"
#import "RMButtonStyle.h"
#import "RMStyleManager.h"
#import "UIImage+ImageWithColor.h"
#import "UIView+RMStyleReloader.h"

@interface RMStylishRoundedButton () <RMStylishComponent>

@end

@implementation RMStylishRoundedButton

- (instancetype)initWithFrame:(CGRect)frame andStyle:(NSString*)styleName
{
    self = [self initWithFrame:frame];
    if (self)
    {
        self.style = styleName;
        [self reloadStyle];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        [self subscribeSelfForStyle];
    }
    return self;
}


- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self)
    {
        [self subscribeSelfForStyle];
    }
    return self;
}

- (void)dealloc
{
    [self unsubscribeSelfForStyle];
}


- (void)awakeFromNib
{
    [super awakeFromNib];
    [self reloadStyle];
}

- (void)applyStyle:(RMButtonStyle*)style
{
    if (style.font)
    {
        self.titleLabel.font = style.font;
    }
    if (style.cornerRadius)
    {
        self.cornerRadius = style.cornerRadius;
    }
    if (style.borderWidth)
    {
        self.borderWidth = style.borderWidth;
    }
    if (style.borderColor)
    {
        self.borderColor = style.borderColor;
    }
    if (style.textColor)
    {
        [self setTitleColor:style.textColor forState:UIControlStateNormal];
    }
    if (style.backgroundColor)
    {
        [self setBackgroundImage:[UIImage imageWithColor:style.backgroundColor] forState:UIControlStateNormal];
    }
    if (style.disabledTextColor)
    {
        [self setTitleColor:style.disabledTextColor forState:UIControlStateDisabled];
    }
    if (style.disabledBgColor)
    {
        [self setBackgroundImage:[UIImage imageWithColor:style.disabledBgColor] forState:UIControlStateDisabled];
    }
    if (style.highlightedTextColor)
    {
        [self setTitleColor:style.highlightedTextColor forState:UIControlStateHighlighted];
    }
    if (style.highlightedBgColor)
    {
        [self setTitleColor:style.highlightedBgColor forState:UIControlStateHighlighted];
    }

}

- (void)setStyle:(NSString *)style
{
    _style = style;
    [self reloadStyle];
}
         

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
