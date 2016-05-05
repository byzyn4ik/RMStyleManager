//
//  Created by Alberto Pasca on 27/02/14.
//  Copyright (c) 2014 albertopasca.it. All rights reserved.
//

#import "BaseRoundedButton.h"
#import "UIColor+InputMethods.h"
#import "UIImage+ImageWithColor.h"
#import <QuartzCore/QuartzCore.h>

@interface BaseRoundedButton ()

@end

@implementation BaseRoundedButton

- (void)applyStyle {
  if (self.leftImageName) {
    UIImage *image = [UIImage imageNamed:self.leftImageName];
    if (image) {
      self.leftAccessoryImage = image;
    }
  }
  if (self.rightImageName) {
    UIImage *image = [UIImage imageNamed:self.rightImageName];
    if (image) {
      self.rightAccessoryImage = image;
    }
  }

  if (self.borderWidth) {
    self.layer.borderColor = [self myBorderColor].CGColor;
    self.layer.borderWidth = self.borderWidth;
  }
  if (self.cornerRadius) {
    self.layer.cornerRadius = self.cornerRadius;
  }
  [self setTitleColor:[self myHighlitedColor]
             forState:UIControlStateHighlighted];
  self.clipsToBounds = YES;
}

- (void)awakeFromNib {
  [super awakeFromNib];
  [self applyStyle];
}

- (UIColor *)myBorderColor {
  UIColor *color = self.borderColor;
  if (!color)
    color = self.titleLabel.textColor;
  return color;
}

- (UIColor *)myHighlitedColor {
  return [[self myBorderColor] darkenedColorByPercent:0.15f];
}

- (void)setHighlighted:(BOOL)highlighted {
  [super setHighlighted:highlighted];
  self.layer.borderColor = highlighted ? [self myHighlitedColor].CGColor
                                       : [self myBorderColor].CGColor;
}

- (UIImage *)rightAccessoryImageAccordingToCurrentState {
  UIImage *image = _rightAccessoryImage;

  if ([self isHighlightedOrSelected] && _rightHighlightedAccessoryImage)
    image = _rightHighlightedAccessoryImage;

  return image;
}

- (UIImage *)leftAccessoryImageAccordingToCurrentState {
  UIImage *image = _leftAccessoryImage;

  if ([self isHighlightedOrSelected] && _leftHighlightedAccessoryImage)
    image = _leftHighlightedAccessoryImage;

  return image;
}

- (void)setRightAccessoryImage:(UIImage *)rightAccessoryImage
                      forState:(UIControlState)state {
  if (state == UIControlStateNormal)
    self.rightAccessoryImage = rightAccessoryImage;

  if (state & UIControlStateHighlighted || state & UIControlStateSelected)
    self.rightHighlightedAccessoryImage = rightAccessoryImage;
}

- (void)setLeftAccessoryImage:(UIImage *)leftAccessoryImage
                     forState:(UIControlState)state {
  if (state == UIControlStateNormal)
    self.leftAccessoryImage = leftAccessoryImage;

  if (state & UIControlStateHighlighted || state & UIControlStateSelected)
    self.leftHighlightedAccessoryImage = leftAccessoryImage;
}

- (void)setRightAccessoryImage:(UIImage *)rightAccessoryImage {
  if (rightAccessoryImage != _rightAccessoryImage) {
    _rightAccessoryImage = rightAccessoryImage;

    if (self.state == UIControlStateNormal)
      [self setNeedsDisplay];
  }
}

- (void)setRightHighlightedAccessoryImage:
    (UIImage *)rightHighlightedAccessoryImage {
  if (rightHighlightedAccessoryImage != _rightHighlightedAccessoryImage) {

    _rightHighlightedAccessoryImage = rightHighlightedAccessoryImage;

    if ([self isHighlightedOrSelected])
      [self setNeedsDisplay];
  }
}

- (BOOL)isHighlightedOrSelected {
  return (self.state & UIControlStateHighlighted ||
          self.state & UIControlStateSelected);
}

- (void)drawRect:(CGRect)rect {
  UIImage *leftImage = [self leftAccessoryImageAccordingToCurrentState];
  UIImage *rightImage = [self rightAccessoryImageAccordingToCurrentState];
  CGFloat maxHeight = CGRectGetHeight(self.bounds);

  CGRect leftAccessoryRect = CGRectZero;
  if (leftImage) {
    leftAccessoryRect.size.height = MIN(maxHeight, leftImage.size.height);
    leftAccessoryRect.size.width = leftAccessoryRect.size.height /
                                   leftImage.size.height * leftImage.size.width;
    leftAccessoryRect.origin.y =
        (CGRectGetHeight(self.bounds) - CGRectGetHeight(leftAccessoryRect)) / 2;
    leftAccessoryRect.origin.x = self.imagePadding;
    [leftImage drawInRect:leftAccessoryRect];
  }

  // Draw right image
  CGRect rightAccessoryRect = CGRectZero;
  if (rightImage) {
    rightAccessoryRect.size.height = MIN(maxHeight, rightImage.size.height);
    rightAccessoryRect.size.width = rightAccessoryRect.size.height /
                                    rightImage.size.height *
                                    rightImage.size.width;
    rightAccessoryRect.origin.y =
        (CGRectGetHeight(self.bounds) - CGRectGetHeight(rightAccessoryRect)) /
        2;
    rightAccessoryRect.origin.x = CGRectGetWidth(self.bounds) -
                                  CGRectGetWidth(rightAccessoryRect) -
                                  self.imagePadding;
    [rightImage drawInRect:rightAccessoryRect];
  }
}

@end
