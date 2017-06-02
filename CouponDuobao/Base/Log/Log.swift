//
//  Log.swift
//  CouponDuobao
//  控制台输入日志
//  Created by GSDN on 2017/6/2.
//  Copyright © 2017年 GSDN. All rights reserved.
//

import Foundation

struct Log{
    
    /**
     * 控制台输出消息
     */
    static func log(_ msg: Any...){
        #if DEBUG
            print(msg)
        #endif
    }
}
