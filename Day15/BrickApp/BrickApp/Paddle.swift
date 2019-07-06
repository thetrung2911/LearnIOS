//
//  Paddle.swift
//  BrickApp
//
//  Created by Trung Le on 6/10/19.
//  Copyright © 2019 Trung Le. All rights reserved.
//

import UIKit

class Paddle: UIView {

    convenience init(){
       self.init(frame: CGRect(x: 0.0, y: 0.0, width: 70, height: 10))
      backgroundColor = UIColor.white
    }

}
