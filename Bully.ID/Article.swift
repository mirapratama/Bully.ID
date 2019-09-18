//
//  Article.swift
//  Bully.ID
//
//  Created by PRATAMA Mira on 9/11/19.
//  Copyright © 2019 Youth IGF Indonesia. All rights reserved.
//

import Foundation
import UIKit

class Article {
    var date : String
    var title : String
    var description : String
    var image : UIImage
    var type : Int
    
    // 0 = article
    // 1 = event
    
    init(title : String, description : String, image: UIImage,date : String, type: Int) {
        self.title = title
        self.description = description
        self.image = image
        self.date = date
        self.type = type
    }
}
