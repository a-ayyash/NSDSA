//
//  AAQueue.h
//  NSDSA
//
//  Created by ayyash on 06/01/16.
//  Copyright © 2016 ayyash. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AAQueue<T> : NSObject
- (void)enqueue:(T)element;
- (T)dequeue;
- (BOOL)isEmpty;
- (NSUInteger)count;
@end
