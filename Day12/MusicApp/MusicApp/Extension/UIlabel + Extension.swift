//
//  UIlabel + Extension.swift
//  Day 11 - layout exercise
//
//  Created by Cuong  Pham on 6/4/19.
//  Copyright © 2019 Cuong  Pham. All rights reserved.
//

import Foundation
import UIKit
extension UILabel {
    convenience init(parrentView : UIView,
                     text : String,
                     font : UIFont,
                     equal : NSLayoutAnchor<NSLayoutYAxisAnchor>,
                     top_anchor : CGFloat){
        self.init()
        parrentView.addSubview(self)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.text = text
        self.font = font
        self.sizeToFit()
        self.textColor = .white
        self.topAnchor.constraint(equalTo: equal, constant: top_anchor).isActive = true
    }
}
