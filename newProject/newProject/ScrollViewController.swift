//
//  ScrollViewController.swift
//  newProject
//
//  Created by Ketham Vamsi on 10/04/26.
//

import UIKit

class ScrollViewController: UIViewController{
    
    
    
    let scrollView = UIScrollView()
    let stackView = UIStackView()
    
    let images = ["show1", "show2", "show3", "show4","show5","show6","show1", "show2", "show3", "show4","show5","show6"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupScrollView()
        setupContent()
        let headerView = UIView()
        headerView.backgroundColor = UIColor.systemYellow
        headerView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: 115)
        
        let titleLabel = UILabel(frame: CGRect(x: 60, y: 70, width: 200, height: 30))
        titleLabel.text = "TrackTV ▶︎"
        titleLabel.font = UIFont.boldSystemFont(ofSize: 22)

        // Search Icon
        let searchIcon = UIImageView(frame: CGRect(x: 320, y: 75, width: 24, height: 24))
        searchIcon.image = UIImage(systemName: "magnifyingglass")
        searchIcon.tintColor = .white

        // Menu Icon
//        let menuIcon = UIImageView(frame: CGRect(x:400, y: 75, width: 50, height: 50))
//        menuIcon.image = UIImage(systemName: "ellipsis.vertical")
//        menuIcon.tintColor = .white

        headerView.addSubview(titleLabel)
        headerView.addSubview(searchIcon)
       // headerView.addSubview(menuIcon)
        
        view.addSubview(headerView)
        // Do any additional setup after loading the view.
    }
    private func setupScrollView() {
        // Add scrollView
        view.addSubview(scrollView)
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            scrollView.heightAnchor.constraint(equalToConstant: 400)
        ])
        
        // Horizontal scroll
        scrollView.isPagingEnabled = false
        
        // Add stackView inside scrollView
        scrollView.addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        stackView.axis = .vertical
        stackView.spacing = 0
        stackView.distribution = .fillEqually
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            stackView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            stackView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            stackView.heightAnchor.constraint(equalTo: scrollView.heightAnchor,constant: 2000),
            stackView.widthAnchor.constraint(equalTo: scrollView.widthAnchor)
        ])
        
    }
    
    private func setupContent() {
        
        for imgName in images {
                
                let imageView = UIImageView()
                imageView.contentMode = .scaleAspectFill
                imageView.clipsToBounds = true
                imageView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
                imageView.translatesAutoresizingMaskIntoConstraints = false
                
                // Load correct image
                if let image = UIImage(named: imgName) {
                    imageView.image = image
                } else {
                    print("❌ Image not found:", imgName)
                    imageView.image = UIImage(systemName: "photo")
                }
                
                stackView.addArrangedSubview(imageView)
                
                // VERY IMPORTANT
                imageView.widthAnchor.constraint(equalTo: scrollView.widthAnchor).isActive = true
            imageView.heightAnchor.constraint(equalToConstant: 300).isActive = true
            }
   }
    // IMPORTANT for vertical scrolling
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}

