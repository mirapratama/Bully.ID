//
//  ArticleDetailViewController.swift
//  Bully.ID
//
//  Created by PRATAMA Mira on 9/18/19.
//  Copyright © 2019 Youth IGF Indonesia. All rights reserved.
//

import UIKit

class ArticleDetailViewController: UIViewController {

    @IBOutlet weak var articleImage: UIImageView!
    @IBOutlet weak var articleTitle: UILabel!
    @IBOutlet weak var articleDescription: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        articleImage.image = selectedArticle.image
        articleTitle.text = selectedArticle.title
        articleDescription.text = selectedArticle.description
    }
    
    override func viewDidAppear(_ animated: Bool) {
        ViewHelper.show(navigationController: navigationController)
    }

}
