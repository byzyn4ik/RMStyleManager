//
//  RMStylishView.m
//  Pods
//
//  Created by Maks Petrovsky on 12.05.16.
//
//

#import "RMStylishComponent.h"
#import "RMStylishView.h"
#import "RMViewStyle.h"
#import "UIView+RMStyleReloader.h"

@interface RMStylishView () <RMStylishComponent>

@end

@implementation RMStylishView

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
   [self subscribeSelfForStyle];
}

- (void)dealloc {
   [self unsubscribeSelfForStyle];
}

- (void)setStyle:(NSString *)style {
   _style = style;
   [self reloadStyle];
}

- (void)applyStyle:(RMViewStyle *)style {
   [self applyBaseStyle:style];
  if (style.backgroundColor) {
    self.backgroundColor = style.backgroundColor;
  }
}

@end
