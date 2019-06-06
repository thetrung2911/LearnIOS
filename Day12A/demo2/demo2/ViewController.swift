//
//  ViewController.swift
//  demo2
//
//  Created by Trung Le on 6/3/19.
//  Copyright © 2019 Trung Le. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var i: Int = 0
    @IBOutlet weak var intView: UILabel!
    
    var time: Timer!
    var lock = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
   
    }
    @objc func start1(){
        i += 1
        intView.text = String(i)
    }

    @IBAction func start(_ sender: Any) {
        if lock == true {
             time = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(start1), userInfo: nil, repeats: true)
            lock = false
            
        }
       
    }
    
    @IBAction func stop(_ sender: Any) {
        if lock == false {
        time.invalidate()
        lock = true
        }
        
    }
    @IBAction func reset(_ sender: Any) {
        i=0
        intView.text = String(i)
    }
}

