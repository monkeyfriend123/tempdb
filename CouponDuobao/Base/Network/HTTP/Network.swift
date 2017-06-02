//
//  Network.swift
//  CouponDuobao
//
//  Created by GSDN on 2017/6/2.
//  Copyright © 2017年 GSDN. All rights reserved.
//

import Foundation
import Alamofire

/**
 * 接口返回的结果
 */
enum Response<T:BaseModel>{
    case success(Result<T>)
    case error(error: Error)
}

typealias JSONDictionary = [String:String]
typealias JSONObject = [String:AnyObject]

func decodeJSON(_ data: NSData) -> JSONObject{
    
    if let json = try? JSONSerialization.jsonObject(with: data as Data, options: []),
        let result = json as? JSONObject {
        return result
    } else{
        return [:]
    }
}

/**
 * 接口调用参数
 */
public struct Resource<A> {
    let path: String
    let method: Method
    let requestBody: NSData?
    let headers: JSONDictionary
    let parse: (NSData) -> A?
    
    public var description: String {
        let decodeRequestBody: JSONObject
        if let requestBody = requestBody {
            decodeRequestBody = decodeJSON(requestBody)
        } else {
            decodeRequestBody = [:]
        }
        
        return "Resource(Method: \(method), path: \(path), headers: \(headers), requestBody: \(decodeRequestBody))"
    }
}


struct NetWork{
    static let `default`: NetWork = {
        let network = NetWork()
        return network
    }()
    
    func test(){
        request("").responseJSON { (response) in
            
        }
    }
    
}
