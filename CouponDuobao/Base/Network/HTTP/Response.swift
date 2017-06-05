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
    
    var isSuccess: Bool {
        switch self {
        case .success:
            return true
        case .error:
            return false
        }
    }
    
    var isFailure: Bool{
        return !isSuccess
    }
    
    public var value: T? {
        switch self {
        case .success(let value):
            return value
        case .error:
            return nil
        }
    }
    
    /// Returns the associated error value if the result is a failure, `nil` otherwise.
    public var error: Error? {
        switch self {
        case .success:
            return nil
        case .error(let error):
            return error
        }
    }
}

/**
 * 每一个请求一个实例
 * 包含 request
 * 已经一些对请求的操作 例如cancel
 */
class RequestWrapper<A>{
    
    
    var dataRequest: DataRequest?
    
}
