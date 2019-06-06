//
//  ViewController.swift
//  fooding
//
//  Created by Trung Le on 5/31/19.
//  Copyright © 2019 Trung Le. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupLayout()
    }
    func setupLayout(){
        view.addSubview(topImageView)
        view.addSubview(centerView)
        view.addSubview(bottomView)
        
        
        
        // bắt buộc đặt isActive = true sau mỗi constraint
        // căn top theo top cha
        topImageView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        // căn left theo left cha
        topImageView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        // căn right theo right cha
        topImageView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        // căn height tỉ lệ theo height cha
        topImageView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 2/7).isActive = true
        
        centerView.translatesAutoresizingMaskIntoConstraints = false
        centerView.topAnchor.constraint(equalTo: topImageView.bottomAnchor).isActive = true
        centerView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        centerView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        centerView.bottomAnchor.constraint(equalTo: bottomView.topAnchor).isActive = true
        
        // layout bottomView căn trái, phải, dưới và đặt height
        bottomView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        bottomView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        bottomView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        bottomView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1/7).isActive = true
        
        
        // add nút vào view sẽ chứa nó, không bắt buộc lúc nào cũng add vào view to nhất
        bottomView.addSubview(addButton)
        // layout nút addButton căn giữa trục X, Y so với view cha, và đặt tỉ lệ width height so với view cha
        addButton.centerXAnchor.constraint(equalTo: bottomView.centerXAnchor).isActive = true
        addButton.centerYAnchor.constraint(equalTo: bottomView.centerYAnchor).isActive = true
        addButton.widthAnchor.constraint(equalTo: bottomView.widthAnchor, multiplier: 4/5).isActive = true
        addButton.heightAnchor.constraint(equalTo: bottomView.heightAnchor, multiplier: 1/2).isActive = true
    }
    let centerView = CenterView()
    let topImageView: UIImageView = {
    let imageView = UIImageView ()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "bun_bo")
        imageView.contentMode = .scaleToFill
        return imageView
    } ()
    
//    let centerView = CenterView()
    
    // Khởi tạo view dưới cùng
    let bottomView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        // đặt màu background
        view.backgroundColor = .white
        // đổ màu shadow
        view.layer.shadowColor = UIColor.black.cgColor
        // set opacity cho shadow, dải từ 0 -> 1
        view.layer.shadowOpacity = 0.1
        // bo viền cho view
        view.layer.cornerRadius = 20
        return view
    }()
    let addButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        // set màu nền cho nút
        button.backgroundColor = UIColor(red:0.00, green:0.70, blue:0.27, alpha:1.0)
        // bo viền nút
        button.layer.cornerRadius = 10
        // set tên nút (title)
        button.setTitle("ADD", for: .normal)
        // set màu title
        button.setTitleColor(.white, for: .normal)
        return button
    }()
    

}

