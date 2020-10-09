//
//  Webservice.swift
//  GoodNews
//
//  Created by Cortland Walker on 10/6/20.
//

import Foundation

class Webservice {
    
    func getArticles(url: URL, completionHandler: @escaping ([Article]?) -> ()) {
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error {
                print(error.localizedDescription)
                completionHandler(nil)
            } else if let data = data {
                
                let articleList = try? JSONDecoder().decode(ArticleList.self, from: data)
                
                if let articleList = articleList {
                    print(articleList.articles)
                    completionHandler(articleList.articles)
                }
                                
            }
            
        }.resume()
        
    }
    
}
