//
//  ViewController.swift
//  JavascriptCoreDemo
//
//  Created by 茅野瓜子 on 2022/6/27.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let core = JSCore()
        core.callMainFunc()
    }
}

