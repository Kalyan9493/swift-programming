//
//  File.swift
//  SPA API
//
//  Created by Kalyan on 17/02/21.
//

import Foundation

struct APIManager{
    let urlString = "https://api.github.com/users?since=100"
    
    func handleFetchUser(){
        if let url = URL(string: urlString){
            let session = URLSession( configuration: .default)
            let task = session.dataTask(with: url, completionHandler: handle(data:response:error:))
            
            task.resume()
        }
    }
    
    func handle(data: Data? , response: URLResponse? , error: Error?){
        if error != nil{
            print(error!)
            return
        }
        
//        if let apiData = data{
//            let stringData = String(data: apiData, encoding: .utf8)
//            
//        }
        if let apiData = data{
         let stringData = String(data: apiData, encoding: .utf8)
            print(stringData)
        }
//        var result = JSONDecoder.decode(Response.self, from: data)
//        var result = Result?
//        do{
//            result = try JSONDecoder().decode(type:Result.self, from:data)
//        }
        
    }
}


struct Response: Decodable{
    var login : String
    var id : Int
    var node_id : String
}

//{
//  "login": "jvantuyl",
//  "id": 101,
//  "node_id": "MDQ6VXNlcjEwMQ==",
//  "avatar_url": "https://avatars.githubusercontent.com/u/101?v=4",
//  "gravatar_id": "",
//  "url": "https://api.github.com/users/jvantuyl",
//  "html_url": "https://github.com/jvantuyl",
//  "followers_url": "https://api.github.com/users/jvantuyl/followers",
//  "following_url": "https://api.github.com/users/jvantuyl/following{/other_user}",
//  "gists_url": "https://api.github.com/users/jvantuyl/gists{/gist_id}",
//  "starred_url": "https://api.github.com/users/jvantuyl/starred{/owner}{/repo}",
//  "subscriptions_url": "https://api.github.com/users/jvantuyl/subscriptions",
//  "organizations_url": "https://api.github.com/users/jvantuyl/orgs",
//  "repos_url": "https://api.github.com/users/jvantuyl/repos",
//  "events_url": "https://api.github.com/users/jvantuyl/events{/privacy}",
//  "received_events_url": "https://api.github.com/users/jvantuyl/received_events",
//  "type": "User",
//  "site_admin": false
//}
