//
//  RMStylishPageControl.m
//  Pods
//
//  Created by Maks Petrovsky on 08.07.16.
//
//

#import "RMPageControlStyle.h"
#import "RMStylishPageControl.h"
#import "UIView+ApplyBaseStyle.h"
#import "UIView+RMStyleReloader.h"
#import "RMStylishComponent.h"

@interface RMStylishPageControl ()  <RMStylishComponent>

@end

@implementation RMStylishPageControl

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

- (void)applyStyle:(RMPageControlStyle *)style {
  [self applyBaseStyle:style];
  if (style.pageIndicatorTintColor) {
    self.pageIndicatorTintColor = style.pageIndicatorTintColor;
  }
  if (style.currentPageIndicatorTintColor) {
    self.currentPageIndicatorTintColor = style.currentPageIndicatorTintColor;
  }
  self.hidesForSinglePage = style.hidesForSinglePage;
  if (style.backgroundColor) {
    self.backgroundColor = style.backgroundColor;
  }
}

@end
