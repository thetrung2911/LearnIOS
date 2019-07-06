//
//  Card.swift
//  Game_MemoryCard_2
//
//  Created by Cuong  Pham on 6/18/19.
//  Copyright © 2019 Cuong  Pham. All rights reserved.
//

import UIKit

class Card: UIButton {
//    var name: string!
    var dem = 1
    let image = ["do", "co", "bich", "tep"]
    var isFilpped : Bool = true
    var nameRandom = Int.random(in: 0...3)
    var name1: String!
    
    convenience init(){
        self.init(frame : CGRect.zero)
        self.setImage(UIImage(named: "default"), for: .normal)
        self.addTarget(self, action: #selector(test), for: .touchUpInside)
        
    }

    @objc func test(){
        if isFilpped{
            self.setImage(UIImage(named: image[nameRandom]), for: .normal)
//            print(image[nameRandom])
            dem += 1
            name1 = image[nameRandom]
            print(dem)
            print(name1)
            isFilpped = false
        }else{
            self.setImage(UIImage(named: "default"), for: .normal)
            isFilpped = true
        }
    }
}
