//
//  RMStylishImageView.m
//  Pods
//
//  Created by Maks Petrovsky on 05.05.16.
//
//

#import "RMImageViewStyle.h"
#import "RMStylishComponent.h"
#import "RMStylishImageView.h"
#import "UIView+RMStyleReloader.h"

@interface RMStylishImageView () <RMStylishComponent>

@property(nonatomic) UIImageRenderingMode renderingMode;

@end

@implementation RMStylishImageView

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
  self = [super initWithCoder:aDecoder];
  if (self) {
    [self commonInit];
  }
  return self;
}

- (instancetype)initWithFrame:(CGRect)frame style:(NSString *)style {
  self = [self initWithFrame:frame];
  if (self) {
    self.style = style;
    [self commonInit];
  }
  return self;
}

- (instancetype)initWithImage:(UIImage *)image style:(NSString *)style {
  self = [self initWithImage:image];
  if (self) {
    self.style = style;
    [self commonInit];
  }
  return self;
}

- (instancetype)initWithImage:(UIImage *)image
             highlightedImage:(UIImage *)highlightedImage
                        style:(NSString *)style {
  self =
      [self initWithImage:image highlightedImage:highlightedImage style:style];
  if (self) {
    [self commonInit];
  }
  return self;
}

- (void)commonInit {
  [self subscribeSelfForStyle];
  [self reloadStyle];
}
- (void)setStyle:(NSString *)style {
  _style = style;
  [self reloadStyle];
}

- (void)awakeFromNib {
  [self reloadStyle];
  [super awakeFromNib];
  UIImage *image = self.image;
  self.image = nil;
  self.image = image;
}

- (void)setImage:(UIImage *)image {
  if (image) {
    [super setImage:[image imageWithRenderingMode:self.renderingMode]];
  } else {
    [super setImage:image];
  }
}

- (void)applyStyle:(RMImageViewStyle *)style {
  self.renderingMode = style.renderingMode;
  [self applyBaseStyle:style];
  if (style.imageName) {
#if !TARGET_INTERFACE_BUILDER
    self.image = [UIImage imageNamed:style.imageName];
#else
    NSBundle *bundle = [NSBundle bundleForClass:[self class]];
    UIImage *image = [UIImage imageNamed:style.imageName
                                inBundle:bundle
           compatibleWithTraitCollection:self.traitCollection];
    self.image = image;
#endif

  } else {
#if TARGET_INTERFACE_BUILDER
    self.image = self.image;
#endif
  }
  if (style.applyContentMode) {
    self.contentMode = style.contentMode;
  }
}

@end
