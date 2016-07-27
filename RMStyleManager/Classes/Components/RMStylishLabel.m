//
//  RMStylishLabel.m
//  PocketGuard
//
//  Created by Maks Petrovsky on 24.04.15.
//  Copyright (c) 2015 realme. All rights reserved.
//

#import "RMLabelStyle.h"
#import "RMStyleManager.h"
#import "RMStylishLabel.h"
#import "UILabel+TextKerning.h"
#import "UIView+RMStyleReloader.h"
#import <objc/runtime.h>
#import "RMStylishComponent.h"

@interface RMStylishLabel () <RMStylishComponent>

@property(nonatomic, strong) NSDictionary<NSString *, id> * textAttributes;

@end

@implementation RMStylishLabel

- (instancetype)initWithFrame:(CGRect)frame andStyle:(NSString *)styleName {
  self = [self initWithFrame:frame];
  if (self) {
    self.style = styleName;
    [self reloadStyle];
  }
  return self;
}

- (void)awakeFromNib {
  [super awakeFromNib];
  [self reloadStyle];
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

- (void)applyStyle:(RMLabelStyle *)style {
  [self applyBaseStyle:style];
  if (style.backgroundColor) {
    self.backgroundColor = style.backgroundColor;
  }
  if (style.textColor) {
    self.textColor = style.textColor;
  }
  if (style.font) {
    self.font = style.font;
  }
  if (style.shadowColor) {
    self.shadowColor = style.shadowColor;
  }
  if (style.kerning) {
    [self setKerning:style.kerning];
  }
  if (style.fontColor) {
    self.textColor = style.fontColor;
  }
  if (style.fontSize) {
    self.font = [self.font fontWithSize:style.fontSize];
  }
  if (style.textAlignment) {
    self.textAlignment = style.textAlignment;
  }
  if (style.numberOfLines) {
    self.numberOfLines = style.numberOfLines;
  }
  if (style.textAttributes) {
    self.textAttributes = style.textAttributes;
    [self setText:self.text];
  }

}

- (void)setStyle:(NSString *)style {
  _style = style;
  [self reloadStyle];
}


- (void)setText:(NSString *)text {
   if (self.textAttributes && text && text.length) {
      NSAttributedString *attributedString = [[NSAttributedString alloc] initWithString:text attributes:self.textAttributes];
      [self setAttributedText:attributedString];
   } else {
      [super setText:text];
   }
}
@end
