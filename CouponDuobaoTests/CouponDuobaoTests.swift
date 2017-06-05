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

class User: BaseModelMappable{
    var name: String?
    
    required init?(map: Map){
        
    }
    
    func mapping(map: Map){
        name <- map["name"]
    }
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
    
    
    
    func testParse(){
        let dict = ["name":"zhangsan"]
        let user: User? = Parse.parseToModel(json: dict)
        Log.log(user?.name ?? "")
    }
    
    func testResource(){
        let resource = Resource<User>(path: "", requestBody: nil, headers: nil)
        let dict = ["name":"zhangsan"]
        let user = resource.parse(dict)
        Log.log(user?.name ?? "")
    }
    
    
    
}
