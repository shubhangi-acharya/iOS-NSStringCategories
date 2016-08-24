//
//  NSString+Capitals.m
//  StringCategories
//
//  Created by Shubhangi Pandya on 11/18/15.
//  Copyright (c) 2015 Shubhangi. All rights reserved.
//

#import "NSString+Capitals.h"

@implementation NSString (Capitals)

- (NSString *)stringWithInitialCapital
{
    if (self.length > 0)
    {
        NSMutableString *s = [[[self substringWithRange:NSMakeRange(0, 1)] capitalizedString] mutableCopy];
        
        [s appendString:[self substringFromIndex:1]];
        
        return [NSString stringWithString:s];
    }
    return self;
}

@end
