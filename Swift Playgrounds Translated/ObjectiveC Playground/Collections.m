//
//  Collections.m
//  ObjectiveC Playground
//
//  Created by David Fisher on 12/7/14.
//  Copyright (c) 2014 Rose-Hulman. All rights reserved.
//

#import "Collections.h"

@implementation Collections

+ (void) run {


    // Many objects are immutable.  If you want a mutable version that is a subclass.
    // Example: NSArray would be kinda like -> let arrayName : [AnyObject]?
    // If you want a mutable array use NSMutableArray*

    // Basics for arrays
    NSMutableArray* names = [@[@"Dave", @"Kristy", @"McKinley", @"Keegan", @"Bowen"] mutableCopy];
    NSLog(@"names[1] = %@", names[1]);
    names[2] = @"Kingsley";
    NSLog(@"names = %@", names);
    if ([names containsObject:@"Dave"]) {
        NSLog(@"Dave is present");
    }


    // Appending values
    NSMutableArray* ages = [[NSMutableArray alloc] init];
    [ages addObject:@37];
    [ages addObject:@4];
    [ages insertObject:@34 atIndex:1];
    [ages addObjectsFromArray:@[@3, @1, @0]];
    [ages removeLastObject];
    NSLog(@"ages = %@", ages);
    if (ages.count == 0) {
        NSLog(@"Yep it's empty");
    } else if (ages.count > 4) {
        NSLog(@"More than 4 elements in the array");
    }

    // So, so, SO.. many things you could do with arrays...
    NSMutableArray* randomAges = [[NSMutableArray alloc] init];
    for (int i = 0; i < 100; i++) {
        [randomAges addObject:[[NSNumber alloc] initWithUnsignedLong:arc4random_uniform(90)]];
    }
    NSLog(@"randomAges = %@", randomAges);
    NSPredicate* teenPredicate = [NSPredicate predicateWithBlock:^BOOL(NSNumber* number, NSDictionary* bindings) {
        return [number integerValue] > 12 && [number integerValue] < 20;
    }];
    NSArray* teenagers = [randomAges filteredArrayUsingPredicate:teenPredicate];
    NSLog(@"teenages = %@", teenagers);
    NSArray* sortedTeenagers = [teenagers sortedArrayUsingComparator:^NSComparisonResult(NSNumber* obj1, NSNumber* obj2) {
        return [obj1 compare:obj2];
    }];
    NSLog(@"sortedTeenagers = %@", sortedTeenagers);


    // Dictionarys
    NSDictionary* elements = @{@"H": @"Hydrogen", @"He": @"Helium", @"Li": @"Lithium", @"Be": @"Beryllium", @"B": @"Boron", @"C": @"Carbon", @"N": @"Nitrogen", @"O": @"Oxygen"};
    NSLog(@"element['C'] = %@", [elements objectForKey:@"C"]);
    NSLog(@"element['Z'] = %@", [elements objectForKey:@"Z"]);
    for (NSString* symbol in elements) {
        if ([symbol isEqualToString:@"H"] || [symbol isEqualToString:@"O"]) {
            NSLog(@"%@ is present in water.", [elements objectForKey:symbol]);
        }
    }


    // Tuples - Didn't exist in Objective-C (You'd use an array or some other mechanism).

}

@end
