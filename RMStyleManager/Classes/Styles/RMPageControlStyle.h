//
//  RMPageControlStyle.h
//  Pods
//
//  Created by Maks Petrovsky on 08.07.16.
//
//

#import "RMViewStyle.h"

@interface RMPageControlStyle : RMViewStyle

@property(nonatomic, strong) UIColor *pageIndicatorTintColor;
@property(nonatomic, strong) UIColor *currentPageIndicatorTintColor;
@property(nonatomic) BOOL hidesForSinglePage;

@end
