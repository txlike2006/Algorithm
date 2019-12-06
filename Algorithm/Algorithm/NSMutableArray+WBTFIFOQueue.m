//
//  NSMutableArray+WBTFIFOQueue.m
//  Pods
//
//  Created by yzj on 15/5/22.
//
//

#import "NSMutableArray+WBTFIFOQueue.h"

@implementation NSMutableArray (WBTFIFOQueue)

- (void)wbt_enqueue:(id)anObject
{
    @synchronized(self){
        [self addObject:anObject];
    }
}

- (id)wbt_dequeue
{
    id result = nil;
    
    if ([self count] > 0) {
        @synchronized(self){
            if([self count]>0){
                result = [self objectAtIndex:0];
                [self removeObjectAtIndex:0];
            }
        }
    }
    return result;
}

- (id)wbt_front
{
    return [self firstObject];
}

- (id)wbt_back
{
    return [self lastObject];
}

@end