//
//  Functions.m
//  ObjectiveC Playground
//
//  Created by David Fisher on 12/7/14.
//  Copyright (c) 2014 Rose-Hulman. All rights reserved.
//

#import "Functions.h"

@implementation Functions

// Basic function
+ (NSString*) stringRepeaterForOriginalString:(NSString*) originalString
                              withRepeatCount:(int) repeatCount {
    NSMutableString* repeatedString = [[NSMutableString alloc] init];
    for (int i = 0; i < repeatCount; i++) {
        [repeatedString appendString:originalString];
    }
    return repeatedString;
}


// Simulating returning a tuple (multiple return values)
+ (NSString*) stringLetterRepeaterForOriginalString:(NSString*) originalString
                                    withRepeatCount:(int) repeatCount
                             returnUncollatedString:(NSString**) uncollatedStringPtr {
    NSMutableString* repeatedString = [[NSMutableString alloc] init];
    for (int i = 0; i < repeatCount; i++) {
        [repeatedString appendString:originalString];
    }

    NSMutableString* repeatedLetters = [[NSMutableString alloc] init];
    unichar buffer[originalString.length + 1];
    [originalString getCharacters:buffer range:NSMakeRange(0, originalString.length)];
    for(int i = 0; i < originalString.length - 1; ++i) {
        unichar letter = buffer[i];
        for (int j = 0; j < repeatCount; ++j) {
            [repeatedLetters appendFormat:@"%c", letter];
        }
    }
    *uncollatedStringPtr = repeatedLetters;
    return repeatedString;
}

+ (void) run {
    NSLog(@"stringRepeater: %@", [self stringRepeaterForOriginalString:@"Ho! " withRepeatCount:3]);
    NSString* uncollatedString = nil;
    NSString* collatedString = [self stringLetterRepeaterForOriginalString:@"Ow! " withRepeatCount:4 returnUncollatedString:&uncollatedString];
    NSLog(@"collatedString = %@", collatedString);
    NSLog(@"uncollatedString = %@", uncollatedString);
}

@end
