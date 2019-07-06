//
//  ViewController.swift
//  GestureRecoginzer
//
//  Created by Techmaster on 6/13/19.
//  Copyright © 2019 Techmaster. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    var containerView = UIView()
    var GameView = UIView()
    var GameWidth: CGFloat = 0
    var GameHeight: CGFloat = 0
    var squareWidth: CGFloat = 0
    
    var timer: Timer!
    var timer2: Timer!
    
    var monitor: [[Int]]!
    
    var falling = Array<[Int]> ()
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        monitor = [Array(repeating: 0, count: 12),
                   Array(repeating: 0, count: 12),
                   Array(repeating: 0, count: 12),
                   Array(repeating: 0, count: 12),
                   Array(arrayLiteral: -1,0,0,0,0,0,0,0,0,0,0,-1),
                   Array(arrayLiteral: -1,0,0,0,0,0,0,0,0,0,0,-1),
                   Array(arrayLiteral: -1,0,0,0,0,0,0,0,0,0,0,-1),
                   Array(arrayLiteral: -1,0,0,0,0,0,0,0,0,0,0,-1),
                   Array(arrayLiteral: -1,0,0,0,0,0,0,0,0,0,0,-1),
                   Array(arrayLiteral: -1,0,0,0,0,0,0,0,0,0,0,-1),
                   Array(arrayLiteral: -1,0,0,0,0,0,0,0,0,0,0,-1),
                   Array(arrayLiteral: -1,0,0,0,0,0,0,0,0,0,0,-1),
                   Array(arrayLiteral: -1,0,0,0,0,0,0,0,0,0,0,-1),
                   Array(arrayLiteral: -1,0,0,0,0,0,0,0,0,0,0,-1),
                   Array(arrayLiteral: -1,0,0,0,0,0,0,0,0,0,0,-1),
                   Array(arrayLiteral: -1,0,0,0,0,0,0,0,0,0,0,-1),
                   Array(arrayLiteral: -1,0,0,0,0,0,0,0,0,0,0,-1),
                   Array(arrayLiteral: -1,0,0,0,0,0,0,0,0,0,0,-1),
                   Array(arrayLiteral: -1,0,0,0,0,0,0,0,0,0,0,-1),
                   Array(arrayLiteral: -1,0,0,0,0,0,0,0,0,-4,-4,-1),
                   Array(arrayLiteral: -1,-2,0,0,0,-2,-3,-3,-2,-4,-4,-1),
                   Array(arrayLiteral: -1,-2,-3,-5,-5,-2,-3,-3,-2,-4,-4,-1),
                   Array(arrayLiteral: -1,-2,-5,-5,0,-2,-3,0,-2,-4,-4,-1),
                   Array(repeating: -1, count: 12)
        ]
        let swipeUp = UISwipeGestureRecognizer(target: self, action: #selector(onSwipe(sender:)))
        swipeUp.direction = .up
        
        let swipeDown = UISwipeGestureRecognizer(target: self, action: #selector(onSwipe(sender:)))
        swipeDown.direction = .down
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(onSwipe(sender:)))
        swipeLeft.direction = .left
        
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(onSwipe(sender:)))
        swipeRight.direction = .right
        
                
        view.addGestureRecognizer(swipeUp)
        view.addGestureRecognizer(swipeDown)
        view.addGestureRecognizer(swipeLeft)
        view.addGestureRecognizer(swipeRight)
        
        GameWidth = view.frame.width*0.8
        GameHeight = GameWidth*25/12
        
        drawGameView(width: GameWidth, height: GameHeight)
        squareWidth = (GameView.bounds.size.width) / 24
        
        drawI()
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(onSwipe), userInfo: nil, repeats: true)
        timer2 = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(gameLoop), userInfo: nil, repeats: true)
        
        
        
    }
    func drawBorder() {
        
        for i in 0..<monitor.count - 1 {
            for j in 1..<monitor[i].count - 1 {
                if monitor[i][j] != 0{
                 drawBorderSquare(col: j, row: i, radius: squareWidth, fillColor:setColor(abs(monitor[i][j])))
                }
            }
        }
    }
    func setColor(_ n: Int) -> UIColor{
        var arr = [UIColor.white,UIColor.black,UIColor.red,UIColor.green,UIColor.darkGray, UIColor.orange,UIColor.blue, UIColor.magenta]
        return arr[n]
    }
    func drawGameView(width: CGFloat, height: CGFloat) {
        GameView.frame = CGRect(x: 0, y: 0, width: width, height: height)
        GameView.center = view.center
        GameView.backgroundColor = UIColor.groupTableViewBackground
        view.addSubview(GameView)
    }
    func drawBorderSquare(col: Int, row: Int, radius: CGFloat, fillColor: UIColor)  {
        let square = SquareView(center: CGPoint(x: radius * 2 * CGFloat(col), y: radius * 2 * CGFloat(row)), radius: radius, fillColor: fillColor, row: row, col: col)
        GameView.addSubview(square)
    }
    
    func drawContainer(width: CGFloat, height: CGFloat) {
        containerView.frame = CGRect(x: 0, y: 0, width: width, height: height)
        containerView.frame.origin.y = GameView.frame.origin.y
        containerView.frame.origin.x = GameView.frame.origin.x + squareWidth*6
//        containerView.backgroundColor = .yellow
        view.addSubview(containerView)
    }
    
    func drawSquare(col: Int, row: Int, radius: CGFloat, fillColor: UIColor)  {
        let square = SquareView(center: CGPoint(x: radius * 2 * CGFloat(col), y: radius * 2 * CGFloat(row)), radius: radius, fillColor: fillColor, row: row, col: 3 + col)
        containerView.addSubview(square)
        //print(square.row)
        falling.append([square.row,square.col])
    }
    func drawI(){
        drawContainer(width: squareWidth*6, height: squareWidth*6)
        for j in 0...2 {
            drawSquare(col: 1, row: j, radius: squareWidth, fillColor: .orange)
            falling[j][1] = 2
            }
        print(falling)
    }
    @objc func gameLoop(){
        drawBorder()
    }
    
    
    @objc func onSwipe(sender: UIGestureRecognizer) {
        containerView.frame.origin.y += squareWidth*2
        for i in 0...falling.count-1 {
            let temp = falling[i]
            var part = temp
            part[0] += 1
            falling.remove(at: i)
            falling.insert(part, at: i)
        }
        
        if let swipe = sender as? UISwipeGestureRecognizer {
            switch swipe.direction {
            case .up:
                print("up")
            case .down:
                print("down")
                for i in 0...falling.count-1 {
                    let temp = falling[i]
                    var part = temp
                    part[0] += 1
                    falling.remove(at: i)
                    falling.insert(part, at: i)
                }
                containerView.frame.origin.y += squareWidth*2
            case .left:
                print("left")
                for i in 0...falling.count-1 {
                    let temp = falling[i]
                    var part = temp
                    part[1] -= 1
                    falling.remove(at: i)
                    falling.insert(part, at: i)
                }
                containerView.frame.origin.x -= squareWidth*2
            case .right:
                print("right")
                for i in 0...falling.count-1 {
                    let temp = falling[i]
                    var part = temp
                    part[1] += 1
                    falling.remove(at: i)
                    falling.insert(part, at: i)
                }
                containerView.frame.origin.x += squareWidth*2
            default:
                print("?")
            }
        }
        print(falling)
        print(falling[2])
        
        }
}

