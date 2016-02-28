#import <Foundation/Foundation.h>

@interface AANode<T> : NSObject
- (instancetype)initWithValue:(T)_value;
- (void)setNodeValue:(T)_value;
- (T)value;
- (void)setNext:(AANode*)node;
- (void)removeNext;
- (AANode*)next;
@end
