//
//  CustomCell.swift
//  newProject
//
//  Created by Ketham Vamsi on 10/04/26.
//

import UIKit

class CustomCell: UITableViewCell {
    
    let titleLabel = UILabel()
    let episodeLabel = UILabel()
    let nameLabel = UILabel()
    let progress = UIProgressView()
    let statusLabel = UILabel()
    let watchedLabel = UILabel()
    let button = UIButton()
    let imageLabel = UIImageView()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        //image
               imageLabel.frame = CGRect(x: 14, y: 15, width: 80, height: 100)
               imageLabel.contentMode = .scaleAspectFill
               imageLabel.layer.cornerRadius = 10
               imageLabel.clipsToBounds = true
               contentView.addSubview(imageLabel)
        
        
        // Title
               titleLabel.frame = CGRect(x: 100, y: 23, width: 220, height: 20)
               titleLabel.font = UIFont.boldSystemFont(ofSize: 16)
               contentView.addSubview(titleLabel)
        
        // Episode
               episodeLabel.frame = CGRect(x: 100, y: 43, width: 220, height: 18)
               episodeLabel.font = UIFont.systemFont(ofSize: 14)
               //episodeLabel.textColor = .gray
               contentView.addSubview(episodeLabel)
        
        //name
               nameLabel.frame = CGRect(x: 165, y: 43, width: 220, height: 18)
               nameLabel.font = UIFont.systemFont(ofSize: 14)
        contentView.addSubview(nameLabel)
        
        
        //progress
        progress.frame = CGRect(x: 100, y: 68, width: 250, height: 200)
        progress.progressTintColor = .systemBlue
        progress.trackTintColor = .lightGray
        progress.layer.cornerRadius = 5
        progress.clipsToBounds = true

        contentView.addSubview(progress)
        
        
        
        
        //status
        statusLabel.frame = CGRect(x: 353, y: 62, width: 220, height: 18)
                statusLabel.font = UIFont.systemFont(ofSize: 14)
                contentView.addSubview(statusLabel)
        
        // Watched
               watchedLabel.frame = CGRect(x: 255, y: 88, width: 220, height: 18)
               watchedLabel.font = UIFont.systemFont(ofSize: 14)
               watchedLabel.textColor = .gray
               self.addSubview(watchedLabel)
        // button
              button.frame = CGRect(x: 100, y: 84, width: 150, height: 25)
        button.setTitle("Episode info ", for: .normal)
        button.setTitleColor(.white, for: .normal)
//        button.layer.borderWidth = 1
//        button.layer.borderColor = UIColor.white.cgColor
        button.titleLabel?.font = UIFont.systemFont(ofSize: 12)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .gray
        button.layer.cornerRadius = 10
        button.clipsToBounds = true
        self.addSubview(button)
        
    
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

}
