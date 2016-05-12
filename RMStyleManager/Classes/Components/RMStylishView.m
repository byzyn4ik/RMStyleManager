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

- (void)awakeFromNib {
    [super awakeFromNib];
    [self reloadStyle];
}

- (void)applyStyle:(RMViewStyle *)style {
  if (style.backgroundColor) {
    self.backgroundColor = style.backgroundColor;
  }
}

@end
