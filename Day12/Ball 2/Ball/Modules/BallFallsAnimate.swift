//
//  BallFallsAnimate.swift
//  Ball
//
//  Created by Taof on 6/1/19.
//  Copyright © 2019 Taof. All rights reserved.
//

import UIKit

class BallFallsAnimate: UIViewController {

    @IBOutlet weak var ballImageView: UIImageView!
    
    deinit {
        print("Deinit BallFallsAnimate")
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        let y = self.ballImageView.frame.origin.y
        // sử dụng animate để thay đổi toạ độ quả bóng
        
//        UIView.animate(withDuration: 2) {
//            // sau 2 giây thì quả bóng chạy xuống đến toạ độ y 300
//            self.ballImageView.frame.origin.y += 300
//            self.ballImageView.frame.origin.y += self.view.bounds.height - y - self.ballImageView.bounds.height
//        }
        
        // Sử dụng animate để cho quả bóng rơi và bay lại về vị trí cũ
//        UIView.animate(withDuration: 2, animations: {
//            self.ballImageView.frame.origin.y += self.view.bounds.height - y - self.ballImageView.bounds.height
//        }) { _ in
//            UIView.animate(withDuration: 2, delay: 0.5, options: [], animations: {
//                self.ballImageView.frame.origin.y -= self.view.bounds.height - y - self.ballImageView.bounds.height
//            })
//        }
        
        UIView.animateKeyframes(withDuration: 2, delay: 0.5, options: [.autoreverse, .repeat], animations: {
            self.ballImageView.frame.origin.y += self.view.bounds.height - y - self.ballImageView.bounds.height
        })


    }

}
