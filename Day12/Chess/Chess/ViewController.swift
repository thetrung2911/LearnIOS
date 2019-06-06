//
//  ViewController.swift
//  Chess
//
//  Created by Trung Le on 6/1/19.
//  Copyright © 2019 Trung Le. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var screenWidth: CGFloat = 0
    var screenHeight: CGFloat = 0
    var squareWidth: CGFloat = 0
    var margin: CGFloat = 4.0
    var X: [Int] = [-2,-2,-1,-1, 1, 1, 2, 2]
    var Y: [Int] = [-1, 1,-2, 2,-2, 2,-1, 1]
    var aray = [[Knight]]()
    var dem: Int = 0
    var u: Int!
    var v: Int!
    
    
    let queen = UIImageView(image: UIImage(named: "queen"))
    
    var timer : Timer!
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpControl()
        timer = Timer.scheduledTimer(timeInterval: 1,
                                     target: self,
                                     selector: #selector(gameLoop),
                                     userInfo: nil,
                                     repeats:  true)
    }
    
    
    func moveKnight(_ x: Int, _ y: Int){
        dem += 1
        
        for i in 0 ... 8 {
            if dem == 64{
                print("Các bước đi là: ")
            }else{
                 u = x + X[i]
                 v = y + Y[i]
                
                
            }
        }
    }
    @objc func gameLoop() {
        //Logic move Queen vào đấy
    }
    func setUpControl() {
        screenWidth = self.view.bounds.width
        screenHeight = self.view.bounds.height
        squareWidth = (self.view.bounds.width - margin * 2.0) / 8.0
        self.view.backgroundColor = UIColor(red: 0.8, green: 0.8, blue: 0.8, alpha: 1.0)
        
        for row in 0..<5 {
            for col in 0..<5 {
                let isWhiteSquare = (row + col) % 2 == 1 ? true: false
                drawSquare(isWhite: isWhiteSquare, width: squareWidth, row: row, col: col)
            }
        }
        
        placeQueen(isWhite: true, row: 0, col: 0)
    }
    
    
    func drawSquare(isWhite: Bool, width: CGFloat, row: Int, col: Int) {
        //Hàm có thể định nghĩa bên trong hàm khác
        func computePositionOfSquare(row: Int, col: Int, squareWidth: CGFloat) -> CGRect {
            return CGRect(x: margin + CGFloat(col) * squareWidth, y: 100 + CGFloat(row) * squareWidth, width: squareWidth, height: squareWidth)
        }
        
        
        let square = UIView(frame: computePositionOfSquare(row: row, col: col, squareWidth: width))
        square.backgroundColor = isWhite ? UIColor.white : UIColor.black
        self.view.addSubview(square)
    }
    
    func placeQueen(isWhite: Bool, row: Int, col: Int) {
        let queen = UIImageView(image: UIImage(named: "queen"))
        queen.frame = CGRect(x: margin + CGFloat(col) * squareWidth, y: 100 + CGFloat(row) * squareWidth, width: squareWidth, height: squareWidth)
        queen.contentMode = .scaleAspectFit
        self.view.addSubview(queen)
    }
    
    
    
}

