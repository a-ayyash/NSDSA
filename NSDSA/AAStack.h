//
//  AAStack.h
//  NSDSA
//
//  Created by ayyash on 05/01/16.
//  Copyright © 2016 ayyash. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AAStack<T> : NSObject
- (NSUInteger)count;
- (void)push:(T)element;
- (T)pop;
- (T)top;
- (BOOL)isEmpty;
@end
