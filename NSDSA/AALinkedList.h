#import <Foundation/Foundation.h>

@interface AALinkedList<T> : NSObject
- (void)removeAtIndex:(NSUInteger)index;
- (void)removeLast;
- (void)removeFirst;
- (void)addElement:(T)element atIndex:(NSUInteger)index;
- (void)insertAtFront:(T)element;
- (void)insertAtBack:(T)element;
- (void)replaceElementAtIndex:(NSUInteger)index with:(T)element;
- (void)contains:(T)element;
- (void)clear;
- (void)reverse;
- (int)length;
- (T)firstElement;
- (T)lastElement;
@end
