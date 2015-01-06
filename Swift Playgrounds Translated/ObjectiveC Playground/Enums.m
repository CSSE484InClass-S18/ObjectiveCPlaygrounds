//
//  Enums.m
//  ObjectiveC Playground
//
//  Created by David Fisher on 1/5/15.
//  Copyright (c) 2015 Rose-Hulman. All rights reserved.
//

#import "Enums.h"


@implementation Enums

+ (void) run {

    // To use an enum you just use C code.  Objective-C is a superset of C so just use C enums.

    // Basic enum
    typedef enum {
        Monday,
        Tuesday,
        Wednesday,
        Thursday,
        Friday
    } Weekday;

    Weekday today = Tuesday;

    switch (today) {
        case Monday:
        case Tuesday:
        case Thursday:
            NSLog(@"You have class!");
            break;
        case Wednesday:
            NSLog(@"Weekend Wednesday!");
            break;
        default:
            NSLog(@"Enjoy the weekend");
            break;
    }

    // Rawvalues
    typedef enum {
        Ready,
        Set,
        Go
    } State;

    State raceState = Set;
    NSLog(@"The rawvalue of raceState = %d", raceState); // It just IS the rawvalue

    State nextRaceState = Set + 1;
    if (nextRaceState == Go) {
        NSLog(@"Go! Go! Go!");
    }


    // enums in C can only be ints and they have no associated values.
}

@end
