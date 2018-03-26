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

    // Basic enum
  typedef NS_ENUM(NSInteger, Weekday) {
    WeekdayMonday,
    WeekdayTuesday,
    WeekdayWednesday,
    WeekdayThursday,
    WeekdayFriday
  };
  Weekday today = 2;
  switch (today) {
    case WeekdayMonday:
    case WeekdayTuesday:
    case WeekdayThursday:
      NSLog(@"You have class");
      break;
    case WeekdayWednesday:
      NSLog(@"Weekend Wednesday!");
      break;
    default:
      NSLog(@"Enjoy the weekend!");
      break;
  }

  NSLog(@"The rawvalue of today is %d", (int)today);












    // Rawvalues
    
}

@end
