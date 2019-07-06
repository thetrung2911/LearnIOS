//
//  ViewController.swift
//  GraphicApp
//
//  Created by Trung Le on 6/24/19.
//  Copyright © 2019 Trung Le. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var xArray = [Double]()
    var yArray = [Double]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray
        
        drawLineFromPoint(start: CGPoint(x: 0, y: view.frame.height/2), toPoint: CGPoint(x: view.frame.width, y: view.frame.height/2), ofColor: .green, inView: view)
        drawLineFromPoint(start: CGPoint(x: view.frame.width/2, y: 0), toPoint: CGPoint(x: view.frame.width/2, y: view.frame.height), ofColor: .green, inView: view)
        
        print(calculate(-20, 20, 100,&xArray,&yArray))
        let x0 = view.frame.width/2
        let y0 = view.frame.height/2
        for i in 0..<xArray.count - 1{
            drawLineFromPoint(start: CGPoint(x: xArray[i]+Double(x0) , y: yArray[i] + Double(y0)), toPoint: CGPoint(x: xArray[i+1] + Double(x0), y: yArray[i+1]+Double(y0)), ofColor: .red, inView: view)
        }
    }
    func calculate(_ frist: Double, _ last: Double,_ N: Int, _ xArr: inout Array<Double>,  _ yArr: inout Array<Double>){
        let delta: Double = (last - frist) / Double(N)
        var x = frist
        var y = 0.0
        repeat{
            xArr.append(x)
            y = pow(x, 2)
            yArr.append(-y)
            x += delta
        } while x <= last
    }
    
    func drawLineFromPoint(start : CGPoint, toPoint end:CGPoint, ofColor lineColor: UIColor, inView view:UIView) {
        
        //design the path
        let path = UIBezierPath()
        path.move(to: start)
        path.addLine(to: end)
        
        //design path in layer
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = path.cgPath
        shapeLayer.strokeColor = lineColor.cgColor
        shapeLayer.lineWidth = 1.0
        
        view.layer.addSublayer(shapeLayer)
    }


}

