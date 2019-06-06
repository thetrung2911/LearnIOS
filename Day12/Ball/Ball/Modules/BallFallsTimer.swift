//
//  BallFallsTimer.swift
//  Ball
//
//  Created by Taof on 6/1/19.
//  Copyright © 2019 Taof. All rights reserved.
//

import UIKit

class BallFallsTimer: UIViewController {

    @IBOutlet weak var ballImageView: UIImageView!
    
    deinit {
        print("Deinit BallFallsTimer")
    }
    var timer = Timer()
        override func viewDidLoad() {
            super.viewDidLoad()
    
            timer = Timer.scheduledTimer(timeInterval: 0.05, target: self, selector: #selector(runTimer), userInfo: nil, repeats: true)
        }
    
        @objc func runTimer(){
            if self.ballImageView.frame.origin.y > view.frame.height - self.ballImageView.bounds.height - 20 {
                timer.invalidate()
            }
            self.ballImageView.frame.origin.y += 10
        }
 
}
