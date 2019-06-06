////
////  View.swift
////  ChessBoard
////
////  Created by Trung Le on 5/30/19.
////  Copyright © 2019 Techmaster. All rights reserved.
////
//
//import UIKit
//
//class ViewController: UIViewController {
//
//    var screenWidth: CGFloat = 0
//    var screenHeight: CGFloat = 0
//    var squareWidth: CGFloat = 0
//    var margin: CGFloat = 4.0
//    var timer : Timer!
//    var image : UIImageView!
//    var i = 0
//    var j = 0
//    var max = 7
//    var min = 0
//    var lock: Bool = true
//    var stack = Stack()
//    //    var old_row: Int = -1
//    //    var old_col: Int = -1
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        setUpControl()
//        timer = Timer.scheduledTimer(timeInterval: 0.1,
//                                     target: self,
//                                     selector: #selector(gameLoop3),
//                                     userInfo: nil,
//                                     repeats:  true)
//
//    }
//    @objc func gameLoop1(){
//        //         bài chạy hình vuông theo chiều kim đồng hồ, chạy ngược lại ngay sau thì em chưa làm được.
//        if j < max && i == 0{
//            j = j + 1
//            image.removeFromSuperview()
//            placeQueen(isWhite: true, row: i, col: j)
//        }else if i < max && j == max {
//            i = i + 1
//            image.removeFromSuperview()
//            placeQueen(isWhite: true, row: i, col: j)
//        }else if i  == max && j > 0 {
//            j = j - 1
//            image.removeFromSuperview()
//            placeQueen(isWhite: true, row: i, col: j)
//        }else if j == 0 && i > 0  {
//            i = i - 1
//            image.removeFromSuperview()
//            placeQueen(isWhite: true, row: i, col: j)
//            if j == 0 && i == 0{
//                timer.invalidate()
//            }
//        }
//        //        gameLopp(max, min)
//    }
//    @objc func gameLoop2(){
//        // bài cánh bướm
//        highlight(row: i, col: j)
//        if i == j && j < max {
//            i = i + 1
//            j = j + 1
//        }else if i > 0 && j == max {
//            i = i - 1
//        }else if i + j == 7 && j > 0 {
//            i = i + 1
//            j = j - 1
//        }else if i > 0 && j == 0  {
//            i = i - 1
//            //            if j == 0 && i == 0{
//            //                timer.invalidate()
//            //            }
//        }
//        image.removeFromSuperview()
//        placeQueen(isWhite: true, row: i, col: j)
//
//    }
//    @objc func gameLoop3(){
//        // bài chạy hình vuông theo xoắn ốc
//        highlight(row: i, col: j)
//        if lock {
//
//            if i == min || i == max || j == min || j == max{
//                gameLopp(7, 0)
//            }else if i == 1 || i == 6 || j == 1 || j == 6{
//                gameLopp(6, 1)
//            }else if i == 2 || i == 5 || j == 2 || j == 5{
//                gameLopp(5, 2)
//            }else if j == 3 && i == 4{
//                lock = false
//            }else if i == 3 || i == 4 || j == 3 || j == 4{
//                gameLopp(4, 3)
//            }
//        }else{
//            guard let position = stack.pop() else {
//                timer.invalidate()
//                return
//            }
//
//            image.removeFromSuperview()
//            placeQueen(isWhite: true, row: position.x, col: position.y)
//        }
//
//    }
//
//    func gameLopp(_ max: Int,_ min: Int){
//        if j < max && i == min {
//            j = j + 1
//
//        }else if i < max && j == max {
//            i = i + 1
//        }else if i  == max && j > min {
//            j = j - 1
//        }else if j == min && i > min + 1  {
//            i = i - 1
//        }else if j == min && i == min + 1  {
//            j = j + 1
//        }
//
//        stack.push(( x: i, y: j))
//        moveQueen(row: i, col: j)
//    }
//
//    func moveQueen(row: Int, col: Int) {
//
//        image.removeFromSuperview()
//        placeQueen(isWhite: true, row: row, col: col)
//    }
//
//    /*
//     Hiển thị một hình tròn màu hồng ở giữa tâm của ô bàn cờ, sau đó biến mất.
//     */
//    func highlight(row: Int, col: Int) {
//        let diameter = squareWidth * 0.7
//        let topleft = computeTopLeftPosition(row: row, col: col, width: squareWidth, inner_width: diameter)
//
//        let redcircle = UIView(frame: CGRect(x: topleft.x, y: topleft.y, width: diameter, height: diameter))
//
//
//        redcircle.backgroundColor = UIColor.red
//        redcircle.alpha = 0.5
//        redcircle.layer.cornerRadius = 0.5 * diameter
//        view.addSubview(redcircle)
//        UIView.animate(withDuration: 1.2, animations: {
//            redcircle.alpha = 0.0
//            redcircle.bounds = CGRect(x: 0, y: 0, width: diameter * 0.2, height: diameter * 0.2)
//        }) { (_) in
//            redcircle.removeFromSuperview()
//        }
//
//    }
//
//
//
//    func computeTopLeftPosition(row: Int, col: Int, width: CGFloat) -> (x: CGFloat, y: CGFloat) {
//        return (margin + CGFloat(col) * width, 100 + CGFloat(row) * width)
//    }
//
//    //Tính tọa độ để đối tượng có kích thước inner_width nằm đồng tâm với khung vuông width
//    func computeTopLeftPosition(row: Int, col: Int, width: CGFloat, inner_width: CGFloat) -> (x: CGFloat, y: CGFloat) {
//        let adjust = (width - inner_width) * 0.5
//        return (margin + CGFloat(col) * width + adjust,
//                100 + CGFloat(row) * width + adjust)
//    }
//
//
//    func setUpControl() {
//        screenWidth = self.view.bounds.width
//        screenHeight = self.view.bounds.height
//        squareWidth = (self.view.bounds.width - margin * 2.0) / 8.0
//        self.view.backgroundColor = UIColor(red: 0.8, green: 0.8, blue: 0.8, alpha: 1.0)
//
//        for row in 0..<8 {
//            for col in 0..<8 {
//                let isWhiteSquare = (row + col) % 2 == 1 ? true: false
//                drawSquare(isWhite: isWhiteSquare, width: squareWidth, row: row, col: col)
//            }
//        }
//
//        placeQueen(isWhite: true, row: 0, col: 0)
//    }
//
//
//    func drawSquare(isWhite: Bool, width: CGFloat, row: Int, col: Int) {
//        //Hàm có thể định nghĩa bên trong hàm khác
//        func computePositionOfSquare(row: Int, col: Int, squareWidth: CGFloat) -> CGRect {
//            return CGRect(x: margin + CGFloat(col) * squareWidth, y: 100 + CGFloat(row) * squareWidth, width: squareWidth, height: squareWidth)
//        }
//
//        let square = UIView(frame: computePositionOfSquare(row: row, col: col, squareWidth: width))
//        square.backgroundColor = isWhite ? UIColor.white : UIColor.black
//        self.view.addSubview(square)
//    }
//
//    func placeQueen(isWhite: Bool, row: Int, col: Int) {
//        let queen = UIImageView(image: UIImage(named: "queen"))
//        queen.frame = CGRect(x: margin + CGFloat(col) * squareWidth, y: 100 + CGFloat(row) * squareWidth, width: squareWidth, height: squareWidth)
//        queen.contentMode = .scaleAspectFit
//        image = queen
//        self.view.addSubview(queen)
//    }
//
//
//}
//struct Stack {
//    fileprivate var array: [(x : Int, y : Int)] = []
//
//    mutating func push(_ element: (x : Int, y : Int)) {
//        array.append(element)
//    }
//
//    mutating func pop() -> (x : Int, y : Int)? {
//        if array.count > 0 {
//            return array.remove(at: 0)
//        }
//        return nil
//    }
//
//    var isEmpty: Bool {
//        return array.isEmpty
//    }
//}
//
