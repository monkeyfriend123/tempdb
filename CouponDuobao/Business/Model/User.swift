//
//  User.swift
//  CouponDuobao
//
//  Created by GSDN on 2017/6/2.
//  Copyright © 2017年 GSDN. All rights reserved.
//

import Foundation
import ObjectMapper

class User: BaseModel{
    var name: String?
    
    
    override func mapping(map: Map) {
        name <- map["name"]
    }
}
