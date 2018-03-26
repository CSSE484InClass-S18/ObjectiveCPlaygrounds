//
//  BankAccount.h
//  Objective-C Playgrounds
//
//  Created by David Fisher on 3/26/18.
//  Copyright © 2018 Rose-Hulman. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BankAccount : NSObject

@property (nonatomic, copy) NSString* name;
@property (nonatomic) double balance;

- (id) initWithName:(NSString*) name withBalance:(double) balance;
- (void) deposit:(double) amount;
- (void) withdraw:(double) amount;

@end
