//
//  NextBrick.swift
//  TetrisPoint1
//
//  Created by Trung Le on 6/27/19.
//  Copyright © 2019 Trung Le. All rights reserved.
//

import UIKit

class NextBrick: UIView {
    
    let playButton: UIButton = {
        let button = UIButton()
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .green
        button.setTitle("Play", for: .normal)
        button.addTarget(self, action: #selector(playAction), for: .touchUpInside)
        return button
    }()
    let stopButton: UIButton = {
        let button = UIButton()
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .green
        button.setTitle("Stop", for: .normal)
        button.addTarget(self, action: #selector(stopAction), for: .touchUpInside)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.white.withAlphaComponent(0.3)
        setupLayout()
        
    }
    func setupLayout() {
        self.addSubview(playButton)
        playButton.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10).isActive = true
        playButton.leftAnchor.constraint(equalTo: self.leftAnchor, constant:10).isActive = true
        playButton.widthAnchor.constraint(equalToConstant: 80  ).isActive = true
        playButton.heightAnchor.constraint(equalToConstant: 80 ).isActive = true
        
        self.addSubview(stopButton)
        stopButton.bottomAnchor.constraint(equalTo: playButton.topAnchor, constant: -10).isActive = true
        stopButton.leftAnchor.constraint(equalTo: self.leftAnchor, constant:10).isActive = true
        stopButton.widthAnchor.constraint(equalToConstant: 80  ).isActive = true
        stopButton.heightAnchor.constraint(equalToConstant: 80 ).isActive = true
    }
    @objc func playAction(sender: UIButton!) {
        GameBroad.isPlay = !GameBroad.isPlay
        
    }
    @objc func stopAction(sender: UIButton!) {
        print("no isplay")
        if !GameBroad.isPlay{
            print("stop")
        GameBroad.isOver = !GameBroad.isOver
        }
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
