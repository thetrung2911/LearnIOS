//
//  UIButton + Extension.swift
//  Day 11 - layout exercise
//
//  Created by Cuong  Pham on 6/4/19.
//  Copyright © 2019 Cuong  Pham. All rights reserved.
//

import Foundation
import UIKit
extension UIButton{
    convenience init(parrentVIew : UIView, name : String, width : CGFloat, height : CGFloat){
        self.init()
        parrentVIew.addSubview(self)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.setImage(UIImage(named: name), for: .normal)
        self.widthAnchor.constraint(equalToConstant: width).isActive = true
        self.heightAnchor.constraint(equalToConstant: height).isActive = true
    }
}
