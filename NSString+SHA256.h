//
//  NSString+SHA256.h
//  StringCategories
//
//  Created by Shubhangi Pandya on 11/18/15.
//  Copyright (c) 2015 Shubhangi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (SHA256)

+ (NSString*)reverseString:(NSString *)str;
- (NSString *)sha256;

@end
