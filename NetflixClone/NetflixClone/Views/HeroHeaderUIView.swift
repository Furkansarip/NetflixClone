//
//  HeroHeaderUIView.swift
//  NetflixClone
//
//  Created by Furkan Sarı on 21.09.2022.
//

import UIKit

class HeroHeaderUIView: UIView {
    
    let playButton : UIButton = {
       let playButton = UIButton()
        playButton.setTitle("Play", for: .normal)
        playButton.layer.backgroundColor = UIColor.systemBackground.cgColor
        playButton.layer.borderWidth = 1
        playButton.translatesAutoresizingMaskIntoConstraints = false
        playButton.layer.cornerRadius = 5
        return playButton
    }()
    
    let downloadButton : UIButton = {
       let button = UIButton()
        button.setTitle("Download", for: .normal)
        button.layer.backgroundColor = UIColor.systemBackground.cgColor
        button.layer.borderWidth = 1
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 5
        return button
    }()

    private let heroImageView : UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = UIImage(named: "jhn")
        return imageView
    }()
    
    func addGradient(){
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [ UIColor.clear.cgColor,
                                 UIColor.systemBackground.cgColor]
        gradientLayer.frame = bounds
        layer.addSublayer(gradientLayer)
    }
    
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        addSubview(heroImageView)
        addGradient()
        addSubview(playButton)
        addSubview(downloadButton)
        applyConstrains()
        
        
    }
    
    func applyConstrains(){
        let playButtonConstrains = [
            playButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 70),
                                    playButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -50),
                                    playButton.widthAnchor.constraint(equalToConstant: 120)
        ]
        let downloadButtonConstrains = [
            downloadButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -70),
                                         downloadButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -50),
            downloadButton.widthAnchor.constraint(equalToConstant: 120)
        ]
        
        NSLayoutConstraint.activate(playButtonConstrains)
        NSLayoutConstraint.activate(downloadButtonConstrains)
        
    }
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
       
        heroImageView.frame = bounds
        
    }
    required init?(coder: NSCoder) {
        fatalError()
    }

}
