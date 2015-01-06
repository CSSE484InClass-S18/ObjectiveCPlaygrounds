//
//  AtmBankAccount.h
//  ObjectiveC Playground
//
//  Created by David Fisher on 1/6/15.
//  Copyright (c) 2015 Rose-Hulman. All rights reserved.
//

#import "BankAccount.h"

@interface AtmBankAccount : BankAccount

- (id) initWithName:(NSString*) name withBalance:(double) balance usingWithdrawFee:(double) withdrawFee;

@end
