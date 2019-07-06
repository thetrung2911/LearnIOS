//
//  GameScore.swift
//  TetrisPoint1
//
//  Created by Trung Le on 6/27/19.
//  Copyright © 2019 Trung Le. All rights reserved.
//

import UIKit

class GameScore: UIView {
    
    static var levelLabel: UILabel = {
        let label = UILabel()
        label.text = "0"
        return label
    }()
    static var linesLable: UILabel = {
        let label = UILabel()
        label.text = "0"
        return label
    }()
    static var scoreLable: UILabel = {
        let label = UILabel()
        label.text = "0"
        return label
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.white.withAlphaComponent(0.3)
        layoutGameScore()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func layoutGameScore(){
//        GameScore.levelLabel.text = "sss"
        // level
        GameScore.levelLabel.translatesAutoresizingMaskIntoConstraints = false
        GameScore.levelLabel.textColor = UIColor.white
        GameScore.levelLabel.text = "Level: \(GameScore.levelLabel.text!) " //self.gameLevel
        GameScore.levelLabel.adjustsFontSizeToFitWidth = true
        GameScore.levelLabel.minimumScaleFactor = 1.0
        GameScore.levelLabel.textAlignment = .center
        self.addSubview(GameScore.levelLabel)
        
        GameScore.levelLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10).isActive = true
        GameScore.levelLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        
        // lines
        GameScore.linesLable.translatesAutoresizingMaskIntoConstraints = false
        GameScore.linesLable.textColor = UIColor.white
        GameScore.linesLable.text = "Lines: \(GameScore.linesLable.text!) " //self.gameLevel
        GameScore.linesLable.adjustsFontSizeToFitWidth = true
        GameScore.linesLable.minimumScaleFactor = 1.0
        GameScore.linesLable.textAlignment = .center
        self.addSubview(GameScore.linesLable)
        
        GameScore.linesLable.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: -10).isActive = true
        GameScore.linesLable.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        
        //Score
        GameScore.scoreLable.translatesAutoresizingMaskIntoConstraints = false
        GameScore.scoreLable.textColor = UIColor.white
        GameScore.scoreLable.text = "Score: \(GameScore.scoreLable.text!) " //self.gameLevel
        GameScore.scoreLable.adjustsFontSizeToFitWidth = true
        GameScore.scoreLable.minimumScaleFactor = 1.0
        GameScore.scoreLable.textAlignment = .center
        self.addSubview(GameScore.scoreLable)
        
        GameScore.scoreLable.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -50).isActive = true
        GameScore.scoreLable.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
    }
    

}
