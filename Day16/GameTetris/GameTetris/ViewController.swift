//
//  ViewController.swift
//  GameTetris
//
//  Created by Tào Quỳnh on 6/13/19.
//  Copyright © 2019 Tào Quỳnh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var containerView = UIView()
    var width: CGFloat = 0
    var squareWidth: CGFloat = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        width = self.view.frame.width/2
        containerView.frame = CGRect(x: 0, y: 0, width: width, height: width)
        containerView.center = view.center
        containerView.backgroundColor = UIColor.groupTableViewBackground
        view.addSubview(containerView)
        
        squareWidth = (containerView.bounds.size.width) / 6
        drawI()
    }
    
    func drawI(){
        for i in 0...2{
            if i == 1 {
                for j in 0...2 {
                    drawSquare(col: i, row: j, radius: squareWidth)
                }
            }
        }
    }
    
    func drawSquare(col: Int, row: Int, radius: CGFloat) {
        let ball = SquareView(center: CGPoint(x: radius * CGFloat(col + 1), y: radius * 2 * CGFloat(row)), radius: radius, fillColor: UIColor.orange)
        containerView.addSubview(ball)
    }
}

