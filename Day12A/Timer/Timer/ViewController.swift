//
//  ViewController.swift
//  Timer
//
//  Created by Trung Le on 6/3/19.
//  Copyright © 2019 Trung Le. All rights reserved.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {
    var timer = Timer()
    var i = 30
    
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var intView: UILabel!
    
        override func viewDidLoad() {
            super.viewDidLoad()
        // Do any additional setup after loading the view
            
        timer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(timerrr), userInfo: nil, repeats: true)
    }
    
    @objc func timerrr(){
        i -= 1
        if i < 15{
            playSound()
        }
        if i == 0{
            timer.invalidate()
        }
        
        intView.text = String(i)
        view1.frame = CGRect(x: view1.frame.minX, y: view1.frame.minY + 30, width: view1.frame.width, height: view1.frame.height - 30 )
        
        
    }
    var player: AVAudioPlayer?
    
    func playSound() {
        guard let url = Bundle.main.url(forResource: "bip", withExtension: "mp3") else { return }
        
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            try AVAudioSession.sharedInstance().setActive(true)
            
            /* The following line is required for the player to work on iOS 11. Change the file type accordingly*/
            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
            
            /* iOS 10 and earlier require the following line:
             player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileTypeMPEGLayer3) */
            
            guard let player = player else { return }
            
            player.play()
            
        } catch let error {
            print(error.localizedDescription)
        }
    }


}

