//
//  DataStructersTests.m
//  DataStructersTests
//
//  Created by ayyash on 03/01/16.
//  Copyright © 2016 ayyash. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "NSDSA/NSDSA.h"

@interface DataStructersTests : XCTestCase {
    NSDSA* dsa;
}

@end

@implementation DataStructersTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    dsa = [[NSDSA alloc] init];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    NSString* msg = [dsa getMessage];
    XCTAssertEqual(msg, @"asdf");
    XCTAssertTrue([msg isEqualToString:@"asdf"]);
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
