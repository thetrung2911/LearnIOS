//
//  FlipView.swift
//  CustomUIKItComponent
//
//  Created by Techmaster on 3/24/19.
//  Copyright © 2019 Techmaster. All rights reserved.
//

import UIKit

class FlipView: UIView {

    var frontView: UIView?
    var backView: UIView?
    var isFlipped: Bool = false
    var flipStyleOption: UIView.AnimationOptions = .transitionFlipFromLeft
    var id: Int!
    
    
    
    
    init(size: CGSize, front: UIView, back: UIImageView) {
        super.init(frame: CGRect.zero)
        frontView = front
        backView = back
        frontView?.frame = CGRect(origin: CGPoint.zero, size: size)
        backView?.frame = CGRect(origin: CGPoint.zero, size: size)
        switch back.image {
        case UIImage(named: "Hearts"):
            id = 0
        case UIImage(named: "Diamonds"):
            id = 1
        case UIImage(named: "Clubs"):
            id = 2
        case UIImage(named: "Spade"):
            id = 3
        default:
            id = 4
        }
        
        addSubview(backView!)
        addSubview(frontView!)
        
        self.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(flip)))
        
  }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    @IBAction func flip() {
        
        isFlipped = !isFlipped
        let cardToFlip = isFlipped ? frontView : backView
        let bottomCard = isFlipped ? backView : frontView
        
        UIView.transition(from: cardToFlip!,
                          to:bottomCard!,
                          duration: 0.5,
                           options: [flipStyleOption, .showHideTransitionViews],

            completion: nil)
        if isFlipped{
            flipped.insert(self)
            gamePlay()
        }else{
            flipped.insert(self)
        }

    }
   
}
