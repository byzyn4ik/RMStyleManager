//
//  RMStylishSegmentedControl.m
//  Pods
//
//  Created by Maxim Petrovsky on 07.10.16.
//
//

#import "RMStylishSegmentedControl.h"
#import "RMStylishComponent.h"
#import "UIView+RMStyleReloader.h"
#import "RMSegmentedControlStyle.h"

@interface RMStylishSegmentedControl () <RMStylishComponent>

@end

@implementation RMStylishSegmentedControl


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


- (void)applyStyle:(RMSegmentedControlStyle *)style {
    [self applyBaseStyle:style];
    if (style.textAttributes) {
        [self setTitleTextAttributes:style.textAttributes forState:UIControlStateNormal];
    }
    if (style.selectedTextAttributes) {
        [self setTitleTextAttributes:style.selectedTextAttributes forState:UIControlStateSelected];
    }
    if (style.disabledTextAttributes) {
        [self setTitleTextAttributes:style.disabledTextAttributes forState:UIControlStateDisabled];
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
