//
//  ViewController.swift
//  NewsAPI
//
//  Created by Carrington Tafadzwa Manyuchi on 2023/04/08.
//

import UIKit

class NewsViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var newsData = [Article]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        ParsingJson { data in
            self.newsData = data
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
}




// MARK: - Adding the tables


extension NewsViewController: UITableViewDelegate, UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return newsData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! NewsTableViewCell
        cell.headingLabel.text = newsData[indexPath.row].author
        cell.descLabel.text = newsData[indexPath.row].description
        return cell
    }
    
    
}
