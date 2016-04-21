//
//  RM.m
//  Pods
//
//  Created by Maxim Petrovsky on 21.04.16.
//
//

#import "RMNavigationBar.h"
#import "RMNavigationBarStyle.h"
#import "UIView+RMStyleReloader.h"

@implementation RMNavigationBar

- (instancetype)initWithFrame:(CGRect)frame andStyle:(NSString*)styleName
{
    self = [self initWithFrame:frame];
    if (self)
    {
        self.style = styleName;
        [self reloadStyle];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        [self subscribeSelfForStyle];
    }
    return self;
}


- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self)
    {
        [self subscribeSelfForStyle];
    }
    return self;
}

- (void)dealloc
{
    [self unsubscribeSelfForStyle];
}


- (void)awakeFromNib
{
    [super awakeFromNib];
    [self reloadStyle];
}

- (void)applyStyle:(RMNavigationBarStyle*)style
{
    if (style.backgroundColor)
    {
        [self setBackgroundColor:style.backgroundColor];
    }
}
    
@end
