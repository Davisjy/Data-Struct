//
//  ViewController.m
//  dataStruct
//
//  Created by Davis on 2020/2/24.
//  Copyright © 2020 Davis. All rights reserved.
//

#import "ViewController.h"
#import "ListNode.h"
#import "BinaryTreeNode.h"


@interface ViewController ()
@property (nonatomic, strong) NSMutableArray *stack1;
@property (nonatomic, strong) NSMutableArray *stack2;
@property (nonatomic, strong) NSArray *tempAr;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSMutableArray *list = @[@0,@1,@0,@3,@1,@0,@1,@3,@2,@1,@2,@1].mutableCopy;
    NSInteger rain = [self getRain:list];
    NSLog(@"%d", rain);
    
    
//    NSMutableArray *arr1 = @[@1].mutableCopy;
//    self.tempAr = [NSArray array];
//    self.tempAr = arr1;
//    NSLog(@"%@", self.tempAr);
//    [arr1 addObject:@2];
//    NSLog(@"%@", self.tempAr);
//    1 2 3 2 2
    NSMutableArray *numArr = @[@1, @2, @3, @2, @2].mutableCopy;
    int value = [self findMoreThanHalf:numArr];
    NSLog(@"%d", value);
    
    NSString *str1 = @"ab";
    NSMutableString *str2 = [[NSMutableString alloc] initWithString:@"bb"];
    NSMutableArray *arr = @[].mutableCopy;
    [arr addObject:str1];
    [arr addObject:str2];
    NSMutableArray *temp = arr.copy;
    [arr removeLastObject];
    NSLog(@"%@", arr);
    NSLog(@"%@", temp);
//    NSLog(@"%p", str1);
//    NSLog(@"%p", temp[0]);
//    NSLog(@"%p", str2);
//    NSLog(@"%p", temp[1]);
    
//    ListNode *tempNode = [ListNode alloc];
//    ListNode *tempNode1 = [tempNode init];
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        abort();
//    });
    
    _stack1 = @[].mutableCopy;
    _stack2 = @[].mutableCopy;
    
//    NSMutableArray *arr = @[@5, @3, @4, @1, @2].mutableCopy;
//    [self bubbleAction:arr];
    
//    [self selectAction:arr];
    
//    [self insertAction:arr];
    
//    [self quickSort:arr leftIndex:0 rightIndex:(int)(arr.count-1)];
//    NSLog(@"%@", arr);
    
    
//    int step = [self getStepWithNum:3];
//    NSLog(@"%d", step);
    
//    int value = [self feibonaqiListWithIndex:13];
//    NSLog(@"%d", value);
    
    // 旋转数组的最小值
//    NSMutableArray *arr = @[@3, @4, @5, @1, @2].mutableCopy;
//    NSMutableArray *arr = @[@1, @1, @1, @0, @1].mutableCopy;
//    int value = [self minWithReverseArr:arr];
//    NSLog(@"%d", value);
    
    // 多维数组
//    NSMutableArray *findArr = @[@[@1, @2, @3], @[@4, @5, @6]].mutableCopy;
//    BOOL isOk = [self findArr:findArr containsValue:7];
//    NSLog(@"是否成功%d", isOk);
    
    
//    ListNode *two = [[ListNode alloc] init];
//    two.next = nil;
//    two.value = 2;
//
//    ListNode *one = [[ListNode alloc] init];
//    one.next = two;
//    one.value = 1;
//    ListNode *node = [self reverseNodeList:one];
//    while (node != nil) {
//        NSLog(@"%d", node.value);
//        node = node.next;
//    }
    
//    BinaryTreeNode *fourNode = [[BinaryTreeNode alloc] init];
//    fourNode.value = 4;
//    fourNode.leftNode = nil;
//    fourNode.rightNode = nil;
//
//    BinaryTreeNode *sevenNode = [[BinaryTreeNode alloc] init];
//    sevenNode.value = 7;
//    sevenNode.leftNode = nil;
//    sevenNode.rightNode = nil;
//
//    BinaryTreeNode *fiveNode = [[BinaryTreeNode alloc] init];
//    fiveNode.value = 5;
//    fiveNode.leftNode = fourNode;
//    fiveNode.rightNode = sevenNode;
//
//    BinaryTreeNode *twleNode = [[BinaryTreeNode alloc] init];
//    twleNode.value = 12;
//    twleNode.leftNode = nil;
//    twleNode.rightNode = nil;
//
//    BinaryTreeNode *root = [[BinaryTreeNode alloc] init];
//    root.value = 10;
//    root.leftNode = fiveNode;
//    root.rightNode = twleNode;
//    [self findPath:root exceptNum:22];
    
//    NSMutableArray *arr = @[@"a", @"b", @"c"].mutableCopy;
//    [self permutation:arr];
    
//    NSMutableArray *arr = @[@2,@1, @3, @4, @5].mutableCopy;
//    [self recordEvenOdd:arr judgeBlock:^BOOL(NSInteger value) {
//        return (value & 0x1) == 0;// 偶数
//    }];
//    NSLog(@"%@", arr);

//    NSMutableArray *arr = @[@1, @2, @2, @3, @3, @3, @5].mutableCopy;
//    NSInteger begin = [self findFirstInArr:arr num:3 begin:0 end:arr.count-1];
//    NSLog(@"%ld", (long)begin);
//    NSInteger end = [self findEndInArr:arr num:3 begin:0 end:arr.count-1];
//    NSLog(@"%ld", (long)end);
    
    
//    ListNode *four = [[ListNode alloc] init];
//    four.next = nil;
//    four.value = 4;
//
//    ListNode *three = [[ListNode alloc] init];
//    three.next = four;
//    three.value = 3;
//
//    ListNode *two = [[ListNode alloc] init];
//    two.next = three;
//    two.value = 2;
//
//    ListNode *one = [[ListNode alloc] init];
//    one.next = two;
//    one.value = 1;
//    // 1->2->3->4
//    ListNode *temp = [self lastIndexNode:2 node:one];
//    NSLog(@"%@", temp);
//
//
//    ListNode *five = [[ListNode alloc] init];
//    five.next = three;
//    five.value = 5;
//
//    ListNode *six = [[ListNode alloc] init];
//    six.next = five;
//    six.value = 6;
////    BOOL isCycle = [self hasCycle:one];
////    NSLog(@"%d", isCycle);
//
//    ListNode *node = [self findCommonNodeWithOneList:one twoList:six];
//    NSLog(@"%d", node.value);
    
    
//    NSMutableArray *arr = @[@1, @2, @4, @7, @11, @15].mutableCopy;
//    NSArray *tempArr = [self getSubArrFrom:arr num:15];
//    NSLog(@"%@", tempArr);
    
//    [self getSubArrFromNum:15];
    
    
    BinaryTreeNode *fourNode = [[BinaryTreeNode alloc] init];
    fourNode.value = 4;
    fourNode.leftNode = nil;
    fourNode.rightNode = nil;

    BinaryTreeNode *sevenNode = [[BinaryTreeNode alloc] init];
    sevenNode.value = 7;
    sevenNode.leftNode = nil;
    sevenNode.rightNode = nil;

    BinaryTreeNode *fiveNode = [[BinaryTreeNode alloc] init];
    fiveNode.value = 5;
    fiveNode.leftNode = fourNode;
    fiveNode.rightNode = sevenNode;

    BinaryTreeNode *twleNode = [[BinaryTreeNode alloc] init];
    twleNode.value = 12;
    twleNode.leftNode = nil;
    twleNode.rightNode = nil;

    BinaryTreeNode *root = [[BinaryTreeNode alloc] init];
    root.value = 10;
    root.leftNode = fiveNode;
    root.rightNode = twleNode;

//    NSArray *temp = [self BFSBinaryTree:root];
//    NSLog(@"%@", temp);
    
    [self appendElement:1];
    [self appendElement:2];
    [self appendElement:3];
//    NSNumber *popElement = [self popElement];
//    NSLog(@"%@", popElement);
//    NSNumber *popElement1 = [self popElement];
//    NSLog(@"%@", popElement1);
//    NSNumber *popElement2 = [self popElement];
//    NSLog(@"%@", popElement2);
    
    char str[] = "hello";
    reverse(str);
    printf("%s\n", str);
    
    NSMutableArray *gridArr = @[
        @[@0, @0, @0],
        @[@0, @1, @0],
        @[@0, @0, @0]].mutableCopy;
    NSArray *pathArr = [self getPathWithArr:gridArr];
//    NSLog(@"%@", pathArr);
    
    
//    [self reverseString:@"Iam LOVE YOU！"];
    
    // @[@10, @2]
    // @[@3, @30, @34, @5, @9]
    NSInteger maxNum = [self getmaxNum:@[@10, @2].mutableCopy];
    NSInteger minNum = [self getMinNum:@[@10, @2].mutableCopy];
//    NSLog(@"%ld", maxNum);
    
    NSMutableArray *numsArr = @[@(-1), @1, @(-3), @4, @(-1), @1, @2, @(-5), @4].mutableCopy;
    NSInteger maxNum1 = [self getMaxNumWIthArr:numsArr];
//    NSLog(@"%ld", maxNum1);
    
    NSInteger mineCount = [self getMaxStrCountWithString:@"pwwkew"];
//    NSLog(@"%ld", mineCount);
    
    NSInteger reveseNum = [self reverseNum:120];
//    NSLog(@"%ld", reveseNum);
    
    NSInteger myGcd = [self getGcda:319 b:377];
//    NSLog(@"%ld", myGcd);
    
    NSInteger maxGift = [self getMaxGiftWithGrid:@[
      @[@1,@3,@1],
      @[@1,@5,@1],
      @[@4,@2,@1]
    ].mutableCopy];
//    NSLog(@"%ld", maxGift);

    NSString *findStr = @"abacbcdeff";
    NSString *resultStr = [self findFirstCharWithStr:findStr];
//    NSLog(@"%@", resultStr);
    
    NSInteger missNum = [self findMissNumWithArr:@[@0, @1, @3, @4].mutableCopy];
    NSLog(@"%ld", missNum);
    
    [NSMutableArray alloc] initWithArray:<#(nonnull NSArray *)#> copyItems:<#(BOOL)#>
}

// [0...n]数组中查找丢失的一个数字
- (NSInteger)findMissNumWithArr:(NSMutableArray *)arr {
    NSInteger res = arr.count;
    for (int i = 0; i < arr.count; i++) {
        res ^= [arr[i] integerValue];
        res ^= i;
    }
    return res;
}

// 找到第二大的数
- (NSInteger)findSecondNum:(NSMutableArray *)arr {
    NSInteger max = [arr[0] integerValue];
    NSInteger secondMax = 0;
    for (int i = 1; i < arr.count; i++) {
        if ([arr[i] integerValue] > max) {
            secondMax = max;
            max = [arr[i] integerValue];
        } else if ([arr[i] integerValue] == max) {
            max = [arr[i] integerValue];
        } else {
            if ([arr[i] integerValue] > secondMax) {
                secondMax = [arr[i] integerValue];
            }
        }
    }
    return secondMax;
}

// 链表找到第一个公共父节点
// 思路：交集长度为c，A除去交集为 a B除去交集长度为b 所以每一个链表走c+a+b必然会相遇
// 而如果无环的话，最后的步骤就是a+b=b+a到时候都会走向最终的空节点
- (ListNode *)findCommonParentNode:(ListNode *)list1 node2:(ListNode *)list2 {
    ListNode *headA = list1;
    ListNode *headB = list2;
    while (headA != headB) {
        headA = headA == nil?list2:headA.next;
        headB = headB == nil?list1:headB.next;
    }
    return headA;
}


// 第一个只出现一次的字符
// 思路：顺序遍历，取当前字符在前后子串是否都包含
- (NSString *)findFirstCharWithStr:(NSString *)str {
    for (int i = 0; i < str.length; i++) {
        NSString *tempStr = [str substringWithRange:NSMakeRange(i, 1)];
        NSString *subStr = [str substringFromIndex:i+1];
        NSString *topStr = [str substringToIndex:i];
        if (![subStr containsString:tempStr]&& ![topStr containsString:tempStr]) {
            return tempStr;
        }
    }
    return @"";
}

// 获取第几个丑树
// 思路：后面的丑树一定是前面某个中最小的一个×2×3×5
// 1 2 3 4 5 6
- (NSInteger)getChouNumWithIndex:(NSInteger)index {
    if (index < 0) {
        return -1;
    }
    NSInteger id2 = 0, id3 = 0, id5 = 0;
    NSMutableArray *dpArr = @[@1].mutableCopy;
    for (NSInteger i = 1; i < index; i++) {
        dpArr[i] = @(MIN(id2 * 2, MIN(id3*3, id5*5)));
        if (id2*2 == [dpArr[i] integerValue]) {
            id2++;
        }
        if (id3*3 == [dpArr[i] integerValue]) {
            id3++;
        }
        if (id5*5 == [dpArr[i] integerValue]) {
            id5++;
        }
    }
    return [dpArr[index-1]integerValue];
}

// 获取最大礼物
- (NSInteger)getMaxGiftWithGrid:(NSMutableArray *)arr {
    NSInteger row = arr.count;
    NSInteger colomn = [arr.firstObject count];
    
    NSMutableArray *dpArry = [NSMutableArray arrayWithCapacity:colomn];
    for (int k = 0; k < colomn; k++) {
        [dpArry addObject:@(0)];
    }
    for (int i = 0; i < row; i++) {
        dpArry[0] = @([dpArry[0] integerValue] + [arr[i][0]integerValue]);
        for (int j = 1; j < colomn; j++) {
            dpArry[j] = @(MAX([dpArry[j] integerValue], [dpArry[j-1] integerValue]) + [arr[i][j] integerValue]);
        }
    }
    
    return [dpArry[colomn-1] integerValue];
}

// 最大公约数
- (NSInteger)getGcda:(NSInteger )a b:(NSInteger)b {
    if (b == 0) {
        return a;
    }
    return [self getGcda:b b:(a%b)];
}

// 反转数字 321->123
// num    res   p
//        1     1
//        12    2
//        123   0
- (NSInteger)reverseNum:(NSInteger)num {
    NSInteger res = 0;
    while (num != 0) {
        NSInteger yuNum = num%10;
        res = res*10 + yuNum;
        num /= 10;
    }
    return res;
}

// 两个链表表示两个数 1->2->3
//                3->4->5
- (ListNode *)getResultList:(ListNode *)oneList twoList:(ListNode *)twoList {
    ListNode *newHeader = [[ListNode alloc] init];
    NSInteger t = 0;
    while (oneList != nil || twoList != nil || t != 0) {
        if (oneList != nil) {
            t += oneList.value;
            oneList = oneList.next;
        }
        if (twoList != nil) {
            t += twoList.value;
            twoList = twoList.next;
        }
        ListNode *pnextNode = [[ListNode alloc] init];
        pnextNode.value = t%10;
        newHeader.next = pnextNode;
        newHeader = pnextNode;
        t = t/10;
    }
    return newHeader.next;
}

// 无重复字符的最长子串
// 思路：用map记录之前已有的位置索引，然后遍历str，确定start开始的位置是否之前有过，如果已经有，
// 则start等于之前已经出现过的位置，max就是当前索引-start+1
- (NSInteger)getMaxStrCountWithString:(NSString *)str {
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    for (int i = 0; i < str.length; i++) {
        dict[[str substringWithRange:NSMakeRange(i, 1)]] = @(-1);
    }
    // 窗口开始的位置
    NSInteger start = 0;
    NSInteger max = 0;
    for (int i = 0; i < str.length; i++) {
        NSString *subStr = [str substringWithRange:NSMakeRange(i, 1)];
        start = MAX(start, ([dict[subStr]integerValue]+1));
        max = MAX(max, (i-start+1));
        dict[subStr] = @(i);
    }
    return max;
}

// 连续子数组的最大和
// 用空间换时间 空间复杂度 O(n)
- (NSInteger)getMaxNumWIthArr:(NSMutableArray *)arr {
    if (arr == nil || arr.count == 0) {
        return 0;
    }
    NSMutableArray *maxArr = @[arr.firstObject].mutableCopy;
    NSInteger max = [arr.firstObject integerValue];
    
    for (int i = 1; i<arr.count; i++) {
        maxArr[i] = @(MAX([arr[i] integerValue], ([maxArr[i-1]integerValue]+[arr[i] integerValue])));
        max = max > [maxArr[i] integerValue] ? max:[maxArr[i]integerValue];
    }
    return max;
}

// 给定一组非负整数，重新排列它们的顺序使之组成一个最大的整数。
// https://leetcode-cn.com/problems/largest-number/
- (NSInteger)getmaxNum:(NSMutableArray<NSNumber *> *)arr {
    NSMutableString *str = [NSMutableString string];
    for (NSInteger i = 0; i < arr.count; i++) {
        for (NSInteger j = i+1; j < arr.count; j++) {
            NSString *oneStr = [NSString stringWithFormat:@"%@%@", arr[i], arr[j]];
            NSString *twoStr = [NSString stringWithFormat:@"%@%@", arr[j], arr[i]];
            if (oneStr.integerValue < twoStr.integerValue) {
                NSNumber *temp = arr[i];
                arr[i] = arr[j];
                arr[j] = temp;
            }
        }
    }

    for (NSNumber *num in arr) {
        [str appendString:num.stringValue];
    }
    return str.integerValue;
}

- (NSInteger)getMinNum:(NSMutableArray<NSNumber *> *)arr {
    NSMutableString *str = [NSMutableString string];
    for (NSInteger i = 0; i < arr.count; i++) {
        for (NSInteger j = i+1; j < arr.count; j++) {
            NSString *oneStr = [NSString stringWithFormat:@"%@%@", arr[i], arr[j]];
            NSString *twoStr = [NSString stringWithFormat:@"%@%@", arr[j], arr[i]];
            if (oneStr.integerValue > twoStr.integerValue) {
                NSNumber *temp = arr[i];
                arr[i] = arr[j];
                arr[j] = temp;
            }
        }
    }

    for (NSNumber *num in arr) {
        [str appendString:num.stringValue];
    }
    return str.integerValue;
}

// 字符串按单词反转（必须保留所有空格）。‘I LOVE YOU！’转化为‘YOU! LOVE I’
- (void)reverseString:(NSString *)str {
    NSMutableString *resultStr = [NSMutableString string];
    NSString *temp1 = [self reverseSub:str];
    NSInteger length = 0;
    NSInteger loc = 0;
    for (NSInteger i = 0; i < str.length; i++) {
        NSString *firstCode = [temp1 substringWithRange:NSMakeRange(i, 1)];
        if (![firstCode isEqualToString:@" "]) {
            length++;
            if (i == str.length-1) {
                loc = i-length+1;
                NSString *temp2 = [self reverseSub:[temp1 substringWithRange:NSMakeRange(loc, length)]];
                [resultStr appendString:temp2];
            }
        } else {
            loc = i-length;
            NSString *temp2 = [self reverseSub:[temp1 substringWithRange:NSMakeRange(loc, length+1)]];
            [resultStr appendString:temp2];
            [resultStr appendString:@" "];
            length = 0;
        }
        
    }
    NSLog(@"%@", resultStr);
}

- (NSString *)reverseSub:(NSString *)str {
    if (str == nil || str.length == 0) {
        return @"";
    }
    NSMutableString *resultStr = [NSMutableString string];
    NSInteger count = str.length;
    for (NSInteger i = count-1; i >= 0; i--) {
        NSString *subStr = [str substringWithRange:NSMakeRange(i, 1)];
        [resultStr appendString:subStr];
    }
    return resultStr;
}

void reverse(char *str) {
    char *begin = str;
    char *end = str + strlen(str) -1;
    while (begin < end) {
        char temp = *begin;
        *(begin++) = *end;
        *(end--) = temp;
    }
}

// 判断是否是正确的中序遍历
- (BOOL)judegeIsOK:(NSMutableArray *)arr {
    if (arr.count == 0 || !arr) {
        return true;
    }
    return [self judgeSubTree:arr left:0 right:arr.count-1];
}

- (BOOL)judgeSubTree:(NSMutableArray *)arr left:(NSInteger)left right:(NSInteger)right {
    
    NSInteger root = [arr[right] integerValue];
    NSInteger k = left;
    while (k<right && [arr[k] integerValue] < root) {
        k++;
    }
    for (NSInteger i = k ; i < right; i++) {
        if ([arr[i] integerValue] < root) {
            return false;
        }
    }
    
    if (![self judgeSubTree:arr left:left right:k-1]) {
        return false;
    }
    if (![self judgeSubTree:arr left:k right:right-1]) {
        return false;
    }
    return true;
}

// 递归调用计算和
- (int)caculateSum:(int)num {
    if (num > 1) {
        return num + [self caculateSum:num-1];
    } else {
        return num;
    }
}

// 机器人路径DFS
// https://leetcode-cn.com/problems/robot-in-a-grid-lcci/comments/
- (NSMutableArray *)getPathWithArr:(NSMutableArray *)gridArr {
    NSMutableArray *path = @[].mutableCopy;
    [self dfsWIthGrid:gridArr x:0 y:0 path:path];
    return path;
}

- (BOOL)dfsWIthGrid:(NSMutableArray *)gridArr x:(int)x y:(int)y path:(NSMutableArray *)path {
    NSInteger m = gridArr.count;
    NSInteger n = [gridArr.firstObject count];
    if (x >= m || y>=n) {
        return false;
    }
    if ([gridArr[x][y] integerValue] == 1) {
        return false;
    }
    
    if (x == m-1 && y== n-1) {
        [path addObject:@[@(x), @(y)]];
        return true;
    }
    
    [path addObject:@[@(x), @(y)]];
    if (x < m && [self dfsWIthGrid:gridArr x:x+1 y:y path:path]) {
        return true;
    }
    
    if (y < n && [self dfsWIthGrid:gridArr x:x y:y+1 path:path]) {
        return true;
    }
    
    [path removeLastObject];
    gridArr[x][y] = @1;
    return false;
}

//https://leetcode-cn.com/problems/zhan-de-ya-ru-dan-chu-xu-lie-lcof/
// 借助栈，用空间换时间
- (BOOL)juedgeIsPopList:(NSMutableArray *)pushed pop:(NSMutableArray *)poped {
    // 使用NSMutableArray充当临时栈
    NSMutableArray *stack = @[].mutableCopy;
    int j = 0;
    for (NSNumber *num in pushed) {
        [stack addObject:num];
        while (j < poped.count &&
               stack.count > 0 &&
               [stack.lastObject integerValue] == [poped[j] integerValue]) {
            [stack removeLastObject];
            j++;
        }
    }
    return j==poped.count?true:false;
}

// 给定数组，查找某两个元素和为指定值的索引
// 方案一：暴力解法，两个for循环，相加子元素确定和 O(n²)
// 方案二：一个for循环，用map存储补数的索引，当下一个元素是补数时，则当前值的索引和补数的索引就是两个数的索引
- (void)getTwoNumWithArr:(NSMutableArray *)arr sum:(NSInteger)sum {
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    for (int i = 0; i < arr.count; i++) {
        if ([dict.allKeys containsObject:arr[i]]) {
            NSArray *tempArr = @[@(i), dict[arr[i]]];
            NSLog(@"%@", tempArr);
        } else {
            NSNumber *buNum = @(sum-[arr[i] integerValue]);
            dict[buNum] = @(i);
        }
    }
}

// 两个栈实现一个队列
- (void)appendElement:(NSInteger)element {
    [self.stack1 addObject:@(element)];
}

- (NSNumber *)popElement {
    if (self.stack2.count == 0) {
        while (self.stack1.count > 0) {
            NSNumber *temp = self.stack1.lastObject;
            [self.stack2 addObject:temp];
            [self.stack1 removeObject:temp];
        }
    }
    if (self.stack2.count == 0) {
        NSLog(@"错误了，stack2为空");
        return nil;
    }
    NSNumber *result = self.stack2[self.stack2.count-1];
    [self.stack2 removeObject:result];
    return result;
}

// 一个数转换成2进制有几个1
- (int)getOneCountWithNum:(int)num {
    int count = 0;
    while (num) {
        num = num&(num-1);
        count++;
    }
    return count;
}

// 雨滴接水问题 @[@0,@1,@0,@3,@1,@0,@1,@3,@2,@1,@2,@1]
// 求能接多少水
- (NSInteger)getRain:(NSMutableArray *)arr {
    int res = 0;
    if (arr.count == 0) {
        return 0;
    }
    NSMutableArray *LMaxArr = [NSMutableArray arrayWithCapacity:12];
    NSMutableArray *RMaxArr = @[@0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0].mutableCopy;
    LMaxArr[0] = arr[0];
    RMaxArr[arr.count-1] = arr[arr.count-1];

    for (int i = 1; i < arr.count; i++) {
        LMaxArr[i] = @(MAX([LMaxArr[i-1] integerValue], [arr[i]integerValue]));
    }
    for (NSInteger i = arr.count-2; i >= 0; i--) {
        RMaxArr[i] = @(MAX([RMaxArr[i+1] integerValue], [arr[i]integerValue]));
    }
    for (int i = 0; i < arr.count; i++) {
        NSInteger temp = MIN([LMaxArr[i] integerValue], [RMaxArr[i] integerValue])-[arr[i] integerValue];
        res += temp;
    }
    return res;
}

/****************数组**********************/
// 奇数在前偶数在后
- (void)recordEvenOdd:(NSMutableArray *)arr judgeBlock:(BOOL(^)(NSInteger))block {
    if (arr.count == 0 || !arr) {
        return;
    }
    NSInteger beginIndex = 0;
    NSInteger endIndex = arr.count-1;
    while (beginIndex < endIndex) {
        while (beginIndex < endIndex && !block([arr[beginIndex] integerValue])) {
            beginIndex++;
        }
        while (beginIndex < endIndex && block([arr[endIndex] integerValue])) {
            endIndex--;
        }
        if (beginIndex < endIndex) {
            NSNumber *temp = arr[beginIndex];
            arr[beginIndex] = arr[endIndex];
            arr[endIndex] = temp;
        }
    }
}

// 查询顺序数组中相同数字的第一个索引位置
- (NSInteger)findFirstInArr:(NSMutableArray *)arr num:(NSInteger)num begin:(NSInteger)begin end:(NSInteger)end {
    if (begin > end) {
        return -1;
    }
    NSInteger middle = (begin+end)/2;
    if ([arr[middle] integerValue] == num) {
        // 2334445
        if (middle == 0 || (middle > 0 && [arr[middle-1] integerValue]!=num)) {
            return middle;
        } else {
            end = middle-1;
        }
    } else if ([arr[middle] integerValue] >= num) {
        end = middle-1;
    } else {
        begin = middle+1;
    }
    return [self findFirstInArr:arr num:num begin:begin end:end];
}

- (NSInteger)findEndInArr:(NSMutableArray *)arr num:(NSInteger)num begin:(NSInteger)begin end:(NSInteger)end {
    if (!arr || arr.count == 0) {
        return -1;
    }
    NSInteger middle = (begin+end)/2;
    if ([arr[middle] integerValue] == num) {
        if ((middle>0 && ([arr[middle+1] integerValue]!=num)) || middle == end) {
            return middle;
        } else {
            begin = middle+1;
        }
    } else if ([arr[middle] integerValue] > num) {
        end = middle-1;
    } else {
        begin = middle+1;
    }
    return [self findEndInArr:arr num:num begin:begin end:end];
}

// 多维数组查找是否包含
- (BOOL)findArr:(NSMutableArray *)arr containsValue:(int)value {
    BOOL isok = false;
    if (arr.count == 0 || !arr) {
        return isok;
    }
    NSInteger rows = arr.count;
    NSInteger colums = [arr.firstObject count];
    NSInteger row = 0;
    NSInteger colum = colums-1;
    while (row < rows && row >=0 &&colum>=0 && colum < colums) {
        if ([arr[row][colum] intValue] == value) {
            isok = true;
            break;
        } else if ([arr[row][colum] intValue] > value) {
            colum--;
        } else if ([arr[row][colum] intValue] < value) {
            row++;
        }
    }
    return isok;
}

// 一个数组有一个数字超过了一半，找到这个数字
// 思路：借助两个临时变量，一个是值，一个是值出现的次数
- (int)findMoreThanHalf:(NSMutableArray *)arr {
    if (!arr || arr.count == 0) {
        return 0;
    }
    int result = [arr[0] intValue];
    int times = 1;
    for (int i = 1; i < arr.count; i++) {
        if (times == 0) {
            result = [arr[i] intValue];
            times = 1;
        } else if (result == [arr[i] intValue]) {
            times++;
        } else {
            times--;
        }
    }
    // 记住需要判断这个数字的个数是否超过的一半
    
    return result;
}

// 旋转数组的最小值 34512
- (int)minWithReverseArr:(NSMutableArray *)arr {
    if (arr.count == 0 || !arr) {
        return 0;
    }
    int index1 = 0;
    int index2 = (int)(arr.count-1);
    int middleIndex = index1;
    while ([arr[index1] intValue] >= [arr[index2] intValue]) {
        if (index2-index1 == 1) {
            middleIndex = index2;
            break;
        }
        middleIndex = (index1 + index2)/2;
        if ([arr[index1] intValue] == [arr[middleIndex] intValue] &&
            [arr[index2] intValue] == [arr[middleIndex] intValue]) {
            // 顺序查找法 此时不知道二分法往哪移动
            return [self getminArr:arr withIndex:index1 index2:index2];
        } else if ([arr[middleIndex] intValue] >= [arr[index1] intValue]) {
            index1 = middleIndex;
        } else if ([arr[middleIndex] intValue] <= [arr[index2] intValue]) {
            index2 = middleIndex;
        }
        
    }
    return [arr[middleIndex] intValue];
}

- (int)getminArr:(NSMutableArray *)arr withIndex:(int)index1 index2:(int)index2 {
    NSNumber *min = arr[index1];
    for (NSInteger i = index1+1; i <= index2; i++) {
        if ([arr[i] intValue] < [min intValue]) {
            min = arr[i];
        }
    }
    return min.intValue;
}

// 获取和为某一值的子数组
- (NSArray *)getSubArrFrom:(NSMutableArray *)arr num:(NSInteger)num {
    if (!arr || arr.count == 0 || num == 0) {
        return nil;
    }
    NSInteger begin = 0;
    NSInteger end = arr.count-1;
    while (end > begin) {
        NSInteger currentSum = [arr[begin] integerValue] + [arr[end] integerValue];
        if (currentSum == num) {
            return @[arr[begin], arr[end]];
        }else if (currentSum < num) {
            begin++;
        } else {
            end--;
        }
    }
    return nil;
}

// 获取和为某一值的所有顺序子数组
- (void)getSubArrFromNum:(NSInteger)sum {
    if (sum < 3) {
        return;
    }
    NSInteger small = 1;
    NSInteger big = 2;
    NSInteger middle = (small + sum)/2;
    NSInteger currentSum = small + big;
    while (small < middle) {
        if (currentSum == sum) {
            [self printNum:small end:big];
        }
        while (currentSum > sum && small < middle) {
            currentSum -= small;
            small++;
            if (currentSum == sum) {
                [self printNum:small end:big];
            }
        }
        big++;
        currentSum += big;
    }
}

- (void)printNum:(NSInteger)begin end:(NSInteger)end {
    NSLog(@"找到了");
    NSMutableArray *arr = @[].mutableCopy;
    for (NSInteger i = begin; i <= end; i++) {
//        NSLog(@"%ld", i);
        [arr addObject:@(i)];
    }
    NSLog(@"%@", [arr componentsJoinedByString:@","]);
}

/****************字符串全排列**********************/
- (void)permutation:(NSMutableArray *)charArr {
    if (!charArr || charArr.count == 0) {
        return;
    }
    [self permutation:charArr withBegin:0];
}

- (void)permutation:(NSMutableArray *)charArr withBegin:(NSInteger)begin {
    if (begin == charArr.count) {
        NSLog(@"一个排列%@", [charArr componentsJoinedByString:@","]);
    } else {
        NSString *temp = nil;
        for (NSInteger i = begin; i < charArr.count; i++) {
            temp = charArr[begin];
            charArr[begin] = charArr[i];
            charArr[i] = temp;
            [self permutation:charArr withBegin:begin+1];
            
            temp = charArr[begin];
            charArr[begin] = charArr[i];
            charArr[i] = temp;
        }
    }
}

/****************二叉树**********************/
// 寻找二叉树最近父节点  https://www.cnblogs.com/zyqy/p/10735654.html
- (BinaryTreeNode *)findCommonParentNode:(BinaryTreeNode *)root pNode:(BinaryTreeNode *)pNode qNode:(BinaryTreeNode *)qNode {
    if (root == nil || root == pNode || root == qNode) {
        return root;
    }
    BinaryTreeNode *leftNode = [self findCommonParentNode:root.leftNode pNode:pNode qNode:qNode];
    BinaryTreeNode *rightNode = [self findCommonParentNode:root.rightNode pNode:pNode qNode:qNode];
    if (leftNode && rightNode) {
        return root;
    }
    return leftNode?leftNode:rightNode;
}

// 寻找从根节点到子节点路径为某一值的路径
- (void)findPath:(BinaryTreeNode *)root exceptNum:(NSInteger)value {
    if (!root) {
        return;
    }
    NSNumber *currentSum = @0;
    NSMutableArray<BinaryTreeNode *> *path = @[].mutableCopy;
    [self findPath:root excepNum:value currentNum:currentSum path:path];
}

- (void)findPath:(BinaryTreeNode *)root excepNum:(NSInteger)value currentNum:(NSNumber *)currentNum path:(NSMutableArray <BinaryTreeNode *>*)path {
    currentNum = @(currentNum.integerValue + root.value);
    [path addObject:root];
    BOOL isLeaf = (root.leftNode == nil) &&(root.rightNode == nil);
    if (isLeaf && (currentNum.integerValue) == value) {
        NSLog(@"找到啦*******************");
        for (BinaryTreeNode *node in path) {
            NSLog(@"%d", node.value);
        }
    }
    if (root.leftNode) {
        [self findPath:root.leftNode excepNum:value currentNum:currentNum path:path];
    }
    if (root.rightNode) {
        [self findPath:root.rightNode excepNum:value currentNum:currentNum path:path];
    }
    currentNum = @(currentNum.integerValue - root.value);
    [path removeObject:root];
}

// 镜像二叉树
- (void)reverseBinaryTree:(BinaryTreeNode *)node {
    if (node == nil ||(node.leftNode == nil && node.rightNode == nil)) {
        return;
    }
    BinaryTreeNode *tempNode = node.leftNode;
    node.leftNode = node.rightNode;
    node.rightNode = tempNode;
    if (node.leftNode) {
        [self reverseBinaryTree:node.leftNode];
    }
    if (node.rightNode) {
        [self reverseBinaryTree:node.rightNode];
    }
}

// 是否是平衡二叉树
- (BOOL)isBanlenceBinaryTree:(BinaryTreeNode *)node {
    if (node == nil) {
        return true;
    }
    int leftDepth = [self getDepthWith:node.leftNode];
    int rightDepth = [self getDepthWith:node.rightNode];
    int dif = leftDepth-rightDepth;
    if (dif > 1 || dif < -1) {
        return false;
    }
    return [self isBanlenceBinaryTree:node.leftNode] && [self isBanlenceBinaryTree:node.rightNode];
}

// 获取二叉树的深度
- (int)getDepthWith:(BinaryTreeNode *)node {
    if (!node) {
        return 0;
    }
    int left = [self getDepthWith:node.leftNode];
    int right = [self getDepthWith:node.rightNode];
    return left > right?(left+1):(right+1);
}

// 从上到下打印二叉树 广度优先遍历
- (NSArray *)BFSBinaryTree:(BinaryTreeNode *)node {
    NSMutableArray *queue = @[].mutableCopy;
    NSMutableArray *resultArr = @[].mutableCopy;
    if (node) {
        [queue addObject:node];
    }
    while (queue.count > 0) {
        NSInteger count = queue.count;
        NSMutableArray *temp = @[].mutableCopy;
        for (NSInteger i = 0; i < count; i++) {
            BinaryTreeNode *deleteNode = queue[0];
            [temp addObject:@(deleteNode.value)];
            [queue removeObject:deleteNode];
            if (deleteNode.leftNode) {
                [queue addObject:deleteNode.leftNode];
            }
            if (deleteNode.rightNode) {
                [queue addObject:deleteNode.rightNode];
            }
        }
        [resultArr addObject:temp];
    }
    return resultArr;
}

/****************链表***************/
// 倒数第k个结点
// 1->2->3->4  倒数第k个结点也就是总个数n-k-1
// 所以设置两个指针，第一个指针先走到k-1的位置，第二个再从头开始
- (ListNode *)lastIndexNode:(NSInteger)index node:(ListNode *)node {
    if (node == nil || index < 0) {
        return nil;
    }
    ListNode *firstNode = node;
    ListNode *secondNode = node;
    for (int i = 0; i < index; i++) {
        ListNode *tempNode = firstNode.next;
        if (tempNode == nil) {
            return nil;
        }
        firstNode = tempNode;
    }
    while (firstNode.next != nil) {
        firstNode = firstNode.next;
        secondNode = secondNode.next;
    }
    return secondNode;
}

// 反转链表
- (ListNode *)reverseNodeList:(ListNode *)node {
    
    ListNode *reverseHead = nil;
    ListNode *prevNode = nil;
    while (node != nil) {
        ListNode *pnext = node.next;
        if (pnext == nil) {
            reverseHead = node;
        }
        node.next = prevNode;
        prevNode = node;
        node = pnext;
    }
    return reverseHead;
}

// 寻找两个顺序链表的公共父节点
- (ListNode *)findCommonNodeWithOneList:(ListNode *)oneList twoList:(ListNode *)twoList {
    if (!oneList && !twoList) {
        return nil;
    }
    NSInteger oneLength = [self getListLength:oneList];
    NSInteger twoLength = [self getListLength:twoList];
    
    ListNode *longList = oneList;
    ListNode *shortList = twoList;
    NSInteger difflength = 0;
    if (oneLength < twoLength) {
        longList = twoList;
        shortList = oneList;
        difflength = twoLength-oneLength;
    } else {
        difflength = oneLength-twoLength;
    }
    while (difflength > 0) {
        longList = longList.next;
        difflength--;
    }
    while (longList!=nil && shortList!=nil&&longList.value != shortList.value) {
        longList = longList.next;
        shortList = shortList.next;
    }
    return longList;
}

- (NSInteger)getListLength:(ListNode *)node {
    NSInteger sum = 0;
    while (node) {
        sum++;
        node = node.next;
    }
    return sum;
}

// 快慢指针查找环
- (BOOL)findListHasCycle:(ListNode *)nodel {
    ListNode *fast = nodel;
    ListNode *slow = nodel;
    while (fast.next.next != nil && slow.next != nil) {
        fast = fast.next.next;
        slow = slow.next;
        if (fast.value == slow.value) {
            return true;
        }
    }
    return false;
}

// O(1)删除list中的一个列表
- (void)deleteFromList:(ListNode *)node deleteNode:(ListNode *)deleteNode {
    if (!node || !deleteNode) {
        return;
    }
    if (node != deleteNode) {
        ListNode *pnext = deleteNode.next;
        deleteNode.value = pnext.value;
        deleteNode.next = pnext.next;
        pnext = nil;
    } else if (node == deleteNode) {
        node = nil;
    } else {
        
    }
}

// 合并两个有序链表
- (ListNode *)combineOneList:(ListNode *)oneNode twoList:(ListNode *)twoNode {
    ListNode *newHead = [[ListNode alloc] init];
    while (oneNode != nil && twoNode != nil) {
        if (oneNode.value > twoNode.value) {
            newHead.next = twoNode;
            twoNode = twoNode.next;
            newHead = newHead.next;
        } else {
            newHead.next = oneNode;
            oneNode = oneNode.next;
            newHead = newHead.next;
        }
    }
    if (oneNode == nil) {
        newHead.next = twoNode;
    } else {
        newHead.next = oneNode;
    }
    return newHead;
}

/**************************************/
// 斐波那契数列
- (int)feibonaqiListWithIndex:(int)index {
    if (index <= 0) {
        return 0;
    }
    NSMutableArray *arr = @[@0, @1].mutableCopy;
    int oneStep = 0;
    int twoStep = 1;
    int result = 0;
    for (int i = 2; i <= index; i++) {
        result = oneStep + twoStep;
        oneStep = twoStep;
        twoStep = result;
        arr[i] = @(result);
    }
    NSLog(@"%@", arr);
    return [arr[index] intValue];
}

// 青蛙跳函数
- (int)getStepWithNum:(int)num {
    if (num <=0) {
        return 0;
    }
    NSMutableArray *stepArr = @[@1, @1].mutableCopy;
    for (int i = 2; i <= num; i++) {
        stepArr[i] = @(pow(2, i-1));
    }
    return [stepArr[num] intValue];
}

/**************************************/
// 冒泡算法
- (void)bubbleAction:(NSMutableArray *)arr {
    for (int i = 0; i < arr.count; i++) {
        for (int j = (int)(arr.count - 2); j >= i; j--) {
            if ([arr[j] intValue] > [arr[j+1] intValue]) {
                NSNumber *temp = arr[j];
                arr[j] = arr[j+1];
                arr[j+1] = temp;
            }
        }
    }
}

// 选择排序
- (void)selectAction:(NSMutableArray *)arr {
    for (int i = 0; i < arr.count; i++) {
        int min = i;
        for (int j = i+1; j < arr.count; j++) {
            if ([arr[j] intValue] < [arr[min] intValue]) {
                min = j;
            }
        }
        if (min != i) {
            NSNumber *temp = arr[min];
            arr[min] = arr[i];
            arr[i] = temp;
        }
    }
}

// 直接插入排序
- (void)insertAction:(NSMutableArray *)arr {
    
    int j = 0;
    for (int i = 1; i < arr.count; i++) {
        NSNumber *minValue = arr[i];
        j = i-1;
        while (j >= 0 && [arr[j] intValue] > minValue.intValue) {
            arr[j+1] = arr[j];
            j--;
        }
        arr[j+1] = minValue;
    }
}
// 快排
- (void)quickSort:(NSMutableArray *)arr leftIndex:(int)leftIndex rightIndex:(int)rightIndex {
    if (leftIndex >= rightIndex) {
        return;
    }
    int i = [self partitionArr:arr low:leftIndex hight:rightIndex];
    [self quickSort:arr leftIndex:leftIndex rightIndex:i-1];
    [self quickSort:arr leftIndex:i+1 rightIndex:rightIndex];
    
}

- (int)partitionArr:(NSMutableArray *)arr low:(int)low hight:(int)high {
    int i = low;
    int j = high;
    int key = [arr[i] intValue];
    while (i < j) {
        while (i<j && [arr[j] intValue] >= key) {
            j--;
        }
        arr[i] = arr[j];
        while (i<j && [arr[i] intValue] <= key) {
            i++;
        }
        arr[j] = arr[i];
    }
    arr[i] = @(key);
    return i;
}
@end
