//
//  DroppingBall.swift
//  Ball
//
//  Created by Taof on 6/1/19.
//  Copyright © 2019 Taof. All rights reserved.
//

import UIKit

class DroppingBall: UIViewController {

    var ball: CircleLayerView!
    var timer: Timer!
    
    let ball_y_origin: CGFloat = 100.0
    let a: CGFloat = 1.0
    var y: CGFloat = 0.0
    var h: CGFloat!
    let d :CGFloat = 20.0
    var height: CGFloat = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        h = ball_y_origin
        height = view.bounds.height
        ball = CircleLayerView(center: CGPoint(x: view.bounds.midX, y: h),
                               radius: d,
                               fillColor:  UIColor.red)
        view.addSubview(ball)
        
        timer = Timer.scheduledTimer(timeInterval: 0.03, target: self, selector: #selector(timerLoop), userInfo: nil, repeats: true)
        
        
    }
    
    @objc func timerLoop() {
//        timer.invalidate()
        y = y + a
        h = h + y
        if h > height - d {
            h = height - d
            y = -y * 0.5
        }
        ball.center = CGPoint(x: ball.center.x, y: h)
        
    }
}
