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
    // ------分---割---线------
        
    // Messageing (Objective-C)
    Object *obj = [Object new];
    [obj performWith: parameter1 and: parameter2];
    
    // Function calling (C++)
    Object *obj = new Object;
    obj->perform(parameter1, parameter2);

    NSString *someString = @"The Strting";
    NSString *anotherString = someString;

    CGRect frame;
    frame.origin.x = 0.0f;
    frame.origin.y = 10.0f;
    frame.size.width = 100.0f;
    frame.size.height = 150.0f;

    struct CGRect {
        CGPoint origin;
        CGSize size;
    };
    typedef struct CGRect CGRect;
}


@end
