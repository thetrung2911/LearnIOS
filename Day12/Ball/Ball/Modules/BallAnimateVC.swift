//
//  BallAnimateVC.swift
//  Ball
//
//  Created by Tào Quỳnh on 6/1/19.
//  Copyright © 2019 Taof. All rights reserved.
//

import UIKit

class BallAnimateVC: UIViewController {

    @IBOutlet weak var ballImageView: UIImageView!
    
    var y: CGFloat = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        
        y = ballImageView.frame.origin.y

//        UIView.animate(withDuration: 3) {
//            self.ballImageView.frame.origin.y += self.view.bounds.height - self.y - self.ballImageView.bounds.height
//        }

        UIView.animate(withDuration: 3, animations: {
            self.ballImageView.frame.origin.y += self.view.bounds.height - self.y - self.ballImageView.bounds.height
        }) { _ in
            UIView.animate(withDuration: 3, animations: {
                self.ballImageView.frame.origin.y -= self.view.bounds.height - self.y - self.ballImageView.bounds.height
            })
        }    }

}
