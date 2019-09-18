//
//  ArticleCellTableViewCell.swift
//  Bully.ID
//
//  Created by PRATAMA Mira on 9/11/19.
//  Copyright © 2019 Youth IGF Indonesia. All rights reserved.
//

import UIKit

class ArticleCellTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var articleImage: UIImageView!
    @IBOutlet var title: UILabel!
    @IBOutlet var articleDescription: UILabel!
    
    func setArticle(article:Article){
        articleImage.image = article.image
        title.text = article.title
        articleDescription.text = article.description
    }
    
}
