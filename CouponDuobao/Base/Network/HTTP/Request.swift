//
//  Request.swift
//  CouponDuobao
//
//  Created by js on 2017/6/4.
//  Copyright © 2017年 GSDN. All rights reserved.
//

import Foundation
import Alamofire
/**
 * 接口调用参数
 */
public struct Resource<A>:CustomStringConvertible {
    let path: String
    let method: RequestMethod
    let requestBody: JSONObject?
    let headers: JSONDictionary?
    let parse: (JSONObject) -> A?
    
    public var description: String {
    
        return "Resource(Method: \(method), path: \(path), headers: \(String(describing: headers)), requestBody: \(String(describing: requestBody)))"
    }
}
