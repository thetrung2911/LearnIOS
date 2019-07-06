//
//  MainViewController.swift
//  MemoryCard
//
//  Created by Trung Le on 6/21/19.
//  Copyright © 2019 Trung Le. All rights reserved.
//

import UIKit
var flipped = Set<FlipView>()
var flipViews = Set<FlipView>()

class MainViewController: UIViewController {
    
    let row = 5
    let col = 4
    var id:  Int!
    let cards = [
         UIImage(named: "Hearts"),
         UIImage(named: "Diamonds"),
         UIImage(named: "Clubs"),
         UIImage(named: "Spade")
    ]
    var arrKey = [Int]()
    var cardKey: Int!
    
    var margin : CGFloat = 2.0
    var key: Int!
    var time: Timer!
    
    
    func gameView(){
        for _ in 0..<(row*col)/2{
            let id = Int.random(in: 0...3)
            arrKey.append(id)
        }
        arrKey += arrKey
        arrKey.shuffle()
        showImage()
    }
    func showImage(){
        let cardWidth = (view.bounds.width - CGFloat(col + 1) * margin) / CGFloat(col)
        let cardHeight : CGFloat = (view.bounds.height - 60 - CGFloat(row + 1) * margin) / CGFloat(row)
//        print(view.bounds.height)
//        print(cardHeight)
        for i in 0..<row{
            for j in 0..<col{
                var flipView: FlipView?
                key = arrKey[i * col + j]
                let card = cards[key]
                let cardView = UIImageView(image: UIImage(named: "tarot"))

                flipView = FlipView(size: CGSize(width: cardWidth, height: cardHeight), front: cardView, back: UIImageView(image: card!))
                flipView!.frame = CGRect(x: margin * CGFloat(j + 1) + CGFloat(j) * cardWidth,
                                        y: 44 + CGFloat(i) * (cardHeight + margin),
                                        width: cardWidth,
                                        height: cardHeight)
                view.addSubview(flipView!)
                flipViews.insert(flipView!)
            }
//            time = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(gamePlay), userInfo: nil, repeats: true)
        }
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray
        gameView()
    }
    
}
extension Array {
    mutating func shuffle() {
        for _ in 0...self.count {
            sort { (_,_) in arc4random() < arc4random() }
        }
    }
}
func gamePlay(){
    for card in flipViews {
        if card.isFlipped == true && !flipped.contains(card) {
            flipped.insert(card)
        }
    }
    if flipped.count == 2  {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
            var temp = Array(flipped)
            
            if  temp[1].id == temp[0].id {
                temp[1].removeFromSuperview()
                temp[0].removeFromSuperview()
                flipViews.remove(temp[0])
                flipViews.remove(temp[1])

            }else {
                for card in flipped {
                    card.flip()
                }
            }
           flipped = []
        }
    }

}
