//
//  ViewController.swift
//  bai2
//
//  Created by Trung Le on 5/16/19.
//  Copyright © 2019 Trung Le. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var pass: UITextField!
    @IBOutlet weak var logIn: UIButton!
    @IBOutlet weak var face: UIButton!
    @IBOutlet weak var google: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTextField()
    }
    func configTextField(){
        username.placeholder = "Input your username"
        pass.placeholder = "Input your password"
        
        let usernameIconImageView = UIImageView(image: UIImage(named: "user"))
        usernameIconImageView.frame = CGRect(x: 0, y: 0, width: usernameIconImageView.image!.size.width + 10, height: usernameIconImageView.image!.size.height)
        usernameIconImageView.contentMode = .center
        username.leftView = usernameIconImageView
        username.leftViewMode = .always
        
        let passwordIconImageView = UIImageView(image: UIImage(named: "lock"))
        passwordIconImageView.frame = CGRect(x: 0, y: 0, width: passwordIconImageView.image!.size.width + 10, height: passwordIconImageView.image!.size.height)
        passwordIconImageView.contentMode = .center
        pass.leftView = passwordIconImageView
        pass.leftViewMode = .always
    }

}

