//
//  QueueTests.m
//  DataStructers
//
//  Created by ayyash on 06/01/16.
//  Copyright © 2016 ayyash. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "NSDSA/AAQueue.h"

@interface QueueTests : XCTestCase {
    AAQueue *queue;
}

@end

@implementation QueueTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    queue = [[AAQueue alloc] init];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testEnqueueFillsQueue {
    XCTAssertTrue([queue isEmpty]);
    [queue enqueue:@"asdf"];
    XCTAssertFalse([queue isEmpty]);
}

- (void)testDequeueEmptiesQueue {
    [queue enqueue:@"asdf"];
    XCTAssertFalse([queue isEmpty]);
    [queue dequeue];
    XCTAssertTrue([queue isEmpty]);
}

- (void)testDequeueEmptyQueueReturnsNil {
    XCTAssertNil([queue dequeue]);
}

- (void)testFIFO {
    NSNumber *one = [NSNumber numberWithInteger:1];
    NSNumber *two = [NSNumber numberWithInteger:2];
    NSNumber *three = [NSNumber numberWithInteger:3];
    
    [queue enqueue:one];
    [queue enqueue:two];
    [queue enqueue:three];
    
    NSNumber *first = [queue dequeue];
    NSNumber *second = [queue dequeue];
    NSNumber *third = [queue dequeue];
    
    XCTAssertEqual(first, one);
    XCTAssertEqual(second, two);
    XCTAssertEqual(third, three);
}

- (void)testCountIsAccurate {
    NSNumber *one = [NSNumber numberWithInteger:1];
    
    [queue enqueue:one];
    XCTAssertEqual([queue count], 1);
    
    [queue enqueue:one];
    XCTAssertEqual([queue count], 2);
    
    [queue enqueue:one];
    XCTAssertEqual([queue count], 3);
    
    [queue dequeue];
    XCTAssertEqual([queue count], 2);
    
    [queue dequeue];
    XCTAssertEqual([queue count], 1);
    
    [queue dequeue];
    XCTAssertEqual([queue count], 0);
}
@end
