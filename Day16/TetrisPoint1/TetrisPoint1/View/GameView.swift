//
//  GameView.swift
//  TetrisPoint1
//
//  Created by Trung Le on 6/24/19.
//  Copyright © 2019 Trung Le. All rights reserved.
//

import UIKit

class GameView: UIView {
    let gameScore = GameScore(frame: CGRect.zero)
    let gameBroad = GameBroad(frame: CGRect.zero)
    let nextBrick = NextBrick(frame: CGRect.zero)
    
    var topHeight: CGFloat = 0
    var margin: CGFloat = 8.0
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        topHeight = UIScreen.main.bounds.height < 812 ? 20 : 44
        self.backgroundColor = .black
        setupLayout()
        
    }
    func setupLayout(){
        // tạo gameBroad
        self.addSubview(gameBroad)
        
        gameBroad.translatesAutoresizingMaskIntoConstraints = false
        gameBroad.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0).isActive = true
        gameBroad.leftAnchor.constraint(equalTo: self.leftAnchor, constant: margin).isActive = true
        gameBroad.widthAnchor.constraint(equalToConstant: (CGFloat((GameBroad.brickSize + GameBroad.margin)*GameBroad.cols))).isActive = true
        gameBroad.heightAnchor.constraint(equalToConstant: (CGFloat((GameBroad.brickSize + GameBroad.margin)*GameBroad.rows))).isActive = true
        
        // tạo gameScore
        self.addSubview(gameScore)
        
        gameScore.translatesAutoresizingMaskIntoConstraints = false
        gameScore.topAnchor.constraint(equalTo: self.topAnchor, constant: 0).isActive = true
        gameScore.leftAnchor.constraint(equalTo: self.leftAnchor, constant: margin).isActive = true
        gameScore.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -margin).isActive = true
        gameScore.bottomAnchor.constraint(equalTo: self.gameBroad.topAnchor, constant: -margin).isActive = true
        
        // tạo nextBrick
        self.addSubview(nextBrick)
        
        nextBrick.translatesAutoresizingMaskIntoConstraints = false
        nextBrick.topAnchor.constraint(equalTo: self.gameScore.bottomAnchor, constant: margin).isActive = true
        nextBrick.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -margin).isActive = true
        nextBrick.leftAnchor.constraint(equalTo: self.gameBroad.rightAnchor, constant: margin).isActive = true
        nextBrick.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0).isActive = true
        
        
    }
    public func clear(){
        self.setNeedsDisplay()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

}
