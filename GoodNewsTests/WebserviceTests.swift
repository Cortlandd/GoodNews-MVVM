//
//  WebserviceTests.swift
//  GoodNewsTests
//
//  Created by Cortland Walker on 10/6/20.
//

import XCTest
@testable import GoodNews

class WebserviceTests: XCTestCase {
    
    var article1 = Article(source: Source(id: "source id", name: "source name"), author: "author", title: "title", description: "description", url: "url", urlToImage: "url to image", publishedAt: "published at", content: "content")
    var article2 = Article(source: Source(id: "source id 2", name: "source name"), author: "author", title: "title", description: "description", url: "url", urlToImage: "url to image", publishedAt: "published at", content: "content")

    func test_Webservice_getArticles_success() {
        
        // Given
        let webservice = Webservice()
        let url = URL(string: "https://newsapi.org/v2/top-headlines?country=us&apiKey=###")!
        var testArticles = [Article?]()
        
        // When
        webservice.getArticles(url: url) { articles in
            testArticles.append(contentsOf: articles!)
        }
        
        // Then
        XCTAssertTrue(<#T##expression: Bool##Bool#>)
        XCTAssertNotNil(testArticles)
        
    }
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

}
