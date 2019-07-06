////
////  view.swift
////  MemoryCard
////
////  Created by Trung Le on 6/22/19.
////  Copyright © 2019 Trung Le. All rights reserved.
////
//
//import Foundation
//import UIKit
//
//class ViewController: UIViewController{
//    let col: Int = 5
//    let row: Int = 6
//    let verSpace: CGFloat = 5
//    let horSpace: CGFloat = 10
//
//    var width: CGFloat!
//    var height: CGFloat!
//
//    var ima: String!
//    var id: Int!
//    var flipped = Set<FlipView>()
//
//    var timer: Timer!
//
//    var flipView: FlipView?
//
//    var flipViews = Set<FlipView>()
//
//    var imas = Array<String>()
//
//    let bar = UIProgressView()
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        view.backgroundColor = UIColor.white
//
//        width = (view.frame.width - CGFloat(col-1)*horSpace)/CGFloat(col)
//        height = (view.frame.height - 150 - CGFloat(row-1)*verSpace)/CGFloat(row)
//
//        for _ in 1...row*col/2 {
//            id = Int.random(in: 1...4)
//            switch id {
//            case 1:
//                ima = "Spade"
//            case 2:
//                ima = "Club"
//            case 3:
//                ima = "Heart"
//            default:
//                ima = "Diamond"
//            }
//            imas.append(ima)
//            imas.append(ima)
//        }
//
//        print(imas)
//        for a in 0...row-1 {
//            for b in 0...col-1 {
//                let rand = Int.random(in: 0...imas.count-1)
//                let image = imas[rand]
//                imas.remove(at: rand)
//                print(imas)
//
//                let frontView = UIImageView(image: UIImage(named: "Back"))
//                frontView.contentMode = .scaleToFill
//
//                let backView = UIImageView(image: UIImage(named: image))
//                backView.contentMode = .scaleToFill
//
//                flipView = FlipView(size: CGSize(width: width, height: height), front: frontView, back: backView)
//
//                view.addSubview(flipView!)
//                let x: CGFloat = view.frame.origin.x + (width+horSpace)*CGFloat(b)
//                let y: CGFloat = view.frame.origin.y + (height+verSpace)*CGFloat(a) + CGFloat(40)
//                flipView!.frame = CGRect(x: x, y: y, width: width, height: height)
//
//                flipViews.insert(flipView!)
//            }
//        }
//        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(play), userInfo: nil, repeats: true)
//    }
//
//    @objc func play() {
//        for card in flipViews {
//            if card.isFlipped == true && !flipped.contains(card) {
//                flipped.insert(card)
//            }
//        }
//        if flipped.count == 2  {
//            DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
//                var temp = Array(self.flipped)
//                if temp[1].id == temp[0].id {
//                    temp[1].removeFromSuperview()
//                    temp[0].removeFromSuperview()
//                    self.flipViews.remove(temp[0])
//                    self.flipViews.remove(temp[1])
//                }
//                else {
//                    for card in self.flipped {
//                        card.flip()
//                    }
//                }
//                self.flipped = []
//            }
//        }
//        print(flipped.count)
//    }
//}
