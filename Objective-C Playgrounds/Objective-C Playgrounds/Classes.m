//
//  Classes.m
//  Objective-C Playgrounds
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
  BankAccount* daveAccount = [[BankAccount alloc] initWithName:@"Dave"
                                                   withBalance:100.0];
  NSLog(@"\n%@", daveAccount);
  [daveAccount deposit:50];
  NSLog(@"\n%@", daveAccount);
  [daveAccount withdraw:1.0];
  NSLog(@"\n%@", daveAccount);

  // Subclass
  AtmBankAccount* bobAccount = [[AtmBankAccount alloc] initWithName:@"Bob"
                                                        withBalance:100 usingWithdrawFee:40];
  NSLog(@"\n%@", bobAccount);
  [bobAccount deposit:100];
  [bobAccount withdraw:1];
  NSLog(@"\n%@", bobAccount);

  AtmBankAccount* account2 = [[AtmBankAccount alloc] initWithName:@"Default"
                                                        withBalance:100];
  NSLog(@"\n%@", account2);
  [account2 deposit:100];
  [account2 withdraw:1];
  NSLog(@"\n%@", account2);

  AtmBankAccount* account3 = [[AtmBankAccount alloc] init];
  NSLog(@"\n%@", account3);
  [account3 deposit:100];
  [account3 withdraw:1];
  NSLog(@"\n%@", account3);






}

@end
