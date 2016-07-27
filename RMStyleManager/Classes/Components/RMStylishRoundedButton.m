
//
//  RMStylishRoundedButton.m
//  PocketGuard
//
//  Created by Maks Petrovsky on 27.04.15.
//  Copyright (c) 2015 realme. All rights reserved.
//

#import "RMButtonStyle.h"
#import "RMStyleManager.h"
#import "RMStylishRoundedButton.h"
#import "UIImage+ImageWithColor.h"
#import "UIView+RMStyleReloader.h"
#import "RMStylishComponent.h"

@interface RMStylishRoundedButton () <RMStylishComponent>

@property(nonatomic, strong) NSDictionary<NSString *, id> * textAttributes;
@property(nonatomic, strong) NSDictionary<NSString *, id> * hightLightedTextAttributes;
@property(nonatomic, strong) NSDictionary<NSString *, id> * disabledTextAttributes;

@end

@implementation RMStylishRoundedButton

- (instancetype)initWithFrame:(CGRect)frame andStyle:(NSString *)styleName {
  self = [self initWithFrame:frame];
  if (self) {
    self.style = styleName;
    [self reloadStyle];
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
  [self reloadStyle];
}

- (void)applyStyle:(RMButtonStyle *)style {
  [self applyBaseStyle:style];

  if (style.font) {
    self.titleLabel.font = style.font;
  }
  if (style.textColor) {
    [self setTitleColor:style.textColor forState:UIControlStateNormal];
  }
  if (style.backgroundColor) {
    [self setBackgroundImage:[UIImage imageWithColor:style.backgroundColor]
                    forState:UIControlStateNormal];
  }
  if (style.disabledTextColor) {
    [self setTitleColor:style.disabledTextColor
               forState:UIControlStateDisabled];
  }
  if (style.disabledBgColor) {
    [self setBackgroundImage:[UIImage imageWithColor:style.disabledBgColor]
                    forState:UIControlStateDisabled];
  }
  if (style.highlightedTextColor) {
    [self setTitleColor:style.highlightedTextColor
               forState:UIControlStateHighlighted];
  }
  if (style.highlightedBgColor) {
    [self setTitleColor:style.highlightedBgColor
               forState:UIControlStateHighlighted];
  }

  if (style.hightLightedTextAttributes) {
     self.hightLightedTextAttributes = style.hightLightedTextAttributes;
     [self reloadTitleForState:UIControlStateHighlighted];
  }
  if (style.disabledTextAttributes) {
     self.disabledTextAttributes = style.disabledTextAttributes;
     [self reloadTitleForState:UIControlStateDisabled];

  }
  if (style.textAttributes) {
      self.textAttributes = style.textAttributes;
      [self reloadTitleForState:UIControlStateNormal];
      [self reloadTitleForState:UIControlStateFocused];
      [self reloadTitleForState:UIControlStateSelected];
      [self reloadTitleForState:UIControlStateApplication];
      [self reloadTitleForState:UIControlStateReserved];
      [self reloadTitleForState:UIControlStateHighlighted];
      [self reloadTitleForState:UIControlStateDisabled];
  }
}

- (void)setStyle:(NSString *)style {
  _style = style;
  [self reloadStyle];
}

- (void)reloadTitleForState:(UIControlState)state {
   [self setTitle:[self titleForState:state] forState:state];
}

- (NSDictionary<NSString *,id> *)hightLightedTextAttributes {
   if (_hightLightedTextAttributes) {
      return _hightLightedTextAttributes;
   }
   return _textAttributes;
}

- (NSDictionary<NSString *,id> *)disabledTextAttributes {
   if (_disabledTextAttributes) {
      return _disabledTextAttributes;
   }
   return _textAttributes;
}

- (void)setTitle:(NSString *)title forState:(UIControlState)state {
    if (state == UIControlStateDisabled && self.disabledTextAttributes && title) {
         [self setAttributedTitle:[[NSAttributedString alloc] initWithString:title attributes:self.disabledTextAttributes] forState:state];
    } else if (state == UIControlStateHighlighted && self.hightLightedTextAttributes && title) {
          [self setAttributedTitle:[[NSAttributedString alloc] initWithString:title attributes:self.hightLightedTextAttributes] forState:state];

    } else if (self.textAttributes && title) {
          [self setAttributedTitle:[[NSAttributedString alloc] initWithString:title attributes:self.textAttributes] forState:state];
    } else {
       [super setTitle:title forState:state];
    }
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
