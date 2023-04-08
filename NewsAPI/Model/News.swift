//
//  News.swift
//  NewsAPI
//
//  Created by Carrington Tafadzwa Manyuchi on 2023/04/08.
//

import Foundation

struct  NewsApi: Decodable {
    var status: String
    var totalResults: Int
    var articles: [Article]
}

struct Article: Decodable {
    var author: String?
    var title: String?
    var description: String?
    var publishedAt: String?
}
