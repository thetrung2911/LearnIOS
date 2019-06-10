//
//  UISlider + Extension.swift
//  Day 11 - layout exercise
//
//  Created by Cuong  Pham on 6/4/19.
//  Copyright © 2019 Cuong  Pham. All rights reserved.
//

import Foundation
import UIKit
extension UISlider{
    convenience init(parrentView : UIView,
                     min : UIColor,
                     max : UIColor,
                     trailing : NSLayoutAnchor<NSLayoutXAxisAnchor>,
                     trailing_const : CGFloat,
                     leading : NSLayoutAnchor<NSLayoutXAxisAnchor>,
                     leading_const : CGFloat){
        self.init()
        parrentView.addSubview(self)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.minimumTrackTintColor = min
        self.maximumTrackTintColor = max
        self.trailingAnchor.constraint(equalTo: trailing, constant: trailing_const).isActive = true
        self.leadingAnchor.constraint(equalTo: leading, constant: leading_const).isActive = true
    }
}
