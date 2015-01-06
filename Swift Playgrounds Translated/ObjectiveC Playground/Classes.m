//
//  Classes.m
//  ObjectiveC Playground
//
//  Created by David Fisher on 1/6/15.
//  Copyright (c) 2015 Rose-Hulman. All rights reserved.
//

#import "Classes.h"
#import "BankAccount.h"
#import "AtmBankAccount.h"

@implementation Classes

+ (void) run {
    // Simple Class
    BankAccount* daveAccount = [[BankAccount alloc] initWithName:@"Dave" withBalance:100.00];
    NSLog(@"daveAccount Name: %@  balance: $%.2f", daveAccount.name, daveAccount.balance);

    [daveAccount deposit:50];
    NSLog(@"daveAccount Name: %@  balance: $%.2f", daveAccount.name, daveAccount.balance);

    [daveAccount withdraw:10];
    NSLog(@"daveAccount Name: %@  balance: $%.2f", daveAccount.name, daveAccount.balance);

    // Subclass
    BankAccount* bobAccount = [[AtmBankAccount alloc] init];

    [bobAccount deposit:100];
    NSLog(@"bobAccount Name: %@  balance: $%.2f", bobAccount.name, bobAccount.balance);

    [bobAccount withdraw:40];
    NSLog(@"bobAccount Name: %@  balance: $%.2f", bobAccount.name, bobAccount.balance);
}



@end
