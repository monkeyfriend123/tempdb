//
//  Test.m
//  CouponDuobao
//
//  Created by GSDN on 2017/6/6.
//  Copyright © 2017年 GSDN. All rights reserved.
//

#import "Test.h"

@implementation Test
- (instancetype)initWithString:(NSString *)str{
    self = [super init];
    if (self){
        self.str = str;
    }
    return self;
}


- (void)showTest{
    NSLog(@"str %@",self.str);
}

+ (void)staticTest{
    NSLog(@"static test");
}
@end
