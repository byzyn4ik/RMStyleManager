#import <UIKit/UIKit.h>

@interface UILabel (TextKerning)

/**
 * Set the label's text to the given string, using the given kerning value if
 *able.
 * (i.e., if running on iOS 6.0+). The kerning value specifies the number of
 *points
 * by which to adjust spacing between characters (positive values increase
 *spacing,
 * negative values decrease spacing, a value of 0 is default)
 **/
- (void)setText:(NSString *)text withKerning:(CGFloat)kerning;

/**
 * Set the kerning value of the currently-set text.  The kerning value specifies
 *the number of points
 * by which to adjust spacing between characters (positive values increase
 *spacing,
 * negative values decrease spacing, a value of 0 is default)
 **/
- (void)setKerning:(CGFloat)kerning;

@end