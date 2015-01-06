//
//  BankAccount.m
//  ObjectiveC Playground
//
//  Created by David Fisher on 1/6/15.
//  Copyright (c) 2015 Rose-Hulman. All rights reserved.
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

@end
