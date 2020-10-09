//
//  ArticleViewModelTests.swift
//  GoodNewsTests
//
//  Created by Cortland Walker on 10/6/20.
//

import XCTest
@testable import GoodNews

class ArticleListViiewModelTests: XCTestCase {
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
}

class ArticleViewModelTests: XCTestCase {

    var article = Article(source: Source(id: "source id", name: "source name"), author: "author", title: "title", description: "description", url: "url", urlToImage: "url to image", publishedAt: "published at", content: "content")
    
    var articleViewModel: ArticleViewModel!
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        //articleViewModel = ArticleViewModel(article)
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func test_articleViewModel_has_article() {
        
        // Given
        let articleViewModel: ArticleViewModel
        
        // When
        articleViewModel = ArticleViewModel(article)
        
        // Then
        XCTAssertNotNil(articleViewModel.article)
    }
    
    func test_articleViewModel_titleValue() {
        
        // Given // When
        articleViewModel = ArticleViewModel(article)
        
        // Then
        XCTAssertTrue(articleViewModel.title == article.title)
        XCTAssertNotNil(articleViewModel.title)
        
    }


}
