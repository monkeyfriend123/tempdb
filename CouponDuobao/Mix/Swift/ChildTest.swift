//
//  ChildTest.swift
//  CouponDuobao
//
//  Created by GSDN on 2017/6/6.
//  Copyright © 2017年 GSDN. All rights reserved.
//

import Foundation

class ChildTest: Test{
    var str2: String
    
    init(str: String,str2: String){
        self.str2 = str2
        super.init(string: str)
    }
    
    override func show() {
        print("str \(str) str2 \(str2)")
    }
}
