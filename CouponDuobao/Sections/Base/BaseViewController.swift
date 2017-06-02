//
//  BaseViewController.swift
//  CouponDuobao
//
//  Created by GSDN on 2017/6/2.
//  Copyright © 2017年 GSDN. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        initUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /**
     * 配置界面
     */
    func initUI(){
        fatalError("子类实现代码")
    }

}
