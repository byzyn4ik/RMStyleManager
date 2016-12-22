//
//  RMStylishProgressView.m
//  Pods
//
//  Created by Max on 22.12.16.
//
//

#import "RMStylishProgressView.h"
#import "RMStylishView.h"
#import "RMViewStyle.h"
#import "UIView+RMStyleReloader.h"
#import "RMStylishComponent.h"
#import "RMProgressViewStyle.h"

@interface RMStylishProgressView  () <RMStylishComponent>

@end

@implementation RMStylishProgressView

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

- (void)applyStyle:(RMProgressViewStyle *)style {
    [self applyBaseStyle:style];
    if (style.backgroundColor) {
        self.backgroundColor = style.backgroundColor;
    }
    if (style.progressTintColor) {
        self.progressTintColor = style.progressTintColor;;
    }
    if (style.trackTintColor) {
        self.trackTintColor = style.trackTintColor;
    }
    if (style.trackImage) {
        self.trackImage= style.trackImage;
    }
    if (style.progressImage) {
        self.progressImage= style.progressImage;
    }
}



@end
