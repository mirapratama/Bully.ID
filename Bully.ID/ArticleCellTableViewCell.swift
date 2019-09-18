//
//  ArticleCellTableViewCell.swift
//  Bully.ID
//
//  Created by PRATAMA Mira on 9/11/19.
//  Copyright © 2019 Youth IGF Indonesia. All rights reserved.
//

import UIKit

class ArticleCellTableViewCell: UITableViewCell {
    
    @IBOutlet var bg: UIImageView!
    @IBOutlet weak var whatIsCyberbullying: UILabel!
    @IBOutlet weak var articleDescription: UILabel!
    
    func setArticle(article:Article){
        bg.image = article.image
        whatIsCyberbullying.text = article.title
        articleDescription.text = article.description
    }
    
}
