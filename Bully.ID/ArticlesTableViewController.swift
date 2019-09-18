//
//  ArticlesTableViewController.swift
//  Bully.ID
//
//  Created by PRATAMA Mira on 9/11/19.
//  Copyright © 2019 Youth IGF Indonesia. All rights reserved.
//

import UIKit

class ArticlesTableViewController: UITableViewController {

    var articles: [Article] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        articles = createArticles()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return articles.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let article = articles[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ArticleCell") as! ArticleCellTableViewCell
        cell.setArticle(article: article)
        
        return cell
    }
    
    func createArticles() -> [Article] {
        var tempArticle: [Article] = []
        for n in 1...10{
            let article = Article(title: "Title \(n)", description: "Description \(n)", image: UIImage(named: "Your Session")!)
            tempArticle.append(article)
        }
        
        return tempArticle
    }
}
