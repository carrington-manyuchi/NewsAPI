//
//  NewsTableViewCell.swift
//  NewsAPI
//
//  Created by Carrington Tafadzwa Manyuchi on 2023/04/08.
//

import UIKit

class NewsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var headingLabel: UILabel!
    @IBOutlet weak var descLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
