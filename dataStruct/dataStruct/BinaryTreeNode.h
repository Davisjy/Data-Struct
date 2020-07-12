//
//  BinaryTreeNode.h
//  dataStruct
//
//  Created by Davis on 2020/2/24.
//  Copyright © 2020 Davis. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BinaryTreeNode : NSObject
@property (nonatomic, assign) int value;
@property (nonatomic, strong) BinaryTreeNode *leftNode;
@property (nonatomic, strong) BinaryTreeNode *rightNode;
@end

