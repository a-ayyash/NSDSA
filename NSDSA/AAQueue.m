//
//  AAQueue.m
//  NSDSA
//
//  Created by ayyash on 06/01/16.
//  Copyright © 2016 ayyash. All rights reserved.
//

#import "AAQueue.h"

@interface AAQueue<T>()
@property (nonatomic, strong) NSMutableArray<T> *backendArray;
@end

@implementation AAQueue

- (void)enqueue:(id)element {
    if (!_backendArray) {
        _backendArray = [[NSMutableArray alloc] init];
    }
    
    [_backendArray insertObject:element atIndex:0];
}

- (id)dequeue {
    if (!_backendArray) {
        return nil;
    }
    
    id element = [_backendArray lastObject];
    [_backendArray removeLastObject];
    return element;
}

- (BOOL)isEmpty {
    BOOL empty = YES;
    
    if (_backendArray && _backendArray.count > 0) {
        empty = NO;
    }
    
    return empty;
}

- (NSUInteger)count {
    if (!_backendArray) {
        return 0;
    }
    
    return [_backendArray count];
}
@end
