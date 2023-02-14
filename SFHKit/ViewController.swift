//
//  ViewController.swift
//  SFHKit
//
//  Created by sfh on 2023/2/13.
//

import UIKit

class ViewController: UIViewController {
    
    var btn: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        
        btn = UIButton.init(frame: CGRect.init(x: 0, y: 0, width: 100, height: 100))
        btn.center = self.view.center
        btn.layer.cornerRadius = 12
        btn.backgroundColor = SLEx<UIColor>.hex(hex: 0xF5F6F9)
        btn.setTitle("点我", for: .normal)
        btn.setTitleColor(UIColor.brown, for: .normal)
        btn.addTarget(self, action: #selector(btnClick), for: .touchUpInside)
        self.view.addSubview(btn)
        
    }
    
    @objc func btnClick(_ sender: UIButton) {
        self.view.backgroundColor = SLEx<UIColor>.random
        print(SLEx(10).stringValue)
    }


}

