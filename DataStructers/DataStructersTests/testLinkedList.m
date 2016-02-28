//
//  testLinkedList.m
//  DataStructers
//
//  Created by ayyash on 10/01/16.
//  Copyright © 2016 ayyash. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "NSDSA/AALinkedList.h"

@interface testLinkedList : XCTestCase {
    AALinkedList *linkedList;
}

@end

@implementation testLinkedList

- (void)setUp {
    [super setUp];
    linkedList = [[AALinkedList alloc] init];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    int x = [linkedList length];
    XCTAssertEqual(x, 10);
}


@end
