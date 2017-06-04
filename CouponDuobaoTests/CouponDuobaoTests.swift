//
//  CouponDuobaoTests.swift
//  CouponDuobaoTests
//
//  Created by GSDN on 2017/6/2.
//  Copyright © 2017年 GSDN. All rights reserved.
//

import XCTest
import ObjectMapper

@testable import CouponDuobao

struct Context: MapContext {
    var importantMappingInfo = "Info that I need during mapping"
}

class CouponDuobaoTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    
    func testInvoke<T:Mappable>(JSON:[String:Any])->T?{
        let context = Context()
        let user = Mapper<T>(context: context).map(JSON:JSON)
        
        return user
    }
    
    func testObjectmapper(){
        let dict = ["name":"zhangsan"]
        let user:User? = testInvoke(JSON: dict)
        Log.log(user?.name ?? "name")
    }
    
    func testInvoke2<T:Mappable>(JSON:[String:Any],completionHandler: (T?) -> Void){
        let context = Context()
        let user = Mapper<T>(context: context).map(JSON:JSON)
        completionHandler(user)
    }
    
    func testObjectmapper2(){
        let dict = ["name":"zhangsanlisi"]
        testInvoke2(JSON: dict,completionHandler:{
            (user: User?) in print(user?.name ?? "11")
        })
    }
    
}
