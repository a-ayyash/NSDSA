#import <Foundation/Foundation.h>

@interface AAStack<T> : NSObject
- (NSUInteger)count;
- (void)push:(T)element;
- (T)pop;
- (T)top;
- (BOOL)isEmpty;
@end
