//
//  AtmBankAccount.m
//  ObjectiveC Playground
//
//  Created by David Fisher on 1/6/15.
//  Copyright (c) 2015 Rose-Hulman. All rights reserved.
//

#import "AtmBankAccount.h"

#define defaultWithdrawFee 2.0


@interface AtmBankAccount ()

@property (nonatomic) double withdrawFee;

@end


@implementation AtmBankAccount

- (id) initWithName:(NSString*) name withBalance:(double) balance {
    self.withdrawFee = defaultWithdrawFee;
    return [super initWithName:name withBalance:balance];
}


- (id) initWithName:(NSString*) name withBalance:(double) balance usingWithdrawFee:(double) withdrawFee {
    self.withdrawFee = withdrawFee;
    return [super initWithName:name withBalance:balance];
}


- (id) init {
    return [self initWithName:@"Anonymous" withBalance:0];
}


- (void) withdraw:(double) amount {
    [super withdraw:amount];
    self.balance -= self.withdrawFee;
}

@end
