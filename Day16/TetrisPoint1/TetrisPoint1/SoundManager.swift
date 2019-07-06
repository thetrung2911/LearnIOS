//
//  SoundManager.swift
//  TetrisPoint1
//
//  Created by Trung Le on 6/28/19.
//  Copyright © 2019 Trung Le. All rights reserved.
//

import UIKit
import AVFoundation

class SoundManager {
    var bombSoundEffect: AVAudioPlayer?
    
    func playSound(_ sound: String){
        let path = Bundle.main.path(forResource: sound, ofType: nil)
        let url = URL(fileURLWithPath: path!)
        
        do {
            bombSoundEffect = try AVAudioPlayer(contentsOf: url)
            bombSoundEffect?.play()
        } catch {
            print("couldn't load file")
        }
        
    }
    func dropBrick(){
        playSound("harddrop.mp3")
    }
    func original(){
        playSound("tetris_original.mp3")
    }
    func gameOver(){
        playSound("gameover.mp3")
    }
    func fall(){
        playSound("fall.mp3")
    }
    
}
