//
//  NSString+Helper.m
//  StringCategories
//
//  Created by Shubhangi Pandya on 11/18/15.
//  Copyright (c) 2015 Shubhangi. All rights reserved.
//

#import "NSString+Helper.h"
#import <UIKit/UIKit.h>

@implementation NSString (Helper)

+ (NSString *)verifyStringForNullValue:(NSString *)string {
    if (![string isKindOfClass:[NSNull class]] && string.length > 0) {
        return string;
    }
    else {
        return nil;
    }
}

- (NSAttributedString *)kernedTextWithSpacing:(float)spacing {
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:self];
    [attributedString addAttribute:NSKernAttributeName
                             value:@(spacing)
                             range:NSMakeRange(0, [self length])];
    return attributedString;
}

@end
