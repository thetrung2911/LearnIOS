//
//  ViewController.swift
//  Ballold
//
//  Created by Trung Le on 6/1/19.
//  Copyright © 2019 Trung Le. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var ball: UIImageView!
    var timer : Timer!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var i: CGFloat = 0.0
        
        
        timer = Timer.scheduledTimer(timeInterval: 0.03, target: self, selector: #selector(timeLoop), userInfo: nil, repeats: true)
        // Do any additional setup after loading the view.
//        UIView.animate(withDuration: 2) {
//            self.ball.frame.origin.y += self.view.frame.size.height - 270
//        }
//
//        UIView.animate(withDuration: 2, animations: {
//            self.ball.frame.origin.y += self.view.frame.size.height - 270
//        }) { _ in
//            UIView.animate(withDuration: 2, animations: {
//                self.ball.frame.origin.y -= self.view.frame.size.height - 270
//            })
//        }
//        UIView.animate(withDuration: 2, delay: 0.5, options: [.repeat, .autoreverse], animations: {
//            self.ball.frame.origin.y += self.view.frame.size.height - 270
//        }) { _ in
//            UIView.animate(withDuration: 2, animations: {
//                self.ball.frame.origin.y -= self.view.frame.size.height - 270
//            })
//        }
    }
    @objc func timeLoop(){
        
        
        
    }

}

