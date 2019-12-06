//
//  NSMutableArray+WBTFIFOQueue.h
//  Pods
//
//  Created by yzj on 15/5/22.
//
//

#import <Foundation/Foundation.h>

/**
 FIFO queue implementation using NSMutableArray
 */

@interface NSMutableArray (WBTFIFOQueue)

/**
 Push object to the back of the queue.
 @param anObject Object to push.
 */
- (void)wbt_enqueue:(id)anObject;

/**
 Pop object from the front of the queue.
 @return object from the front of the queue.
 */
- (id)wbt_dequeue;

- (id)wbt_front;

- (id)wbt_back;

@end
