//
//  RMStyleManager+StylishAppStyles.m
//  StylisApp
//
//  Created by Maks Petrovsky on 16.04.16.
//  Copyright © 2016 Maks Petrovsky. All rights reserved.
//

#import "RMStyleManager+StylishAppStyles.h"

@implementation RMStyleManager (StylishAppStyles)

#pragma mark - Buttons

static BOOL isStyleEnabledNext;

+ (RMButtonStyle*)randButtonStyle
{
    if (isStyleEnabledNext)
    {
        isStyleEnabledNext = !isStyleEnabledNext;
        return [self buttonStyleFirst];
    }
    isStyleEnabledNext = !isStyleEnabledNext;
    return [self buttonStyleSecond];
}

+ (RMButtonStyle *)buttonStyleFirst
{
    RMButtonStyle *style = [[RMButtonStyle alloc] init];
    style.cornerRadius = 10.f;
    style.borderColor = [UIColor greenColor];
    style.backgroundColor = [UIColor redColor];
    style.borderWidth = 2.f;
    style.textColor = [UIColor orangeColor];
    style.disabledBgColor = [UIColor lightGrayColor];
    style.disabledTextColor = [UIColor whiteColor];
    style.highlightedBgColor = [UIColor yellowColor];
    return style;
}

+ (RMButtonStyle *)buttonStyleSecond
{
    RMButtonStyle *style = [[RMButtonStyle alloc] init];
    style.cornerRadius = 10.f;
    style.backgroundColor = [UIColor darkGrayColor];
    style.textColor = [UIColor redColor];
    style.disabledBgColor = [UIColor whiteColor];
    style.disabledTextColor = [UIColor purpleColor];
    style.highlightedBgColor = [UIColor yellowColor];
    style.font = [UIFont systemFontOfSize:23.f weight:UIFontWeightBold];
    return style;
}


#pragma mark - Switches

+ (RMSwitchStyle *)switchStyleBase
{
    RMSwitchStyle *style = [[RMSwitchStyle alloc] init];
    style.onTintColor = [UIColor purpleColor];
    return style;
}

+ (RMLabelStyle *)labelStyleBase
{
    RMLabelStyle *style = [[RMLabelStyle alloc] init];
    style.textColor = [UIColor redColor];
    style.font = [UIFont fontWithName:@"Helvetica" size:20.f];
    style.numberOfLines = 0;
    style.cornerRadius = 5.f;
    style.borderWidth = 2.f;
    style.borderColor = [UIColor darkGrayColor];
    style.textAlignment = NSTextAlignmentCenter;
    
    return style;
}

#pragma mark - TextField

+ (RMTextFieldStyle *)textFieldStyleBase
{
    RMTextFieldStyle *style = [[RMTextFieldStyle alloc] init];
    style.backgroundColor = [UIColor yellowColor];
    style.placeholder = @"Text Placeholder";
    style.textAlignment = NSTextAlignmentRight;
    style.clearsOnBeginEditing = YES;
    style.borderStyle = UITextBorderStyleNone;
    style.borderWidth = 3.f;
    style.borderColor = [UIColor greenColor];
    style.cornerRadius = 3.f;
    style.secureTextEntry = YES;
    style.placeholderColor = [UIColor orangeColor];
    style.textColor = [UIColor purpleColor];
    style.returnKeyType = UIReturnKeyJoin;
//    style.leftImage = [UIImage imageNamed:@"Octopus"];
    return style;
}


#pragma mark - Naviagtion Bar 

+ (RMNavigationBarStyle*)clearStyle
{
    RMNavigationBarStyle *style = [RMNavigationBarStyle new];
    return style;
}
@end
