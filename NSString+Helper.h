//
//  NSString+Helper.h
//  StringCategories
//
//  Created by Shubhangi Pandya on 11/18/15.
//  Copyright (c) 2015 Shubhangi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Helper)

+ (NSString *)verifyStringForNullValue:(NSString *)string;
- (NSAttributedString *)kernedTextWithSpacing:(float)spacing;

@end
