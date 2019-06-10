//
//  ViewController.swift
//  MusicApp
//
//  Created by Trung Le on 6/8/19.
//  Copyright © 2019 Trung Le. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var topView : UIView = UIView()
    var mainlabel1 : UILabel = UILabel()
    var mainlabel2 : UILabel = UILabel()
    var clock: UIButton = UIButton()
    var image: UIImageView = UIImageView()
    var timeSlider : UISlider = UISlider()
    var time : UIView = UIView()
    var heart : UIButton = UIButton()
    var dot : UIButton = UIButton()
    var timeBegin : UILabel = UILabel()
    var timeFinish : UILabel = UILabel()
    var mainlabel : UILabel = UILabel()
    var subLabel1 : UILabel = UILabel()
    var subLabel2 : UILabel = UILabel()
    var playPauseButton: UIButton = UIButton()
    var nextButton: UIButton = UIButton()
    var previousButton: UIButton = UIButton()
    var volumeSlider : UISlider = UISlider()
    var volumeMinImage : UIImageView = UIImageView()
    var volumeMaxImage : UIImageView = UIImageView()
    var subView : UIView = UIView()
    var networkLogo : UIButton = UIButton()
    var threeDotsButton : UIButton = UIButton()
    
    
    var isPlay = true
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray
        layoutTopView()
        LayoutImage()
        LayoutTime()
        LayoutTb()
        LayoutTf()
        layoutMain()
        layoutSub1()
        layoutSub2()
        layoutPlay()
        layoutNext()
        layoutPrevious()
        layoutSubView()
        layoutNetworkLogo()
        layoutDotsButton()
    }

    private func layoutTopView(){
        view.addSubview(topView)
        
        topView.translatesAutoresizingMaskIntoConstraints = false
        topView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        topView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        topView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        topView.heightAnchor.constraint(equalToConstant: 40).isActive = true
//        topView.backgroundColor = .black
        
        mainlabel1 = UILabel.init(parrentView: topView, text: "Độ Ta Không Độ Nàng", font: .boldSystemFont(ofSize: 18), equal: view.safeAreaLayoutGuide.topAnchor, top_anchor: 0)
        mainlabel1.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
//        mainlabel1.centerYAnchor.constraint(equalTo: topView.centerYAnchor).isActive = true
        
        mainlabel2 = UILabel.init(parrentView: topView, text: "Thái Quỳnh", font: .boldSystemFont(ofSize: 10), equal: mainlabel1.bottomAnchor, top_anchor: 5)
        mainlabel2.centerXAnchor.constraint(equalTo: topView.centerXAnchor).isActive = true
        
        
        clock = UIButton.init(parrentVIew: topView, name: "clock", width: 20, height: 20)
        clock.centerYAnchor.constraint(equalTo: topView.centerYAnchor).isActive = true
        clock.trailingAnchor.constraint(equalTo: topView.trailingAnchor).isActive = true
        
        heart = UIButton.init(parrentVIew: topView, name: "scrolldown.jpg", width: 20, height: 20)
        heart.leadingAnchor.constraint(equalTo: topView.leadingAnchor).isActive = true
        heart.centerYAnchor.constraint(equalTo: topView.centerYAnchor).isActive = true
        
    }
    private func LayoutImage(){
        image = UIImageView.init(parrentView: view, name: "image")
        
        image.topAnchor.constraint(equalTo: mainlabel2.bottomAnchor, constant: 20).isActive = true
        image.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        image.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        image.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 2/5).isActive = true
        
    }

    private func LayoutTime(){
            view.addSubview(time)
            time.translatesAutoresizingMaskIntoConstraints = false
            time.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
            time.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
            time.topAnchor.constraint(equalTo: image.bottomAnchor, constant: 20 ).isActive = true
            time.heightAnchor.constraint(equalToConstant: 40).isActive = true
//            time.backgroundColor = .black
        
            heart = UIButton.init(parrentVIew: time, name: "heart", width: 20, height: 20)
            heart.leadingAnchor.constraint(equalTo: time.leadingAnchor).isActive = true
            heart.centerYAnchor.constraint(equalTo: time.centerYAnchor).isActive = true
            
            dot = UIButton.init(parrentVIew: time, name: "3dots.jpg", width: 20, height: 20)
            dot.centerYAnchor.constraint(equalTo: time.centerYAnchor).isActive = true
            dot.trailingAnchor.constraint(equalTo: time.trailingAnchor).isActive = true
            
            timeSlider = UISlider.init(parrentView: time, min: .white, max: .black, trailing: dot.leadingAnchor, trailing_const: -5, leading: heart.trailingAnchor, leading_const: 5)
            timeSlider.centerYAnchor.constraint(equalTo: time.centerYAnchor).isActive = true
        
    }
    private func LayoutTb(){
        timeBegin = UILabel.init(parrentView: view, text: "00:00", font: .systemFont(ofSize: 18), equal: timeSlider.bottomAnchor, top_anchor: 5)
        timeBegin.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
    }
    
    private func LayoutTf(){
        timeFinish = UILabel.init(parrentView: view, text: "-4:06", font: .systemFont(ofSize: 18), equal: timeSlider.bottomAnchor, top_anchor: 5)
        timeFinish.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
    }
    private func layoutMain(){
        mainlabel = UILabel.init(parrentView: view, text: "Bài hát: Độ Ta Không Độ Nàng", font: .boldSystemFont(ofSize: 28), equal: timeFinish.bottomAnchor, top_anchor: 15)
        mainlabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    private func layoutSub1(){
        subLabel1 = UILabel.init(parrentView: view, text: "Phật ở trên kia cao quá \n Mãi mãi không độ tới nàng", font: .systemFont(ofSize: 25), equal: mainlabel.bottomAnchor, top_anchor: 10)
        subLabel1.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    private func layoutSub2(){
        subLabel2 = UILabel.init(parrentView: view, text: " Mãi mãi không độ tới nàng", font: .systemFont(ofSize: 25), equal: subLabel1.bottomAnchor, top_anchor: 10)
        subLabel2.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    private func layoutPlay(){
        playPauseButton = UIButton.init(parrentVIew: view, name: "play.jpg", width: 50, height: 50)
        playPauseButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        playPauseButton.topAnchor.constraint(equalTo: subLabel2.bottomAnchor, constant: 20).isActive = true
        playPauseButton.addTarget(self, action: #selector(playPauseButtonClick), for: .touchUpInside)
    }
    
    private func layoutNext(){
        nextButton = UIButton.init(parrentVIew: view, name: "skipnext.jpg", width: 50, height: 50)
        nextButton.topAnchor.constraint(equalTo: subLabel2.bottomAnchor, constant: 20).isActive = true
        nextButton.leadingAnchor.constraint(equalTo: playPauseButton.trailingAnchor, constant: 30).isActive = true
        nextButton.addTarget(self, action: #selector(skipNextButtonClick), for: .touchUpInside)
    }
    
    private func layoutPrevious(){
        previousButton = UIButton.init(parrentVIew: view, name: "skipprevious.jpg", width: 50, height: 50)
        previousButton.topAnchor.constraint(equalTo: subLabel2.bottomAnchor, constant: 20).isActive = true
        previousButton.trailingAnchor.constraint(equalTo: playPauseButton.leadingAnchor, constant: -30).isActive = true
    }
    private func layoutSubView(){
        view.addSubview(subView)
        subView.translatesAutoresizingMaskIntoConstraints = false
        subView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        subView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        subView.topAnchor.constraint(equalTo: playPauseButton.bottomAnchor, constant: 30 ).isActive = true
        subView.heightAnchor.constraint(equalToConstant: 40).isActive = true
//        subView.backgroundColor = .black
        
        volumeMinImage = UIImageView.init(parrentView: subView, name: "minvolume.jpg")
        volumeMinImage.widthAnchor.constraint(equalToConstant: 20).isActive = true
        volumeMinImage.heightAnchor.constraint(equalToConstant: 20).isActive = true
        volumeMinImage.leadingAnchor.constraint(equalTo: subView.leadingAnchor).isActive = true
        volumeMinImage.centerYAnchor.constraint(equalTo: subView.centerYAnchor).isActive = true
        
        volumeMaxImage = UIImageView.init(parrentView: subView, name: "maxvolume.jpg")
        volumeMaxImage.widthAnchor.constraint(equalToConstant: 20).isActive = true
        volumeMaxImage.heightAnchor.constraint(equalToConstant: 20).isActive = true
        volumeMaxImage.centerYAnchor.constraint(equalTo: subView.centerYAnchor).isActive = true
        volumeMaxImage.trailingAnchor.constraint(equalTo: subView.trailingAnchor).isActive = true
        
        volumeSlider = UISlider.init(parrentView: subView, min: .white, max: .black, trailing: volumeMaxImage.leadingAnchor, trailing_const: -5, leading: volumeMinImage.trailingAnchor, leading_const: 5)
        volumeSlider.centerYAnchor.constraint(equalTo: subView.centerYAnchor).isActive = true
    }
    
    private func layoutNetworkLogo(){
        networkLogo = UIButton.init(parrentVIew: view, name: "wave.jpg", width: 30, height: 30)
        networkLogo.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        networkLogo.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -10).isActive = true
    }
    
    private func layoutDotsButton(){
        threeDotsButton = UIButton.init(parrentVIew: view, name: "3dots.jpg", width: 30, height: 30)
        threeDotsButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        threeDotsButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -10).isActive = true
    }
    
    
    
    
    @objc func playPauseButtonClick(){
        if isPlay{
            playPauseButton.setImage(UIImage(named: "pause.jpg"), for: .normal)
            isPlay = false
        }else{
            playPauseButton.setImage(UIImage(named: "play.jpg"), for: .normal)
            isPlay = true
        }
    }
    
    @objc func skipNextButtonClick(){
        
    }
    
    
}

