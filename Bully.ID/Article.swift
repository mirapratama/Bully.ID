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
    var title : String
    var description : String
    var image : UIImage
    
    init(title : String, description : String, image: UIImage) {
        self.title = title
        self.description = description
        self.image = image
    }
}
