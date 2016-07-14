//
//  main.m
//  makeColorsHeaderFile
//
//  Created by Maks Petrovsky on 14.07.16.
//  Copyright © 2016 Maks Petrovsky. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char *argv[]) {
  @autoreleasepool {
    if (argc == 3) // если передаем аргументы, то argc будет больше 1(в
    // зависимости от кол-ва аргументов)
    {
      NSString *sourceLocation = [NSString stringWithUTF8String:argv[1]];
      NSString *destLocation = [NSString stringWithUTF8String:argv[2]];
      NSArray *colorArray = [NSArray arrayWithContentsOfFile:sourceLocation];
      if (!colorArray) {
        NSLog(@"No source File Found");
        return -1;
      }
      NSMutableString *string = [NSMutableString
          stringWithFormat:@"#import <UIKit/UIKit.h>\n\n@interface UIColor "
                           @"(RMStylishColors)\n\n"];
      for (NSDictionary *dictionary in colorArray) {
        [string appendFormat:@"+ (UIColor*)%@;\n", dictionary[@"name"]];
      }
      [string appendFormat:@"\n@end"];
      NSError *error;
      [string writeToFile:destLocation
               atomically:YES
                 encoding:NSUTF8StringEncoding
                    error:&error];
      if (error) {
        NSLog(@"Unable to write : %@", error);
        return -1;
      }
    } else {
      NSLog(@"Invalid arguments count use makeColorsHeaderFile source_plist "
            @"dest_h");
      return -1;
    }
  }
  return 0;
}
