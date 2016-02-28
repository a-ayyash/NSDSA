//
//  NodeTests.m
//  DataStructers
//
//  Created by ayyash on 10/01/16.
//  Copyright © 2016 ayyash. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "NSDSA/AANode.h"

@interface NodeTests : XCTestCase {
    AANode *node;
}

@end

@implementation NodeTests

- (void)testNodeDefaultInitWithNoNextOrValue {
    node = [[AANode alloc] init];
    XCTAssertEqual(node.value, nil);
    XCTAssertEqual(node.next, nil);
}

- (void)testNodeAcceptsDifferentTypes {
    node = [[AANode alloc] initWithValue:@"asdf"];
    XCTAssertNotNil(node);
    NSString *v = node.value;
    XCTAssertEqual(v, @"asdf");
    [node setNodeValue:@123];
    NSNumber *n = node.value;
    XCTAssertEqual(n, @123);
}

- (void)testNodeInitializedWithValue {
    node = [[AANode alloc] initWithValue:@"asdf"];
    XCTAssertNotNil(node);
    NSString *v = node.value;
    XCTAssertEqual(v, @"asdf");
}

- (void)testNodeInitializedWithNoNext {
    node = [[AANode alloc] initWithValue:@"asdf"];
    XCTAssertNil(node.next);
}

- (void)testNodeNextPointer {
    node = [[AANode alloc] initWithValue:@"A"];
    AANode *nextNode = [[AANode alloc] initWithValue:@"B"];
    [node setNext:nextNode];
    
    id n = node.next;
    XCTAssertEqual(n, nextNode);
}

@end
