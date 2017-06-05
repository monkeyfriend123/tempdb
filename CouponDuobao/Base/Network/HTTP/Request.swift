//
//  Request.swift
//  CouponDuobao
//
//  Created by js on 2017/6/4.
//  Copyright © 2017年 GSDN. All rights reserved.
//

import Foundation
import Alamofire
import ObjectMapper
/**
 * 接口调用参数
 */
public struct Resource<A: BaseModelMappable>:CustomStringConvertible {
    let path: String
    let method: RequestMethod
    let requestBody: JSONObject?
    let headers: JSONDictionary?
    let parse: (JSONObject) -> A?
    
    public var description: String {
    
        return "Resource(Method: \(method), path: \(path), headers: \(String(describing: headers)), requestBody: \(String(describing: requestBody)))"
    }
    
    init(path: String, method: RequestMethod = .post,
         requestBody: JSONObject?,headers: JSONDictionary? = nil,
         parse: @escaping ((JSONObject) -> A?) = Parse.parseToModel){
        self.path = path
        self.method = method
        self.requestBody = requestBody
        self.headers = headers
        self.parse = parse
    }
}


public struct Context: MapContext {
    var importantMappingInfo = "Info that I need during mapping"
}

public struct Parse{
    static let context = Context()
    
    public static func parseToModel<A:BaseModelMappable>(json:JSONObject) -> A?{
        let object = Mapper<A>(context: Parse.context).map(JSON:json)
        return object
    }
}
