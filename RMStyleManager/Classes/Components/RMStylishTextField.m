
//
//  RMCorneredIconedTextField.m
//  PocketGuard
//
//  Created by Maks Petrovsky on 20.03.15.
//  Copyright (c) 2015 realme. All rights reserved.
//

#import "RMStyleManager.h"
#import "RMStylishTextField.h"
#import "RMTextFieldStyle.h"
#import "UIView+RMStyleReloader.h"

#import <objc/runtime.h>

@interface RMStylishTextField () <RMStylishComponent>

@property(atomic) CGRect imageRect;

@end

@implementation RMStylishTextField

- (instancetype)initWithFrame:(CGRect)frame andStyle:(NSString *)styleName {
  self = [self initWithFrame:frame];
  if (self) {
    _style = styleName;
  }
  return self;
}

- (instancetype)initWithFrame:(CGRect)frame {
  self = [super initWithFrame:frame];
  if (self) {
    [self commonInit];
  }
  return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
  self = [super initWithCoder:aDecoder];
  if (self) {
    [self commonInit];
  }
  return self;
}

- (void)commonInit {
  [self setPlaceholder:self.placeholder];
  [self subscribeSelfForStyle];
}

- (void)dealloc {
  [self unsubscribeSelfForStyle];
}

- (void)awakeFromNib {
  [super awakeFromNib];
  [self reloadStyle];
  if (self.leftImageName) {
    [self setLeftImage:[UIImage imageNamed:self.leftImageName]];
  }
}

- (void)setPlaceholder:(NSString *)placeholder {
  if (placeholder)
    self.attributedPlaceholder = [[NSAttributedString alloc]
        initWithString:placeholder
            attributes:@{
              NSForegroundColorAttributeName : [self placeholderColor]
            }];
}

- (CGRect)textRectForBounds:(CGRect)bounds {

  CGRect inset = CGRectMake(
      bounds.origin.x + [self widthForLeftView], bounds.origin.y,
      bounds.size.width - [self widthForRightView] - [self widthForLeftView],
      bounds.size.height);
  return inset;
}

- (CGRect)editingRectForBounds:(CGRect)bounds {
  return [self textRectForBounds:bounds];
}

- (CGFloat)widthForRightView {
  return [self widthForView:self.rightView];
}

- (CGFloat)widthForLeftView {
  return [self widthForView:self.leftView];
}

- (CGFloat)widthForView:(UIView *)view {
  {
    if (!view || !view.frame.size.width) {
      return kPadding;
    }
    return view.frame.size.width;
  }
}

- (UIColor *)placeholderColor {
  if (self.myPlaceholderColor)
    return self.myPlaceholderColor;
  //    return [UIColor colorWithHex:0x9ca5b2 andAlpha:1.0];
  return [UIColor redColor];
}

- (void)setPlaceholderColor:(UIColor *)placeholderColor {
  self.myPlaceholderColor = placeholderColor;
  [self setPlaceholder:[self.attributedPlaceholder string]];
}

- (void)setTintColor:(UIColor *)tintColor {
  [super setTintColor:tintColor];
  [self.leftView setTintColor:tintColor];
}

- (void)setLeftImage:(UIImage *)image {
  image = [image imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
  UIImageView *imageView = [[UIImageView alloc]
      initWithFrame:CGRectMake(0, 0, self.frame.size.height,
                               self.frame.size.height)];
  [imageView setImage:image];
  imageView.contentMode = UIViewContentModeCenter;
  self.leftView = imageView;
  self.leftView.tintColor = self.tintColor;
  self.leftViewMode = UITextFieldViewModeAlways;
}

#pragma mark - Style

- (void)setStyle:(NSString *)style {
  _style = style;
  [self reloadStyle];
}

- (void)applyStyle:(RMTextFieldStyle *)style {
  if (style.backgroundColor) {
    self.backgroundColor = style.backgroundColor;
  }
  if (style.placeholder) {
    self.placeholder = style.placeholder;
  }
  if (style.text) {
    self.text = style.text;
  }
  if (style.font) {
    self.font = style.font;
  }
  if (style.textColor) {
    self.textColor = style.textColor;
  }
  if (style.placeholderColor) {
    [self setPlaceholderColor:style.placeholderColor];
  }
  if (style.textAlignment) {
    self.textAlignment = style.textAlignment;
  }
  if (style.clearsOnBeginEditing) {
    self.clearsOnBeginEditing = style.clearsOnBeginEditing;
  }
  if (style.borderStyle) {
    self.borderStyle = style.borderStyle;
  }
  if (style.clearButtonMode) {
    self.clearButtonMode = style.clearButtonMode;
  }
  if (style.secureTextEntry) {
    self.secureTextEntry = style.secureTextEntry;
  }
  if (style.returnKeyType) {
    self.returnKeyType = style.returnKeyType;
  }
  if (style.cornerRadius) {
    self.layer.cornerRadius = style.cornerRadius;
  }
  if (style.borderWidth) {
    self.layer.borderWidth = style.borderWidth;
  }
  if (style.borderColor) {
    self.layer.borderColor = style.borderColor.CGColor;
  }
  if (style.leftImage) {
    [self setLeftImage:style.leftImage];
  }
}

@end
