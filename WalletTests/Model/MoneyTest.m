//
//  MoneyTest.m
//  WalletTests
//
//  Created by jose luis sanchez-porro godoy on 10/06/2018.
//  Copyright © 2018 jose luis sanchez-porro godoy. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Money.h"
@interface MoneyTest : XCTestCase

@end

@implementation MoneyTest

//- (void)testThatTimesRaisesException{
//    Money *money = [[Money alloc] initWithAmount:1];
//    XCTAssertThrows([money times:2]);
//}

-(void) testCurrecies{
    XCTAssertEqualObjects(@"EUR", [[Money euroWithAmount:1] currency],@"The currency of euros should be EUR");
    XCTAssertEqualObjects(@"USD", [[Money dollarWithAmount :1] currency],@"The currency of dollar should be USD");
    
}

-(void)testMultiplication{
    Money * euro = [Money euroWithAmount:5];
    Money * total = [euro times: 2];
    Money * ten = [Money euroWithAmount:10];
    XCTAssertEqualObjects(total,ten);
    XCTAssertEqualObjects([[Money dollarWithAmount:5]times:2],[Money dollarWithAmount:10]);
    
}

-(void) testEquality{
    Money * five = [Money euroWithAmount:5];
    Money * ten = [Money euroWithAmount:10];
    Money * total = [five times:2];
    XCTAssertEqualObjects(ten, total);
    XCTAssertEqualObjects([Money dollarWithAmount:4], [[Money dollarWithAmount: 2] times:2]);
   
}
-(void)testDifferentCurrenties{
    Money *euro = [Money euroWithAmount:1];
    Money *dollar = [Money dollarWithAmount:1];
    
    XCTAssertNotEqualObjects(euro, dollar,@"Diferent Curriencies should not be equal");
}

-(void)testHash{
    Money * a = [Money euroWithAmount:2];
    Money * b = [Money euroWithAmount:2];
    XCTAssertEqual([a hash], [b hash]);
    XCTAssertEqual([[Money dollarWithAmount:1] hash], [[Money dollarWithAmount:1] hash]);
}

-(void)testAmountStorage{
    // Hay que probar las interfaces públicas de las clases
    Money *euro = [Money euroWithAmount:2];
    //SEL = selector número que identifica un mensaje
#pragma clang diagnostic push // Va a meter una serie de directivas
#pragma clang diagnostic ignored "-Wundeclared-selector" // Metes una directiva
    XCTAssertEqual(2, [[euro performSelector:@selector(amount)] integerValue],@"The value retrieved should be the same as the stored");
     XCTAssertEqual(2, [[[Money dollarWithAmount:2] performSelector:@selector(amount)] integerValue],@"The value retrieved should be the same as the stored");
#pragma clang diagnostic pop // La sacas
    
}

-(void)testSimpleAddition{
    XCTAssertEqualObjects([[Money dollarWithAmount:5] plus: [Money dollarWithAmount:10]],[Money dollarWithAmount:15], @"$5+$5 = $10");
}
@end
