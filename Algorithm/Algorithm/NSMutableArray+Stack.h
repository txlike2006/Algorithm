//
//  NSMutableArray+Stack.h
//  Algorithm
//
//  Created by like5 on 2019/12/6.
//  Copyright © 2019 like5. All rights reserved.
//


#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSMutableArray (Stack)

- (void) push: (id)item;
- (id) pop;
- (id) peek;

@end

NS_ASSUME_NONNULL_END
