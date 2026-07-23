//
//  PostViewModel.swift
//  newProject
//
//  Created by Ketham Vamsi on 08/06/26.
//

import Foundation

class PostViewModel {
    
    init() {
        
    }
    
    var posts: [Post] = []
    
    var deledate: ApiService?
    
    func fetchPosts() {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else { return }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            if let data = data {
                do {
                    let result = try JSONDecoder().decode([Post].self, from: data)
                    
                    DispatchQueue.main.async {
                        self.posts = result   // ✅ store data
                        self.deledate?.updateUI()
                    }
                    
                } catch {
                    print("Decoding error:", error)
                }
            }
        }.resume()
    }
    
    
}
