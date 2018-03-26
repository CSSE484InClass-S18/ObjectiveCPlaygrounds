//
//  BankAccount.m
//  Objective-C Playgrounds
//
//  Created by David Fisher on 3/26/18.
//  Copyright © 2018 Rose-Hulman. All rights reserved.
//

#import "BankAccount.h"

@implementation BankAccount

- (id) initWithName:(NSString*) name withBalance:(double) balance {
  self = [super init];
  if (self) {
    self.name = name;
    self.balance = balance;
  }
  return self;
}

- (void) deposit:(double) amount {
  self.balance += amount;
}

- (void) withdraw:(double) amount {
  self.balance -= amount;
}

- (NSString*) description {
  return [NSString stringWithFormat:@"Name: %@  Balance: $%.2f",
          self.name, self.balance];
}

@end
