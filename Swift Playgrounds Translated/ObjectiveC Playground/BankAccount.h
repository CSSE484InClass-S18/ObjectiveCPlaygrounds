//
//  BankAccount.h
//  ObjectiveC Playground
//
//  Created by David Fisher on 1/6/15.
//  Copyright (c) 2015 Rose-Hulman. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BankAccount : NSObject

@property (nonatomic, copy) NSString* name;
@property (nonatomic) double balance;

- (id) initWithName:(NSString*) name withBalance:(double) balance;
- (void) deposit:(double) amount;
- (void) withdraw:(double) amount;

@end
