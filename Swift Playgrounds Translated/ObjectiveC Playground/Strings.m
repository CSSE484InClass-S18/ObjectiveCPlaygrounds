//
//  Strings.m
//  ObjectiveC Playground
//
//  Created by David Fisher on 1/5/15.
//  Copyright (c) 2015 Rose-Hulman. All rights reserved.
//

#import "Strings.h"

@implementation Strings

+ (void) run {
    // No direct string concatenation
//    NSString* myStr = @"Hello, " + " World";

    // One work around via an NSMutableString
    NSMutableString* myStr = [@"Hello," mutableCopy];
    [myStr appendString:@" World"];
    NSLog(@"One concatenation work around: %@", myStr);

    // String append
    [myStr appendString:@"!"];
    NSLog(@"String append: %@", myStr);

    // Looping over a string
    for (int i = 0; i < myStr.length ; ++i) {
        NSLog(@"Current char = %@", [myStr substringWithRange:NSMakeRange(i, 1)]);
    }

    // String size
    NSLog(@"The length of the string is %d", myStr.length);

    // String interpolation
    int x = 7;
    NSString* math = [NSString stringWithFormat:@"%d^2 is %d not %d because ^ is XOR.", x, x^2, x * x];
    NSLog(@"math = %@", math);

    // Checking for equality
    NSString* dave = @"Dave";
    NSString* name = @"Dave";
    if ([dave isEqualToString:name]) {
        NSLog(@"They are the same");
    }

    // Finding a String within a String
    NSRange rangeFound = [name rangeOfString:@"av"];
    NSLog(@"Found av from %d..<%d", rangeFound.location, rangeFound.location + rangeFound.length);

    // Finding a Character within a String
    NSString* hw = @"Hello, World!";
    for (int index = 0; index < hw.length; ++index) {
        if ([hw characterAtIndex:index] == 'W') {
            NSLog(@"Found W at location: %d", index);
        }
    }

    // Substrings
    NSString* substring1 = [myStr substringWithRange:NSMakeRange(7, 1)];
    NSString* substring2 = [myStr substringWithRange:NSMakeRange(7, 2)];
    NSLog(@"substring1 = %@  substring2 = %@", substring1, substring2);
}

@end
