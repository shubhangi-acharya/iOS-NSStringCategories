//
//  NSString+SHA256.m
//  StringCategories
//
//  Created by Shubhangi Pandya on 11/18/15.
//  Copyright (c) 2015 Shubhangi. All rights reserved.
//

#import <CommonCrypto/CommonDigest.h>
#import "NSString+SHA256.h"

#define CC_SHA256_DIGEST_BIT_LENGTH	32

@implementation NSString (SHA256)

+ (NSString*)reverseString:(NSString *)str
{
    NSMutableString* reversed = [NSMutableString stringWithCapacity:str.length];
    for (int i = (int)str.length-1; i >= 0; i--){
        [reversed appendFormat:@"%c", [str characterAtIndex:i]];
    }
    return reversed;
}

- (NSString *)sha256
{
    const char *str = [self UTF8String];
    unsigned char result[CC_SHA256_DIGEST_BIT_LENGTH];
    CC_SHA256(str, (CC_LONG) strlen(str), result);
    
    NSMutableString *ret = [NSMutableString stringWithCapacity:CC_SHA256_DIGEST_BIT_LENGTH*2];
    for ( int i=0; i<CC_SHA256_DIGEST_LENGTH; i++ ) {
        [ret appendFormat:@"%02x",result[i]];
    }
    return ret;
}


@end
