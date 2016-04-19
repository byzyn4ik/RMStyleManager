//
//  RMTextFieldStyle.h
//  StylisApp
//
//  Created by Alexander on 4/16/16.
//  Copyright © 2016 Maks Petrovsky. All rights reserved.
//

#import "RMBaseStyle.h"


@interface RMTextFieldStyle : RMBaseStyle

@property (nonatomic, retain) NSString *placeholder;
@property (nonatomic, retain) NSString *text;
@property (nonatomic, retain) UIFont *font;
@property (nonatomic, retain) UIColor *textColor;
@property (nonatomic, retain) UIColor *placeholderColor;
@property (nonatomic, assign) NSTextAlignment textAlignment;
@property (nonatomic, assign) BOOL clearsOnBeginEditing;
@property (nonatomic, assign) UITextBorderStyle borderStyle;
@property (nonatomic, assign) UITextFieldViewMode clearButtonMode;
@property (nonatomic, retain) UIColor *backgroundColor;
@property (nonatomic, assign) BOOL secureTextEntry;
@property (nonatomic, assign) UIReturnKeyType returnKeyType;
@property (nonatomic, assign) CGFloat cornerRadius;
@property (nonatomic, assign) CGFloat borderWidth;
@property (nonatomic, retain) UIColor *borderColor;
@property (nonatomic, retain) UIImage *leftImage;

@end
