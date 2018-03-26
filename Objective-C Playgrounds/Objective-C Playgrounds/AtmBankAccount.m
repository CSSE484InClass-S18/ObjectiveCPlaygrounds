//
//  AtmBankAccount.m
//  Objective-C Playgrounds
//
//  Created by David Fisher on 3/26/18.
//  Copyright © 2018 Rose-Hulman. All rights reserved.
//

#import "AtmBankAccount.h"

#define defaultWithdrawFee 2

@implementation AtmBankAccount

- (id) initWithName:(NSString*) name
        withBalance:(double) balance
   usingWithdrawFee:(double) withdrawFee {
  self.withdrawFee = withdrawFee;
  return [super initWithName:name withBalance:balance];
}

- (id) initWithName:(NSString *)name withBalance:(double)balance {
  self.withdrawFee = defaultWithdrawFee;
  return [super initWithName:name withBalance:balance];
}

- (id) init {
  return [self initWithName:@"Anonymous" withBalance:0];
}

- (void) withdraw:(double)amount {
  [super withdraw:amount];
  self.balance -= self.withdrawFee;
}

- (NSString*) description {
  return [NSString stringWithFormat:@"%@  Withdraw fee: $%.2f",
          [super description], self.withdrawFee];
}

@end
