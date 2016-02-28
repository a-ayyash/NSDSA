#import "AANode.h"

@interface AANode<T>() {
    AANode<T>* next;
    T value;
}

@end

@implementation AANode

- (instancetype)initWithValue:(id)_value {
    self = [super init];
    
    if (self) {
        value = _value;
    }
    
    return self;
}

- (void)setNodeValue:(id)_value {
    value = _value;
}

- (id)value {
    return value;
}

- (void)setNext:(AANode*)node {
    next = node;
}

- (void)removeNext {
    next = nil;
}

- (AANode*)next {
    return next;
}

@end
