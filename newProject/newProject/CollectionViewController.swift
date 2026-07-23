//
//  CollectionViewController.swift
//  newProject
//
//  Created by Ketham Vamsi on 11/04/26.
//

import UIKit

class CollectionViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(
                   withReuseIdentifier: Defaultcell.identifier,
                   for: indexPath
               ) as!Defaultcell
               
               //cell.titleLabel.text = data[indexPath.item]
        cell.imageView.image = UIImage(named: data[indexPath.row])
        
               
               return cell
    }

    var collectionView: UICollectionView!
    
    let data = ["show1", "show2", "show3", "show4", "show5","show6","show1", "show2", "show3", "show4", "show5","show6","show1", "show2", "show3", "show4", "show5","show6","show1", "show2", "show3", "show4", "show5","show6"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        setupCollectionView()
          
        
        let headerView = UIView()
        headerView.backgroundColor = UIColor.systemYellow
        headerView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: 140)
        
        let titleLabel = UILabel(frame: CGRect(x: 60, y: 70, width: 200, height: 30))
        titleLabel.text = "TrackTV ▶︎"
        titleLabel.font = UIFont.boldSystemFont(ofSize: 22)

        // Search Icon
        let searchIcon = UIImageView(frame: CGRect(x: 320, y: 75, width: 24, height: 24))
        searchIcon.image = UIImage(systemName: "magnifyingglass")
        searchIcon.tintColor = .white

        // Menu Icon
        let menuIcon = UIImageView(frame: CGRect(x:400, y: 75, width: 50, height: 50))
        menuIcon.image = UIImage(systemName: "ellipsis.vertical")
        menuIcon.tintColor = .white

        headerView.addSubview(titleLabel)
        headerView.addSubview(searchIcon)
        headerView.addSubview(menuIcon)
        view.addSubview(headerView)

        // Do any additional setup after loading the view.
    }
    func setupCollectionView() {
            
            let layout = UICollectionViewFlowLayout()
            layout.scrollDirection = .vertical
            layout.minimumLineSpacing = 10
            layout.minimumInteritemSpacing = 10
        layout.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
            collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
           collectionView.translatesAutoresizingMaskIntoConstraints = false
            
            view.addSubview(collectionView)
            
            NSLayoutConstraint.activate([
                collectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 70),
                collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
                collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
                collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10)
            ])
            
            collectionView.delegate = self
            collectionView.dataSource = self
            
            collectionView.backgroundColor = .white
            
            // 🔥 Register Cell
            collectionView.register(Defaultcell.self,
                                    forCellWithReuseIdentifier: Defaultcell.identifier)
        }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
extension CollectionViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let layout = collectionViewLayout as! UICollectionViewFlowLayout
            
            let itemsPerRow: CGFloat = 3
            let spacing = layout.minimumInteritemSpacing
            let insets = layout.sectionInset.left + layout.sectionInset.right
            
            let totalSpacing = (itemsPerRow - 1) * spacing + insets
            
            let width = (collectionView.frame.width - totalSpacing) / itemsPerRow
            
            return CGSize(width: width, height: width)
        
    }

}
