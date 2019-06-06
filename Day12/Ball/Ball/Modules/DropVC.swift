//
//  DropVC.swift
//  Ball
//
//  Created by Tào Quỳnh on 6/1/19.
//  Copyright © 2019 Taof. All rights reserved.
//

import UIKit

class DropVC: UIViewController {

    @IBOutlet weak var ball: UIImageView!
    // độ cao h
    var h: CGFloat = 0.0
    // đường kính quả bóng
    var d: CGFloat = 0.0
    // toạ độ y thay đổi
    var y: CGFloat = 0.0
    // chiều cao view cha
    var height: CGFloat = 0.0
//    var m: CGFloat = 1.0
    var timer: Timer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        height = self.view.frame.height
        h = ball.frame.origin.y
        d = ball.frame.height * 3/2 - h
        
        timer = Timer.scheduledTimer(timeInterval: 0.03, target: self, selector: #selector(runTime), userInfo: nil, repeats: true)
    }
    
    @objc func runTime(){
        y = y + 1
        h = h + y
        if h > height - d{
            h = height - d
            y = -y * 0.8
        }
        ball.center = CGPoint(x: ball.center.x + 1, y: h)
    }


}
