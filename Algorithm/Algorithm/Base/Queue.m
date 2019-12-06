//
//  Queue.m
//  Algorithm
//
//  Created by like5 on 2019/12/6.
//  Copyright © 2019 like5. All rights reserved.
//

#import "Queue.h"

@interface Queue()

@property (nonatomic, strong) NSMutableArray *queue;

@end

@implementation Queue

-(NSMutableArray *)queue
{
    if (!_queue) {
        _queue = [NSMutableArray new];
    }
    return _queue;
}


-(id)dequeue
{
    id result = nil;
    if (self.queue.count > 0) {
        result = [self.queue objectAtIndex:0];
        [self.queue removeObjectAtIndex:0];
    }
    return result;
}

-(id)front
{
    return self.queue.firstObject;
}

-(void)enqueue:(id)anObject
{
    if (self.queue && anObject) {
        [self.queue addObject:anObject];
    }
}

-(id)back
{
    if (self.queue) {
        return self.queue.lastObject;
    } else {
        return nil;
    }
}

-(NSInteger)size
{
    return self.queue.count;
}

@end
