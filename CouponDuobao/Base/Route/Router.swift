//
//  Router.swift
//  CouponDuobao
//
//  Created by GSDN on 2017/6/5.
//  Copyright © 2017年 GSDN. All rights reserved.
//

import Foundation
import UIKit

class Router{
    
    static var routeMap:[String:(()->AnyClass)] = [:]
    
    static func registerRoute(route: String,componentFunc: @escaping ()-> AnyClass){
        routeMap[route] = componentFunc
    }
    
    static func openRoute(route: String){
        if let componentFunc = routeMap[route]{
            let cls: AnyClass = componentFunc()
            if cls is UIViewController.Type {
                let vc = (cls as! UIViewController.Type).init()
                print(vc)
            }
        }
    }
}
