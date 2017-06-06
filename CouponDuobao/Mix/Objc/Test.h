//
//  Test.h
//  CouponDuobao
//
//  Created by GSDN on 2017/6/6.
//  Copyright © 2017年 GSDN. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Test : NSObject
@property (nonatomic, copy) NSString *str;

- (instancetype)initWithString:(NSString *)str;

- (void)showTest;

+ (void)staticTest;
@end
