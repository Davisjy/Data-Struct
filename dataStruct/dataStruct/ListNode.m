//
//  ListNode.m
//  dataStruct
//
//  Created by Davis on 2020/2/24.
//  Copyright © 2020 Davis. All rights reserved.
//

#import "ListNode.h"

@implementation ListNode
- (BOOL)isEqual:(id)object {
    if (self == object) {
        return true;
    }
    if ([object isKindOfClass:[ListNode class]]) {
        return NO;
    }
    return [self isEqualToListNode:object];
}

- (BOOL)isEqualToListNode:(ListNode *)node {
    if (!node) {
        return NO;
    }
    BOOL isEqualNode = self.next == node.next;
    BOOL isEquelValue = self.value == node.value;
    return isEqualNode && isEquelValue;
}

- (NSUInteger)hash {
    NSUInteger firstHash = [_next hash];
    return firstHash ^ _value;
}

@end
