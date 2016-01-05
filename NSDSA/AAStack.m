//
//  AAStack.m
//  NSDSA
//
//  Created by ayyash on 05/01/16.
//  Copyright © 2016 ayyash. All rights reserved.
//

#import "AAStack.h"

@interface AAStack<T>()
@property (nonatomic, strong) NSMutableArray<T>* backendArray;
@end

@implementation AAStack

- (NSUInteger)count {
    NSUInteger count = 0;
    
    if (_backendArray) {
        count = _backendArray.count;
    }
    
    return count;
}

- (BOOL)isEmpty {
    return [self count] == 0;
}

- (void)push:(id)element {
    if (!_backendArray) {
        _backendArray = [[NSMutableArray alloc] init];
    }
    
    [_backendArray addObject:element];
}

- (id)top {
    if (!_backendArray) {
        return nil;
    }
    
    return [_backendArray lastObject];
}

- (id)pop {
    if (!_backendArray) {
        return nil;
    }
    
    id element = [_backendArray lastObject];
    [_backendArray removeLastObject];
    return element;
}
@end
