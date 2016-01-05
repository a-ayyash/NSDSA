//
//  StackTests.m
//  DataStructers
//
//  Created by ayyash on 05/01/16.
//  Copyright © 2016 ayyash. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "NSDSA/AAStack.h"

@interface StackTests : XCTestCase {
    AAStack* stack;
}

@end

@implementation StackTests

- (void)setUp {
    [super setUp];
    stack = [[AAStack alloc] init];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testStackIsInitiallyEmpty {
    XCTAssertTrue([stack isEmpty]);
}

- (void)testPushMakesTheStackNotEmpty {
    [stack push:@"asdf"];
    XCTAssertFalse([stack isEmpty]);
}

- (void)testPopMakesTheStackEmpty {
    [stack push:@"asdf"];
    [stack pop];
    XCTAssertTrue([stack isEmpty]);
}

- (void)testTopDoesNotAffectIsEmpty {
    [stack push:@"asdf"];
    [stack top];
    XCTAssertFalse([stack isEmpty]);
}

- (void)testPushIncreasesCount {
    [stack push:@"asdf"];
    XCTAssertEqual([stack count], 1);
}

- (void)testPopDecreasesCount {
    [stack push:@"asdf"];
    [stack pop];
    XCTAssertEqual([stack count], 0);
}

- (void)testTopDoesNotDecreaseCount {
    [stack push:@"asdf"];
    [stack top];
    XCTAssertEqual([stack count], 1);
}

- (void)testPopReturnsTheCorrectElement {
    NSNumber *number = [NSNumber numberWithInt:39393];
    [stack push:number];
    NSNumber *numberFromTheStack = [stack pop];
    XCTAssertTrue(numberFromTheStack == number);
}

- (void)testTopReturnsTheCorrectElement {
    NSNumber *number = [NSNumber numberWithInt:39393];
    [stack push:number];
    NSNumber *numberFromTheStack = [stack top];
    XCTAssertTrue(numberFromTheStack == number);
}


- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
