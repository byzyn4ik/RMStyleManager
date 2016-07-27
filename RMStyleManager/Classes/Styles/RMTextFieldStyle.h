//
//  RMTextFieldStyle.h
//  StylisApp
//
//  Created by Alexander on 4/16/16.
//  Copyright © 2016 Maks Petrovsky. All rights reserved.
//

#import "RMBaseStyle.h"

@interface RMTextFieldStyle : RMBaseStyle

@property(nonatomic, strong) NSString *placeholder;
@property(nonatomic, strong) NSString *text;
@property(nonatomic, strong) UIFont *font;
@property(nonatomic, strong) UIColor *textColor;
@property(nonatomic, strong) UIColor *placeholderColor;
@property(nonatomic, assign) NSTextAlignment textAlignment;
@property(nonatomic, assign) BOOL clearsOnBeginEditing;
@property(nonatomic, assign) UITextBorderStyle borderStyle;
@property(nonatomic, assign) UITextFieldViewMode clearButtonMode;
@property(nonatomic, assign) BOOL secureTextEntry;
@property(nonatomic, assign) UIReturnKeyType returnKeyType;
@property(nonatomic, strong) UIImage *leftImage;

@end
