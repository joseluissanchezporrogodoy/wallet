//
//  Money.h
//  Wallet
//
//  Created by jose luis sanchez-porro godoy on 10/06/2018.
//  Copyright © 2018 jose luis sanchez-porro godoy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Money : NSObject

@property(nonatomic, readonly) NSString * currency; 

+(id) euroWithAmount:(NSInteger) amount;
+(id) dollarWithAmount: (NSInteger) amount;
-(id) initWithAmount:(NSInteger )amount
            currency:(NSString *) currency;
-(id) times: (NSInteger) multiplier;
-(Money *) plus:(Money *)other;
@end
