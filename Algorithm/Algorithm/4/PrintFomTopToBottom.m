//
//  PrintFomTopToBottom.m
//  Algorithm
//
//  Created by like5 on 2019/12/6.
//  Copyright © 2019 like5. All rights reserved.
//

#import "PrintFomTopToBottom.h"
#import "Queue.h"
#import "BinaryTreeNode.h"

@implementation PrintFomTopToBottom

+ (void)printFomTopToBottom:(BinaryTreeNode *)pTreeRoot
{
    if (!pTreeRoot) {
        return;
    }
    Queue *queue = [Queue new];
    [queue enqueue:pTreeRoot];
    while (queue.size) {
        BinaryTreeNode *pNote = queue.front;
        [queue dequeue];
        
        NSLog(@"%ld",(long)pNote.value);
        
        if (pNote.leftNode) {
            [queue enqueue:pNote.leftNode];
        }
        
        if (pNote.rightNode) {
            [queue enqueue:pNote.rightNode];
        }
    }
}

@end
