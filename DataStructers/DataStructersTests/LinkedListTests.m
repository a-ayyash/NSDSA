//
//  testLinkedList.m
//  DataStructers
//
//  Created by ayyash on 10/01/16.
//  Copyright © 2016 ayyash. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "NSDSA/AALinkedList.h"

@interface LinkedListTests : XCTestCase {
    AALinkedList *linkedList;
}

@end

@implementation LinkedListTests

- (void)setUp {
    [super setUp];
    linkedList = [[AALinkedList alloc] init];
}

- (void)tearDown {
    [super tearDown];
}

- (void)testInitializeToEmpty {
    XCTAssertNotNil(linkedList);
    XCTAssertEqual([linkedList length], 0);
}

- (void)insertElement:(id)element WithCount:(NSUInteger)count {
    for (int i = 0; i < count; i++) {
        [linkedList addElement:element atIndex:i];
    }
}

- (void)testInsertOneElement {
    [self insertElement:@"A" WithCount:1];
    
    XCTAssertEqual([linkedList length], 1);
    XCTAssertEqual([linkedList getElementAtIndex:0], @"A");
}

- (void)testInsertMultipleElementsUpdatingLength {
    [linkedList addElement:@"A" atIndex:0];
    [linkedList addElement:@"B" atIndex:1];
    [linkedList addElement:@"C" atIndex:2];
    
    XCTAssertEqual([linkedList length], 3);
    
    XCTAssertEqual([linkedList getElementAtIndex:0], @"A");
    XCTAssertEqual([linkedList getElementAtIndex:1], @"B");
    XCTAssertEqual([linkedList getElementAtIndex:2], @"C");
}

- (void)testInsertSecondElementAwayFromTheFirst {
    [linkedList addElement:@"A" atIndex:0];
    [linkedList addElement:@"B" atIndex:10];
    
    XCTAssertEqual([linkedList getElementAtIndex:0], @"A");
    XCTAssertEqual([linkedList getElementAtIndex:1], @"B");
}

- (void)testInsertSecondElement {
    [linkedList addElement:@"A" atIndex:10];
    [linkedList addElement:@"B" atIndex:10];
    
    XCTAssertEqual([linkedList getElementAtIndex:0], @"A");
    XCTAssertEqual([linkedList getElementAtIndex:1], @"B");
}

- (void)testIteratorHasNext {
    [self insertElement:@"A" WithCount:1];
    XCTAssertEqual([linkedList hasNext], NO);
}

- (void)testIteratorHasNextTwice {
    [self insertElement:@"A" WithCount:2];
    
    XCTAssertEqual([linkedList hasNext], YES);
    [linkedList next];
    XCTAssertEqual([linkedList hasNext], NO);
}

- (void)testIteratorNext {
    [linkedList insert:@"A"];
    [linkedList insert:@"B"];
    
    XCTAssertEqual([linkedList next], @"B");
}

- (void)testIteratorNextTwice {
    [self insertElement:@"B" WithCount:2];
    
    XCTAssertEqual([linkedList next], @"B");
    XCTAssertEqual([linkedList next], nil);
}

- (void)testIteratorHasNextFalseWhenNextNil {
    [self insertElement:@"A" WithCount:2];
    
    XCTAssertEqual([linkedList hasNext], YES);
    XCTAssertEqual([linkedList next], @"A");
    XCTAssertEqual([linkedList hasNext], NO);
    XCTAssertEqual([linkedList next], nil);
}
@end
