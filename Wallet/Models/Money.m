//
//  Money.m
//  Wallet
//
//  Created by jose luis sanchez-porro godoy on 10/06/2018.
//  Copyright © 2018 jose luis sanchez-porro godoy. All rights reserved.
//

#import "Money.h"
//@interface Money()
//@property (nonatomic) NSInteger amount;
//@end
@interface Money()
@property (nonatomic,strong) NSNumber * amount;
@end
@implementation Money

+(instancetype) euroWithAmount:(NSInteger) amount{

    return [[Money alloc] initWithAmount:amount currency:@"EUR"];
}

+(instancetype) dollarWithAmount: (NSInteger) amount{
    
    return [[Money alloc] initWithAmount:amount currency:@"USD"];
}



-(id) initWithAmount:(NSInteger )amount currency:(NSString *) currency{
    if(self = [super init]){
        _amount = @(amount);
        _currency = currency;
    }
    return self;
}
-(id) times: (NSInteger) multiplier{
    Money * newMoney = [[Money alloc] initWithAmount:[self.amount integerValue] * multiplier currency:self.currency];

    return newMoney;
}
-(Money *) plus:(Money *)other{
    NSInteger totalAmount = [self.amount integerValue] + [other.amount integerValue] ;
    Money * total = [[Money alloc] initWithAmount:totalAmount currency:self.currency];
    return  total;
}


# pragma mark - Overwritten

-(NSString * ) description{
    return [NSString stringWithFormat:@"<%@ %ld",[self class],(long)[self amount]];
}

-(BOOL)isEqual:(id)object{
    return ([self amount] == [object amount] && [self.currency isEqual: [object currency]] );
}

-(NSUInteger) hash{
    return (NSUInteger) self.amount;
}

@end
