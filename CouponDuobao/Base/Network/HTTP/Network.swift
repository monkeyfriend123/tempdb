//
//  Network.swift
//  CouponDuobao
//
//  Created by GSDN on 2017/6/2.
//  Copyright © 2017年 GSDN. All rights reserved.
//

import Foundation
import Alamofire

public typealias JSONDictionary = [String:String]
public typealias JSONObject = [String:Any]
public typealias RequestMethod = HTTPMethod

func decodeJSON(_ data: NSData) -> JSONObject{
    if let json = try? JSONSerialization.jsonObject(with: data as Data, options: []),
        let result = json as? JSONObject {
        return result
    } else{
        return [:]
    }
}


struct NetWork{
    static let `default`: NetWork = {
        let network = NetWork()
        return network
    }()
    
    
    func validResource<A>(resource: Resource<A>) -> Bool{
        return true
    }
    
    func apiRequest<A:BaseModelMappable>(resource: Resource<A>) -> RequestWrapper<A>?{
        if validResource(resource: resource){
            let responseWrapper = RequestWrapper<A>()
            
            let dataRequest = Alamofire.request(resource.path, method: resource.method, parameters: resource.requestBody,headers: resource.headers)
            responseWrapper.dataRequest = dataRequest
            
            var response: Response<A>?
            dataRequest.responseJSON(completionHandler: { (dataResponse: DataResponse) in
                if dataResponse.result.isFailure {
                    response = .error(error: dataResponse.result.error)
                    responseWrapper.response = response
                } else {
                    if let json = dataResponse.result.value as? JSONObject{
                        if let object = resource.parse(json){
                            response = .success(object)
                        }
                        responseWrapper.response = response
                    } else {
                        Log.error("网络 JSON 解析失败")
                    }
                }
            })
            
            return responseWrapper
        } else {
            Log.error("请求\(resource)不合法")
        }
        return nil
    }
    
}
