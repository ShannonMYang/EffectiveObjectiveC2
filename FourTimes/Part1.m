//
//  Part1.m
//  TestOC52
//
//  Created by 11146 on 2023/8/7.
//

#import "Part1.h"

@interface Part1 ()

@end

@implementation Part1

- (void)viewDidLoad {
    [super viewDidLoad];
    
    ^{
        // Block implementation here
    };
    
    void (^someBlock)(void) = ^{
        // Block implementation here
        NSLog(@"一个平平无奇的午餐无返回值Block");
    };
    someBlock();
    
    NSLog(@"----------分-----割-----线----------");
    
    int (^addBlock)(int a, int b) = ^(int a, int b){
        return a + b;
    };
    
    int add = addBlock(2, 5);
    NSLog(@"%d", add);
    
    NSLog(@"----------分-----割-----线----------");
    
    int additional = 5;
    int (^addBlockOne)(int a, int b) = ^(int a, int b) {
        return a + b + additional;
    };
    int addOne = addBlockOne(2, 5);
    NSLog(@"%d", addOne);
    
    NSLog(@"----------分-----割-----线----------");
    
    NSArray *array = @[@0, @1, @2, @3, @4, @5];
    __block NSInteger count = 0;
    [array enumerateObjectsUsingBlock:^(NSNumber*  _Nonnull number, NSUInteger idx, BOOL * _Nonnull stop) {
        if ([number compare:@2] == NSOrderedAscending) {
            count++;
        }
    }];
    NSLog(@"%ld", (long)count);
    
    NSLog(@"----------分-----割-----线----------");
    
    void (^block) ();
    if (/* some condition */) {
        block = [^ {
            NSLog(@"Block A");
        } copy];
    } else {
        block = [^ {
            NSLog(@"Block B");
        } copy];
    }
    block();
}


@end
