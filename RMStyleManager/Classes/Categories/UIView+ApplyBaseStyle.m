//
//  UIView+ApplyBaseStyle.m
//  Pods
//
//  Created by Maks Petrovsky on 12.05.16.
//
//

#import "UIView+ApplyBaseStyle.h"

@implementation UIView (ApplyBaseStyle)

- (void)applyBaseStyle:(RMBaseStyle *)style {
  if (style.halfSizeCornereRadius) {
     self.layer.cornerRadius = MIN(self.frame.size.width,self.frame.size.height);
     self.layer.masksToBounds = YES;

  } else if (style.cornerRadius) {
    self.layer.cornerRadius = style.cornerRadius;
    self.layer.masksToBounds = YES;
  }
  if (style.borderWidth) {
    self.layer.borderWidth = style.borderWidth;
  }
  if (style.borderColor) {
    self.layer.borderColor = style.borderColor.CGColor;
  }
  if (style.tintColor) {
    self.tintColor = style.tintColor;
  }
  if (style.dontMaskToBounds) {
    self.layer.masksToBounds = NO;
  }
}

@end
