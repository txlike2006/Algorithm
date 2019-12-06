//
//  Queue.h
//  Algorithm
//
//  Created by like5 on 2019/12/6.
//  Copyright © 2019 like5. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Queue : NSObject

/**

 */
- (void)enqueue:(id)anObject;

/**
 Pop object from the front of the queue.
 @return object from the front of the queue.
 */
- (id)dequeue;

- (id)front;

- (id)back;

- (NSInteger)size;

@end

NS_ASSUME_NONNULL_END
