//
//  Closures.m
//  ObjectiveC Playground
//
//  Created by David Fisher on 1/5/15.
//  Copyright (c) 2015 Rose-Hulman. All rights reserved.
//

#import "Closures.h"

@implementation Closures

+ (void) run {
    // Well first off they are called blocks in Objective-C not Closures.

    // Second off there is no reduce function, but you can come
    // close (and solve the problem) via filteredArrayUsingPredicate: then .count
    NSArray* values = @[@10, @5, @2, @8, @3, @6, @1, @1000];

    // Verbose Closure (block)
    NSPredicate* valuesOver5Predicate = [NSPredicate predicateWithBlock:^BOOL(NSNumber* number, NSDictionary* bindings) {
        return [number integerValue] > 5;
    }];
    NSArray* valuesOver5 = [values filteredArrayUsingPredicate:valuesOver5Predicate];
    NSLog(@"There are %d values over 5", valuesOver5.count);

    // Closure (block) shorthand doesn't exist, same as verbose version
    NSPredicate* valuesOver9Predicate = [NSPredicate predicateWithBlock:^BOOL(NSNumber* number, NSDictionary* bindings) {
        return [number integerValue] > 9;
    }];
    NSArray* valuesOver9 = [values filteredArrayUsingPredicate:valuesOver9Predicate];
    NSLog(@"There are %d values over 9", valuesOver9.count);


    // A Closure (block) using a closure for a variable (works the same as Swift really)
    NSLog(@"Over 5 = %d", [Closures numValuesInArray:values overLimit:5]);
    NSLog(@"Over 9 = %d", [Closures numValuesInArray:values overLimit:9]);
}


+ (int) numValuesInArray:(NSArray*) values overLimit:(int) limit {
    // You could even do it in one line like this if you really want.
    return [values filteredArrayUsingPredicate:[NSPredicate predicateWithBlock:^BOOL(NSNumber* number, NSDictionary* bindings) {
        return [number integerValue] > limit;
    }]].count;
}

@end
