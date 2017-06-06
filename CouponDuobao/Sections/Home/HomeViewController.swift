//
//  HomeViewController.swift
//  CouponDuobao
//  有券夺宝
//  Created by GSDN on 2017/6/2.
//  Copyright © 2017年 GSDN. All rights reserved.
//

import UIKit
import YYText

class HomeViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func initUI() {
        let label = YYLabel()
        label.text = "Hello World"
        label.frame = CGRect(x: 10, y: 64, width: 100, height: 100)
        view.addSubview(label)
    }
    
}
