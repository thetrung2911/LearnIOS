//
//  Centerview.swift
//  fooding
//
//  Created by Trung Le on 5/31/19.
//  Copyright © 2019 Trung Le. All rights reserved.
//

import UIKit

class CenterView: UIView {
    
    // Để tạo một file CenterView.swift kế thừa UIView
    // B1: Chuột phải vào thư mục cha q ungPaoPotato, chọn NewFile
    // B2: Tag iOS, chọn Cocoa Touch Class -> Next
    // B3: Từ SubClass: nhập UIView,
    // B4: Nhập tên file (phía trên SubClass)
    // B5: Next -> Create
    
    
    // Khai báo các control nằm trong CenterView
    let kungPaoLabel = UILabel()
    let lunchLabel = UILabel()
    let midldlyLabel = UILabel()
    let locationImageView = UIImageView()
    let ratingView = UIView()
    let timeLabel = UILabel()
    let questionView = UIView()
    let deliveLabel = UILabel()
    let homeLabel = UILabel()
    let changeButton = UIButton()
    let codeTextField = UITextField()
    
    let ratingImageView = UIImageView()
    let ratingLabel = UILabel()
    let questionImageView = UIImageView()
    let questionLabel = UILabel()
    let percentImageView = UIImageView()
    let ques2ImageView = UIImageView()
    
    // Khởi tạo UIView
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupLayout()
        setupView()
    }
    
    // hàm bắt buộc để việc khởi tạo phải được thực thi
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // set layout cho các control
    func setupLayout(){
        kungPaoLabel.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(kungPaoLabel)
        kungPaoLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 20).isActive = true
        kungPaoLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20).isActive = true
        
        lunchLabel.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(lunchLabel)
        lunchLabel.topAnchor.constraint(equalTo: kungPaoLabel.bottomAnchor, constant: 4).isActive = true
        lunchLabel.leftAnchor.constraint(equalTo: kungPaoLabel.leftAnchor).isActive = true
        
        midldlyLabel.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(midldlyLabel)
        midldlyLabel.topAnchor.constraint(equalTo: lunchLabel.bottomAnchor, constant: 4).isActive = true
        midldlyLabel.leftAnchor.constraint(equalTo: lunchLabel.leftAnchor).isActive = true
        midldlyLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -20).isActive = true
        
        locationImageView.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(locationImageView)
        locationImageView.centerYAnchor.constraint(equalTo: kungPaoLabel.centerYAnchor).isActive = true
        locationImageView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -20).isActive = true
        locationImageView.widthAnchor.constraint(equalToConstant: 30).isActive = true
        locationImageView.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        ratingView.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(ratingView)
        ratingView.topAnchor.constraint(equalTo: midldlyLabel.bottomAnchor, constant: 16).isActive = true
        ratingView.leftAnchor.constraint(equalTo: midldlyLabel.leftAnchor).isActive = true
        ratingView.widthAnchor.constraint(equalToConstant: 50).isActive = true
        ratingView.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        ratingImageView.translatesAutoresizingMaskIntoConstraints = false
        ratingView.addSubview(ratingImageView)
        ratingImageView.leftAnchor.constraint(equalTo: ratingView.leftAnchor).isActive = true
        ratingImageView.centerYAnchor.constraint(equalTo: ratingView.centerYAnchor).isActive = true
        ratingImageView.widthAnchor.constraint(equalToConstant: 20).isActive = true
        ratingImageView.heightAnchor.constraint(equalTo: ratingImageView.widthAnchor).isActive = true
        
        ratingLabel.translatesAutoresizingMaskIntoConstraints = false
        ratingView.addSubview(ratingLabel)
        ratingLabel.leftAnchor.constraint(equalTo: ratingImageView.rightAnchor, constant: 4).isActive = true
        ratingLabel.centerYAnchor.constraint(equalTo: ratingView.centerYAnchor).isActive = true
        
        timeLabel.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(timeLabel)
        timeLabel.centerYAnchor.constraint(equalTo: ratingView.centerYAnchor).isActive = true
        timeLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        
        questionView.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(questionView)
        questionView.topAnchor.constraint(equalTo: ratingView.topAnchor, constant: 0).isActive = true
        questionView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -20).isActive = true
        questionView.widthAnchor.constraint(equalToConstant: 50).isActive = true
        questionView.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        questionLabel.translatesAutoresizingMaskIntoConstraints = false
        questionView.addSubview(questionLabel)
        questionLabel.rightAnchor.constraint(equalTo: questionView.rightAnchor).isActive = true
        questionLabel.centerYAnchor.constraint(equalTo: questionView.centerYAnchor).isActive = true
        
        questionImageView.translatesAutoresizingMaskIntoConstraints = false
        questionView.addSubview(questionImageView)
        questionImageView.centerYAnchor.constraint(equalTo: questionView.centerYAnchor).isActive = true
        questionImageView.rightAnchor.constraint(equalTo: questionLabel.leftAnchor, constant: -4).isActive = true
        questionImageView.widthAnchor.constraint(equalToConstant: 20).isActive = true
        questionImageView.heightAnchor.constraint(equalTo: questionImageView.widthAnchor).isActive = true
        
        deliveLabel.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(deliveLabel)
        deliveLabel.topAnchor.constraint(equalTo: ratingView.bottomAnchor, constant: 16).isActive = true
        deliveLabel.leftAnchor.constraint(equalTo: ratingView.leftAnchor).isActive = true
        
        changeButton.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(changeButton)
        changeButton.topAnchor.constraint(equalTo: deliveLabel.bottomAnchor, constant: 4).isActive = true
        changeButton.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -4).isActive = true
        changeButton.widthAnchor.constraint(equalToConstant: 80).isActive = true
        
        homeLabel.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(homeLabel)
        homeLabel.centerYAnchor.constraint(equalTo: changeButton.centerYAnchor).isActive = true
        homeLabel.leftAnchor.constraint(equalTo: deliveLabel.leftAnchor).isActive = true
        homeLabel.rightAnchor.constraint(equalTo: changeButton.leftAnchor, constant: -10).isActive = true
        
        codeTextField.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(codeTextField)
        codeTextField.topAnchor.constraint(equalTo: changeButton.bottomAnchor, constant: 8).isActive = true
        codeTextField.leftAnchor.constraint(equalTo: homeLabel.leftAnchor, constant: 0).isActive = true
        codeTextField.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -20).isActive = true
        codeTextField.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        // thêm ảnh vào textField
        percentImageView.translatesAutoresizingMaskIntoConstraints = false
        codeTextField.leftView = percentImageView
        codeTextField.leftViewMode = .always
        percentImageView.widthAnchor.constraint(equalToConstant: 20).isActive = true
        percentImageView.heightAnchor.constraint(equalTo: percentImageView.widthAnchor).isActive = true
        
        ques2ImageView.translatesAutoresizingMaskIntoConstraints = false
        codeTextField.rightView = ques2ImageView
        codeTextField.rightViewMode = .always
        ques2ImageView.widthAnchor.constraint(equalToConstant: 20).isActive = true
        ques2ImageView.heightAnchor.constraint(equalTo: ques2ImageView.widthAnchor).isActive = true
        
        
    }
    
    // set thuộc tính cho các control
    func setupView(){
        kungPaoLabel.text = "Bún Bò Huế 65 - Đường Láng"
        
        lunchLabel.text = "Bún bò Huế"
        lunchLabel.font = UIFont.systemFont(ofSize: 13)
        lunchLabel.textColor = .lightGray
        
        midldlyLabel.text = "Bún bò Huế ngon số 1 Hà Nội"
        midldlyLabel.font = UIFont.systemFont(ofSize: 13)
        midldlyLabel.textColor = .lightGray
        
        locationImageView.image = UIImage(named: "location")
        
        ratingImageView.image = UIImage(named: "star")
        
        ratingLabel.text = "4.98"
        ratingLabel.font = UIFont.systemFont(ofSize: 15)
        
        timeLabel.text = "20-30 mins"
        timeLabel.font = UIFont.systemFont(ofSize: 15)
        
        questionLabel.text = "300"
        questionLabel.font = UIFont.systemFont(ofSize: 15)
        
        questionImageView.image = UIImage(named: "help")
        
        deliveLabel.text = "Delivering Food To"
        deliveLabel.font = UIFont.systemFont(ofSize: 12)
        deliveLabel.textColor = .lightGray
        
        homeLabel.text = "Home (B 69A, Hoàng Văn Thái, Thanh ...)"
        homeLabel.font = UIFont.systemFont(ofSize: 14)
        
        changeButton.setTitle("CHANGE", for: .normal)
        changeButton.setTitleColor(UIColor.green, for: .normal)
        changeButton.titleLabel?.font = UIFont.systemFont(ofSize: 13)
        
        codeTextField.placeholder = " Apply Promo Code"
        codeTextField.backgroundColor = UIColor(red:0.95, green:0.95, blue:0.95, alpha:1.0)
        codeTextField.layer.cornerRadius = 6
        
        percentImageView.image = UIImage(named: "discount")
        ques2ImageView.image = UIImage(named: "help")
    }
    
}
