//
//  ParsingJson.swift
//  NewsAPI
//
//  Created by Carrington Tafadzwa Manyuchi on 2023/04/08.
//

import Foundation

func ParsingJson(completion: @escaping ([Article]) -> ()) {
    let urlString = "https://newsapi.org/v2/top-headlines?country=sa&category=business&apiKey=18929a4d97d347128bf237e9d29fc571"
    
    let url = URL(string: urlString)
    
    guard url != nil else {
        print("Error")
        return
    }
    
    let session = URLSession.shared
    
    let dataTask = session.dataTask(with: url!){ data, response, error in
        //checking errors
        
        if error == nil, data != nil {
            let decoder = JSONDecoder()
            do {
                let ParsingData = try decoder.decode(NewsApi.self, from: data!)
                // Closure calling
                
                completion(ParsingData.articles)
               
            } catch {
                print("error")
            }
        }
    }
    dataTask.resume()
}

