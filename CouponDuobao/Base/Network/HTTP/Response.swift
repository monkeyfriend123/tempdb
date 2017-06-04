//
//  Result.swift
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
enum Response<T>{
    case success(T)
    case error(error: Error?)
}

/**
 * 每一个请求一个实例
 * 包含 request, response
 * 已经一些对请求的操作 例如cancel
 */
class RequestWrapper<A>{
    var response: Response<A>?
    
    var dataRequest: DataRequest?
    
}
