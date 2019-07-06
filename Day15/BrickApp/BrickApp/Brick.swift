//
//  Brick.swift
//  BrickApp
//
//  Created by Trung Le on 6/10/19.
//  Copyright © 2019 Trung Le. All rights reserved.
//

import UIKit

class Brick: UIView {
    var hardness: Int!
    convenience init(){
        self.init(frame: CGRect.zero)
        hardness = Int.random(in: 1...4)
        alpha = CGFloat(hardness) / 4.0
    }
}
