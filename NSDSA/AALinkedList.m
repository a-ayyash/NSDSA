#import "AALinkedList.h"
#import "AANode.h"

@interface AALinkedList() {
    NSUInteger count;
    AANode *head;
}

@end

@implementation AALinkedList

- (instancetype)init {
    self = [super init];
    
    if (self) {
        head = [[AANode alloc] init];
    }
    
    return self;
}

- (void)removeAtIndex:(NSUInteger)index {
    
}

- (void)removeLast {
    
}

- (void)removeFirst {
    
}

- (void)addElement:(id)element atIndex:(NSUInteger)index {
    
}

- (void)insertAtFront:(id)element {
    
}

- (void)insertAtBack:(id)element {
    
}

- (void)replaceElementAtIndex:(NSUInteger)index with:(id)element {
    
}

- (void)contains:(id)element {
    
}

- (void)clear {
    
}

- (void)reverse {
    
}

- (int)length {
    return 0;
}

- (id)firstElement {
    return nil;
}

- (id)lastElement {
    return nil;
}

@end
