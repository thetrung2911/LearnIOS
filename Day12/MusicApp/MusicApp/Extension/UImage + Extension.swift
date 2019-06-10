//
//  UImage + Extension.swift
//  Day 11 - layout exercise
//
//  Created by Cuong  Pham on 6/4/19.
//  Copyright © 2019 Cuong  Pham. All rights reserved.
//

import Foundation
import UIKit

extension UIImageView {
    convenience init(parrentView : UIView, name : String){
        self.init()
        parrentView.addSubview(self)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.image = UIImage(named: name)
    }
}
