//
//  Result.swift
//  CouponDuobao
//
//  Created by GSDN on 2017/6/2.
//  Copyright © 2017年 GSDN. All rights reserved.
//

import Foundation
import ObjectMapper

/*
 * 自定义一个协议提供 init?(map: Map)
 * 所有modal 必须是类,值类型赋值会改变，容易出错
 */
protocol CommonMappable: class, Mappable {
    
}

class Result<T: CommonMappable>: CommonMappable {
    var result: T?
    
    required init?(map: Map){
        
    }
    
    func mapping(map: Map) {
        result <- map["result"]
    }
}
