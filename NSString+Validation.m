//
//  NSString+Validation.m
//  StringCategories
//
//  Created by Shubhangi Pandya on 11/18/15.
//  Copyright (c) 2015 Shubhangi. All rights reserved.
//

#import "NSString+Validation.h"

@implementation NSString (Validation)

- (BOOL) isValidEmailAddress
{
    static NSPredicate *sEmailRegExPredicate = nil;

    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{

        NSString *emailRegEx = @"[a-zA-Z0-9!#$%&'*+/=?^_`{|}~-]+(?:\\.[a-zA-Z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-zA-Z0-9](?:[a-zA-Z0-9-]*[a-zA-Z0-9])?\\.)+[a-zA-Z0-9](?:[a-zA-Z0-9-]*[a-zA-Z0-9])?";
        
        sEmailRegExPredicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegEx];
    });
    
    return [sEmailRegExPredicate evaluateWithObject:self];
}

@end
