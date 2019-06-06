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
    // độ cao y tính từ mép trên màn hình đến tâm quả bóng
    var y: CGFloat = 0.0
    // đường kính quả bóng
    var r: CGFloat = 0.0
    // độ cao h
    var h: CGFloat = 0.0
    // chiều cao view cha
    var height: CGFloat = 0.0
    var timer: Timer!
    
    deinit {
        print("Deinit DropVC")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        height = self.view.frame.height
        y = ball.frame.origin.y
        r = ball.frame.height/2
        timer = Timer.scheduledTimer(timeInterval: 0.03, target: self, selector: #selector(runTime), userInfo: nil, repeats: true)
    }
    
    @objc func runTime(){
//        timer.invalidate()
        h = h + 1
        y = y + h
        if y > height - r{
            y = height - r
            h = -h * 0.8
        }
        ball.center = CGPoint(x: ball.center.x, y: y)
    }


}
