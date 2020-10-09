//
//  Article.swift
//  GoodNews
//
//  Created by Cortland Walker on 10/6/20.
//

import Foundation

struct ArticleList: Codable {
    let articles: [Article]
    
}

// MARK: - Article
struct Article: Codable {
    let source: Source
    let author: String
    let title: String
    let description: String
    let url: String
    let urlToImage: String
    let publishedAt: String
    let content: String

    enum CodingKeys: String, CodingKey {
        case source, author, title
        case description = "description"
        case url, urlToImage, publishedAt, content
    }
}

// MARK: - Source
struct Source: Codable {
    let id: String?
    let name: String
}
