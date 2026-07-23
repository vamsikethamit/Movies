//
//  Defaultcell.swift
//  newProject
//
//  Created by Ketham Vamsi on 10/04/26.
//

import UIKit

class Defaultcell: UICollectionViewCell {
    
    static let identifier = "MyCollectionViewCell"
    
    let imageView: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
        //image.backgroundColor = .red
        image.translatesAutoresizingMaskIntoConstraints = false
        image.layer.cornerRadius = 10
        return image
    }()
    let titleLabel: UILabel = {
           let label = UILabel()
           label.textAlignment = .center
           label.font = .systemFont(ofSize: 14, weight: .medium)
           label.translatesAutoresizingMaskIntoConstraints = false
           return label
       }()
     
     override init(frame: CGRect) {
         super.init(frame:  frame)
         contentView.addSubview(imageView)
         contentView.addSubview(titleLabel)
       
         setupConstraints()
                 contentView.backgroundColor = .red
                 contentView.layer.cornerRadius = 10
         
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    private func setupConstraints() {
           NSLayoutConstraint.activate([
               imageView.topAnchor.constraint(equalTo: contentView.topAnchor),
               imageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
               imageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
               imageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
               imageView.heightAnchor.constraint(equalToConstant: 120),
              
               
               titleLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 5),
               titleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
               titleLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
               titleLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -5)
           ])
       }
     }
