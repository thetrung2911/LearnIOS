//
//  ViewController.swift
//  CodeLayout
//
//  Created by Tào Quỳnh on 5/27/19.
//  Copyright © 2019 Tào Quỳnh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let topView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .yellow
        return view
    }()
    
    let bottomView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .yellow
        return view
    }()
    
    let photoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "photo")
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
    }
    
    func setupView(){
        view.addSubview(topView)
        
        topView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        topView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        topView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        topView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1/3).isActive = true
        
        view.addSubview(bottomView)
        bottomView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        bottomView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        bottomView.trailingAnchor.constraint(equalTo: topView.trailingAnchor, constant: 0).isActive = true
        bottomView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1/5).isActive = true
        
        topView.addSubview(photoImageView)
        photoImageView.topAnchor.constraint(equalTo: topView.topAnchor, constant: 0).isActive = true
        photoImageView.leftAnchor.constraint(equalTo: topView.leftAnchor, constant: 0).isActive = true
        photoImageView.rightAnchor.constraint(equalTo: topView.rightAnchor, constant: 0).isActive = true
        photoImageView.bottomAnchor.constraint(equalTo: topView.bottomAnchor).isActive = true
        
    }
}

