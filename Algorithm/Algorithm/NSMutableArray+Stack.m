//
//  NSMutableArray+Stack.m
//  Algorithm
//
//  Created by like5 on 2019/12/6.
//  Copyright © 2019 like5. All rights reserved.
//

#import "NSMutableArray+Stack.h"



@implementation NSMutableArray (Stack)

- (void) push: (id)item {
    [self addObject:item];
}
 
- (id) pop {
    id item = nil;
    if ([self count] != 0) {
        item = [self lastObject];
        [self removeLastObject];
    }
    return item;
}
 
- (id) peek {
    id item = nil;
    if ([self count] != 0) {
        item = [self lastObject] ;
    }
    return item;
}

@end
