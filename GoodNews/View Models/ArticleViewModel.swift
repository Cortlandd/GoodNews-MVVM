//
//  ArticleViewModel.swift
//  GoodNews
//
//  Created by Cortland Walker on 10/6/20.
//

import Foundation

struct ArticleListViewModel {
    let articles: [Article]
}

extension ArticleListViewModel {

    var numberOfSections: Int {
        return 1
    }
    
    func numberOfRowsInSection(_ section: Int) -> Int {
        return self.articles.count
    }
    
    func articlesAtIndex(_ index: Int) -> ArticleViewModel {
        let article = self.articles[index]
        return ArticleViewModel(article)
    }
}

struct ArticleViewModel {
    let article: Article?
}

extension ArticleViewModel {
    init(_ article: Article) {
        self.article = article
    }
    
    var title: String? {
        return self.article?.title
    }
    
    var description: String? {
        return self.article?.description
    }
}

