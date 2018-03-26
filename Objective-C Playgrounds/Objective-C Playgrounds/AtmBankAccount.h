//
//  AtmBankAccount.h
//  Objective-C Playgrounds
//
//  Created by David Fisher on 3/26/18.
//  Copyright © 2018 Rose-Hulman. All rights reserved.
//

#import "BankAccount.h"

@interface AtmBankAccount : BankAccount

- (id) initWithName:(NSString*) name
        withBalance:(double) balance
   usingWithdrawFee:(double) withdrawFee;

@property (nonatomic) double withdrawFee;

@end
