//
//  ViewController.swift
//  ChessBoard
//
//  Created by Techmaster on 3/18/19.
//  Copyright © 2019 Techmaster. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var screenWidth: CGFloat = 0
    var screenHeight: CGFloat = 0
    var squareWidth: CGFloat = 0
    var margin: CGFloat = 4.0
    var timer : Timer!
    var image : UIImageView!
    var i = 0
    var j = 0
    var max = 7
    var min = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpControl()
        timer = Timer.scheduledTimer(timeInterval: 0.25,
                                     target: self,
                                     selector: #selector(gameLoop3),
                                     userInfo: nil,
                                     repeats:  true)

    }
    @objc func gameLoop1(){
//         bài chạy hình vuông theo chiều kim đồng hồ, chạy ngược lại ngay sau thì em chưa làm được.
        if j < max && i == 0{
            j = j + 1
            image.removeFromSuperview()
            placeQueen(isWhite: true, row: i, col: j)
        }else if i < max && j == max {
            i = i + 1
            image.removeFromSuperview()
            placeQueen(isWhite: true, row: i, col: j)
        }else if i  == max && j > 0 {
            j = j - 1
            image.removeFromSuperview()
            placeQueen(isWhite: true, row: i, col: j)
        }else if j == 0 && i > 0  {
            i = i - 1
            image.removeFromSuperview()
            placeQueen(isWhite: true, row: i, col: j)
            if j == 0 && i == 0{
                timer.invalidate()
            }
        }
//        gameLopp(max, min)
    }
    @objc func gameLoop2(){
        // bài cánh bướm
        if i == j && j < max {
            i = i + 1
            j = j + 1
            image.removeFromSuperview()
            placeQueen(isWhite: true, row: i, col: j)
        }else if i > 0 && j == max {
            i = i - 1
            image.removeFromSuperview()
            placeQueen(isWhite: true, row: i, col: j)
        }else if i + j == 7 && j > 0 {
            i = i + 1
            j = j - 1
            image.removeFromSuperview()
            placeQueen(isWhite: true, row: i, col: j)
        }else if i > 0 && j == 0  {
            i = i - 1
            image.removeFromSuperview()
            placeQueen(isWhite: true, row: i, col: j)
            if j == 0 && i == 0{
                timer.invalidate()
            }
        }
        
    }
    @objc func gameLoop3(){
        // bài chạy hình vuông theo xoắn ốc
        
        if i == min || i == max || j == min || j == max {
            gameLopp(7, 0)
        }else if i == 1 || i == 6 || j == 1 || j == 6 {
            gameLopp(6, 1)
        }else if i == 2 || i == 5 || j == 2 || j == 5 {
            gameLopp(5, 2)
        }else if j == 3 && i == 4 {
            timer.invalidate()
        }else if i == 3 || i == 4 || j == 3 || j == 4 {
            gameLopp(4, 3)
        }
    }
    func gameLopp(_ max: Int,_ min: Int){
        if j < max && i == min {
            j = j + 1
            image.removeFromSuperview()
            placeQueen(isWhite: true, row: i, col: j)
        }else if i < max && j == max {
            i = i + 1
            image.removeFromSuperview()
            placeQueen(isWhite: true, row: i, col: j)
        }else if i  == max && j > min {
            j = j - 1
            image.removeFromSuperview()
            placeQueen(isWhite: true, row: i, col: j)
        }else if j == min && i > min + 1  {
            i = i - 1
            image.removeFromSuperview()
            placeQueen(isWhite: true, row: i, col: j)
        }else if j == min && i == min + 1  {
            j = j + 1
            image.removeFromSuperview()
            placeQueen(isWhite: true, row: i, col: j)
        }
    }

    func setUpControl() {
        screenWidth = self.view.bounds.width
        screenHeight = self.view.bounds.height
        squareWidth = (self.view.bounds.width - margin * 2.0) / 8.0
        self.view.backgroundColor = UIColor(red: 0.8, green: 0.8, blue: 0.8, alpha: 1.0)
        
        for row in 0..<8 {
            for col in 0..<8 {
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
        image = queen
        self.view.addSubview(queen)
    }

}

