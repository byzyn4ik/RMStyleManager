//
//  RMStylishTableView.m
//  Pods
//
//  Created by pm on 07.09.16.
//
//

#import "RMStylishTableView.h"
#import "RMStylishView.h"
#import "RMViewStyle.h"
#import "UIView+RMStyleReloader.h"
#import "RMStylishComponent.h"

@interface RMStylishTableView () <RMStylishComponent>
@end

@implementation RMStylishTableView

- (instancetype)initWithFrame:(CGRect)frame styleName:(NSString *)styleName {
   self = [self initWithFrame:frame];
   if (self) {
      self.styleName = styleName;
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

- (void)setStyleName:(NSString *)styleName {
   _styleName = styleName;
   [self reloadStyle];
}

- (void)applyStyle:(RMViewStyle *)style {
   [self applyBaseStyle:style];
   if (style.backgroundColor) {
      self.backgroundColor = style.backgroundColor;
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
