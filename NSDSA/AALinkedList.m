#import "AALinkedList.h"
#import "AANode.h"

@interface AALinkedList() {
    NSUInteger count;
    AANode *head;
    AANode *current_node;
}

@end

@implementation AALinkedList

- (id)next {
    if (!current_node) {
        current_node = head;
    } else {
        current_node = current_node.next;
    }
    
    return current_node.value;
}

- (BOOL)hasNext {
    return current_node.next != nil;
}

- (instancetype)init {
    self = [super init];
    
    if (self) {
        head = nil;
        count = 0;
        current_node = nil;
    }
    
    return self;
}

- (void)removeAtIndex:(NSUInteger)index {
    
}

- (void)removeLast {
}

- (void)removeFirst {
    if (!head && [head next]) {
        head = [head next];
    }
}

- (void)insert:(id)element {
    if (!head) {
        head = [[AANode alloc] initWithValue:element];
        current_node = head;
        count++;
        return;
    }
    
    AANode *first = head;
    
    while ([first next]) {
        first = [first next];
    }
    
    AANode *nextNode = [[AANode alloc] initWithValue:element];
    [first setNext:nextNode];
    count++;
}

- (void)addElement:(id)element atIndex:(NSUInteger)index {
    if (!head) {
        head = [[AANode alloc] initWithValue:element];
        current_node = head;
        count++;
        return;
    }
    
    AANode *first = head;
    
    for (int i = 0; i < count-1; i++) {
        first = [first next];
    }
    
    AANode *nextNode = [[AANode alloc] initWithValue:element];
    [nextNode setNext:first.next];
    [first setNext:nextNode];
    count++;
}

- (id)getElementAtIndex:(NSUInteger)index {
    if (index >= count) {
        return nil;
    }
    
    AANode *cursor = head;
    
    for (int i = 0; i < index; i++) {
        cursor = [cursor next];
    }
    
    return cursor.value;
}

- (void)contains:(id)element {
    
}

- (void)print {
    AANode *first = head;
   
    while ([first next]) {
        first = [first next];
        NSLog(@"element: %@", first.value);
    }
}

- (void)clear {
    count = 0;
    head = nil;
}

- (void)reverse {
    
}

- (NSUInteger)length {
    return count;
}

- (id)first {
    return [head value];
}

- (id)last {
    AANode *last = head;
    
    while ([last next]) {
        last = [last next];
    }
    
    return last;
}

@end
