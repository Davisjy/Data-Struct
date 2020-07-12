//
//  ListNode.h
//  dataStruct
//
//  Created by Davis on 2020/2/24.
//  Copyright © 2020 Davis. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ListNode : NSObject
@property (nonatomic, strong) ListNode *next;
@property (nonatomic, assign) int value;
@end

NS_ASSUME_NONNULL_END
