#import <Foundation/Foundation.h>
#import "Iterator.h"

@interface AALinkedList<T> : NSObject <iterator>
- (void)removeAtIndex:(NSUInteger)index;
- (void)addElement:(T)element atIndex:(NSUInteger)index;
- (id)getElementAtIndex:(NSUInteger)index;
- (void)insert:(T)element;
- (void)contains:(T)element;
- (void)clear;
- (NSUInteger)length;
@end
