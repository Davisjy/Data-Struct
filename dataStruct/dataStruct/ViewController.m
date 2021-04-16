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

@property (nonatomic, strong) NSMutableArray *queue1;
@property (nonatomic, strong) NSMutableArray *queue2;
@property (nonatomic, assign) int resultSum;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _queue1 = @[].mutableCopy;
    _queue2 = @[].mutableCopy;
    
    [self getNextBigNum:@[@4, @5, @2, @6, @3, @1].mutableCopy];
    
    NSMutableArray *list = @[@0,@1,@0,@2,@1,@0,@1,@3,@2,@1,@2,@1].mutableCopy;
    NSInteger rain = [self getRain:list];
    NSLog(@"%d", rain);
    
    NSInteger chouNu = [self getChouNumWithIndex:10];
    NSLog(@"%ld", chouNu);
    
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
    
    ListNode *threee = [[ListNode alloc] init];
    threee.next = nil;
    threee.value = 3;
    ListNode *two = [[ListNode alloc] init];
    two.next = threee;
    two.value = 2;

    ListNode *one = [[ListNode alloc] init];
    one.next = two;
    one.value = 1;
//    ListNode *node = [self reverseNodeList1:one];
    ListNode *node = [self reverseNodeList1:one];
    while (node != nil) {
        NSLog(@"%d", node.value);
        node = node.next;
    }
    
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
    
    NSMutableArray *charArr = @[@"a", @"b", @"c"].mutableCopy;
    [self permutation:charArr];

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
    
    NSInteger mineCount = [self getMaxStrCountWithString:@"aabbcc"];
    NSLog(@"%ld", mineCount);
    
    NSInteger reveseNum = [self reverseNum:120];
//    NSLog(@"%ld", reveseNum);
    
    NSInteger myGcd = [self getGcda:319 b:377];
    NSLog(@"%ld", myGcd);
    
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
    
    NSInteger maxMoney = [self getMaxMoney:@[@1, @3, @2, @8, @4, @9] andFee:2];
    NSInteger subMoney = [self getMaxMoneyWithArr:@[@7, @1, @5, @3, @6, @4]];
    
    BOOL isHw = [self juedgeIsHW:@"aba"];
    NSLog(@"%d", isHw);
    
    NSString *getMaxHw = [self maxhuiwenWithString:@"babad"];
    NSLog(@"%@", getMaxHw);
    
    NSInteger resultSalary = [self getMaxMoneWithOnce:@[@7,@6,@4,@3,@1]];
    
//    NSArray *matrix =
//    @[
//      @[@0,@1,@1,@1],
//      @[@1,@1,@1,@1],
//      @[@0,@1,@1,@1]
//     ];
    NSArray *matrix =
    @[
      @[@1,@0,@1],
      @[@1,@1,@0],
      @[@1,@1,@0]
     ];
    NSInteger count = [self getRectangleCountWithArr:matrix];
    NSLog(@"%ld", count);

    [self stackPush:1];                 // queue 1 queue 2
    NSLog(@"%ld", [self stackPop]);     // 1
    NSLog(@"%d", [self stackIsEmpty]);  // 0
    [self stackPush:2];                 // 2        null
    [self stackPush:3];                 // 3 2      null
    NSLog(@"%ld", [self stackPop]);     // 3
    [self stackPush:4];                 // 3 4
    
//    NSInteger maxWater = [self getMaxWaterWithArr:@[@1,@8,@6,@2,@5,@4,@8,@3,@7]];
//    NSLog(@"%ld", maxWater);
    
//    NSString *commonStr = [self getCommonPrefixStr:@[@"flower",@"flow",@"flight"]];
//    NSLog(@"%@", commonStr);
    
//    [self getAllCombines:@"23"];
    
    NSArray *targetArr = [self getAllNumArr:@[@2,@3,@5,@8] target:8];
    NSLog(@"%@", targetArr);
    
    [self rotateMatrix:@[
        @[@1, @2, @3].mutableCopy,
        @[@4, @5, @6].mutableCopy,
        @[@7, @8, @9].mutableCopy
    ].mutableCopy];
    
    [self spiralSort:@[
        @[@1, @2, @3],
        @[@4, @5, @6],
        @[@7, @8, @9],
    ]];
    
    [self mergeSize:@[@[@1,@3],@[@2,@6],@[@8,@10],@[@15,@18]].mutableCopy];
    
    NSInteger pathMin = [self getMinNumPath:@[@[@1, @2, @3].mutableCopy,
    @[@4, @5, @6].mutableCopy].mutableCopy];
    NSLog(@"%ld", pathMin);
    
    BOOL canJump = [self canJump:@[@3,@2,@1,@0,@4]];
    NSLog(@"%d", canJump);
    
    [self getSubArr:@[@1, @2, @3]];
    
    
    [self caculateSum1:3];
    NSLog(@"%d", self.resultSum);
    
    [self findThreeNumClose:@[@(-1), @2, @1, @(-4)].mutableCopy andTarget:2];
    
    NSArray *findArr = @[@3,@2,@1,@5,@6,@4];//@[@3,@2,@3,@1,@2,@4,@5,@5,@6];
    [self nowQuickSort:findArr.mutableCopy leftIndex:0 rightIndex:findArr.count-1 targeIndex:4];
    
    [self mergeTwoArr:@[@7,@8,@9,@0,@0,@0].mutableCopy arr1NowCount:3 arr2:@[@2,@5,@6].mutableCopy];
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
    NSInteger id2 = 1, id3 = 1, id5 = 1;
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

// 获取最大礼物 滚动数组
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
// 则start等于之前已经出现过的位置，max就是当前索引-start+1  @"pwkwkew"
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

// https://leetcode-cn.com/problems/qiu-12n-lcof/solution/mian-shi-ti-64-qiu-1-2-nluo-ji-fu-duan-lu-qing-xi-/
// 短路算法 位运算
- (int)caculateSum1:(int)num {
    ((num > 1) && ([self caculateSum1:num-1] > 0));

    self.resultSum += num;
    return self.resultSum;
}

// 动态规划
// https://leetcode-cn.com/problems/best-time-to-buy-and-sell-stock-with-transaction-fee/
// prices = [1, 3, 2, 8, 4, 9], fee = 2(手续费)
- (NSInteger)getMaxMoney:(NSArray *)arr andFee:(NSInteger)fee {
    // 分两种情况，这一天结束没有股票或者有股票
    NSMutableArray *moneyArr = @[@0,@0].mutableCopy;
    moneyArr[0] = @0;
    moneyArr[1] = @(-[arr[0]integerValue]);
    for (int i = 1; i < arr.count; i++) {
        // 这里为什么加上arr[i]因为是没有股票，也就是卖出，所以加上这个利润
        moneyArr[0] = @(MAX([moneyArr[0] integerValue], [moneyArr[1] integerValue]+[arr[i] integerValue]-fee));
        moneyArr[1] = @(MAX([moneyArr[1] integerValue], [moneyArr[0] integerValue]-[arr[i] integerValue]));
    }
    return [moneyArr[0] integerValue];
}

// 股票价格 https://leetcode-cn.com/problems/best-time-to-buy-and-sell-stock-ii/
// 这个是无手续费 给定一个数组，它的第 i 个元素是一支给定股票第 i 天的价格。
// 贪心算法 只要天的价格比今天的大就今天买入，明天卖 多次买卖
- (NSInteger)getMaxMoneyWithArr:(NSArray *)arr {
    NSInteger max = 0;
    for (int i = 1; i < arr.count; i++) {
        if ([arr[i-1] integerValue] < [arr[i] integerValue]) {
            max += [arr[i] integerValue] - [arr[i-1] integerValue];
        }
    }
    return max;
}

// 给定一个数组 prices ，它的第 i 个元素 prices[i] 表示一支给定股票第 i 天的价格。
//你只能选择 某一天 买入这只股票，并选择在 未来的某一个不同的日子 卖出该股票。设计一个算法来计算你所能获取的最大利润。
// https://leetcode-cn.com/problems/best-time-to-buy-and-sell-stock
// 思路：动态规划 MAX(前i-1天的最大收益，第i天的价格-前i-1天中的最小价格)
- (NSInteger)getMaxMoneWithOnce:(NSArray *)arr {
    if (!arr || arr.count == 0) {
        return 0;
    }
    NSInteger min = [arr.firstObject integerValue];
    NSMutableArray *dpArr = [NSMutableArray arrayWithCapacity:arr.count];
    dpArr[0] = @(0);
    for (int i = 1; i < arr.count; i++) {
        dpArr[i] = @(MAX([dpArr[i-1] integerValue], [arr[i] integerValue]-min));
        min = MIN(min, [arr[i] integerValue]);
    }
    return [dpArr[arr.count-1] integerValue];
}



// 统计全为 1 的正方形子矩阵
// https://leetcode-cn.com/problems/count-square-submatrices-with-all-ones/
// https://leetcode-cn.com/problems/maximal-square/ // 这个是最大的边长求面积
- (NSInteger)getRectangleCountWithArr:(NSArray *)arr {
    NSInteger count = 0;
    NSInteger maxLength = 0;
    NSMutableArray *dpArrr = @[[arr[0]mutableCopy], [arr[1]mutableCopy], [arr[2]mutableCopy]].mutableCopy;
    for (int i = 0; i < arr.count; i++) {
        for (int j = 0; j < [arr[0] count]; j++) {
            if ([arr[i][j] integerValue] == 1) {
                if (i >= 1 && j >= 1) {
                    dpArrr[i][j] = @(MIN(MIN([dpArrr[i-1][j]integerValue], [dpArrr[i-1][j-1]integerValue]), [dpArrr[i][j-1]integerValue]) + 1);
                    maxLength = MAX(maxLength,[dpArrr[i][j] integerValue]);
                }
                count += [dpArrr[i][j] integerValue];
            }
        }
    }
    NSLog(@"最大面积为；%ld", maxLength*maxLength);
    return count;
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
// 1 2 3 4 5
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

// 两个队列实现一个栈
// 思路：https://leetcode-cn.com/problems/implement-stack-using-queues/solution/
// 用一个辅助队列queue2来进行增加元素，再查看queue1中是否还有元素，如果有就把queue1里的元素都从头pop到queue2中
// 交换两个队列，pop的时候都是从queue1中进行pop
- (void)stackPush:(NSInteger)num {
    [_queue2 addObject:@(num)];
    while (_queue1.count != 0) {
        NSNumber *top = [_queue1 firstObject];
        [_queue2 addObject:top];
        [_queue1 removeObject:top];
    }
    NSMutableArray *temp = _queue2;
    _queue2 = _queue1;
    _queue1 = temp;
}

- (NSInteger)stackPop {
    NSNumber *top = _queue1.firstObject;
    [_queue1 removeObject:top];
    return top.integerValue;
}

- (BOOL)stackIsEmpty {
    return _queue1.count == 0;
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
// 求能接多少水 https://leetcode-cn.com/problems/trapping-rain-water/
// 思路：
- (NSInteger)getRain:(NSMutableArray *)arr {
    int res = 0;
    if (arr.count == 0) {
        return 0;
    }
    NSMutableArray *LMaxArr = [NSMutableArray arrayWithCapacity:12];
    NSMutableArray *RMaxArr = @[@0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0, @0].mutableCopy;
    LMaxArr[0] = arr[0];
    RMaxArr[arr.count-1] = arr[arr.count-1];
    // 只需要求第一列和倒数第二列，因为第一列和最后一列接不了水，边上是空的
    for (int i = 1; i < arr.count-1; i++) {
        LMaxArr[i] = @(MAX([LMaxArr[i-1] integerValue], [arr[i-1]integerValue]));
    }
    for (NSInteger i = arr.count-2; i >= 0; i--) {
        RMaxArr[i] = @(MAX([RMaxArr[i+1] integerValue], [arr[i+1]integerValue]));
    }
    for (int i = 1; i < arr.count-1; i++) {
//        NSInteger temp = MIN([LMaxArr[i] integerValue], [RMaxArr[i] integerValue])-[arr[i] integerValue];
        NSInteger temp = MIN([LMaxArr[i] integerValue], [RMaxArr[i] integerValue]);
        if (temp > [arr[i] integerValue]) {
            res += (temp-[arr[i] integerValue]);
        }
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
#pragma mark - 字符串
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

// 给定一个字符串判断最长回文串
// 思路：动态规划，实际上 dp[i][j] 标识 s[i-j]是回文串，特征就是s[i]==s[j]并且dp[i+1][j-1]也是回文串
// 所以拆分较小的思路
- (NSString *)maxhuiwenWithString:(NSString *)str {
    NSMutableArray *tempArr = @[].mutableCopy;
    for (int i = 0 ; i < str.length; i++) {
        [tempArr addObject:@NO];
    }
    NSMutableArray *dp = @[tempArr, tempArr, tempArr, tempArr, tempArr].mutableCopy;
    NSInteger maxLen = 0;
    NSInteger begin = 0;
    for (int i = 1; i < str.length; i++) {
        for (int j = 0; j < i; j++) {
            NSString *subStr1 = [str substringWithRange:NSMakeRange(j, 1)];
            NSString *subStr2 = [str substringWithRange:NSMakeRange(i, 1)];
            if (![subStr1 isEqualToString:subStr2]) {
                dp[j][i] = @NO;
            } else {
                if (i-j < 3) {
                    dp[j][i] = @(true);
                } else {
                    dp[j][i] = dp[j+1][i-1];
                }
            }
            if ([dp[j][i] boolValue] && (i-j+1) >maxLen) {
                maxLen = (i-j+1);
                begin = j;
            }
        }
    }
    return [str substringWithRange:NSMakeRange(begin, maxLen)];
}

// 判断是否是回文串
- (BOOL)juedgeIsHW:(NSString *)str {
    if (!str || str.length == 0) {
        return YES;
    }
    NSInteger left = 0;
    NSInteger right = str.length-1;
    while (left < right) {
        if (![[str substringWithRange:NSMakeRange(left, 1)] isEqualToString:[str substringWithRange:NSMakeRange(right, 1)]]) {
            return false;
        }
        left++;
        right--;
    }
    return YES;
}

// 是否是有效的匹配字符串 (())   ([))
// 思路：用一个栈去保存左括号，当遇到右括号的时候出栈进行比对
- (BOOL)isValidString:(NSString *)str {
    if (!str) {
        return false;
    }
    NSDictionary *dict = @{@"(": @")",
                           @"[": @"]"
    };
    NSMutableArray *stackArr = @[].mutableCopy;
    for (int i = 0; i < str.length; i++) {
        NSString *subStr = [str substringWithRange:NSMakeRange(i, 1)];
        if ([dict.allKeys containsObject:subStr]) {
            [stackArr addObject:subStr];
        } else {
            if (stackArr.count == 0) {
                return false;
            }
            // 这里走的是右面的括号，因为左边的已经入栈了
            if (![stackArr.lastObject isEqualToString:subStr]) {
                return false;
            } else {
                [stackArr removeLastObject];
            }
        }
    }
    return stackArr.count == 0;
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
// 递归调用方案
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

// 非递归方案
- (BinaryTreeNode *)invertBinaryTree:(BinaryTreeNode *)node {
    if (!node) {
        return nil;
    }
    NSMutableArray *pool = @[node].mutableCopy;
    while (pool.count != 0) {
        BinaryTreeNode *topNode = pool.firstObject;
        [pool removeObjectAtIndex:0];
        
        BinaryTreeNode *tempNode = topNode.leftNode;
        topNode.leftNode = topNode.rightNode;
        topNode.rightNode = tempNode;
        
        if (topNode.leftNode) {
            [pool addObject:topNode.leftNode];
        }
        if (topNode.rightNode) {
            [pool addObject:topNode.rightNode];
        }
    }
    return node;
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

// 先序遍历
// https://blog.csdn.net/Z1591090/article/details/103705856
- (void)preorderBinaryTree:(BinaryTreeNode *)root {
    NSMutableArray *res = @[].mutableCopy;
    NSMutableArray *stack = @[].mutableCopy;
    while (root || stack.count > 0) {
        if (root) {
            [res addObject:root];
            [stack addObject:root];
            root = root.leftNode;
        } else {
            BinaryTreeNode *topNode = stack.lastObject;
            root = topNode.rightNode;
            [stack removeObject:topNode];
        }
    }
    NSLog(@"%@", res);
}

// 递归形式
- (void)preOrder:(BinaryTreeNode *)root {
    if (!root) {
        return;
    }
    NSMutableArray *arr = @[].mutableCopy;
    [self helpPreOrder:root arr:arr];
}

- (void)helpPreOrder:(BinaryTreeNode *)root arr:(NSMutableArray *)arr {
    if (root) {
        [arr addObject:root];
        [self helpPreOrder:root.leftNode arr:arr];
        [self helpPreOrder:root.rightNode arr:arr];
    }
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

- (ListNode *)reverseNodeList0:(ListNode *)node {
    if (!node || node.next == nil) {
        return node;
    }
    ListNode *newHead = nil;
    while (node != nil) {
        ListNode *temp = node.next;
        node.next = newHead;
        newHead = node;
        node = temp;
    }
    return newHead;
}

- (ListNode *)reverseNodeList1:(ListNode *)node {
    if (node == nil || node.next == nil) {
        return node;
    }
    ListNode *newHead = [self reverseNodeList1:node.next];
    node.next.next = node;
    node.next = nil;
    return newHead;
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
    while (slow.next != nil && fast.next.next != nil ) {
        fast = fast.next.next;
        slow = slow.next;
        if (fast.value == slow.value) {
            return true;
        }
    }
    return false;
}

// 环形链表的环节点 https://leetcode-cn.com/problems/linked-list-cycle-ii/
// 思路 x为起始点到环的入口点 y为slow的路径
- (ListNode *)findCycleNode:(ListNode *)node {
    ListNode *slow = node;
    ListNode *fast = node;
    while (slow.next != nil && fast.next.next != nil) {
        slow = slow.next;
        fast = fast.next.next;
        if (slow.value == fast.value) {
            ListNode *node1 = slow;
            ListNode *node2 = node;
            while (node1 != node2) {
                node1 = node1.next;
                node2 = node2.next;
            }
            return node2;
        }
    }
    return nil;
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

// 最小的k个数 https://leetcode-cn.com/problems/zui-xiao-de-kge-shu-lcof/
// eg: [self nowQuickSort:findArr.mutableCopy leftIndex:0 rightIndex:findArr.count-1 targeIndex:4]

// 数组中的第K个最大元素 https://leetcode-cn.com/problems/kth-largest-element-in-an-array/
// eg: [self nowQuickSort:findArr.mutableCopy leftIndex:0 rightIndex:findArr.count-1 targeIndex:findArr.count-4]
- (void)nowQuickSort:(NSMutableArray *)arr leftIndex:(int)leftIndex rightIndex:(int)rightIndex targeIndex:(int)targetIndex {
    if (leftIndex >= rightIndex) {
        return;
    }
    int i = [self partitionArr:arr low:leftIndex hight:rightIndex];
    if (i == targetIndex) {
        NSLog(@"%@", [arr subarrayWithRange:NSMakeRange(0, i)]);
        NSLog(@"%@", arr[i]);
        return;
    }
    if (i > targetIndex) { // 超过了所以就从i的左边开始查找
        [self nowQuickSort:arr leftIndex:leftIndex rightIndex:i-1 targeIndex:targetIndex];
    } else { // 从i的右边开始查找
        [self nowQuickSort:arr leftIndex:i+1 rightIndex:rightIndex targeIndex:targetIndex];
    }
}


// 找到下一个更大的数字 452631
// https://leetcode-cn.com/problems/next-permutation/
- (void)getNextBigNum:(NSMutableArray *)arr {
    NSInteger i = arr.count-2;
    // 找到一个左边较小的数字
    while (i >= 0 && [arr[i] integerValue] > [arr[i+1] integerValue]) {
        i--;
    }
    if (i >= 0) {
        NSInteger j = arr.count-1;
        while ([arr[i] integerValue] > [arr[j] integerValue]) {
            j--;
        }
        NSNumber *temp = arr[i];
        arr[i] = arr[j];
        arr[j] = temp;
    }
    // 升序i后面的顺序 下一个大的数字一定要小一点，因为交换完后面就是升序，双指针交换一下位置即可
    [self reverseArr:arr beginIndex:i+1];
    NSLog(@"%@", arr);
}

- (void)reverseArr:(NSMutableArray *)arr beginIndex:(NSInteger)beginIndex {
    NSInteger endIndex = arr.count-1;
    while (beginIndex < endIndex) {
        NSNumber *temp = arr[endIndex];
        arr[endIndex] = arr[beginIndex];
        arr[beginIndex] = temp;
        beginIndex++;
        endIndex--;
    }
}

// 盛最多的水
//https://leetcode-cn.com/problems/container-with-most-water/
- (NSInteger)getMaxWaterWithArr:(NSArray *)arr {
    if (!arr || arr.count <= 1) {
        return 1;
    }
    NSInteger begin = 0;
    NSInteger end = arr.count-1;
    NSInteger max = 0;
    while (begin < end) {
        NSInteger height = MIN([arr[begin] integerValue], [arr[end] integerValue]);
        max = MAX(max, height*(end-begin));
        if ([arr[begin] integerValue] < [arr[end] integerValue]) {
            begin++;
        } else {
            end--;
        }
    }
    return max;
}

// 获取最长公共子串
// https://leetcode-cn.com/problems/longest-common-prefix/
- (NSString *)getCommonPrefixStr:(NSArray *)arr {
    NSString *firstS = arr.firstObject;
    for (NSString *str in arr) {
        while (![str hasPrefix:firstS]) {
            if (firstS.length == 0) {
                return @"";
            }
            firstS = [firstS substringToIndex:firstS.length-1];
        }
    }
    return firstS;
}

// 所有字符串类型回溯 2:abc 3:def
// https://leetcode-cn.com/problems/letter-combinations-of-a-phone-number/solution/dian-hua-hao-ma-de-zi-mu-zu-he-by-leetcode-solutio/
- (void)getAllCombines:(NSString *)str {
    NSDictionary *map = @{@"2":@"abc",
                          @"3":@"def",
                          @"4":@"ghi"
    };
    NSMutableArray *resultArr = @[].mutableCopy;
    [self backTraceWithIndex:0 map:map resultArr:resultArr letters:@"" digist:@"23"];
    NSLog(@"%@", resultArr);
}

- (void)backTraceWithIndex:(NSInteger)index map:(NSDictionary *)map resultArr:(NSMutableArray *)arr letters:(NSString *)lett digist:(NSString *)digist {
    if (index == digist.length) {
        [arr addObject:lett];
    } else {
        NSString *temp = map[[digist substringWithRange:NSMakeRange(index, 1)]];
        for (int i = 0; i < temp.length; i++) {
            NSString *subTemp = [temp substringWithRange:NSMakeRange(i, 1)];
            lett = [lett stringByAppendingString:subTemp];
            [self backTraceWithIndex:index+1 map:map resultArr:arr letters:lett digist:digist];
            lett = [lett substringToIndex:lett.length-1];
        }
    }
}

// 获取数组内元素等于targe，每个元素可重复使用
// https://leetcode-cn.com/problems/combination-sum/    组合总和
- (NSArray *)getAllNumArr:(NSArray *)arr target:(NSInteger)target {
    if (!arr) {
        return nil;
    }
    NSMutableArray *path = @[].mutableCopy;
    NSMutableArray *result = @[].mutableCopy;
    [self DFSAllNum:arr target:target begin:0 path:path result:result];
    return result.copy;
}

- (void)DFSAllNum:(NSArray *)arr target:(NSInteger)target begin:(NSInteger)begin path:(NSMutableArray *)path result:(NSMutableArray *)result {
    if (target < 0) {
        return;
    }
    if (target == 0) {
        [result addObject:path.copy];
        return;
    }
    for (NSInteger i = begin; i < arr.count; i++) {
        [path addObject:arr[i]];
        [self DFSAllNum:arr target:target-[arr[i] integerValue] begin:i path:path result:result];
        [path removeLastObject];
    }
}

// 两两交换  https://leetcode-cn.com/problems/swap-nodes-in-pairs/
// 递归规则：先找出停止条件，最后的返回结果，其实就是三个点，head node=head.next node.next
- (ListNode *)swapPair:(ListNode *)node {
    if (!node || node.next == nil) {
        return node;
    }
    ListNode *next = node.next;
    node.next = [self swapPair:next.next];
    next.next = node;
    return next;
}

// 顺时针旋转90°
// https://leetcode-cn.com/problems/rotate-image/
// 思路：先上下翻转，然后对角线交换
- (NSArray *)rotateMatrix:(NSMutableArray *)matrix {
    for (int i = 0; i < matrix.count/2; i++) {
        NSArray *temp = matrix[i];
        matrix[i] = matrix[matrix.count-i-1];
        matrix[matrix.count-i-1] = temp;
    }
    
    for (int i = 0; i < matrix.count; i++) {
        for (int j = i; j < matrix.count; j++) {
            NSNumber *temp = matrix[i][j];
            matrix[i][j] = matrix[j][i];
            matrix[j][i] = temp;
        }
    }
    return matrix;
}

// 螺旋旋转 https://leetcode-cn.com/problems/spiral-matrix/
// 外层顺时针排序打印数组
- (NSArray *)spiralSort:(NSArray *)arr {
    NSInteger top = 0;
    NSInteger bottom = arr.count-1;
    NSInteger left = 0;
    NSInteger right = [arr.firstObject count]-1;
    NSMutableArray *result = @[].mutableCopy;
    while (true) {
        for (NSInteger i = left; i <= right; i++) {
            [result addObject:arr[top][i]];
        }
        if (++top > bottom) {
            break;
        }
        for (NSInteger i = top; i <= bottom; i++) {
            [result addObject:arr[i][right]];
        }
        if (--right < left) {
            break;
        }
        for (NSInteger i = right; i >= left; i--) {
            [result addObject:arr[bottom][i]];
        }
        if (--bottom < top) {
            break;
        }
        for (NSInteger i = bottom; i >= top; i--) {
            [result addObject:arr[i][left]];
        }
        if (++left > right) {
            break;
        }
    }
    return result.copy;
}

// 合并区间  https://leetcode-cn.com/problems/merge-intervals/
- (NSArray *)mergeSize:(NSMutableArray *)arr {
    NSMutableArray *result = @[].mutableCopy;
    [arr sortUsingComparator:^NSComparisonResult(NSArray *obj1, NSArray *obj2) {
       return [obj1[0] integerValue] > [obj2[0] integerValue];
    }];
    
    for (NSInteger i = 0; i < arr.count; i++) {
        NSInteger left = [arr[i][0] integerValue];
        NSInteger right = [arr[i][1] integerValue];
        if (result.count == 0 || [result.lastObject[1] integerValue] < left) {
            [result addObject:@[@(left), @(right)].mutableCopy];
        } else {
            result.lastObject[1] = @(MAX([result.lastObject[1] integerValue], right));
        }
    }
    return result.copy;
}

// 从左上角到右下角最小路径总和，也就是通过动态规划
// https://leetcode-cn.com/problems/minimum-path-sum/
- (NSInteger)getMinNumPath:(NSMutableArray *)arr {
    NSInteger column = [arr.firstObject count];
    NSInteger row = arr.count;
    
    for (int i = 1; i < row; i++) {
        arr[i][0] = @([arr[i][0] integerValue] + [arr[i-1][0]integerValue]);
    }
    
    for (int j = 1; j < column; j++) {
        arr[0][j] = @([arr[0][j] integerValue] + [arr[0][j-1] integerValue]);
    }
    for (int i = 1; i < row; i++) {
        for (int j = 1; j < column; j++) {
            NSInteger topTemp = [arr[i][j-1] integerValue];
            NSInteger leftTemp = [arr[i-1][j] integerValue];
            arr[i][j] = @([arr[i][j] integerValue] + MIN(topTemp, leftTemp));
        }
    }
    return [arr[row-1][column-1] integerValue];
}

// https://www.jianshu.com/p/fd07e67b2f77
// 思路：从最后往前遍历，因为到NSObject一定是一样的
// 获取公共父视图：就是一直调用superview，然后其中一个使用NSSet初始化后，从前开始遍历另一个数组，当不包含之后就是
- (Class)findComonClass:(Class)oneClass two:(Class)twoClass {
    NSArray *oneArr = [self findSuperClassArr:oneClass];
    NSArray *twoArr = [self findSuperClassArr:twoClass];
    NSInteger count = oneArr.count < twoArr.count?oneArr.count:twoArr.count;
    Class tempClass;
    for (int i = 0; i < count; i++) {
        Class oneTemp = oneArr[oneArr.count-i-1];
        Class twoTemp = twoArr[twoArr.count-i-1];
        if (oneTemp == twoTemp) {
            tempClass = oneClass;
        } else {
            break;
        }
    }
    return tempClass;
}

- (NSMutableArray *)findSuperClassArr:(Class)cls {
    if (!cls) {
        return nil;
    }
    NSMutableArray *classArr = @[].mutableCopy;
    while (cls != nil) {
        [classArr addObject:cls];
        cls = [cls superclass];
    }
    return classArr;
}

// 阶乘
- (NSInteger)jiechengWithNum:(NSInteger)num {
    if (num == 0) {
        return 1;
    }
    if (num > NSIntegerMax) {
        return 1;
    }
    NSInteger result = 1;
    for (int i = 1; i <= num; i++) {
        result *= i;
    }
    return result;
}

// 从数组中查找三个值相加为0的结果
// 是需要先排序，所以就是如果排序后第一个值大于0了也就直接return不可能等于0
- (void)findThreeNumWith:(NSArray *)arr {
    NSMutableSet *set = [NSMutableSet set];
    for (int i = 0 ; i < arr.count; i++) {
        if ([arr[i] integerValue] > 0) {// 因为排序后如果第一个都大于0.就不可能有=0的了
            return ;
        }
        NSInteger left = i+1;
        NSInteger right = arr.count-1;
        while (left < right) {
            NSInteger tempNum = [arr[i] integerValue] + [arr[left] integerValue] + [arr[right] integerValue];
            if (tempNum == 0) {
                [set addObject:@[arr[i], arr[left], arr[right]]];
                left++;
                right--;
            } else if (tempNum > 0) {
                right--;
            } else {
                left++;
            }
        }
    }
    NSLog(@"%@", set);
}

// 寻找数组中三个数的和最接近targe
// for循环的i为什么减2，因为要保证是三个数的和
// https://leetcode-cn.com/problems/3sum-closest/
- (NSInteger)findThreeNumClose:(NSMutableArray *)arr andTarget:(NSInteger)targetNum {
    [arr sortUsingComparator:^NSComparisonResult(NSNumber *obj1, NSNumber *obj2) {
        return obj1.integerValue > obj2.integerValue;
    }];
    NSInteger currentCloseNum = [arr[0] integerValue] + [arr[1] integerValue] + [arr[2]integerValue];
    for (int i = 0; i < arr.count-2; i++) {
        NSInteger begin = i+1;
        NSInteger end = arr.count-1;
        while (begin < end) {
            NSInteger tempSum = [arr[i] integerValue] + [arr[begin] integerValue] + [arr[end] integerValue];
            if (labs(tempSum-targetNum) < labs(currentCloseNum-targetNum)) {
                currentCloseNum = tempSum;
            }
            if (tempSum == targetNum) {
                return targetNum;
            } else if (tempSum > targetNum) {
                end--;
            } else {
                begin++;
            }
        }
    }
    return currentCloseNum;
}

// 最长递增子序列 https://leetcode-cn.com/problems/longest-increasing-subsequence/
// 给你一个整数数组 nums ，找到其中最长严格递增子序列的长度。
- (NSInteger)findMaxAesArr:(NSArray *)arr {
    NSMutableArray *dpArr = [NSMutableArray arrayWithCapacity:arr.count];
    dpArr[0] = @(1);
    NSInteger max = 1;
    for (int i = 1; i < arr.count; i++) {
        dpArr[i] = @(1);
        for (int j = 0; j < i; j++) {
            if ([arr[i] integerValue] > [arr[j] integerValue]) {
                dpArr[i] = @(MAX([dpArr[i] integerValue], [dpArr[j] integerValue]+1));
            }
        }
        max = MAX(max, [dpArr[i] integerValue]);
    }
    return max;
}

// 判断完全二叉树，也就是层序遍历，不能出现left是nil，right有值的情况
- (BOOL)judgeIsComplateBinary:(BinaryTreeNode *)root {
    NSMutableArray *queueArr = @[].mutableCopy;
    [queueArr addObject:root];
    BinaryTreeNode *cur = nil;
    while ((cur = queueArr.firstObject) != nil) {
        [queueArr removeObjectAtIndex:0];
        [queueArr addObject:cur.leftNode];
        [queueArr addObject:cur.rightNode];
    }
    while (queueArr.count > 0) {
        cur = queueArr.lastObject;
        if (cur != nil) {
            return false;
        }
    }
    return true;
}

// 获取两个数组的交集
- (NSArray *)getIntersect:(NSArray *)arr1 arr2:(NSArray *)arr2 {
    NSMutableSet *set = [NSMutableSet setWithArray:arr1];
    NSMutableArray *result = @[].mutableCopy;
    for (int i = 0; i < arr2.count; i++) {
        if ([set containsObject:arr2[i]]) {
            [result addObject:arr2[i]];
        }
    }
    return result;
}

- (void)changeNum:(NSInteger)num1 num2:(NSInteger)num2 {
    num1 = num1+ num2;
    num2 = num1-num2;
    num1 = num1-num2;
    NSLog(@"%ld, %ld", num1, num2);
}

// 传入一个字符串，每隔2k个距离反转前k个字符
- (void)reverseStr:(NSString *)str k:(int)k {
    for (int i = 0; i < str.length; i += 2*k) {
        NSInteger end = (i+k > str.length)?str.length:(i+k);
        NSInteger begin = i;
        // 进行这两个位置的交换
    }
}

// 是否是对称二叉树
- (void)isSymmetricBinaryTree:(BinaryTreeNode *)root {
    [self helpSymmetric:root qNode:root];
}

- (BOOL)helpSymmetric:(BinaryTreeNode *)p qNode:(BinaryTreeNode *)q {
    if (p == nil && q == nil) {
        return YES;
    }
    if (p == nil || q == nil) {
        return  false;
    }
    if (p.value == q.value) {
        return [self helpSymmetric:p.rightNode qNode:q.leftNode] &&
        [self helpSymmetric:p.leftNode qNode:q.rightNode];
    }
    return false;
}

// 逆序对数，只要前面的大于后面的就为一个逆序对
- (NSInteger)getReverseCountWithArr:(NSArray *)arr {
    NSInteger count = 0;
    for (int i = 0; i < arr.count; i++) {
        NSInteger temp = [arr[i] integerValue];
        for (int j = i+1; j < arr.count; j++) {
            if (temp > [arr[j] integerValue]) {
                count++;
            }
        }
    }
    return count;
}

// 能否到达最终点 数组中的每个元素代表你在该位置可以跳跃的最大长度
// 思路：贪心算法，计算当前位置的最远距离大于最后的一个位置就代表可以
// https://leetcode-cn.com/problems/jump-game/
- (BOOL)canJump:(NSArray *)arr {
    if (!arr || arr.count == 0) {
        return true;
    }
    NSInteger maxLength = 0;
    for (int i = 0; i < arr.count; i++) {
        if (i <= maxLength) {
            maxLength = MAX(maxLength, i + [arr[i] integerValue]);
        }
        if (maxLength > arr.count-1) {
            return true;
        }
    }
    return false;
}

// 简化路径 思路用栈
// https://leetcode-cn.com/problems/simplify-path/
- (NSString *)getResultPath:(NSString *)path {
    if (!path || path.length == 0) {
        return nil;
    }
    NSMutableArray *stackArr = @[].mutableCopy;
    NSArray *pathArr = [path componentsSeparatedByString:@"/"];
    NSArray *tempArr = @[@"", @".", @".."];
    for (NSString *str in pathArr) {
        if (![tempArr containsObject:str]) {
            [stackArr addObject:str];
        } else if (tempArr.count > 0 && [str isEqualToString:@".."]) {
            [stackArr removeLastObject];
        }
    }
    return [NSString stringWithFormat:@"/%@", [stackArr componentsJoinedByString:@"/"]];
}

// 获取子幂集  https://leetcode-cn.com/problems/subsets/
// 思路：空集的子集就是一个空集，而每新增一个元素，就拿之前的子集加上这个元素就是一个新子集
- (NSArray *)getSubArr:(NSArray *)arr {
    NSMutableArray *resultArr = @[].mutableCopy;
    [resultArr addObject:@[].mutableCopy];
    for (int i = 0; i < arr.count; i++) {
        NSInteger resultCount = resultArr.count;
        for (int j = 0; j < resultCount; j++) {
            NSMutableArray *temp = [resultArr[j] mutableCopy];
            [temp addObject:arr[i]];
            [resultArr addObject:temp];
        }
    }
    return resultArr.copy;
}

// https://www.cnblogs.com/laolei11/p/11881427.html
// https://blog.csdn.net/lym940928/article/details/91420069
// 二叉树的下一个结点，给定一个二叉树的某一个结点，找出中序遍历的下一个结点
// 思路：先看看有没有右孩子，有的话下一个结点就是右孩子的最左结点
// 如果没有右孩子，则看他与父节点的关系，如果是父节点的左孩子，则父节点就是下一个结点
// 否则向上查找父节点，当父节点是父父节点的左孩子时，则父父节点就是下一个结点
- (BinaryTreeNode *)findNextNodeFromP:(BinaryTreeNode *)node {
    if (!node) {
        return nil;
    }
    BinaryTreeNode *rightNode = node.rightNode;
    // 右孩子不为空
    if (rightNode) {
        while (rightNode.leftNode != nil) {
            rightNode = rightNode.leftNode;
        }
        return rightNode;
    }
    
    BinaryTreeNode *parentNode = node.parentNode;
    while (parentNode && parentNode.leftNode != node) {
        node = parentNode;
        parentNode = parentNode.parentNode;
    }
    return parentNode;
}


// 合并两个有序的数组  https://leetcode-cn.com/problems/merge-sorted-array/
// [self mergeTwoArr:@[@7,@8,@9,@0,@0,@0].mutableCopy arr1NowCount:3 arr2:@[@2,@5,@6].mutableCopy]
- (void)mergeTwoArr:(NSMutableArray *)arr1 arr1NowCount:(NSInteger)nowCount arr2:(NSMutableArray *)arr2 {
    NSInteger oneCount = nowCount-1;
    NSInteger twoCount = arr2.count-1;
    NSInteger allCount = arr1.count-1;
    while (oneCount >= 0 && twoCount >= 0) {
        if ([arr1[oneCount] integerValue] > [arr2[twoCount] integerValue]) {
            arr1[allCount--] = arr1[oneCount--];
        } else {
            arr1[allCount--] = arr2[twoCount--];
        }
    }
    while (twoCount >= 0) {
        arr1[allCount--] = arr2[twoCount--];
    }
    NSLog(@"%@", arr1);
}

// 删除排序链表中的重复元素 https://leetcode-cn.com/problems/remove-duplicates-from-sorted-list/
// 1->1->2->3
- (ListNode *)deleteDupliteNode:(ListNode *)node {
    ListNode *head = node;
    while (node != nil && node.next != nil) {
        if (node.value == node.next.value) {
            node.next = node.next.next;
        } else {
            node = node.next;
        }
    }
    return head;
}
@end
