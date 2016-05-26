//
//  ViewController.swift
//  ZJLabel
//
//  Created by apple1 on 16/5/25.
//  Copyright © 2016年 庄记. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let label = ZJLabel()
        label.frame = CGRectMake(0, 0, 200, 300)
        label.backgroundColor = UIColor.grayColor()
        label.text = "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"
        label.numberOfLines = 5
        label.verticalAlignment = VerticalAlignment.VerticalAlignmentTop
        view.addSubview(label)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

