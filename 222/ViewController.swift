//
//  ViewController.swift
//  222
//
//  Created by gdcp on 2018/3/27.
//  Copyright © 2018年 gdcp. All rights reserved.
//

import UIKit

//全局变量
var i = 1

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.title = "第\(i)个控制器"
        i += 1
        let btn = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 30))
        btn.setTitle("push", for: .normal)
        btn.backgroundColor = UIColor.gray
        btn.tintColor = UIColor.blue
        btn.addTarget(self, action: #selector(push), for: .touchUpInside)
        self.view.addSubview(btn)
    }
    func push(){
        let controller = ViewController()
        self.navigationController?.pushViewController(controller, animated: true)

    }
    deinit {
        i -= 1
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

