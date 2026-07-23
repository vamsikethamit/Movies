//
//  MoviesViewController.swift
//  newProject
//
//  Created by Ketham Vamsi on 09/04/26.
//

import UIKit

class MoviesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let shows = [
        [
            "title":"For All Mankind",
            "episode":"S04E05",
            "name":"Lagacy",
            "progress":"0.2",
            "status":"4/8",
            "watched":"4 left",
            "image":"show1"
        ],
        [
            "title":"Shogun",
            "episode":"S02E05",
            "name":"Anjin",
            "progress":"0.8",
            "status":"1/8",
            "watched":"2 left",
            "image":"show2"
        ],
        [
            "title":"The Bear",
            "episode":"S02E05",
            "name":"Braciole",
            "progress":"0.5",
            "status":"2/8",
            "watched":"9 left",
            "image":"show3"
        ],
        [
            "title":"Chernobyl",
            "episode":"S01E08",
            "name":"Vichnaya Payment",
            "progress":"0.9",
            "status":"5/5",
            "watched":"ended",
            "image":"show4"
        ],
        [
            "title":"kalaki",
            "episode":"S01E06",
            "progress":"0.4",
            "status":"4/8",
            "watched":"4 left",
            "image":"show5"
        ],
        [
            "title":"Succession",
            "episode":"S01E05",
            "name":"Da",
            "progress":"0.7",
            "status":"4/8",
            "watched":"4 left",
            "image":"show6"
        ],
    ]

    
    let tableView = UITableView()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
        tableView.frame = view.bounds
        tableView.dataSource = self
        tableView.delegate = self
        
        tableView.register(CustomCell.self, forCellReuseIdentifier: "CustomCell")
        let headerView = UIView()
        headerView.backgroundColor = UIColor.systemYellow
        headerView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: 115)
        
        let titleLabel = UILabel(frame: CGRect(x: 60, y: 70, width: 200, height: 30))
        titleLabel.text = "TrackTV ▶︎"
        titleLabel.font = UIFont.boldSystemFont(ofSize: 22)

        // change two
        
        
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
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        shows.count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        140
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell", for: indexPath) as! CustomCell
        
        let item = shows[indexPath.row]
        cell.titleLabel.text = item["title"] as! String
        cell.episodeLabel.text = item["episode"] as? String
        cell.nameLabel.text = item["name"] as? String
        cell.progress.progress = Float(item["progress"] ?? "0") ?? 0
        cell.statusLabel.text = item["status"] as? String
        cell.watchedLabel.text = item["watched"] as? String
        cell.imageLabel.image = UIImage(named: item["image"] as! String)
        return cell
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
