//
//  PostFetcher.swift
//  Bulleseye
//
//  Created by ekincare on 18/05/23.
//

import Foundation
import SwiftUI

//{
//    "userId": 1,
//    "id": 1,
//    "title": "sunt aut facere repellat provident occaecati excepturi optio reprehenderit",
//    "body": "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto"
//  },

struct Post: Identifiable, Decodable{
    let userId: Int
    let id: Int
    let title: String
    let body: String
}

class PostFetcher: ObservableObject {
    
    @Published var posts = [Post]()
    
    func networking(){
        
        let url = URL(string: "https://jsonplaceholder.typicode.com/posts")!
        
        URLSession.shared.dataTask(with: url) { ( data, response, error) in
            do {
                let tempPosts = try JSONDecoder().self.decode([Post].self, from: data!)
                DispatchQueue.main.async {
                    self.posts=tempPosts
                }
                
            }
            catch{
                print(error.localizedDescription)
                
            }
        }
    }
    
}
