//
//  Optionals.m
//  ObjectiveC Playground
//
//  Created by David Fisher on 12/7/14.
//  Copyright (c) 2014 Rose-Hulman. All rights reserved.
//

#import "Optionals.h"

@implementation Optionals

+ (void) run {

    // Primatives are required (they can get a "random value" if none is assigned)
    // Objects are optional

    int x;
    NSLog(@"The value of x = %d", x);

    NSString* dave = @"Dave";
    NSNumber* optionalFloat;

    NSLog(@"optionalFloat = %@", optionalFloat);

    NSString* ten = @"10";
    int valueThatIsNotANumber = dave.intValue;
    int valueThatIsANumber = ten.intValue;

    NSLog(@"valueThatIsNotANumber = %d", valueThatIsNotANumber);
    NSLog(@"valueThatIsANumber = %d", valueThatIsANumber);

}

@end
