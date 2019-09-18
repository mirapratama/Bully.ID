//
//  DiscoverViewController.swift
//  Bully.ID
//
//  Created by PRATAMA Mira on 9/11/19.
//  Copyright © 2019 Youth IGF Indonesia. All rights reserved.
//

import UIKit

var selectedArticle: Article = Article(title: "", description: "", image: UIImage(named: "YourSession")!, date: "", type: 0)

class DiscoverViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var whatIsCyberbullying: UIView!
    @IBOutlet weak var events: UIView!
    var articles: [Article] = []
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        articles = createArticles()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        ViewHelper.hide(navigationController: navigationController)
    }
    
    func createArticles() -> [Article] {
        var tempArticle: [Article] = []
        
        let article1 = Article(title: "Title 1", description: "Description 1", image: UIImage(named: "YourSession")!, date: "", type: 0)
        let article2 = Article(title: "Title 2", description: "Description 2", image: UIImage(named: "Discover")!, date: "", type: 0)
        let article3 = Article(title: "Title 3", description: "Description 3", image: UIImage(named: "SOS")!, date: "", type: 0)
        let article4 = Article(title: "Title 4", description: "Description 4", image: UIImage(named: "YourSession")!, date: "", type: 0)
        let article5 = Article(title: "Title 5", description: "Description 5", image: UIImage(named: "Discover")!, date: "", type: 0)
        let article6 = Article(title: "Title 6", description: "Description 6", image: UIImage(named: "SOS")!, date: "", type: 0)
        let article7 = Article(title: "Title 7", description: "Description 7", image: UIImage(named: "YourSession")!, date: "", type: 0)
        let article8 = Article(title: "Title 8", description: "Description 8", image: UIImage(named: "Discover")!, date: "", type: 0)
        let article9 = Article(title: "Title 9", description: "Description 9", image: UIImage(named: "SOS")!, date: "", type: 0)
        let article10 = Article(title: "Title 10", description: "Description 10", image: UIImage(named: "YourSession")!, date: "", type: 0)

        tempArticle.append(article1)
        tempArticle.append(article2)
        tempArticle.append(article3)
        tempArticle.append(article4)
        tempArticle.append(article5)
        tempArticle.append(article6)
        tempArticle.append(article7)
        tempArticle.append(article8)
        tempArticle.append(article9)
        tempArticle.append(article10)
        return tempArticle
    }
    
    func createEvents() -> [Article] {
        var tempArticle: [Article] = []
        let article1 = Article(title: "Title 1", description: "Description 1", image: UIImage(named: "YourSession")!, date: "25\nOCT", type: 1)
        let article2 = Article(title: "Title 2", description: "Description 2", image: UIImage(named: "Discover")!, date: "26\nOCT", type: 1)
        let article3 = Article(title: "Title 3", description: "Description 3", image: UIImage(named: "SOS")!, date: "27\nOCT", type: 1)
        let article4 = Article(title: "Title 4", description: "Description 4", image: UIImage(named: "YourSession")!, date: "28\nOCT", type: 1)
        let article5 = Article(title: "Title 5", description: "Description 5", image: UIImage(named: "Discover")!, date: "29\nOCT", type: 1)
        let article6 = Article(title: "Title 6", description: "Description 6", image: UIImage(named: "SOS")!, date: "30\nOCT", type: 1)
        let article7 = Article(title: "Title 7", description: "Description 7", image: UIImage(named: "YourSession")!, date: "31\nOCT", type: 1)
        let article8 = Article(title: "Title 8", description: "Description 8", image: UIImage(named: "Discover")!, date: "1\nNOV", type: 1)
        let article9 = Article(title: "Title 9", description: "Description 9", image: UIImage(named: "SOS")!, date: "2\nNOV", type: 1)
        let article10 = Article(title: "Title 10", description: "Description 10", image: UIImage(named: "YourSession")!, date: "3\nNOV", type: 1)
        
        tempArticle.append(article1)
        tempArticle.append(article2)
        tempArticle.append(article3)
        tempArticle.append(article4)
        tempArticle.append(article5)
        tempArticle.append(article6)
        tempArticle.append(article7)
        tempArticle.append(article8)
        tempArticle.append(article9)
        tempArticle.append(article10)
        
        return tempArticle
    }
    
    @IBAction func showComponents(_ sender: UISegmentedControl) {
        if(sender.selectedSegmentIndex == 0) {
          articles = createArticles()
            tableView.reloadData()
        }else if(sender.selectedSegmentIndex == 1){
           articles = createEvents()
            tableView.reloadData()
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return articles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let article = articles[indexPath.row]
        
        if(article.type == 0){
            let cell = tableView.dequeueReusableCell(withIdentifier: "ArticleCell") as! ArticleCellTableViewCell
            cell.setArticle(article: article)
            return cell
        } else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "EventCell") as! EventCellTableViewCell
            cell.setEvent(article: article)
            return cell
        
            
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedArticle = articles[indexPath.row]
    }

}

