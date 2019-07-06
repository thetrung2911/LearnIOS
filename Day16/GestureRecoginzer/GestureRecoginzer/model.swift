//
//  model.swift
//  GestureRecoginzer
//
//  Created by Trung Le on 6/13/19.
//  Copyright © 2019 Techmaster. All rights reserved.
//

import UIKit
enum BrickType{
    case i(UIColor)
    case j(UIColor)
    case l(UIColor)
    case t(UIColor)
    case z(UIColor)
    case s(UIColor)
    case o(UIColor)
}
class Brickss: UIView {
    convenience init() {
        self.init(frame: CGRect.zero)
//        self.layer.borderColor = UIColor.black.cgColor
    }
    
}
