//
//  MainViewController.swift
//  Game_MemoryCard_2
//
//  Created by Cuong  Pham on 6/18/19.
//  Copyright © 2019 Cuong  Pham. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

//    let image = ["do", "co", "bich", "tep"]
//    var isFilpped : Bool = true
    var cardArray = [Card]()
    var cardName = [String]()
    var cardHeight : CGFloat = 60
    var margin : CGFloat = 2.0
    let row : Int = 5
    let col : Int = 4
    let card = Card()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        showImage()
        gameMode()
    }
    
    func gameMode(){
        for card in cardArray{
            card.addTarget(self, action: #selector(test), for: .touchUpInside)
        }
//        for card in cardArray{
//            cardName.append(card.image[card.nameRandom])
//        }
//        print(cardName)
    }

    @objc func test(){
//        print(card.testName)
    }
    
    //hiển thị danh sách các card lên màn hình
    func showImage(){
        let cardWidth = (view.bounds.width - CGFloat(col + 1) * margin) / CGFloat(col)
        for i in 0..<row{
            var cardRows = [Card]()
            for j in 0..<col{
                let card = Card()
                card.frame = CGRect(x: margin * CGFloat(j + 1) + CGFloat(j) * cardWidth,
                                    y: 60.0 + CGFloat(i) * (cardHeight + margin),
                                    width: cardWidth,
                                    height: cardHeight)
                view.addSubview(card)
                cardRows.append(card)
            }
            for card in cardRows{
                cardArray.append(card)
            }
        }
    }
}
