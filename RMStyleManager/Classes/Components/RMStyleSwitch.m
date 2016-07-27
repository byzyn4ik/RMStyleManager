//
//  RMStyleSwitch.m
//  PocketGuard
//
//  Created by Maks Petrovsky on 03.02.16.
//  Copyright © 2016 realme. All rights reserved.
//

#import "RMStyleManager.h"
#import "RMStyleSwitch.h"
#import "UIView+RMStyleReloader.h"
#import "RMStylishComponent.h"

@interface RMStyleSwitch () <RMStylishComponent>

@end

@implementation RMStyleSwitch

- (instancetype)initWithFrame:(CGRect)frame andStyle:(NSString *)styleName {
  self = [self initWithFrame:frame];
  if (self) {
    self.style = styleName;
  }
  return self;
}

- (instancetype)initWithFrame:(CGRect)frame {
  self = [super initWithFrame:frame];
  if (self) {
    [self subscribeSelfForStyle];
  }
  return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
  self = [super initWithCoder:aDecoder];
  if (self) {
    [self subscribeSelfForStyle];
  }
  return self;
}

- (void)dealloc {
  [self unsubscribeSelfForStyle];
}

- (void)awakeFromNib {
  [super awakeFromNib];
}

- (void)applyStyle:(RMSwitchStyle *)style {
  [self applyBaseStyle:style];
  if (style.backgroundColor) {
    self.backgroundColor = style.backgroundColor;
  }
  if (style.thumbTint) {
    self.thumbTintColor = style.thumbTint;
  }
  if (style.onTintColor) {
    self.onTintColor = style.onTintColor;
  }
  if (style.backgroundColor) {
    self.backgroundColor = style.backgroundColor;
  }
  if (style.cornerHalfSize) {
    self.layer.cornerRadius = self.frame.size.height / 2.f;
  }
}

- (void)setStyle:(NSString *)style {
  _style = style;
  [self reloadStyle];
}

@end
