//
//  RMColorsManager.h
//  Pods
//
//  Created by Maks Petrovsky on 14.07.16.
//
//

#import <Foundation/Foundation.h>

@interface RMColorsManager : NSObject

+ (void)reloadColors;
+ (NSString*)colorWithName:(NSString*)colorName;
+ (void)injectColors;

@end
