//
//  EventCellTableViewCell.swift
//  Bully.ID
//
//  Created by PRATAMA Mira on 9/18/19.
//  Copyright © 2019 Youth IGF Indonesia. All rights reserved.
//

import UIKit

class EventCellTableViewCell: UITableViewCell {

    @IBOutlet weak var eventImage: UIImageView!
    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var eventDescription: UILabel!

    func setEvent(article: Article){
        eventImage.image = article.image
        title.text = article.title
        eventDescription.text = article.description
        date.text = article.date
    }
}
