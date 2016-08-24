//
//  NSString+urlEncodedString.m
//  StringCategories
//
//  Created by Shubhangi Pandya on 11/18/15.
//  Copyright (c) 2015 Shubhangi. All rights reserved.
//

#import "NSString+urlEncodedString.h"

@implementation NSString (urlEncodedString)

- (NSString *) urlEncodedString
{
    NSString *s = (NSString *)CFURLCreateStringByAddingPercentEscapes(
                                                        NULL,
                                                        (CFStringRef)self,
                                                        NULL,
                                                        (CFStringRef)@"!*'\"();:@&=+$,/?%#[] ",
                                                        kCFStringEncodingUTF8 );    
    return [s autorelease];
}

@end
