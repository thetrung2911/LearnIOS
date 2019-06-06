//
//  DropArcVC.swift
//  Ball
//
//  Created by Tào Quỳnh on 6/1/19.
//  Copyright © 2019 Taof. All rights reserved.
//

import UIKit

class DropArcVC: UIViewController {

    var ball: CircleLayerView!
    var timer: Timer!
    
    let ball_y_origin: CGFloat = 100.0
    let a: CGFloat = 1.0
    var y: CGFloat = 0.0
    var h: CGFloat!
    let d :CGFloat = 20.0
    var height: CGFloat = 0.0
    
    deinit {
        print("Deinit DropArcVC")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        h = ball_y_origin
        height = view.bounds.height
        ball = CircleLayerView(center: CGPoint(x: view.bounds.minX + d, y: h),
                               radius: d,
                               fillColor:  UIColor.red)
        view.addSubview(ball)
        
        timer = Timer.scheduledTimer(timeInterval: 0.03, target: self, selector: #selector(timerLoop), userInfo: nil, repeats: true)
        
        
    }
    
    @objc func timerLoop() {
        y = y + a
        h = h + y
        if h > height - d {
            h = height - d
            y = -y * 0.8
        }
        ball.center = CGPoint(x: ball.center.x + 2, y: h)
        
    }

}
