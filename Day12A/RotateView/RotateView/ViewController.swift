//
//  ViewController.swift
//  RotateView
//
//  Created by Techmaster on 4/26/19.
//  Copyright © 2019 Techmaster. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var clockface: UIImageView!
    @IBOutlet weak var bar: UIView!
    @IBOutlet weak var min: UIView!
    @IBOutlet weak var hours: UIView!
    var secondTime: Timer!
    let pi = 3.1415926535897
    var alpha: CGFloat = 0.0//Góc quay
    var omega: CGFloat = 0.0  //Vận tốc góc
    let currentDate = NSDate()
    let calendar = NSCalendar.current
    var lock = true
    var minuteTime: Timer!
    var alpha1: CGFloat = 0.0
    var alpha2: CGFloat = 0.0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        clockface.center = view.center
        
        hours.setAnchorPoint(CGPoint(x: 0.5, y: 0.9))
        hours.center = view.center
        
        min.setAnchorPoint(CGPoint(x: 0.5, y: 0.9))
        min.center = view.center
        
        bar.setAnchorPoint(CGPoint(x: 0.5, y: 0.9))
        bar.center = view.center
        
        secondTime = Timer.scheduledTimer(timeInterval: 1,
                                        target: self,
                                        selector: #selector(runSecond),
                                        userInfo: nil,
                                        repeats: true)
    }
    @objc func runSecond() {
        omega = CGFloat(pi / 30)
        if lock == true{
            let second = calendar.component(.second, from: currentDate as Date)
            alpha = CGFloat(second + 1) * omega
            bar.transform = CGAffineTransform.init(rotationAngle: alpha)
            
            let minute = calendar.component(.minute, from: currentDate as Date)
            alpha1 = CGFloat(minute + (second + 1) / 60  ) * omega
            min.transform = CGAffineTransform.init(rotationAngle: alpha1)
            
            let hour = calendar.component(.hour, from: currentDate as Date)
            alpha2 = CGFloat( hour * 5 + minute / 12 ) * omega
            hours.transform = CGAffineTransform.init(rotationAngle: alpha2)
            
            lock = false
        }else if lock == false {
            alpha += omega
            bar.transform = CGAffineTransform.init(rotationAngle: alpha)
            
            alpha1 += omega / 60
            min.transform = CGAffineTransform.init(rotationAngle: alpha1)
            
            alpha2 += omega / 720
            hours.transform = CGAffineTransform.init(rotationAngle: alpha2)
            
        }
    }
}

extension UIView {
    func setAnchorPoint(_ point: CGPoint) {
        var newPoint = CGPoint(x: bounds.size.width * point.x, y: bounds.size.height * point.y)
        var oldPoint = CGPoint(x: bounds.size.width * layer.anchorPoint.x, y: bounds.size.height * layer.anchorPoint.y);
        
        newPoint = newPoint.applying(transform)
        oldPoint = oldPoint.applying(transform)
        
        var position = layer.position
        
        position.x -= oldPoint.x
        position.x += newPoint.x
        
        position.y -= oldPoint.y
        position.y += newPoint.y
        
        layer.position = position
        layer.anchorPoint = point
    }
}

