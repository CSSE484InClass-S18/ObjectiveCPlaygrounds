//
//  Basic.m
//  ObjectiveC Playground
//
//  Created by David Fisher on 12/6/14.
//  Copyright (c) 2014 Rose-Hulman. All rights reserved.
//

#import "Basics.h"

@implementation Basics

+ (void) run {
    int myVariable = 42;
    myVariable = 50;
    const int myConstant = 42;
    //myConstant = 50;


    // via C Array
    int scoresInC[] = {75, 52, 93, 87, 41, 83};
    int arrayLength = (sizeof scoresInC) / (sizeof scoresInC[0]);
    int totalPassingInCArray = 0;
    for (int i = 0; i < arrayLength; i++) {
        if (scoresInC[i] > 60) {
            totalPassingInCArray++;
        }
    }
    NSLog(@"%d passed out of %d students", totalPassingInCArray, arrayLength);

    
    // via Objective-C Array
    NSArray* scores = @[@75, @52, @93, @87, @41, @83];
    int totalPassing = 0;
    for (int i = 0; i < scores.count; i++) {
        if (((NSNumber*)scores[i]).intValue > 60) {
            totalPassing++;
        }
    }
    NSLog(@"%d passed out of %d students", totalPassing, (int)scores.count);

}

@end
