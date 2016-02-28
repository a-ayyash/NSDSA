#import <Foundation/Foundation.h>

@interface AAQueue<T> : NSObject
- (void)enqueue:(T)element;
- (T)dequeue;
- (BOOL)isEmpty;
- (NSUInteger)count;
@end
