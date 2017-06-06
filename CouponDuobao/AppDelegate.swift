//
//  AppDelegate.swift
//  CouponDuobao
//
//  Created by GSDN on 2017/6/2.
//  Copyright © 2017年 GSDN. All rights reserved.
//

import UIKit
import ObjectMapper

class MaterialInfo: BaseModelMappable{
//    "materialType": 0,
//    "title": "品牌馆",
//    "subtitle": "品牌馆",
//    "pictureUrl": "http:\
    
    var materialType: Int?
    var title: String?
    var subtitle: String?
    var pictureUrl: String?
    
    required init?(map: Map) {
        
    }
    
    
    func mapping(map: Map) {
        materialType <- map["materialType"]
        title <- map["title"]
        subtitle <- map["subtitle"]
        pictureUrl <- map["pictureUrl"]
    }
}

class PageInfo: BaseModelMappable{
    var pinpaiguan: MaterialInfo?
    var yiyuangou: MaterialInfo?
    
    required init?(map: Map) {
        
    }
    
    
    func mapping(map: Map) {
        pinpaiguan <- map["pinpaiguan"]
        yiyuangou <- map["yiyuangou"]
    }
}

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
//        
//        let resource = Resource<JSONObject>(path: "http://api.vd.cn/mengdianApp/getPageInfo",requestBody: ["BaseAppVersion":"4.1.0","SystemVersion":"9.3","channel":"BuyerHome","spreadChannel":"app store","BaseAppType":"ios","_sign_":"BD45BF9024E3F6E1AEFC18A5324CACBF"])
//        let _ = NetWork.default.apiRequest(resource: resource) { (response) in
//            Log.log("\(String(describing: response?.value))")
//        }
        
        
    
        
        func testRoute(){
            Router.registerRoute(route: "a/b"){
                return MineViewController.self
            }
            
            Router.openRoute(route: "a/b")
        }
        
        testRoute()
        
        
        func testOC(){
            let test = Test(string: "hello world")
            test?.show()
            
            Test.staticTest()
        }
        
        testOC()
        
        
        let test2 = ChildTest(str: "str1", str2: "str2")
        test2.show()
        
        ChildTest.staticTest()
        
        
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

