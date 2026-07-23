//
//  ApiViewController.swift
//  newProject
//
//  Created by Ketham Vamsi on 19/04/26.
//

import UIKit


protocol ApiService {
    func updateUI()
}

class ApiViewController: UIViewController, UITableViewDataSource,UITableViewDelegate, ApiService, SendDataBack {
    
    
    func sendDataBack(data: String) {
        button.setTitle(data, for: .normal)
    }
    
    
    
    var button = UIButton()
    func updateUI() {
        self.posts = viewModel.posts
        self.tableView.reloadData()
    }
    
    
//    struct Post: Codable {
//        let id: Int
//        let title: String
//        let body: String
//    }
    var posts: [Post] = []

//    func fetchPosts() {
//            guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else { return }
//            
//            URLSession.shared.dataTask(with: url) { data, response, error in
//                
//                if let data = data {
//                    do {
//                        let result = try JSONDecoder().decode([Post].self, from: data)
//                        
//                        DispatchQueue.main.async {
//                            self.posts = result   // ✅ store data
//                            self.tableView.reloadData() // ✅ refresh UI
//                        }
//                        
//                    } catch {
//                        print("Decoding error:", error)
//                    }
//                }
//            }.resume()
//        }
    let tableView = UITableView()
    
    let viewModel = PostViewModel()
    
    @objc func buttonTapped() {
        
        let vc = VamsiViewController()
        vc.view.backgroundColor = .red
        vc.delegate = self
        
        vc.nameString = "Ketham"
        
        self.present(vc, animated: true)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        //view.addSubview(tableView)
        tableView.frame = view.bounds
        tableView.dataSource = self
        tableView.delegate = self
        viewModel.deledate = self
        //viewModel.fetchPosts()
        
        
        button.frame = CGRect(x: 100, y: 300, width: 200, height: 40)
        button.setTitle("click me", for: .normal)
        button.tintColor = .white
        button.titleLabel?.textColor = .white
        button.backgroundColor = .blue
        button.addTarget(
            self,
            action: #selector(buttonTapped),
            for: .touchUpInside
        )
        self.view.addSubview(button)

        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
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
            return posts.count   // ✅ correct
        }
        
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 80
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            
            let post = posts[indexPath.row]
            
           
            cell.textLabel?.text = post.title   // ✅ show API data
           cell.detailTextLabel?.text = post.body
            
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


